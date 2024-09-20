package com.ans.cda.utilities;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.xml.XMLConstants;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.apache.log4j.Logger;
import org.xml.sax.SAXException;

import net.sf.saxon.s9api.Processor;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.Serializer;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XsltCompiler;
import net.sf.saxon.s9api.XsltExecutable;
import net.sf.saxon.s9api.XsltTransformer;

/**
 * this
 */
public class MultiSchematronValidator {
	/**
	 * Logger
	 */
	public static final Logger LOG = Logger.getLogger(MultiSchematronValidator.class);
	/**
	 * xmlFile
	 */
	private File xmlFile;
	/**
	 * includeFile
	 */
	private String includeFile;
	/**
	 * expandFile
	 */
	private String expandFile;
	/**
	 * svrlFile
	 */
	private String svrlFile;
	/**
	 * iheXslFile
	 */
	private String iheXslFile;
	/**
	 * mcCdaXslFile
	 */
	private String mcCdaXslFile;
	/**
	 * mAnsXslFile
	 */
	private String mAnsXslFile;
	/**
	 * terminoXslFile
	 */
	private String terminoXslFile;
	/**
	 * schXslFile
	 */
	private String schXslFile;
	/**
	 * structMinFile
	 */
	private String structMinFile;
	/**
	 * iheFile
	 */
	private String iheFile;
	/**
	 * mcCdaFile
	 */
	private String mcCdaFile;
	/**
	 * mAnsFile
	 */
	private String mAnsFile;
	/**
	 * terminoFile
	 */
	private String terminoFile;
	/**
	 * structMinXslFile
	 */
	private String structMinXslFile;
	/**
	 * structMinBase
	 */
	private String structMinBase;
	/**
	 * iheBase
	 */
	private String iheBase;
	/**
	 * mcCdaBase
	 */
	private String mcCdaBase;
	/**
	 * mAnsBase
	 */
	private String mAnsBase;
	/**
	 * terminoBase
	 */
	private String terminoBase;
	/**
	 * schBase
	 */
	private String schBase;
	/**
	 * structMinReport
	 */
	private String structMinReport;
	/**
	 * exec
	 */
	private XsltExecutable exec1;
	/**
	 * transformer1
	 */
	private XsltTransformer transformer1;
	/**
	 * exec
	 */
	private XsltExecutable exec2;
	/**
	 * transformer2
	 */
	private XsltTransformer transformer2;
	/**
	 * exec3
	 */
	private XsltExecutable exec3;
	/**
	 * transformer3
	 */
	private XsltTransformer transformer3;
	/**
	 * userHome
	 */
	private String userHome = System.getProperty("user.home");
	/**
	 * processor
	 */
	private Processor processor = new Processor(false);
	/**
	 * compiler
	 */
	private XsltCompiler compiler = processor.newXsltCompiler();
	/**
	 * xmlNode
	 */
	private XdmNode xmlNode;
	/**
	 * outputFilePath
	 */
	private File outputFilePath;
	/**
	 * outputFilePathSM
	 */
	private File outputFilePathSm;
	/**
	 * outputFilePathSM
	 */
	private File outputFilePathIhe;
	/**
	 * outputFilePathSM
	 */
	private File outputFilePathMc;
	/**
	 * outputFilePathSM
	 */
	private File outputFilePathAns;
	/**
	 * outputFilePathSM
	 */
	private File outputFilePathTer;
	/**
	 * outputFilePathSch
	 */
	private File outputFilePathSch;

	/**
	 * writeFileFromByteBuffer
	 * 
	 * @param filePath
	 * @param buffer
	 * @throws Exception
	 */
	public void writeFileFromByteBuffer(final String filePath, final ByteBuffer buffer) {
		try (RandomAccessFile file = new RandomAccessFile(filePath, "rw");
				FileChannel fileChannel = file.getChannel()) {
			fileChannel.write(buffer);
		} catch (final IOException e) {
			if (LOG.isInfoEnabled()) {
				final String error = e.getMessage();
				LOG.error(error);
			}
		}
	}

