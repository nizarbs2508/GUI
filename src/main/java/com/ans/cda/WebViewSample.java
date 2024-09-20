package com.ans.cda;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.stream.StreamSource;

import org.apache.commons.lang3.math.NumberUtils;
import org.apache.log4j.Logger;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.ans.cda.utilities.Inutility;
import com.ans.cda.utilities.Inutility2;
import com.ans.cda.utilities.Inutility3;
import com.ans.cda.utilities.Inutility4;
import com.ans.cda.utilities.Inutility6;
import com.ans.cda.utilities.MultiSchematronValidator;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.concurrent.Task;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Orientation;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.DialogPane;
import javafx.scene.control.Label;
import javafx.scene.control.ProgressIndicator;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.SplitPane;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundFill;
import javafx.scene.layout.BackgroundImage;
import javafx.scene.layout.BackgroundPosition;
import javafx.scene.layout.BackgroundRepeat;
import javafx.scene.layout.BackgroundSize;
import javafx.scene.layout.CornerRadii;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.Priority;
import javafx.scene.layout.Region;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.stage.FileChooser;
import javafx.stage.FileChooser.ExtensionFilter;
import javafx.stage.Stage;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.Serializer;
import net.sf.saxon.s9api.XsltTransformer;

/**
 * WebViewSample api with JavaFX
 * 
 * @author bensalem Nizar
 */
public class WebViewSample extends Application {
	/**
	 * fourStage
	 */
	private final Stage fourStage = new Stage();
	/**
	 * nbrError1
	 */
	private int nbrError1;
	/**
	 * nbrError2
	 */
	private int nbrError2;
	/**
	 * nbrError3
	 */
	private int nbrError3;
	/**
	 * nbrError5
	 */
	private int nbrError5;
	/**
	 * nbrError6
	 */
	private int nbrError6;
	/**
	 * nbrError7
	 */
	private int nbrError7;
	/**
	 * nbrError8
	 */
	private int nbrError8;
	/**
	 * nbrWar1
	 */
	private int nbrWar1;
	/**
	 * nbrWar2
	 */
	private int nbrWar2;
	/**
	 * nbrWar3
	 */
	private int nbrWar3;
	/**
	 * nbrWar5
	 */
	private int nbrWar5;
	/**
	 * nbrWar6
	 */
	private int nbrWar6;
	/**
	 * nbrWar7
	 */
	private int nbrWar7;
	/**
	 * nbrWar8
	 */
	private int nbrWar8;
	/**
	 * mapErr
	 */
	private Map<Integer, String> mapErr = new ConcurrentHashMap<>();
	/**
	 * mapErr2
	 */
	private Map<String, String> mapErr2 = new ConcurrentHashMap<>();
	/**
	 * mapErr3
	 */
	private Map<String, String> mapErr3 = new ConcurrentHashMap<>();
	/**
	 * mapErr5
	 */
	private Map<String, String> mapErr5 = new ConcurrentHashMap<>();
	/**
	 * mapErr6
	 */
	private Map<String, String> mapErr6 = new ConcurrentHashMap<>();
	/**
	 * mapErr7
	 */
	private Map<String, String> mapErr7 = new ConcurrentHashMap<>();
	/**
	 * mapErr8
	 */
	private Map<String, String> mapErr8 = new ConcurrentHashMap<>();
	/**
	 * mapWar
	 */
	private Map<Integer, String> mapWar = new ConcurrentHashMap<>();
	/**
	 * mapWar2
	 */
	private Map<String, String> mapWar2 = new ConcurrentHashMap<>();
	/**
	 * mapWar3
	 */
	private Map<String, String> mapWar3 = new ConcurrentHashMap<>();
	/**
	 * mapWar5
	 */
	private Map<String, String> mapWar5 = new ConcurrentHashMap<>();
	/**
	 * mapWar6
	 */
	private Map<String, String> mapWar6 = new ConcurrentHashMap<>();
	/**
	 * mapWar7
	 */
	private Map<String, String> mapWar7 = new ConcurrentHashMap<>();
	/**
	 * mapWar8
	 */
	private Map<String, String> mapWar8 = new ConcurrentHashMap<>();
	/**
	 * userDirectory
	 */
	private static String userDirectory = System.getProperty("user.dir");
	/**
	 * textField
	 */
	private static String textField = "";
	/**
	 * recordDirectory
	 */
	private static String recordDirectory;
	/**
	 * sNomFichierCDA
	 */
	private String sNomFichierCDA = "";
	/**
	 * schema
	 */
	private String schema;
	/**
	 * pattern
	 */
	private int pattern;
	/**
	 * rules
	 */
	private int rules;
	/**
	 * dateHeure
	 */
	private String dateHeure;
	/**
	 * title
	 */
	private String title;
	/**
	 * schema
	 */
	private String schemaCorps;
	/**
	 * pattern
	 */
	private int patternCorps;
	/**
	 * rules
	 */
	private int rulesCorps;
	/**
	 * dateHeure
	 */
	private String dateHeureCorps;
	/**
	 * title
	 */
	private String titleCorps;
	/**
	 * schema
	 */
	private String schemaMDC;
	/**
	 * pattern
	 */
	private int patternMDC;
	/**
	 * rules
	 */
	private int rulesMDC;
	/**
	 * dateHeure
	 */
	private String dateHeureMDC;
	/**
	 * title
	 */
	private String titleMDC;
	/**
	 * schema
	 */
	private String schemaMANS;
	/**
	 * pattern
	 */
	private int patternMANS;
	/**
	 * rules
	 */
	private int rulesMANS;
	/**
	 * dateHeure
	 */
	private String dateHeureMANS;
	/**
	 * title
	 */
	private String titleMANS;
	/**
	 * schema
	 */
	private String schemaSM;
	/**
	 * pattern
	 */
	private int patternSM;
	/**
	 * rules
	 */
	private int rulesSM;
	/**
	 * dateHeure
	 */
	private String dateHeureSM;
	/**
	 * title
	 */
	private String titleSM;
	/**
	 * schema
	 */
	private String schemaT;
	/**
	 * pattern
	 */
	private int patternT;
	/**
	 * rules
	 */
	private int rulesT;
	/**
	 * dateHeure
	 */
	private String dateHeureT;
	/**
	 * title
	 */
	private String titleT;
	/**
	 * buttonNl
	 */
	private final Button buttonNl = Inutility4.buttonForKey("button.nl");
	/**
	 * firstNameCol
	 */
	private static TableColumn<ViewObject, String> firstNameCol = new TableColumn<>();
	/**
	 * lastNameCol
	 */
	private static TableColumn<ViewObject, String> lastNameCol = new TableColumn<>();
	/**
	 * smExiste
	 */
	private static boolean smExiste;
	/**
	 * iheExiste
	 */
	private static boolean iheExiste;
	/**
	 * mcExiste
	 */
	private static boolean mcExiste;
	/**
	 * ansExiste
	 */
	private static boolean ansExiste;
	/**
	 * terminoExiste
	 */
	private static boolean terminoExiste;
	/**
	 * schExiste
	 */
	private static boolean schExiste;
	/**
	 * transformer
	 */
	private XsltTransformer transformer;
	/**
	 * transformerIhe
	 */
	private XsltTransformer transformerIhe;
	/**
	 * transformerMc
	 */
	private XsltTransformer transformerMc;
	/**
	 * transformerAns
	 */
	private XsltTransformer transformerAns;
	/**
	 * transformerTer
	 */
	private XsltTransformer transformerTer;
	/**
	 * transformerSch
	 */
	private XsltTransformer transformerSch;
	/**
	 * progressIndicator
	 */
	private ProgressIndicator progressIndicator = new ProgressIndicator();
	/**
	 * time
	 */
	private String time;
	/**
	 * outputFile
	 */
	private static File outputFile;
	/**
	 * outputIheFile
	 */
	private static File outputIheFile;
	/**
	 * outputMCFile
	 */
	private static File outputMCFile;
	/**
	 * outputAnsFile
	 */
	private static File outputAnsFile;
	/**
	 * outputTerminoFile
	 */
	private static File outputTerminoFile;
	/**
	 * outputSchFile
	 */
	private static File outputSchFile;
	/**
	 * text2
	 */
	private static TextField text2;
	/**
	 * validator
	 */
	private static MultiSchematronValidator validator = new MultiSchematronValidator();
	/**
	 * Logger
	 */
	private static final Logger LOG = Logger.getLogger(WebViewSample.class);

	/**
	 * void main for Javafx launcher Main secondaire de l'application de javaFX
	 * 
	 * @param args
	 */

	public static void main(final String args[]) {
		if (args != null && args.length > 0) {
			textField = args[0];
			final String locale = args[1];
			Inutility.switchLanguage(Locale.forLanguageTag(locale));
			Inutility.setLocale(Locale.forLanguageTag(locale));
		} else {
			Inutility.setLocale(Locale.getDefault());
			final File file = new File(userDirectory).getParentFile().getParentFile().getParentFile();
			if (file == null) {
				recordDirectory = "C:\\" + Constant.PATH_CDA;
			} else {
				recordDirectory = file.getAbsolutePath() + Constant.PATH_CDA;
			}
		}
		launch(args);
	}

