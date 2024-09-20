package com.ans.cda.utilities;

import java.io.File;

import com.ans.cda.ViewObject;

import javafx.collections.ObservableList;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.SplitPane;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;
import javafx.scene.control.TableView;
import javafx.scene.control.TableView.TableViewSelectionModel;
import javafx.scene.layout.VBox;
import javafx.stage.FileChooser;
import javafx.stage.FileChooser.ExtensionFilter;
import net.sf.saxon.s9api.Processor;

/**
 * Inutility6
 */
public final class Inutility6 {

	/**
	 * INUtility constructor
	 */
	private Inutility6() {
		// empty constructor
	}

	/**
	 * getChildrenNode
	 * 
	 * @param vBox
	 * @return
	 */
	public static ObservableList<Node> getChildrenNode(final VBox vBox) {
		return vBox.getChildren();
	}

	/**
	 * getSelectionModel
	 * 
	 * @param tableView
	 * @return
	 */
	public static TableViewSelectionModel<ViewObject> getSelectionModel(final TableView<ViewObject> tableView) {
		return tableView.getSelectionModel();
	}

	/**
	 * getItemsSplit
	 * 
	 * @param splitPane
	 * @return
	 */
	public static ObservableList<Node> getItemsSplit(final SplitPane splitPane) {
		return splitPane.getItems();
	}

	/**
	 * getItemsView
	 * 
	 * @param tableView
	 * @return
	 */
	public static ObservableList<ViewObject> getItemsView(final TableView<ViewObject> tableView) {
		return tableView.getItems();
	}

	/**
	 * getOutputFilePathSm
	 * 
	 * @param validator
	 * @return
	 */
	public static File getOutputFilePath(final MultiSchematronValidator validator) {
		return validator.getOutputFilePathSm();
	}
	
	/**
	 * getOutputFilePathSch
	 * 
	 * @param validator
	 * @return
	 */
	public static File getOutputFilePathSch(final MultiSchematronValidator validator) {
		return validator.getOutputFilePathSch();
	}

	/**
	 * getOutputFilePathTer
	 * 
	 * @param validator
	 * @return
	 */
	public static File getOutputFilePathTer(final MultiSchematronValidator validator) {
		return validator.getOutputFilePathTer();
	}

	/**
	 * getOutputFilePathAns
	 * 
	 * @param validator
	 * @return
	 */
	public static File getOutputFilePathAns(final MultiSchematronValidator validator) {
		return validator.getOutputFilePathAns();
	}

	/**
	 * getOutputFilePathMc
	 * 
	 * @param validator
	 * @return
	 */
	public static File getOutputFilePathMc(final MultiSchematronValidator validator) {
		return validator.getOutputFilePathMc();
	}

	/**
	 * getOutputFilePathIhe
	 * 
	 * @param validator
	 * @return
	 */
	public static File getOutputFilePathIhe(final MultiSchematronValidator validator) {
		return validator.getOutputFilePathIhe();
	}

	/**
	 * getProcessor
	 * 
	 * @param validator
	 * @return
	 */
	public static Processor getProcessor(final MultiSchematronValidator validator) {
		return validator.getProcessor();
	}

	/**
	 * newObsMenu
	 * 
	 * @param fileChooser
	 */
	public static ObservableList<ExtensionFilter> newExtFilter(final FileChooser fileChooser) {
		return fileChooser.getExtensionFilters();
	}

	/**
	 * getTabPane
	 * 
	 * @param tabPane
	 * @param tabNumber
	 */
	public static ObservableList<Tab> getTabPane(final TabPane tabPane, final int tabNumber) {
		return tabPane.getTabs();
	}

	/**
	 * getStyleScene
	 * 
	 * @param scene
	 */
	public static ObservableList<String> getStyleScene(final Scene scene) {
		return scene.getStylesheets();
	}

}