	/**
	 * valideCda
	 * 
	 * @param xmlPath
	 */
	public void valideCda(final String xmlPath) {
		final String xsdFile = new File(xmlPath).getParentFile().getParent()
				+ "\\infrastructure\\cda\\CDA_extended.xsd";
		try (PrintWriter writer = new PrintWriter(
				Files.newBufferedWriter(Paths.get(outputFilePath.getAbsolutePath())))) {
			final SchemaFactory schemaFactory = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
			final Schema schema = schemaFactory.newSchema(new File(xsdFile));
			final Validator validator = schema.newValidator();
			final Source xmlSource = new StreamSource(xmlFile);
			try {
				validator.validate(xmlSource);
				writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n" + "<xsd-validation result=\"OK\">\r\n"
						+ "</xsd-validation>");
			} catch (final SAXException e) {
				writer.println("XML is not valid: " + e.getMessage());
			}

		} catch (final SAXException | IOException e) {
			if (LOG.isInfoEnabled()) {
				final String error = e.getMessage();
				LOG.error(error);
			}
		}
	}

	/**
	 * validateStructMin
	 * 
	 * @param xmlPath
	 */
	public XsltTransformer validateStructMin(final File xmlPath) {
		XsltTransformer transformer = null;
		try {
			exec1 = compiler.compile(new StreamSource(new File(includeFile)));
			transformer1 = exec1.load();
			transformer1.setSource(new StreamSource(new File(structMinFile)));
			final File tempFile1 = new File(userHome + "\\intermediate1.xml");
			final Serializer out1 = processor.newSerializer(tempFile1);
			transformer1.setDestination(out1);
			transformer1.transform();
			exec2 = compiler.compile(new StreamSource(new File(expandFile)));
			transformer2 = exec2.load();
			transformer2.setSource(new StreamSource(tempFile1));
			final File tempFile2 = new File(userHome + "\\intermediate2.xml");
			final Serializer out2 = processor.newSerializer(tempFile2);
			transformer2.setDestination(out2);
			transformer2.transform();
			exec3 = compiler.compile(new StreamSource(new File(svrlFile)));
			transformer3 = exec3.load();
			transformer3.setSource(new StreamSource(tempFile2));
			final File finalXSLTFile = new File(structMinXslFile);
			final Serializer out3 = processor.newSerializer(finalXSLTFile);
			transformer3.setDestination(out3);
			transformer3.transform();
			final File baseDirectory = new File(structMinBase);
			final XsltExecutable exec = compiler
					.compile(new StreamSource(new File(baseDirectory, finalXSLTFile.getName())));
			transformer = exec.load();
			transformer.setSource(new StreamSource(xmlPath));
		} catch (final SaxonApiException e) {
			if (LOG.isInfoEnabled()) {
				final String error = e.getMessage();
				LOG.error(error);
			}
		}
		return transformer;
	}

	/**
	 * validateIhe
	 * 
	 * @param xmlPath
	 */
	public XsltTransformer validateIhe(final String xmlPath) {
		XsltTransformer transformer = null;
		try {
			transformer1.setSource(new StreamSource(new File(iheFile)));
			final File tempFile1 = new File(userHome + "\\intermediate3.xml");
			final Serializer out1 = processor.newSerializer(tempFile1);
			transformer1.setDestination(out1);
			transformer1.transform();
			transformer2.setSource(new StreamSource(tempFile1));
			final File tempFile2 = new File(userHome + "\\intermediate4.xml");
			final Serializer out2 = processor.newSerializer(tempFile2);
			transformer2.setDestination(out2);
			transformer2.transform();
			transformer3.setSource(new StreamSource(tempFile2));
			iheXslFile = xmlFile.getParentFile().getParent() + "\\schematrons\\profils\\IHE.xsl";
			final File finalXSLTFile = new File(iheXslFile);
			final Serializer out3 = processor.newSerializer(finalXSLTFile);
			transformer3.setDestination(out3);
			transformer3.transform();
			iheBase = xmlFile.getParentFile().getParent() + "\\schematrons\\profils";
			final File baseDirectory = new File(iheBase);
			final XsltExecutable exec = compiler
					.compile(new StreamSource(new File(baseDirectory, finalXSLTFile.getName())));
			transformer = exec.load();
			transformer.setSource(new StreamSource(xmlPath));
		} catch (final SaxonApiException e) {
			if (LOG.isInfoEnabled()) {
				final String error = e.getMessage();
				LOG.error(error);
			}
		}
		return transformer;
	}

	/**
	 * validateMcCda
	 * 
	 * @param xmlPath
	 */
	public XsltTransformer validateMcCda(final String xmlPath) {
		XsltTransformer transformer = null;
		try {
			transformer1.setSource(new StreamSource(new File(mcCdaFile)));
			final File tempFile1 = new File(userHome + "\\intermediate5.xml");
			final Serializer out1 = processor.newSerializer(tempFile1);
			transformer1.setDestination(out1);
			transformer1.transform();
			transformer2.setSource(new StreamSource(tempFile1));
			final File tempFile2 = new File(userHome + "\\intermediate6.xml");
			final Serializer out2 = processor.newSerializer(tempFile2);
			transformer2.setDestination(out2);
			transformer2.transform();
			transformer3.setSource(new StreamSource(tempFile2));
			mcCdaXslFile = xmlFile.getParentFile().getParent()
					+ "\\schematrons\\profils\\CI-SIS_ModelesDeContenusCDA.xsl";
			final File finalXSLTFile = new File(mcCdaXslFile);
			final Serializer out3 = processor.newSerializer(finalXSLTFile);
			transformer3.setDestination(out3);
			transformer3.transform();
			mcCdaBase = xmlFile.getParentFile().getParent() + "\\schematrons\\profils";
			final File baseDirectory = new File(mcCdaBase);
			final XsltExecutable exec = compiler
					.compile(new StreamSource(new File(baseDirectory, finalXSLTFile.getName())));
			transformer = exec.load();
			transformer.setSource(new StreamSource(xmlPath));
		} catch (final SaxonApiException e) {
			if (LOG.isInfoEnabled()) {
				final String error = e.getMessage();
				LOG.error(error);
			}
		}
		return transformer;
	}

	/**
	 * validateMAns
	 * 
	 * @param xmlPath
	 */
	public XsltTransformer validateMAns(final String xmlPath) {
		XsltTransformer transformer = null;
		try {
			transformer1.setSource(new StreamSource(new File(mAnsFile)));
			final File tempFile1 = new File(userHome + "\\intermediate7.xml");
			final Serializer out1 = processor.newSerializer(tempFile1);
			transformer1.setDestination(out1);
			transformer1.transform();
			transformer2.setSource(new StreamSource(tempFile1));
			final File tempFile2 = new File(userHome + "\\intermediate8.xml");
			final Serializer out2 = processor.newSerializer(tempFile2);
			transformer2.setDestination(out2);
			transformer2.transform();
			transformer3.setSource(new StreamSource(tempFile2));
			mAnsXslFile = xmlFile.getParentFile().getParent() + "\\schematrons\\profils\\CI-SIS_Modeles_ANS.xsl";
			final File finalXSLTFile = new File(mAnsXslFile);
			final Serializer out3 = processor.newSerializer(finalXSLTFile);
			transformer3.setDestination(out3);
			transformer3.transform();
			mAnsBase = xmlFile.getParentFile().getParent() + "\\schematrons\\profils";
			final File baseDirectory = new File(mAnsBase);
			final XsltExecutable exec = compiler
					.compile(new StreamSource(new File(baseDirectory, finalXSLTFile.getName())));
			transformer = exec.load();
			transformer.setSource(new StreamSource(xmlPath));
		} catch (final SaxonApiException e) {
			if (LOG.isInfoEnabled()) {
				final String error = e.getMessage();
				LOG.error(error);
			}
		}
		return transformer;

	}

	/**
	 * validateTermino
	 * 
	 * @param xmlPath
	 */
	public XsltTransformer validateTermino(final String xmlPath) {
		XsltTransformer transformer = null;
		try {
			transformer1.setSource(new StreamSource(new File(terminoFile)));
			final File tempFile1 = new File(userHome + "\\intermediate9.xml");
			final Serializer out1 = processor.newSerializer(tempFile1);
			transformer1.setDestination(out1);
			transformer1.transform();
			transformer2.setSource(new StreamSource(tempFile1));
			final File tempFile2 = new File(userHome + "\\intermediate10.xml");
			final Serializer out2 = processor.newSerializer(tempFile2);
			transformer2.setDestination(out2);
			transformer2.transform();
			transformer3.setSource(new StreamSource(tempFile2));
			terminoXslFile = xmlFile.getParentFile().getParent()
					+ "\\schematrons\\profils\\terminologies\\schematron\\terminologie.xsl";
			final File finalXSLTFile = new File(terminoXslFile);
			final Serializer out3 = processor.newSerializer(finalXSLTFile);
			transformer3.setDestination(out3);
			transformer3.transform();
			terminoBase = xmlFile.getParentFile().getParent() + "\\schematrons\\profils\\terminologies\\schematron";
			final File baseDirectory = new File(terminoBase);
			final XsltExecutable exec = compiler
					.compile(new StreamSource(new File(baseDirectory, finalXSLTFile.getName())));
			transformer = exec.load();
			transformer.setSource(new StreamSource(xmlPath));
		} catch (final SaxonApiException e) {
			if (LOG.isInfoEnabled()) {
				final String error = e.getMessage();
				LOG.error(error);
			}
		}
		return transformer;
	}

	/**
	 * validateSch
	 * 
	 * @param xmlPath
	 */
	public XsltTransformer validateSch(final String xmlPath, final String schPath) {
		XsltTransformer transformer = null;
		File finalXSLTFile = null;
		try {
			exec1 = compiler.compile(new StreamSource(new File(includeFile)));
			transformer1 = exec1.load();
			transformer1.setSource(new StreamSource(new File(schPath)));
			final File tempFile1 = new File(userHome + "\\intermediate11.xml");
			final Serializer out1 = processor.newSerializer(tempFile1);
			transformer1.setDestination(out1);
			transformer1.transform();
			exec2 = compiler.compile(new StreamSource(new File(expandFile)));
			transformer2 = exec2.load();
			transformer2.setSource(new StreamSource(tempFile1));
			final File tempFile2 = new File(userHome + "\\intermediate12.xml");
			final Serializer out2 = processor.newSerializer(tempFile2);
			transformer2.setDestination(out2);
			transformer2.transform();
			exec3 = compiler.compile(new StreamSource(new File(svrlFile)));
			transformer3 = exec3.load();
			transformer3.setSource(new StreamSource(tempFile2));
			final String name = new File(xmlPath).getName();
			final String nameRemove = removeExtension(name);
			schXslFile = xmlFile.getParentFile().getParent() + "\\schematrons\\" + nameRemove + ".xsl";
			finalXSLTFile = new File(schXslFile);
			final Serializer out3 = processor.newSerializer(finalXSLTFile);
			transformer3.setDestination(out3);
			transformer3.transform();
			schBase = xmlFile.getParentFile().getParent() + "\\schematrons";
			final File baseDirectory = new File(schBase);
			final XsltExecutable exec = compiler
					.compile(new StreamSource(new File(baseDirectory, finalXSLTFile.getName())));
			transformer = exec.load();
			transformer.setSource(new StreamSource(xmlPath));
		} catch (final SaxonApiException e) {
			if (LOG.isInfoEnabled()) {
				final String error = e.getMessage();
				LOG.error(error);
			}
		} finally {
			finalXSLTFile.deleteOnExit();
		}
		return transformer;
	}

	/**
	 * remove extension from file name
	 * 
	 * @param s
	 * @return string
	 */
	public String removeExtension(final String string) {
		return string != null && string.lastIndexOf('.') > 0 ? string.substring(0, string.lastIndexOf('.')) : string;
	}

	/**
	 * @return the xmlFile
	 */
	public File getXmlFile() {
		return xmlFile;
	}

	/**
	 * @param xmlFile the xmlFile to set
	 */
	public void setXmlFile(final File xmlFile) {
		this.xmlFile = xmlFile;
	}

	/**
	 * @return the includeFile
	 */
	public String getIncludeFile() {
		return includeFile;
	}

	/**
	 * @param includeFile the includeFile to set
	 */
	public void setIncludeFile(final String includeFile) {
		this.includeFile = includeFile;
	}

	/**
	 * @return the expandFile
	 */
	public String getExpandFile() {
		return expandFile;
	}

	/**
	 * @param expandFile the expandFile to set
	 */
	public void setExpandFile(final String expandFile) {
		this.expandFile = expandFile;
	}

	/**
	 * @return the svrlFile
	 */
	public String getSvrlFile() {
		return svrlFile;
	}

	/**
	 * @param svrlFile the svrlFile to set
	 */
	public void setSvrlFile(final String svrlFile) {
		this.svrlFile = svrlFile;
	}

	/**
	 * @return the iheXslFile
	 */
	public String getIheXslFile() {
		return iheXslFile;
	}

	/**
	 * @param iheXslFile the iheXslFile to set
	 */
	public void setIheXslFile(final String iheXslFile) {
		this.iheXslFile = iheXslFile;
	}

	/**
	 * @return the mcCdaXslFile
	 */
	public String getMcCdaXslFile() {
		return mcCdaXslFile;
	}

	/**
	 * @param mcCdaXslFile the mcCdaXslFile to set
	 */
	public void setMcCdaXslFile(final String mcCdaXslFile) {
		this.mcCdaXslFile = mcCdaXslFile;
	}

	/**
	 * @return the mAnsXslFile
	 */
	public String getmAnsXslFile() {
		return mAnsXslFile;
	}

	/**
	 * @param mAnsXslFile the mAnsXslFile to set
	 */
	public void setmAnsXslFile(final String mAnsXslFile) {
		this.mAnsXslFile = mAnsXslFile;
	}

	/**
	 * @return the terminoXslFile
	 */
	public String getTerminoXslFile() {
		return terminoXslFile;
	}

	/**
	 * @param terminoXslFile the terminoXslFile to set
	 */
	public void setTerminoXslFile(final String terminoXslFile) {
		this.terminoXslFile = terminoXslFile;
	}

	/**
	 * @return the schXslFile
	 */
	public String getSchXslFile() {
		return schXslFile;
	}

	/**
	 * @param schXslFile the schXslFile to set
	 */
	public void setSchXslFile(final String schXslFile) {
		this.schXslFile = schXslFile;
	}

	/**
	 * @return the structMinFile
	 */
	public String getStructMinFile() {
		return structMinFile;
	}

	/**
	 * @param structMinFile the structMinFile to set
	 */
	public void setStructMinFile(final String structMinFile) {
		this.structMinFile = structMinFile;
	}

	/**
	 * @return the iheFile
	 */
	public String getIheFile() {
		return iheFile;
	}

	/**
	 * @param iheFile the iheFile to set
	 */
	public void setIheFile(final String iheFile) {
		this.iheFile = iheFile;
	}

	/**
	 * @return the mcCdaFile
	 */
	public String getMcCdaFile() {
		return mcCdaFile;
	}

	/**
	 * @param mcCdaFile the mcCdaFile to set
	 */
	public void setMcCdaFile(final String mcCdaFile) {
		this.mcCdaFile = mcCdaFile;
	}

	/**
	 * @return the mAnsFile
	 */
	public String getmAnsFile() {
		return mAnsFile;
	}

	/**
	 * @param mAnsFile the mAnsFile to set
	 */
	public void setmAnsFile(final String mAnsFile) {
		this.mAnsFile = mAnsFile;
	}

	/**
	 * @return the terminoFile
	 */
	public String getTerminoFile() {
		return terminoFile;
	}

	/**
	 * @param terminoFile the terminoFile to set
	 */
	public void setTerminoFile(final String terminoFile) {
		this.terminoFile = terminoFile;
	}

	/**
	 * @return the structMinXslFile
	 */
	public String getStructMinXslFile() {
		return structMinXslFile;
	}

	/**
	 * @param structMinXslFile the structMinXslFile to set
	 */
	public void setStructMinXslFile(final String structMinXslFile) {
		this.structMinXslFile = structMinXslFile;
	}

	/**
	 * @return the structMinBase
	 */
	public String getStructMinBase() {
		return structMinBase;
	}

	/**
	 * @param structMinBase the structMinBase to set
	 */
	public void setStructMinBase(final String structMinBase) {
		this.structMinBase = structMinBase;
	}

	/**
	 * @return the iheBase
	 */
	public String getIheBase() {
		return iheBase;
	}

	/**
	 * @param iheBase the iheBase to set
	 */
	public void setIheBase(final String iheBase) {
		this.iheBase = iheBase;
	}

	/**
	 * @return the mcCdaBase
	 */
	public String getMcCdaBase() {
		return mcCdaBase;
	}

	/**
	 * @param mcCdaBase the mcCdaBase to set
	 */
	public void setMcCdaBase(final String mcCdaBase) {
		this.mcCdaBase = mcCdaBase;
	}

	/**
	 * @return the mAnsBase
	 */
	public String getmAnsBase() {
		return mAnsBase;
	}

	/**
	 * @param mAnsBase the mAnsBase to set
	 */
	public void setmAnsBase(final String mAnsBase) {
		this.mAnsBase = mAnsBase;
	}

	/**
	 * @return the terminoBase
	 */
	public String getTerminoBase() {
		return terminoBase;
	}

	/**
	 * @param terminoBase the terminoBase to set
	 */
	public void setTerminoBase(final String terminoBase) {
		this.terminoBase = terminoBase;
	}

	/**
	 * @return the schBase
	 */
	public String getSchBase() {
		return schBase;
	}

	/**
	 * @param schBase the schBase to set
	 */
	public void setSchBase(final String schBase) {
		this.schBase = schBase;
	}

	/**
	 * @return the structMinReport
	 */
	public String getStructMinReport() {
		return structMinReport;
	}

	/**
	 * @param structMinReport the structMinReport to set
	 */
	public void setStructMinReport(final String structMinReport) {
		this.structMinReport = structMinReport;
	}

	/**
	 * @return the exec1
	 */
	public XsltExecutable getExec1() {
		return exec1;
	}

	/**
	 * @param exec1 the exec1 to set
	 */
	public void setExec1(final XsltExecutable exec1) {
		this.exec1 = exec1;
	}

	/**
	 * @return the transformer1
	 */
	public XsltTransformer getTransformer1() {
		return transformer1;
	}

	/**
	 * @param transformer1 the transformer1 to set
	 */
	public void setTransformer1(final XsltTransformer transformer1) {
		this.transformer1 = transformer1;
	}

	/**
	 * @return the exec2
	 */
	public XsltExecutable getExec2() {
		return exec2;
	}

	/**
	 * @param exec2 the exec2 to set
	 */
	public void setExec2(final XsltExecutable exec2) {
		this.exec2 = exec2;
	}

	/**
	 * @return the transformer2
	 */
	public XsltTransformer getTransformer2() {
		return transformer2;
	}

	/**
	 * @param transformer2 the transformer2 to set
	 */
	public void setTransformer2(final XsltTransformer transformer2) {
		this.transformer2 = transformer2;
	}

	/**
	 * @return the exec3
	 */
	public XsltExecutable getExec3() {
		return exec3;
	}

	/**
	 * @param exec3 the exec3 to set
	 */
	public void setExec3(final XsltExecutable exec3) {
		this.exec3 = exec3;
	}

	/**
	 * @return the transformer3
	 */
	public XsltTransformer getTransformer3() {
		return transformer3;
	}

	/**
	 * @param transformer3 the transformer3 to set
	 */
	public void setTransformer3(final XsltTransformer transformer3) {
		this.transformer3 = transformer3;
	}

	/**
	 * @return the userHome
	 */
	public String getUserHome() {
		return userHome;
	}

	/**
	 * @param userHome the userHome to set
	 */
	public void setUserHome(final String userHome) {
		this.userHome = userHome;
	}

	/**
	 * @return the processor
	 */
	public Processor getProcessor() {
		return processor;
	}

	/**
	 * @param processor the processor to set
	 */
	public void setProcessor(final Processor processor) {
		this.processor = processor;
	}

	/**
	 * @return the compiler
	 */
	public XsltCompiler getCompiler() {
		return compiler;
	}

	/**
	 * @param compiler the compiler to set
	 */
	public void setCompiler(final XsltCompiler compiler) {
		this.compiler = compiler;
	}

	/**
	 * @return the xmlNode
	 */
	public XdmNode getXmlNode() {
		return xmlNode;
	}

	/**
	 * @param xmlNode the xmlNode to set
	 */
	public void setXmlNode(final XdmNode xmlNode) {
		this.xmlNode = xmlNode;
	}

	/**
	 * @return the outputFilePath
	 */
	public File getOutputFilePath() {
		return outputFilePath;
	}

	/**
	 * @param outputFilePath the outputFilePath to set
	 */
	public void setOutputFilePath(final File outputFilePath) {
		this.outputFilePath = outputFilePath;
	}

	/**
	 * @return the outputFilePathSm
	 */
	public File getOutputFilePathSm() {
		return outputFilePathSm;
	}

	/**
	 * @param outputFilePathSm the outputFilePathSm to set
	 */
	public void setOutputFilePathSm(final File outputFilePathSm) {
		this.outputFilePathSm = outputFilePathSm;
	}

	/**
	 * @return the outputFilePathIhe
	 */
	public File getOutputFilePathIhe() {
		return outputFilePathIhe;
	}

	/**
	 * @param outputFilePathIhe the outputFilePathIhe to set
	 */
	public void setOutputFilePathIhe(final File outputFilePathIhe) {
		this.outputFilePathIhe = outputFilePathIhe;
	}

	/**
	 * @return the outputFilePathMc
	 */
	public File getOutputFilePathMc() {
		return outputFilePathMc;
	}

	/**
	 * @param outputFilePathMc the outputFilePathMc to set
	 */
	public void setOutputFilePathMc(final File outputFilePathMc) {
		this.outputFilePathMc = outputFilePathMc;
	}

	/**
	 * @return the outputFilePathAns
	 */
	public File getOutputFilePathAns() {
		return outputFilePathAns;
	}

	/**
	 * @param outputFilePathAns the outputFilePathAns to set
	 */
	public void setOutputFilePathAns(final File outputFilePathAns) {
		this.outputFilePathAns = outputFilePathAns;
	}

	/**
	 * @return the outputFilePathTer
	 */
	public File getOutputFilePathTer() {
		return outputFilePathTer;
	}

	/**
	 * @param outputFilePathTer the outputFilePathTer to set
	 */
	public void setOutputFilePathTer(final File outputFilePathTer) {
		this.outputFilePathTer = outputFilePathTer;
	}

	/**
	 * @return the outputFilePathSch
	 */
	public File getOutputFilePathSch() {
		return outputFilePathSch;
	}

	/**
	 * @param outputFilePathSch the outputFilePathSch to set
	 */
	public void setOutputFilePathSch(final File outputFilePathSch) {
		this.outputFilePathSch = outputFilePathSch;
	}

}