	/**
	 * start stage
	 * 
	 * @param stage
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void start(final Stage stage) {
		final ImageView notStaretedIv = new ImageView();
		progressIndicator.setProgress(ProgressIndicator.INDETERMINATE_PROGRESS);
		final VBox indicatorBox = new VBox(20, progressIndicator);
		indicatorBox.setAlignment(Pos.CENTER);
		indicatorBox.setVisible(false);
		final StackPane loadingPane = new StackPane(indicatorBox);
		loadingPane.setStyle("-fx-background-color: rgba(0, 0, 0, 0.5);");
		loadingPane.setVisible(false);
		final VBox root = new VBox(10);
		root.setPadding(new Insets(10, 10, 10, 10));
		final VBox hbox = new VBox();
		final Label label1 = Inutility4.labelForValue(() -> Inutility.get("button.test.contenu.cda.label1"));
		final Label label2 = Inutility4.labelForValue(() -> Inutility.get("button.test.contenu.cda.label2"));
		Inutility3.getChildrenVNode(hbox).addAll(label1, label2);
		final HBox hboxx = new HBox();

		final BackgroundImage backgroundImageNl = new BackgroundImage(
				new Image(WebViewSample.class.getResource("/images/nl.png").toExternalForm()),
				BackgroundRepeat.NO_REPEAT, BackgroundRepeat.NO_REPEAT, BackgroundPosition.CENTER,
				new BackgroundSize(1.0, 1.0, true, true, false, false));
		final Background backgroundNl = new Background(backgroundImageNl);
		final BackgroundImage backgroundImage = new BackgroundImage(
				new Image(WebViewSample.class.getResource("/images/en.png").toExternalForm()),
				BackgroundRepeat.NO_REPEAT, BackgroundRepeat.NO_REPEAT, BackgroundPosition.CENTER,
				new BackgroundSize(1.0, 1.0, true, true, false, false));
		final Background background = new Background(backgroundImage);
		final BackgroundImage backgroundImageFr = new BackgroundImage(
				new Image(WebViewSample.class.getResource("/images/fr.png").toExternalForm()),
				BackgroundRepeat.NO_REPEAT, BackgroundRepeat.NO_REPEAT, BackgroundPosition.CENTER,
				new BackgroundSize(1.0, 1.0, true, true, false, false));
		final Background backgroundFr = new Background(backgroundImageFr);
		final BackgroundImage backgroundImageDe = new BackgroundImage(
				new Image(WebViewSample.class.getResource("/images/de.png").toExternalForm()),
				BackgroundRepeat.NO_REPEAT, BackgroundRepeat.NO_REPEAT, BackgroundPosition.CENTER,
				new BackgroundSize(1.0, 1.0, true, true, false, false));
		final Background backgroundDe = new Background(backgroundImageDe);
		final BackgroundImage backgroundImageEs = new BackgroundImage(
				new Image(WebViewSample.class.getResource("/images/es.png").toExternalForm()),
				BackgroundRepeat.NO_REPEAT, BackgroundRepeat.NO_REPEAT, BackgroundPosition.CENTER,
				new BackgroundSize(1.0, 1.0, true, true, false, false));
		final Background backgroundEs = new Background(backgroundImageEs);
		final BackgroundImage backgroundImagePt = new BackgroundImage(
				new Image(WebViewSample.class.getResource("/images/pt.png").toExternalForm()),
				BackgroundRepeat.NO_REPEAT, BackgroundRepeat.NO_REPEAT, BackgroundPosition.CENTER,
				new BackgroundSize(1.0, 1.0, true, true, false, false));
		final Background backgroundPt = new Background(backgroundImagePt);
		final BackgroundImage backgroundImageIt = new BackgroundImage(
				new Image(WebViewSample.class.getResource("/images/it.png").toExternalForm()),
				BackgroundRepeat.NO_REPEAT, BackgroundRepeat.NO_REPEAT, BackgroundPosition.CENTER,
				new BackgroundSize(1.0, 1.0, true, true, false, false));
		final Background backgroundIt = new Background(backgroundImageIt);

		final Locale locale = Inutility.getLocale();
		if (locale.equals(Locale.FRENCH)) {
			buttonNl.setBackground(backgroundFr);
		} else if (locale.equals(Locale.forLanguageTag(Constant.NERLANDAIS))) {
			buttonNl.setBackground(backgroundNl);
		} else if (locale.equals(Locale.GERMAN)) {
			buttonNl.setBackground(backgroundDe);
		} else if (locale.equals(Locale.forLanguageTag(Constant.ESPAGNOL))) {
			buttonNl.setBackground(backgroundEs);
		} else if (locale.equals(Locale.ITALIAN)) {
			buttonNl.setBackground(backgroundIt);
		} else if (locale.equals(Locale.forLanguageTag(Constant.PORTUGAIS))) {
			buttonNl.setBackground(backgroundPt);
		} else if (locale.equals(Locale.ENGLISH)) {
			buttonNl.setBackground(background);
		} else {
			final Locale locale1 = Locale.getDefault();
			if (locale1.equals(Locale.FRANCE)) {
				buttonNl.setBackground(backgroundFr);
			} else if (locale1.equals(Locale.forLanguageTag(Constant.NERLANDAIS))) {
				buttonNl.setBackground(backgroundNl);
			} else if (locale1.equals(Locale.GERMAN)) {
				buttonNl.setBackground(backgroundDe);
			} else if (locale1.equals(Locale.forLanguageTag(Constant.ESPAGNOL))) {
				buttonNl.setBackground(backgroundEs);
			} else if (locale1.equals(Locale.ITALIAN)) {
				buttonNl.setBackground(backgroundIt);
			} else if (locale1.equals(Locale.forLanguageTag(Constant.PORTUGAIS))) {
				buttonNl.setBackground(backgroundPt);
			} else if (locale1.equals(Locale.ENGLISH)) {
				buttonNl.setBackground(background);
			}
		}
		buttonNl.setPrefWidth(30);
		buttonNl.setPrefHeight(20);
		buttonNl.setMinHeight(20);
		buttonNl.setMaxHeight(20);
		buttonNl.setStyle(Constant.STYLE);
		buttonNl.setTooltip(Inutility.createBoundTooltip("button.langue"));
		buttonNl.setMinSize(Button.USE_PREF_SIZE, Button.USE_PREF_SIZE);
		final Region spacer10 = new Region();
		spacer10.setMaxWidth(800);
		HBox.setHgrow(spacer10, Priority.ALWAYS);
		Inutility3.getChildrenHNode(hboxx).addAll(hbox, spacer10, buttonNl);

		final TextField text1 = new TextField();
		text1.setStyle(Constant.STYLE12);
		text1.setText(textField);
		final Button button1 = new Button();
		final ImageView view = new ImageView(Constant.FOLDERPHOTO);
		button1.setGraphic(view);
		button1.setStyle(Constant.STYLE1);
		button1.setPrefSize(70, 40);
		button1.setMinSize(70, 40);
		button1.setMaxSize(70, 40);

		final FileChooser fileChooser1 = new FileChooser();
		fileChooser1.titleProperty().bind(Inutility.createStringBinding(Constant.CHOOSEFILE));
		Inutility6.newExtFilter(fileChooser1).addAll(new ExtensionFilter("CDA", "*.xml"));

		button1.setOnAction(new EventHandler<>() {
			@Override
			public void handle(final ActionEvent event) {
				Platform.runLater(() -> {
					if (textField.isEmpty()) {
						smExiste = false;
						iheExiste = false;
						mcExiste = false;
						ansExiste = false;
						terminoExiste = false;
						schExiste = false;
						if (new File(recordDirectory).exists()) {
							final File recordsDir = new File(recordDirectory);
							fileChooser1.setInitialDirectory(recordsDir);
						}
						final File file = fileChooser1.showOpenDialog(fourStage);
						if (file != null) {
							text1.setText(file.getAbsolutePath());
							final String parent = file.getParentFile().getParent();
							outputFile = new File(parent + Constant.REPPORT + "\\"
									+ validator.removeExtension(file.getName()) + "_verif_StructurationMinimale.xml");
							outputIheFile = new File(parent + Constant.REPPORT + "\\"
									+ validator.removeExtension(file.getName()) + "_verif_IHE_corps.xml");
							outputMCFile = new File(parent + Constant.REPPORT + "\\"
									+ validator.removeExtension(file.getName()) + "_verif_ModelesDeContenusCDA.xml");
							outputAnsFile = new File(parent + Constant.REPPORT + "\\"
									+ validator.removeExtension(file.getName()) + "_verif_Modeles_ANS.xml");
							outputTerminoFile = new File(parent + Constant.REPPORT + "\\"
									+ validator.removeExtension(file.getName()) + "_verif_terminologies.xml");
							outputSchFile = new File(parent + Constant.REPPORT + "\\"
									+ validator.removeExtension(file.getName()) + "_verif.xml");
							validator.setXmlFile(file);
							validator.setIncludeFile(parent + "\\schematrons\\moteur\\iso_dsdl_include.xsl");
							validator.setExpandFile(parent + "\\schematrons\\moteur\\iso_abstract_expand.xsl");
							validator.setSvrlFile(parent + "\\schematrons\\moteur\\iso_svrl_for_xslt2.xsl");
							validator.setStructMinFile(parent
									+ "\\schematrons\\profils\\structurationMinimale\\ASIP-STRUCT-MIN-StrucMin.sch");
							validator.setStructMinXslFile(parent
									+ "\\schematrons\\profils\\structurationMinimale\\ASIP-STRUCT-MIN-StrucMin.xsl");
							validator.setStructMinBase(parent + "\\schematrons\\profils\\structurationMinimale");
							validator.setMcCdaBase(parent + "\\schematrons\\profils");
							validator.setStructMinReport(parent + Constant.REPPORT);
							validator.setIheFile(parent + "\\schematrons\\profils\\IHE.sch");
							validator.setMcCdaFile(parent + "\\schematrons\\profils\\CI-SIS_ModelesDeContenusCDA.sch");
							validator.setTerminoBase(parent + "\\schematrons\\profils\\terminologies\\schematron");
							validator.setSchBase(parent + "\\schematrons");
							validator.setmAnsFile(parent + "\\schematrons\\profils\\CI-SIS_Modeles_ANS.sch");
							validator.setTerminoFile(
									parent + "\\schematrons\\profils\\terminologies\\schematron\\terminologie.sch");
							try {
								validator.setXmlNode(Inutility6.getProcessor(validator).newDocumentBuilder()
										.build(new StreamSource(text1.getText())));
							} catch (final SaxonApiException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
							final String repRepport = new File(text1.getText()).getParentFile().getParent()
									+ Constant.REPPORT;
							validator.setOutputFilePath(new File(
									repRepport + "\\" + validator.removeExtension(new File(text1.getText()).getName())
											+ "_validCDA.xml"));
							validator.setOutputFilePathSm(new File(
									repRepport + "\\" + validator.removeExtension(new File(text1.getText()).getName())
											+ "_verif_StructurationMinimale.xml"));
							validator.setOutputFilePathIhe(new File(
									repRepport + "\\" + validator.removeExtension(new File(text1.getText()).getName())
											+ "_verif_IHE_corps.xml"));
							validator.setOutputFilePathMc(new File(
									repRepport + "\\" + validator.removeExtension(new File(text1.getText()).getName())
											+ "_verif_ModelesDeContenusCDA.xml"));
							validator.setOutputFilePathAns(new File(
									repRepport + "\\" + validator.removeExtension(new File(text1.getText()).getName())
											+ "_verif_Modeles_ANS.xml"));
							validator.setOutputFilePathTer(new File(
									repRepport + "\\" + validator.removeExtension(new File(text1.getText()).getName())
											+ "_verif_terminologies.xml"));
							validator.setOutputFilePathSch(new File(repRepport + "\\"
									+ validator.removeExtension(new File(text1.getText()).getName()) + "_verif.xml"));
							if (outputFile.exists()) {
								final long lastModifiedO = outputFile.lastModified();
								final long lastModifiedF = file.lastModified();
								final String schFile = parent
										+ "\\schematrons\\profils\\structurationMinimale\\ASIP-STRUCT-MIN-StrucMin.sch";
								final long lastModifiedS = new File(schFile).lastModified();

								List<Long> listDate;
								listDate = processIncludes(schFile,
										new File(parent + "\\schematrons\\profils\\structurationMinimale\\include"));

								if ((lastModifiedO > lastModifiedF) && (lastModifiedO > lastModifiedS)) {
									for (final Long date : listDate) {
										if (lastModifiedO > date) {
											smExiste = true;
										} else {
											smExiste = false;
											break;
										}
									}
								} else {
									smExiste = false;
								}
							}
							if (outputIheFile.exists()) {
								final long lastModifiedO = outputIheFile.lastModified();
								final long lastModifiedF = file.lastModified();
								final String schFile = parent + "\\schematrons\\profils\\IHE.sch";
								final long lastModifiedS = new File(schFile).lastModified();
								List<Long> listDate;
								List<Long> listDateS;
								listDate = processIncludes(schFile,
										new File(parent + "\\schematrons\\include\\entrees"));
								listDateS = processIncludes(schFile,
										new File(parent + "\\schematrons\\include\\sections"));
								listDate.addAll(listDateS);

								if ((lastModifiedO > lastModifiedF) && (lastModifiedO > lastModifiedS)) {
									if (listDate != null) {
										for (final Long date : listDate) {
											if (lastModifiedO > date) {
												iheExiste = true;
											} else {
												iheExiste = false;
												break;
											}
										}
									}
								} else {
									iheExiste = false;
								}
							}
							if (outputMCFile.exists()) {
								final long lastModifiedO = outputMCFile.lastModified();
								final long lastModifiedF = file.lastModified();
								final String schFile = parent
										+ "\\schematrons\\profils\\CI-SIS_ModelesDeContenusCDA.sch";
								final long lastModifiedS = new File(schFile).lastModified();
								List<Long> listDate;
								List<Long> listDateS;
								List<Long> listDateA;
								listDate = processIncludes(schFile,
										new File(parent + "\\schematrons\\include\\entrees"));
								listDateS = processIncludes(schFile,
										new File(parent + "\\schematrons\\include\\jeuxDeValeurs"));
								listDateA = processIncludes(schFile, new File(parent + "\\schematrons\\abstract"));
								listDate.addAll(listDateS);
								listDate.addAll(listDateA);

								if ((lastModifiedO > lastModifiedF) && (lastModifiedO > lastModifiedS)) {
									if (listDate != null) {
										for (final Long date : listDate) {
											if (lastModifiedO > date) {
												mcExiste = true;
											} else {
												mcExiste = false;
												break;
											}
										}
									}
								} else {
									mcExiste = false;
								}
							}
							if (outputAnsFile.exists()) {
								final long lastModifiedO = outputAnsFile.lastModified();
								final long lastModifiedF = file.lastModified();
								final String schFile = parent + "\\schematrons\\profils\\CI-SIS_Modeles_ANS.sch";
								final long lastModifiedS = new File(schFile).lastModified();
								List<Long> listDate;
								List<Long> listDateS;
								listDate = processIncludes(schFile,
										new File(parent + "\\schematrons\\include\\entrees"));
								listDateS = processIncludes(schFile,
										new File(parent + "\\schematrons\\include\\sections"));
								listDate.addAll(listDateS);

								if ((lastModifiedO > lastModifiedF) && (lastModifiedO > lastModifiedS)) {
									if (listDate != null) {
										for (final Long date : listDate) {
											if (lastModifiedO > date) {
												ansExiste = true;
											} else {
												ansExiste = false;
												break;
											}
										}
									}
								} else {
									ansExiste = false;
								}
							}
							if (outputTerminoFile.exists()) {
								final long lastModifiedO = outputTerminoFile.lastModified();
								final long lastModifiedF = file.lastModified();
								final String schFile = parent
										+ "\\schematrons\\profils\\terminologies\\schematron\\terminologie.sch";
								final long lastModifiedS = new File(schFile).lastModified();
								if ((lastModifiedO > lastModifiedF) && (lastModifiedO > lastModifiedS)) {
									terminoExiste = true;
								} else {
									terminoExiste = false;
								}
							}
							if (outputSchFile.exists() && !text1.getText().isEmpty()) {
								final long lastModifiedO = outputSchFile.lastModified();
								final long lastModifiedF = file.lastModified();
								final String nameRemove = validator.removeExtension(file.getName());
								final String schFile = parent + "\\schematrons\\" + "CI-SIS_" + nameRemove + ".sch";
								final long lastModifiedS = new File(schFile).lastModified();

								List<Long> listDate;
								List<Long> listDateJ;
								List<Long> listDateE;
								List<Long> listDateS;
								List<Long> listDateEn;
								listDate = processIncludes(schFile, new File(parent + "\\schematrons\\abstract"));
								listDateJ = processIncludes(schFile,
										new File(parent + "\\schematrons\\include\\jeuxDeValeurs\\" + nameRemove));
								listDateE = processIncludes(schFile, new File(parent
										+ "\\schematrons\\include\\specificationsVolets\\" + nameRemove + "\\Entete"));
								listDateS = processIncludes(schFile,
										new File(parent + "\\schematrons\\include\\specificationsVolets\\" + nameRemove
												+ "\\Sections"));
								listDateEn = processIncludes(schFile, new File(parent
										+ "\\schematrons\\include\\specificationsVolets\\" + nameRemove + "\\Entrees"));
								listDate.addAll(listDateJ);
								listDate.addAll(listDateE);
								listDate.addAll(listDateS);
								listDate.addAll(listDateEn);

								if ((lastModifiedO > lastModifiedF) && (lastModifiedO > lastModifiedS)) {
									for (final Long date : listDate) {
										if (lastModifiedO > date) {
											schExiste = true;
										} else {
											schExiste = false;
											break;
										}
									}
								} else {
									schExiste = false;
								}
							}
						}
					} else {
						final File recordsDir = new File(textField);
						fileChooser1.setInitialDirectory(recordsDir.getParentFile());
						final File file = fileChooser1.showOpenDialog(fourStage);
						if (file != null) {
							text1.setText(file.getAbsolutePath());
						}
					}
				});
			}
		});
		final HBox hroot = new HBox(10);
		text1.setMinSize(750, button1.getPrefHeight());
		Inutility3.getChildrenHNode(hroot).addAll(text1, button1);
		text2 = new TextField();
		final Label label3 = Inutility4.labelForValue(() -> Inutility.get("button.test.contenu.cda.label3"));
		text2.setStyle(Constant.STYLE12);
		final Button button2 = new Button();
		button2.setStyle(Constant.STYLE1);
		button2.setPrefSize(70, 40);
		button2.setMinSize(70, 40);
		button2.setMaxSize(70, 40);
		final ImageView view2 = new ImageView(Constant.FOLDERPHOTO1);
		button2.setGraphic(view2);
		final FileChooser fileChooser2 = new FileChooser();
		fileChooser2.titleProperty().bind(Inutility.createStringBinding(Constant.CHOOSEFILE));
		Inutility6.newExtFilter(fileChooser2).addAll(new ExtensionFilter("Schematron", "*.sch"));

		button2.setOnAction(new EventHandler<>() {
			@Override
			public void handle(final ActionEvent event) {
				Platform.runLater(() -> {
					if (text1.getText().isEmpty()) {
						final Alert alert = new Alert(AlertType.ERROR);
						final DialogPane dialogPane = alert.getDialogPane();
						Inutility3.getStyleDialog(dialogPane)
								.add(getClass().getResource(Constant.CSS).toExternalForm());
						Inutility3.getStyleClass(dialogPane).add(Constant.DIALOG);
						dialogPane.setMinHeight(130);
						dialogPane.setMaxHeight(130);
						dialogPane.setPrefHeight(130);
						alert.setContentText(Inutility.getString("popup.error1"));
						alert.setHeaderText(null);
						alert.getDialogPane().lookupButton(ButtonType.OK).setVisible(true);
						alert.showAndWait();
					} else {
						final File recordsDir = new File(text1.getText());
						final File file = new File(recordsDir.getParentFile().getParent().concat(Constant.PATH_SCH));
						fileChooser2.setInitialDirectory(file);
						final File file2 = fileChooser2.showOpenDialog(fourStage);
						if (file2 != null) {
							text2.setText(file2.getAbsolutePath());
						}
					}
				});
			}
		});

		final HBox hroot1 = new HBox(10);
		text2.setMinSize(750, button2.getPrefHeight());
		Inutility3.getChildrenHNode(hroot1).addAll(text2, button2);
		final Label label4 = Inutility4.labelForValue(() -> Inutility.get("button.test.contenu.cda.label4"));
		final Button button3 = Inutility4.buttonForKey("button.test.contenu.cda.label5");
		final Button button4 = Inutility4.buttonForKey("button.test.contenu.cda.label6");
		button3.setStyle(Constant.STYLE1);
		button3.setMinHeight(40);
		button3.setPrefHeight(40);
		button3.setMaxHeight(40);
		button4.setStyle(Constant.STYLE1);
		button4.setMinHeight(40);
		button4.setPrefHeight(40);
		button4.setMaxHeight(40);
		final Region spacer = new Region();
		spacer.setMaxWidth(20);
		HBox.setHgrow(spacer, Priority.ALWAYS);
		label1.setStyle(Constant.STYLE13);
		label2.setStyle(Constant.STYLE14);
		label3.setStyle(Constant.STYLE13);
		label4.setStyle(Constant.STYLE13);
		final Label labelTime = new Label();
		labelTime.setStyle(Constant.STYLE14);
		final Label labelFileName = new Label();
		labelFileName.setStyle(Constant.STYLE14);
		final HBox textArea = new HBox();
		textArea.setBackground(new Background(new BackgroundFill(Color.WHITE, CornerRadii.EMPTY, Insets.EMPTY)));
		final TableView<ViewObject> tableView = new TableView<>();
		firstNameCol.setMaxWidth(40);
		firstNameCol.setStyle(Constant.STYLE20);
		lastNameCol.setMinWidth(380);
		lastNameCol.setStyle(Constant.STYLE20);
		tableView.setStyle(Constant.STYLE15);
		final Image emptyImage = new Image(Constant.NOTSTARTED);
		Inutility3.getColumnsNode(tableView).addAll(firstNameCol, lastNameCol);

		final VBox vbox = new VBox();
		final Label lbl = new Label();
		final Label lbl1 = new Label();
		final Label lbl2 = new Label();
		final Label lbl3 = new Label();
		final Label lbl4 = new Label();
		final Label lbl5 = new Label();
		final Label lbl6 = new Label();
		final Label lbl7 = new Label();
		final Label lbl8 = new Label();
		final Label lbl9 = new Label();
		final LabelCls cls = new LabelCls();
		cls.setLbl(lbl);
		cls.setLbl1(lbl1);
		cls.setLbl2(lbl2);
		cls.setLbl3(lbl3);
		cls.setLbl4(lbl4);
		cls.setLbl5(lbl5);
		cls.setLbl6(lbl6);
		cls.setLbl7(lbl7);
		cls.setLbl8(lbl8);
		cls.setLbl9(lbl9);
		Inutility2.constructLabel(cls);
		Inutility3.getChildrenHNode(textArea).add(lbl);

		final ScrollPane scrollPane = new ScrollPane();
		scrollPane.setStyle(Constant.STYLE12);
		Inutility3.getChildrenVNode(vbox).addAll(lbl, lbl1, lbl2, lbl3, lbl4, lbl5, lbl6, lbl7, lbl8, lbl9);
		vbox.setStyle(Constant.STYLE20);
		vbox.setBackground(new Background(new BackgroundFill(Color.WHITE, CornerRadii.EMPTY, Insets.EMPTY)));
		scrollPane.setContent(vbox);
		textArea.setStyle(Constant.STYLE20);

		notStaretedIv.setImage(emptyImage);

		button4.setOnAction(new EventHandler<>() {
			@Override
			public void handle(final ActionEvent event) {
				if (text1.getText().isEmpty()) {
					final Alert alert = new Alert(AlertType.ERROR);
					final DialogPane dialogPane = alert.getDialogPane();
					Inutility3.getStyleDialog(dialogPane).add(getClass().getResource(Constant.CSS).toExternalForm());
					Inutility3.getStyleClass(dialogPane).add(Constant.DIALOG);
					dialogPane.setMinHeight(130);
					dialogPane.setMaxHeight(130);
					dialogPane.setPrefHeight(130);
					alert.setContentText(Inutility.getString("popup.error1"));
					alert.setHeaderText(null);
					alert.getDialogPane().lookupButton(ButtonType.OK).setVisible(true);
					alert.showAndWait();
				} else {
					Platform.runLater(() -> {
						Inutility6.getItemsView(tableView).clear();
						final LabelCls cls = new LabelCls();
						cls.setLbl(lbl);
						cls.setLbl1(lbl1);
						cls.setLbl2(lbl2);
						cls.setLbl3(lbl3);
						cls.setLbl4(lbl4);
						cls.setLbl5(lbl5);
						cls.setLbl6(lbl6);
						cls.setLbl7(lbl7);
						cls.setLbl8(lbl8);
						cls.setLbl9(lbl9);
						Inutility2.initLabel(cls);
						final File recordsDir = new File(text1.getText());
						sNomFichierCDA = new File(text1.getText()).getName().replaceFirst("[.][^.]+$", "");
						final String rapportFolder = recordsDir.getParentFile().getParent().concat(Constant.FOLDER_RAP);
						final File found = Inutility2.findFile(sNomFichierCDA.concat(Constant.VALIDATE),
								new File(rapportFolder));
						final DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
						DocumentBuilder dbuilder;
						final ObservableList<ViewObject> data = FXCollections.observableArrayList(
								new ViewObject(1, notStaretedIv, sNomFichierCDA.concat(Constant.VALIDATE)),
								new ViewObject(2, notStaretedIv, sNomFichierCDA.concat(Constant.VERIF)),
								new ViewObject(3, notStaretedIv, sNomFichierCDA.concat(Constant.VERIFIHE)),
								new ViewObject(4, notStaretedIv, sNomFichierCDA.concat(Constant.VERIFMDC)),
								new ViewObject(5, notStaretedIv, sNomFichierCDA.concat(Constant.VERIFANS)),
								new ViewObject(6, notStaretedIv, sNomFichierCDA.concat(Constant.VERIFSM)),
								new ViewObject(7, notStaretedIv, sNomFichierCDA.concat(Constant.VERIFTERM)));
						firstNameCol.setCellValueFactory(new PropertyValueFactory<>(Constant.IMG));
						lastNameCol.setCellValueFactory(new PropertyValueFactory<>(Constant.FNAME));
						final Image greenImage = new Image(Constant.GREEN);
						final Image redImage = new Image(Constant.RED);
						if (found != null) {
							nbrError1 = 0;
							nbrWar1 = 0;
							mapErr = new HashMap<>();
							mapWar = new HashMap<>();
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(found);
								doc.getDocumentElement().normalize();
								final NodeList nodeList = doc.getElementsByTagName(Constant.XSDVAL);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.RESULT);
										if (Constant.OKEY.equalsIgnoreCase(att)) {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 1) == 0) {
													dataType.setImage(greenImageView);
												}
											}

										} else if (Constant.ERROR.equalsIgnoreCase(att)) {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 1) == 0) {
													dataType.setImage(redImageView);
													nbrError1 = nbrError1 + 1;
													final NodeList nodeL = doc.getElementsByTagName(Constant.XSDVALERR);
													final org.w3c.dom.Node nod = nodeL.item(0);
													if (nod.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
														final Element element = (Element) nod;
														final String value = element.getTextContent();
														mapErr.put(nbrError1, value);
													}

												}
											}
										} else if (Constant.WARNING.equalsIgnoreCase(att)) {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 1) == 0) {
													dataType.setImage(redImageView);
													nbrWar1 = nbrWar1 + 1;
													final NodeList nodeL = doc.getElementsByTagName(Constant.XSDVALERR);
													final org.w3c.dom.Node nod = nodeL.item(0);
													if (nod.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
														final Element element = (Element) nod;
														final String value = element.getTextContent();
														mapWar.put(nbrWar1, value);
													}

												}
											}
										}
										Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
									}
								}
							} catch (final ParserConfigurationException | SAXException | IOException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}

						// _verif.xml
						final File foundVerif = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIF),
								new File(rapportFolder));
						if (foundVerif != null) {
							nbrError2 = 0;
							nbrWar2 = 0;
							mapErr2 = new HashMap<>();
							mapWar2 = new HashMap<>();
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundVerif);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schema = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeure = eElementH.getAttribute(Constant.DATEHEURE);
										title = eElementH.getAttribute(Constant.TITLE);
									}
								}

								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								pattern = nodePattern.getLength();
								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rules = nodeRules.getLength();
								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 2) == 0) {
														dataType.setImage(redImageView);
														nbrError2 = nbrError2 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr2.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 2) == 0) {
														dataType.setImage(greenImageView);
														nbrWar2 = nbrWar2 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar2.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 2) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 2) == 0) {
													dataType.setImage(redImageView);
													nbrError2 = nbrError2 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr2.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}
										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 2) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}
						// _verif_IHE_corps.xml
						final File foundIheCorps = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIFIHE),
								new File(rapportFolder));
						if (foundIheCorps != null) {
							nbrError3 = 0;
							nbrWar3 = 0;
							mapErr3 = new HashMap<>();
							mapWar3 = new HashMap<>();
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundIheCorps);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schemaCorps = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeureCorps = eElementH.getAttribute(Constant.DATEHEURE);
										titleCorps = eElementH.getAttribute(Constant.TITLE);
									}
								}
								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								patternCorps = nodePattern.getLength();

								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rulesCorps = nodeRules.getLength();

								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 3) == 0) {
														dataType.setImage(redImageView);
														nbrError3 = nbrError3 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr3.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 3) == 0) {
														dataType.setImage(greenImageView);
														nbrWar3 = nbrWar3 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar3.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 3) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 3) == 0) {
													dataType.setImage(redImageView);
													nbrError3 = nbrError3 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr3.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}
										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 3) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}
						// _verif_ModelesDeContenusCDA.xml
						final File foundMCCDA = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIFMDC),
								new File(rapportFolder));
						if (foundMCCDA != null) {
							nbrError5 = 0;
							nbrWar5 = 0;
							mapErr5 = new HashMap<>();
							mapWar5 = new HashMap<>();
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundMCCDA);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schemaMDC = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeureMDC = eElementH.getAttribute(Constant.DATEHEURE);
										titleMDC = eElementH.getAttribute(Constant.TITLE);
									}
								}

								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								patternMDC = nodePattern.getLength();

								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rulesMDC = nodeRules.getLength();

								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 4) == 0) {
														dataType.setImage(redImageView);
														nbrError5 = nbrError5 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr5.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 4) == 0) {
														dataType.setImage(greenImageView);
														nbrWar5 = nbrWar5 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar5.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 4) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 4) == 0) {
													dataType.setImage(redImageView);
													nbrError5 = nbrError5 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr5.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}

										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 4) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}
						// _verif_IHE_entete.xml
						final File foundMANS = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIFANS),
								new File(rapportFolder));
						if (foundMANS != null) {
							nbrError6 = 0;
							nbrWar6 = 0;
							mapErr6 = new HashMap<>();
							mapWar6 = new HashMap<>();
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundMANS);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schemaMANS = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeureMANS = eElementH.getAttribute(Constant.DATEHEURE);
										titleMANS = eElementH.getAttribute(Constant.TITLE);
									}
								}

								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								patternMANS = nodePattern.getLength();

								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rulesMANS = nodeRules.getLength();

								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 5) == 0) {
														dataType.setImage(redImageView);
														nbrError6 = nbrError6 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr6.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 5) == 0) {
														dataType.setImage(greenImageView);
														nbrWar6 = nbrWar6 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar6.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 5) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 5) == 0) {
													dataType.setImage(redImageView);
													nbrError6 = nbrError6 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr6.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}
										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 5) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}
						// _verif_IHE_entete.xml
						final File foundSM = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIFSM),
								new File(rapportFolder));
						if (foundSM != null) {
							nbrError7 = 0;
							nbrWar7 = 0;
							mapErr7 = new HashMap<>();
							mapWar7 = new HashMap<>();
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundSM);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schemaSM = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeureSM = eElementH.getAttribute(Constant.DATEHEURE);
										titleSM = eElementH.getAttribute(Constant.TITLE);
									}
								}

								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								patternSM = nodePattern.getLength();

								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rulesSM = nodeRules.getLength();

								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 6) == 0) {
														dataType.setImage(redImageView);
														nbrError7 = nbrError7 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr7.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 6) == 0) {
														dataType.setImage(greenImageView);
														nbrWar7 = nbrWar7 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar7.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 6) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 6) == 0) {
													dataType.setImage(redImageView);
													nbrError7 = nbrError7 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr7.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}
										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 6) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}

						// _verif_IHE_entete.xml
						final File foundTermino = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIFTERM),
								new File(rapportFolder));
						if (foundTermino != null) {
							nbrError8 = 0;
							nbrWar8 = 0;
							mapErr8 = new HashMap<>();
							mapWar8 = new HashMap<>();
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundTermino);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schemaT = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeureT = eElementH.getAttribute(Constant.DATEHEURE);
										titleT = eElementH.getAttribute(Constant.TITLE);
									}
								}

								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								patternT = nodePattern.getLength();
								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rulesT = nodeRules.getLength();
								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 7) == 0) {
														dataType.setImage(redImageView);
														nbrError8 = nbrError8 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr8.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 7) == 0) {
														dataType.setImage(greenImageView);
														nbrWar8 = nbrWar8 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar8.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 7) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 7) == 0) {
													dataType.setImage(redImageView);
													nbrError8 = nbrError8 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr8.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}
										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 7) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}
						if (found != null) {
							tableView.setItems(data);
						} else {
							final Alert alert = new Alert(AlertType.INFORMATION);
							final DialogPane dialogPane = alert.getDialogPane();
							Inutility3.getStyleDialog(dialogPane)
									.add(getClass().getResource(Constant.CSS).toExternalForm());
							Inutility3.getStyleClass(dialogPane).add(Constant.DIALOG);
							dialogPane.setMinHeight(130);
							dialogPane.setMaxHeight(130);
							dialogPane.setPrefHeight(130);
							alert.setContentText(Inutility.getString("popup.error2"));
							alert.setHeaderText(null);
							alert.getDialogPane().lookupButton(ButtonType.OK).setVisible(true);
							alert.showAndWait();
						}
					});
				}
			}
		});

		button3.setOnAction(event -> {
			if (text1.getText().isEmpty()) {
				final Alert alert = new Alert(AlertType.ERROR);
				final DialogPane dialogPane = alert.getDialogPane();
				Inutility3.getStyleDialog(dialogPane).add(getClass().getResource(Constant.CSS).toExternalForm());
				Inutility3.getStyleClass(dialogPane).add(Constant.DIALOG);
				dialogPane.setMinHeight(130);
				dialogPane.setMaxHeight(130);
				dialogPane.setPrefHeight(130);
				alert.setContentText(Inutility.getString("popup.error1"));
				alert.setHeaderText(null);
				alert.getDialogPane().lookupButton(ButtonType.OK).setVisible(true);
				alert.showAndWait();
			} else {
				progressIndicator = new ProgressIndicator();
				progressIndicator.setProgress(ProgressIndicator.INDETERMINATE_PROGRESS);
				final LocalDateTime startTime = LocalDateTime.now();
				loadingPane.setVisible(true);
				indicatorBox.setVisible(true);
				button3.setDisable(true);
				lbl.setText("");
				lbl1.setText("");
				lbl2.setText("");
				lbl3.setText("");
				lbl4.setText("");
				lbl5.setText("");
				lbl6.setText("");
				lbl7.setText("");
				lbl8.setText("");
				lbl9.setText("");
				final Task<Void> loadTask = new Task<>() {
					@Override
					protected Void call() throws InterruptedException {
						performTreatment(text1, text2, tableView);
						return null;
					}

					@Override
					protected void succeeded() {
						super.succeeded();
						progressIndicator.setProgress(1.0);
						loadingPane.setVisible(false);
						indicatorBox.setVisible(false);
						button3.setDisable(false);
						progressIndicator.setVisible(false);
						ExecutorService executorService;
						final List<File> xmlFiles = new ArrayList<>();

						if (text2.getText().isEmpty()) {
							executorService = Executors.newFixedThreadPool(5);
							xmlFiles.add(validator.getOutputFilePathSm());
							xmlFiles.add(validator.getOutputFilePathIhe());
							xmlFiles.add(validator.getOutputFilePathMc());
							xmlFiles.add(validator.getOutputFilePathAns());
							xmlFiles.add(validator.getOutputFilePathTer());
						} else {
							executorService = Executors.newFixedThreadPool(6);
							xmlFiles.add(validator.getOutputFilePathSm());
							xmlFiles.add(validator.getOutputFilePathIhe());
							xmlFiles.add(validator.getOutputFilePathMc());
							xmlFiles.add(validator.getOutputFilePathAns());
							xmlFiles.add(validator.getOutputFilePathTer());
							xmlFiles.add(validator.getOutputFilePathSch());
						}
						for (final File xmlFile : xmlFiles) {
							executorService.submit(() -> {
								if (!smExiste && xmlFile.getAbsolutePath()
										.equals(Inutility6.getOutputFilePath(validator).getAbsolutePath())) {
									try (BufferedWriter bufferedWriter = new BufferedWriter(
											Files.newBufferedWriter(Paths.get(xmlFile.getAbsolutePath())))) {
										final Serializer serializer = Inutility6.getProcessor(validator)
												.newSerializer(bufferedWriter);
										transformer.setInitialContextNode(validator.getXmlNode());
										transformer.setDestination(serializer);
										transformer.transform();
									} catch (final IOException | SaxonApiException e) {
										if (LOG.isInfoEnabled()) {
											final String error = e.getMessage();
											LOG.error(error);
										}
									}
								}
								if (!iheExiste && xmlFile.getAbsolutePath()
										.equals(Inutility6.getOutputFilePathIhe(validator).getAbsolutePath())) {
									try (BufferedWriter bufferedWriter = new BufferedWriter(
											Files.newBufferedWriter(Paths.get(xmlFile.getAbsolutePath())))) {
										final Serializer serializer = Inutility6.getProcessor(validator)
												.newSerializer(bufferedWriter);
										transformerIhe.setInitialContextNode(validator.getXmlNode());
										transformerIhe.setDestination(serializer);
										transformerIhe.transform();
									} catch (final IOException | SaxonApiException e) {
										if (LOG.isInfoEnabled()) {
											final String error = e.getMessage();
											LOG.error(error);
										}
									}
								}
								if (!mcExiste && xmlFile.getAbsolutePath()
										.equals(Inutility6.getOutputFilePathMc(validator).getAbsolutePath())) {
									try (BufferedWriter bufferedWriter = new BufferedWriter(
											Files.newBufferedWriter(Paths.get(xmlFile.getAbsolutePath())))) {
										final Serializer serializer = Inutility6.getProcessor(validator)
												.newSerializer(bufferedWriter);
										transformerMc.setInitialContextNode(validator.getXmlNode());
										transformerMc.setDestination(serializer);
										transformerMc.transform();
									} catch (final IOException | SaxonApiException e) {
										if (LOG.isInfoEnabled()) {
											final String error = e.getMessage();
											LOG.error(error);
										}
									}
								}
								if (!ansExiste && xmlFile.getAbsolutePath()
										.equals(Inutility6.getOutputFilePathAns(validator).getAbsolutePath())) {
									try (BufferedWriter bufferedWriter = new BufferedWriter(
											Files.newBufferedWriter(Paths.get(xmlFile.getAbsolutePath())))) {
										final Serializer serializer = Inutility6.getProcessor(validator)
												.newSerializer(bufferedWriter);
										transformerAns.setInitialContextNode(validator.getXmlNode());
										transformerAns.setDestination(serializer);
										transformerAns.transform();
									} catch (final IOException | SaxonApiException e) {
										if (LOG.isInfoEnabled()) {
											final String error = e.getMessage();
											LOG.error(error);
										}
									}
								}
								if (!terminoExiste && xmlFile.getAbsolutePath()
										.equals(Inutility6.getOutputFilePathTer(validator).getAbsolutePath())) {
									try (BufferedWriter bufferedWriter = new BufferedWriter(
											Files.newBufferedWriter(Paths.get(xmlFile.getAbsolutePath())))) {
										final Serializer serializer = Inutility6.getProcessor(validator)
												.newSerializer(bufferedWriter);
										transformerTer.setInitialContextNode(validator.getXmlNode());
										transformerTer.setDestination(serializer);
										transformerTer.transform();
									} catch (final IOException | SaxonApiException e) {
										if (LOG.isInfoEnabled()) {
											final String error = e.getMessage();
											LOG.error(error);
										}
									}
								}
								if (!schExiste && !text2.getText().isEmpty() && xmlFile.getAbsolutePath()
										.equals(Inutility6.getOutputFilePathSch(validator).getAbsolutePath())) {
									try (BufferedWriter bufferedWriter = new BufferedWriter(
											Files.newBufferedWriter(Paths.get(xmlFile.getAbsolutePath())))) {
										final Serializer serializer = Inutility6.getProcessor(validator)
												.newSerializer(bufferedWriter);
										transformerSch.setInitialContextNode(validator.getXmlNode());
										transformerSch.setDestination(serializer);
										transformerSch.transform();
									} catch (final IOException | SaxonApiException e) {
										if (LOG.isInfoEnabled()) {
											final String error = e.getMessage();
											LOG.error(error);
										}
									}
								}
							});
						}
						executorService.shutdown();
						while (!executorService.isTerminated()) {
							// Attendre que toutes les tâches se terminent
						}

						final File recordsDir = new File(text1.getText());
						final String rapportFolder = recordsDir.getParentFile().getParent().concat(Constant.FOLDER_RAP);
						final File found = Inutility2.findFile(sNomFichierCDA.concat(Constant.VALIDATE),
								new File(rapportFolder));
						final DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
						DocumentBuilder dbuilder;
						final ObservableList<ViewObject> data = FXCollections.observableArrayList(
								new ViewObject(1, notStaretedIv, sNomFichierCDA.concat(Constant.VALIDATE)),
								new ViewObject(2, notStaretedIv, sNomFichierCDA.concat(Constant.VERIF)),
								new ViewObject(3, notStaretedIv, sNomFichierCDA.concat(Constant.VERIFIHE)),
								new ViewObject(4, notStaretedIv, sNomFichierCDA.concat(Constant.VERIFMDC)),
								new ViewObject(5, notStaretedIv, sNomFichierCDA.concat(Constant.VERIFANS)),
								new ViewObject(6, notStaretedIv, sNomFichierCDA.concat(Constant.VERIFSM)),
								new ViewObject(7, notStaretedIv, sNomFichierCDA.concat(Constant.VERIFTERM)));
						tableView.setItems(data);
						firstNameCol.setCellValueFactory(new PropertyValueFactory<>(Constant.IMG));
						lastNameCol.setCellValueFactory(new PropertyValueFactory<>(Constant.FNAME));
						if (found != null) {
							nbrError1 = 0;
							nbrWar1 = 0;
							mapErr = new HashMap<>();
							mapWar = new HashMap<>();
							final Image greenImage = new Image(Constant.GREEN);
							final Image redImage = new Image(Constant.RED);
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(found);
								doc.getDocumentElement().normalize();
								final NodeList nodeList = doc.getElementsByTagName(Constant.XSDVAL);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.RESULT);
										if (Constant.OKEY.equalsIgnoreCase(att)) {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 1) == 0) {
													dataType.setImage(greenImageView);
												}
											}
										} else if (Constant.ERROR.equalsIgnoreCase(att)) {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 1) == 0) {
													dataType.setImage(redImageView);
													nbrError1 = nbrError1 + 1;
													final NodeList nodeL = doc.getElementsByTagName(Constant.XSDVALERR);
													final org.w3c.dom.Node nod = nodeL.item(0);
													if (nod.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
														final Element element = (Element) nod;
														final String value = element.getTextContent();
														mapErr.put(nbrError1, value);
													}
												}
											}
										} else if (Constant.WARNING.equalsIgnoreCase(att)) {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 1) == 0) {
													dataType.setImage(redImageView);
													nbrWar1 = nbrWar1 + 1;
													final NodeList nodeL = doc.getElementsByTagName(Constant.XSDVALERR);
													final org.w3c.dom.Node nod = nodeL.item(0);
													if (nod.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
														final Element element = (Element) nod;
														final String value = element.getTextContent();
														mapWar.put(nbrWar1, value);
													}

												}
											}
										}

										Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
									}
								}
							} catch (final ParserConfigurationException | SAXException | IOException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}

						}
						// _verif.xml
						if (!text2.getText().isEmpty()) {
							final File foundVerif = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIF),
									new File(rapportFolder));
							if (foundVerif != null) {
								nbrError2 = 0;
								nbrWar2 = 0;
								mapErr2 = new HashMap<>();
								mapWar2 = new HashMap<>();
								final Image greenImage = new Image(Constant.GREEN);
								final Image redImage = new Image(Constant.RED);
								final ImageView greenImageView = new ImageView();
								greenImageView.setImage(greenImage);
								final ImageView redImageView = new ImageView();
								redImageView.setImage(redImage);
								try {
									dbuilder = dbf.newDocumentBuilder();
									final Document doc = dbuilder.parse(foundVerif);
									doc.getDocumentElement().normalize();
									final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
									for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
										final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
										if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
											final Element eElementH = (Element) nodeH;
											schema = eElementH.getAttribute(Constant.SCHVERSION);
											dateHeure = eElementH.getAttribute(Constant.DATEHEURE);
											title = eElementH.getAttribute(Constant.TITLE);
										}
									}

									final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
									pattern = nodePattern.getLength();

									final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
									rules = nodeRules.getLength();

									final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
									for (int itr = 0; itr < nodeList.getLength(); itr++) {
										final org.w3c.dom.Node node = nodeList.item(itr);
										if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
											final Element eElement = (Element) node;
											final String att = eElement.getAttribute(Constant.ROLE);
											if (att != null && !att.isEmpty()) {
												if (Constant.ERROR.equalsIgnoreCase(att)) {
													for (final ViewObject dataType : data) {
														if (NumberUtils.compare(dataType.getRow(), 2) == 0) {
															dataType.setImage(redImageView);
															nbrError2 = nbrError2 + 1;
															final String attLoc = eElement
																	.getAttribute(Constant.LOCATION);
															final NodeList nodeV = eElement
																	.getElementsByTagName(Constant.TEXT);
															mapErr2.put(nodeV.item(0).getTextContent(), attLoc);
														}
													}
												} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
													for (final ViewObject dataType : data) {
														if (NumberUtils.compare(dataType.getRow(), 2) == 0) {
															dataType.setImage(greenImageView);
															nbrWar2 = nbrWar2 + 1;
															final String attLoc = eElement
																	.getAttribute(Constant.LOCATION);
															final NodeList nodeV = eElement
																	.getElementsByTagName(Constant.TEXT);
															mapWar2.put(nodeV.item(0).getTextContent(), attLoc);
														}
													}
												} else {
													for (final ViewObject dataType : data) {
														if (NumberUtils.compare(dataType.getRow(), 2) == 0) {
															dataType.setImage(greenImageView);
														}
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 2) == 0) {
														dataType.setImage(redImageView);
														nbrError2 = nbrError2 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr2.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}

											}
										}
									}
									if (nodeList.getLength() == 0) {
										for (final ViewObject dataType : data) {
											if (NumberUtils.compare(dataType.getRow(), 2) == 0) {
												dataType.setImage(greenImageView);
											}
										}
									}
									Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
								} catch (final ParserConfigurationException | IOException | SAXException e) {
									if (LOG.isInfoEnabled()) {
										final String error = e.getMessage();
										LOG.error(error);
									}
								}
							}
						}
						// _verif_IHE_corps.xml
						final File foundIheCorps = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIFIHE),
								new File(rapportFolder));
						if (foundIheCorps != null) {
							nbrError3 = 0;
							nbrWar3 = 0;
							mapErr3 = new HashMap<>();
							mapWar3 = new HashMap<>();
							final Image greenImage = new Image(Constant.GREEN);
							final Image redImage = new Image(Constant.RED);
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundIheCorps);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schemaCorps = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeureCorps = eElementH.getAttribute(Constant.DATEHEURE);
										titleCorps = eElementH.getAttribute(Constant.TITLE);
									}
								}
								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								patternCorps = nodePattern.getLength();
								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rulesCorps = nodeRules.getLength();
								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 3) == 0) {
														dataType.setImage(redImageView);
														nbrError3 = nbrError3 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr3.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 3) == 0) {
														dataType.setImage(greenImageView);
														nbrWar3 = nbrWar3 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar3.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 3) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 3) == 0) {
													dataType.setImage(redImageView);
													nbrError3 = nbrError3 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr3.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}
										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 3) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}
						// _verif_ModelesDeContenusCDA.xml
						final File foundMCCDA = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIFMDC),
								new File(rapportFolder));
						if (foundMCCDA != null) {
							nbrError5 = 0;
							nbrWar5 = 0;
							mapErr5 = new HashMap<>();
							mapWar5 = new HashMap<>();
							final Image greenImage = new Image(Constant.GREEN);
							final Image redImage = new Image(Constant.RED);
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundMCCDA);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schemaMDC = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeureMDC = eElementH.getAttribute(Constant.DATEHEURE);
										titleMDC = eElementH.getAttribute(Constant.TITLE);
									}
								}
								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								patternMDC = nodePattern.getLength();
								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rulesMDC = nodeRules.getLength();
								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 4) == 0) {
														dataType.setImage(redImageView);
														nbrError5 = nbrError5 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr5.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 4) == 0) {
														dataType.setImage(greenImageView);
														nbrWar5 = nbrWar5 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar5.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 4) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 4) == 0) {
													dataType.setImage(redImageView);
													nbrError5 = nbrError5 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr5.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}
										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 4) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}
						// _verif_IHE_entete.xml
						final File foundMANS = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIFANS),
								new File(rapportFolder));
						if (foundMANS != null) {
							nbrError6 = 0;
							nbrWar6 = 0;
							mapErr6 = new HashMap<>();
							mapWar6 = new HashMap<>();
							final Image greenImage = new Image(Constant.GREEN);
							final Image redImage = new Image(Constant.RED);
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundMANS);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schemaMANS = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeureMANS = eElementH.getAttribute(Constant.DATEHEURE);
										titleMANS = eElementH.getAttribute(Constant.TITLE);
									}
								}
								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								patternMANS = nodePattern.getLength();
								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rulesMANS = nodeRules.getLength();
								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 5) == 0) {
														dataType.setImage(redImageView);
														nbrError6 = nbrError6 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr6.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 5) == 0) {
														dataType.setImage(greenImageView);
														nbrWar6 = nbrWar6 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar6.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 5) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 5) == 0) {
													dataType.setImage(redImageView);
													nbrError6 = nbrError6 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr6.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}
										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 5) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}
						// _verif_IHE_entete.xml
						final File foundSM = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIFSM),
								new File(rapportFolder));
						if (foundSM != null) {
							nbrError7 = 0;
							nbrWar7 = 0;
							mapErr7 = new HashMap<>();
							mapWar7 = new HashMap<>();
							final Image greenImage = new Image(Constant.GREEN);
							final Image redImage = new Image(Constant.RED);
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundSM);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schemaSM = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeureSM = eElementH.getAttribute(Constant.DATEHEURE);
										titleSM = eElementH.getAttribute(Constant.TITLE);
									}
								}
								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								patternSM = nodePattern.getLength();
								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rulesSM = nodeRules.getLength();
								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 6) == 0) {
														dataType.setImage(redImageView);
														nbrError7 = nbrError7 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr7.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 6) == 0) {
														dataType.setImage(greenImageView);
														nbrWar7 = nbrWar7 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar7.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 6) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 6) == 0) {
													dataType.setImage(redImageView);
													nbrError7 = nbrError7 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr7.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}
										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 6) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}

						// _verif_IHE_entete.xml
						final File foundTermino = Inutility2.findFile(sNomFichierCDA.concat(Constant.VERIFTERM),
								new File(rapportFolder));
						if (foundTermino != null) {
							nbrError8 = 0;
							nbrWar8 = 0;
							mapErr8 = new HashMap<>();
							mapWar8 = new HashMap<>();
							final Image greenImage = new Image(Constant.GREEN);
							final Image redImage = new Image(Constant.RED);
							final ImageView greenImageView = new ImageView();
							greenImageView.setImage(greenImage);
							final ImageView redImageView = new ImageView();
							redImageView.setImage(redImage);
							try {
								dbuilder = dbf.newDocumentBuilder();
								final Document doc = dbuilder.parse(foundTermino);
								doc.getDocumentElement().normalize();
								final NodeList nodeHeader = doc.getElementsByTagName(Constant.OUTPUT);
								for (int itr = 0; itr < nodeHeader.getLength(); itr++) {
									final org.w3c.dom.Node nodeH = nodeHeader.item(itr);
									if (nodeH.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElementH = (Element) nodeH;
										schemaT = eElementH.getAttribute(Constant.SCHVERSION);
										dateHeureT = eElementH.getAttribute(Constant.DATEHEURE);
										titleT = eElementH.getAttribute(Constant.TITLE);
									}
								}
								final NodeList nodePattern = doc.getElementsByTagName(Constant.PATTERN);
								patternT = nodePattern.getLength();
								final NodeList nodeRules = doc.getElementsByTagName(Constant.RULE);
								rulesT = nodeRules.getLength();
								final NodeList nodeList = doc.getElementsByTagName(Constant.ASSERT);
								for (int itr = 0; itr < nodeList.getLength(); itr++) {
									final org.w3c.dom.Node node = nodeList.item(itr);
									if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
										final Element eElement = (Element) node;
										final String att = eElement.getAttribute(Constant.ROLE);
										if (att != null && !att.isEmpty()) {
											if (Constant.ERRORMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 7) == 0) {
														dataType.setImage(redImageView);
														nbrError8 = nbrError8 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapErr8.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else if (Constant.WARNINGMIN.equalsIgnoreCase(att)) {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 7) == 0) {
														dataType.setImage(greenImageView);
														nbrWar8 = nbrWar8 + 1;
														final String attLoc = eElement.getAttribute(Constant.LOCATION);
														final NodeList nodeV = eElement
																.getElementsByTagName(Constant.TEXT);
														mapWar8.put(nodeV.item(0).getTextContent(), attLoc);
													}
												}
											} else {
												for (final ViewObject dataType : data) {
													if (NumberUtils.compare(dataType.getRow(), 7) == 0) {
														dataType.setImage(greenImageView);
													}
												}
											}
										} else {
											for (final ViewObject dataType : data) {
												if (NumberUtils.compare(dataType.getRow(), 7) == 0) {
													dataType.setImage(redImageView);
													nbrError8 = nbrError8 + 1;
													final String attLoc = eElement.getAttribute(Constant.LOCATION);
													final NodeList nodeV = eElement.getElementsByTagName(Constant.TEXT);
													mapErr8.put(nodeV.item(0).getTextContent(), attLoc);
												}
											}
										}
									}
								}
								if (nodeList.getLength() == 0) {
									for (final ViewObject dataType : data) {
										if (NumberUtils.compare(dataType.getRow(), 7) == 0) {
											dataType.setImage(greenImageView);
										}
									}
								}
								Inutility2.setData(firstNameCol, lastNameCol, tableView, data);
							} catch (final ParserConfigurationException | IOException | SAXException e) {
								if (LOG.isInfoEnabled()) {
									final String error = e.getMessage();
									LOG.error(error);
								}
							}
						}
						final LocalDateTime endTime = LocalDateTime.now();
						final Duration duration = Duration.between(startTime, endTime);
						final long hours = duration.toHours();
						final long minutes = duration.toMinutes() % 60;
						final long seconds = duration.getSeconds() % 60;
						time = hours + "h:" + minutes + "m:" + seconds + "s";
						labelTime.setText(Inutility.getString("message.time.validate") + time);
						labelFileName.setText(sNomFichierCDA + ".xml");
						text1.setText("");
						if (text2 != null && !text2.getText().isEmpty()) {
							text2.setText("");
						}
					}

					@Override
					protected void failed() {
						super.failed();
						loadingPane.setVisible(false);
						button3.setDisable(false);
					}
				};

				// Start the task on a new thread
				new Thread(loadTask).start();
			}

		});

		tableView.widthProperty().addListener(new ChangeListener<>() {
			@Override
			public void changed(ObservableValue<? extends Number> source, Number oldWidth, Number newWidth) {
				// Don't show header
				final Pane header = (Pane) tableView.lookup("TableHeaderRow");
				header.setMaxHeight(0);
				header.setMinHeight(0);
				header.setPrefHeight(0);
				header.setVisible(false);
			}
		});

		Inutility6.getSelectionModel(tableView).selectedIndexProperty().addListener(new ChangeListener<>() {
			@Override
			public void changed(final ObservableValue<? extends Number> oValue, final Number oldValue,
					final Number newValue) {
				if (NumberUtils.compare(newValue.intValue(), 0) == 0) {
					lbl.setText(Inutility.getString("label.rapport1"));
					final LabelCls cls = new LabelCls();
					cls.setLbl1(lbl1);
					cls.setLbl2(lbl2);
					cls.setLbl3(lbl3);
					cls.setLbl4(lbl4);
					cls.setLbl5(lbl5);
					cls.setLbl6(lbl6);
					cls.setLbl7(lbl7);
					cls.setLbl8(lbl8);
					cls.setLbl9(lbl9);
					if (nbrError1 > 0) {
						Inutility2.construct1(cls, nbrError1, mapErr);

					} else {
						Inutility2.construct2(cls);
					}
				}
				if (NumberUtils.compare(newValue.intValue(), 1) == 0) {
					if (title != null) {
						lbl.setText(title);
						final LabelCls cls = new LabelCls();
						cls.setLbl1(lbl1);
						cls.setLbl2(lbl2);
						cls.setLbl3(lbl3);
						cls.setLbl4(lbl4);
						cls.setLbl5(lbl5);
						cls.setLbl6(lbl6);
						cls.setLbl7(lbl7);
						cls.setLbl8(lbl8);
						cls.setLbl9(lbl9);
						if (nbrError2 > 0) {
							Inutility2.construct3(cls, sNomFichierCDA, dateHeure, schema, pattern, rules, nbrError2,
									nbrWar2, mapErr2, mapWar2);
						} else {
							Inutility2.construct4(cls, sNomFichierCDA, dateHeure, schema, pattern, rules, nbrError2,
									nbrWar2, mapWar2);
						}
					} else {
						lbl.setText(Inutility.getString("popup.error2"));
						lbl1.setText("");
						lbl2.setText("");
						lbl3.setText("");
						lbl4.setText("");
						lbl5.setText("");
						lbl6.setText("");
						lbl7.setText("");
						lbl8.setText("");
						lbl9.setText("");
					}
				}
				if (NumberUtils.compare(newValue.intValue(), 2) == 0) {
					lbl.setText(titleCorps);
					final LabelCls cls = new LabelCls();
					cls.setLbl1(lbl1);
					cls.setLbl2(lbl2);
					cls.setLbl3(lbl3);
					cls.setLbl4(lbl4);
					cls.setLbl5(lbl5);
					cls.setLbl6(lbl6);
					cls.setLbl7(lbl7);
					cls.setLbl8(lbl8);
					cls.setLbl9(lbl9);
					if (nbrError3 > 0) {
						Inutility2.construct3(cls, sNomFichierCDA, dateHeureCorps, schemaCorps, patternCorps,
								rulesCorps, nbrError3, nbrWar3, mapErr3, mapWar3);
					} else {
						Inutility2.construct4(cls, sNomFichierCDA, dateHeureCorps, schemaCorps, patternCorps,
								rulesCorps, nbrError3, nbrWar3, mapWar3);
					}
				}
				if (NumberUtils.compare(newValue.intValue(), 3) == 0) {
					lbl.setText(titleMDC);
					final LabelCls cls = new LabelCls();
					cls.setLbl1(lbl1);
					cls.setLbl2(lbl2);
					cls.setLbl3(lbl3);
					cls.setLbl4(lbl4);
					cls.setLbl5(lbl5);
					cls.setLbl6(lbl6);
					cls.setLbl7(lbl7);
					cls.setLbl8(lbl8);
					cls.setLbl9(lbl9);
					if (nbrError5 > 0) {
						Inutility2.construct3(cls, sNomFichierCDA, dateHeureMDC, schemaMDC, patternMDC, rulesMDC,
								nbrError5, nbrWar5, mapErr5, mapWar5);

					} else {
						Inutility2.construct4(cls, sNomFichierCDA, dateHeureMDC, schemaMDC, patternMDC, rulesMDC,
								nbrError5, nbrWar5, mapWar5);
					}
				}
				if (NumberUtils.compare(newValue.intValue(), 4) == 0) {
					lbl.setText(titleMANS);
					final LabelCls cls = new LabelCls();
					cls.setLbl1(lbl1);
					cls.setLbl2(lbl2);
					cls.setLbl3(lbl3);
					cls.setLbl4(lbl4);
					cls.setLbl5(lbl5);
					cls.setLbl6(lbl6);
					cls.setLbl7(lbl7);
					cls.setLbl8(lbl8);
					cls.setLbl9(lbl9);
					if (nbrError6 > 0) {
						Inutility2.construct3(cls, sNomFichierCDA, dateHeureMANS, schemaMANS, patternMANS, rulesMANS,
								nbrError6, nbrWar6, mapErr6, mapWar6);
					} else {
						Inutility2.construct4(cls, sNomFichierCDA, dateHeureMANS, schemaMANS, patternMANS, rulesMANS,
								nbrError6, nbrWar6, mapWar6);
					}
				}
				if (NumberUtils.compare(newValue.intValue(), 5) == 0) {
					lbl.setText(titleSM);
					final LabelCls cls = new LabelCls();
					cls.setLbl1(lbl1);
					cls.setLbl2(lbl2);
					cls.setLbl3(lbl3);
					cls.setLbl4(lbl4);
					cls.setLbl5(lbl5);
					cls.setLbl6(lbl6);
					cls.setLbl7(lbl7);
					cls.setLbl8(lbl8);
					cls.setLbl9(lbl9);
					if (nbrError7 > 0) {
						Inutility2.construct3(cls, sNomFichierCDA, dateHeureSM, schemaSM, patternSM, rulesSM, nbrError7,
								nbrWar7, mapErr7, mapWar7);
					} else {
						Inutility2.construct4(cls, sNomFichierCDA, dateHeureSM, schemaSM, patternSM, rulesSM, nbrError7,
								nbrWar7, mapWar7);
					}
				}
				if (NumberUtils.compare(newValue.intValue(), 6) == 0) {
					lbl.setText(titleT);
					final LabelCls cls = new LabelCls();
					cls.setLbl1(lbl1);
					cls.setLbl2(lbl2);
					cls.setLbl3(lbl3);
					cls.setLbl4(lbl4);
					cls.setLbl5(lbl5);
					cls.setLbl6(lbl6);
					cls.setLbl7(lbl7);
					cls.setLbl8(lbl8);
					cls.setLbl9(lbl9);
					if (nbrError8 > 0) {
						Inutility2.construct3(cls, sNomFichierCDA, dateHeureT, schemaT, patternT, rulesT, nbrError8,
								nbrWar8, mapErr8, mapWar8);
					} else {
						Inutility2.construct4(cls, sNomFichierCDA, dateHeureT, schemaT, patternT, rulesT, nbrError8,
								nbrWar8, mapWar8);
					}
				}
			}
		});

		final StackPane rootPane = new StackPane();
		Inutility3.getChildSPane(rootPane).add(tableView);
		rootPane.setStyle(Constant.STYLE12);

		final HBox hroot2 = new HBox();
		Inutility3.getChildrenHNode(hroot2).addAll(button3, spacer, button4);

		final HBox hroot4 = new HBox();

		final Region spacerF = new Region();
		spacerF.setMaxWidth(90);
		HBox.setHgrow(spacerF, Priority.ALWAYS);
		labelFileName.setLayoutX(370);
		final Pane rootFile = new Pane(labelFileName);
		Inutility3.getChildrenHNode(hroot4).addAll(labelTime, rootFile);
		final SplitPane splitPane = new SplitPane();
		splitPane.setStyle("-fx-box-border: 0px;");
		splitPane.setOrientation(Orientation.HORIZONTAL);
		splitPane.setDividerPositions(0.5f, 0.5f);
		Inutility6.getItemsSplit(splitPane).addAll(rootPane, scrollPane);

		final HBox hroot3 = new HBox();
		Inutility3.getChildrenHNode(hroot3).add(splitPane);
		Inutility3.getChildrenVNode(root).addAll(hboxx, hroot, label3, hroot1, label4, hroot2, hroot3, hroot4);

		final StackPane rootLayout = new StackPane(root, loadingPane);

		final Scene scene = new Scene(rootLayout, 900, 650);
		splitPane.setPrefWidth(scene.getWidth());
		Inutility6.getStyleScene(scene).add(WebViewSample.class.getResource(Constant.CSS).toExternalForm());
		fourStage.titleProperty().bind(Inutility.createStringBinding("button.test.contenu.cda"));
		fourStage.setScene(scene);
		fourStage.setMaximized(false);
		fourStage.setResizable(false);

		final Image image = new Image(Constant.TCC);
		Inutility3.getIcons(fourStage).add(image);
		fourStage.show();

		fourStage.setOnCloseRequest(event -> {

			final String directoryPath = validator.getUserHome();
			final String prefix = "intermediate";
			final File directory = new File(directoryPath);
			if (directory.exists() && directory.isDirectory()) {
				final File[] files = directory.listFiles();
				if (files != null) {
					for (final File file : files) {
						final int lastIndex = file.getName().lastIndexOf('.');
						if (file.isFile() && file.getName().startsWith(prefix) && lastIndex > 0
								&& lastIndex < file.getName().length() - 1
								&& "xml".equals(file.getName().substring(lastIndex + 1))) {
							file.delete();
						}
					}
				}
			}
		});
	}

	/**
	 * performTreatment
	 * 
	 * @param text1
	 * @param text2
	 * @param tableView
	 * @param
	 */
	private void performTreatment(final TextField text1, final TextField text2, final TableView<ViewObject> tableView) {
		Inutility6.getItemsView(tableView).clear();
		sNomFichierCDA = new File(text1.getText()).getName().replaceFirst("[.][^.]+$", "");

		validator.valideCda(text1.getText());
		if (!smExiste) {
			transformer = validator.validateStructMin(new File(text1.getText()));
		}
		if (!iheExiste) {
			transformerIhe = validator.validateIhe(text1.getText());
		}
		if (!mcExiste) {
			transformerMc = validator.validateMcCda(text1.getText());
		}
		if (!ansExiste) {
			transformerAns = validator.validateMAns(text1.getText());
		}
		if (!terminoExiste) {
			transformerTer = validator.validateTermino(text1.getText());
		}
		if (!text2.getText().isEmpty() && !schExiste) {
			transformerSch = validator.validateSch(text1.getText(), text2.getText());
		}
	}

	/**
	 * processIncludes
	 * 
	 * @param document
	 * @param baseDir
	 * @throws Exception
	 */
	public static List<Long> processIncludes(final String xmlFile, final File baseDir) {
		final List<Long> listDate = new ArrayList<>();
		final DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder builder;
		try {
			builder = factory.newDocumentBuilder();
			final Document document = builder.parse(xmlFile);
			final NodeList includeNodes = document.getElementsByTagName("include");
			for (int i = 0; i < includeNodes.getLength(); i++) {
				final Element includeElement = (Element) includeNodes.item(i);
				final String fileName = includeElement.getAttribute("href");
				final String name = fileName.substring(fileName.lastIndexOf('/') + 1);
				final File includedFile = new File(baseDir, name);
				if (includedFile.exists()) {
					listDate.add(includedFile.lastModified());
				}
			}
		} catch (final ParserConfigurationException | SAXException | IOException e) {
			if (LOG.isInfoEnabled()) {
				final String error = e.getMessage();
				LOG.error(error);
			}
		}

		return listDate;
	}
}