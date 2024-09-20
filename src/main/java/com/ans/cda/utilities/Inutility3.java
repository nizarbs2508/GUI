package com.ans.cda.utilities;

import javax.xml.parsers.SAXParser;

import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

import com.ans.cda.ViewObject;

import javafx.beans.property.ReadOnlyObjectProperty;
import javafx.collections.ObservableList;
import javafx.scene.Node;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.DialogPane;
import javafx.scene.control.MultipleSelectionModel;
import javafx.scene.control.SplitPane;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TreeItem;
import javafx.scene.image.Image;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

/**
 * Inutility3
 * 
 * @author bensa Nizar
 */
public final class Inutility3 {

	/**
	 * INUtility constructor
	 */
	private Inutility3() {
		// empty constructor
	}

	/**
	 * getChildrenHNode
	 * 
	 * @param hBox
	 * @return
	 */
	public static ObservableList<Node> getChildrenHNode(final HBox hBox) {
		return hBox.getChildren();
	}
	
	/**
	 * getIcons
	 * 
	 * @param stage
	 * @return
	 */
	public static ObservableList<Image> getIcons(final Stage stage) {
		return stage.getIcons();
	}

	/**
	 * getChildrenVNode
	 * 
	 * @param hBox
	 * @return
	 */
	public static ObservableList<Node> getChildrenVNode(final VBox hBox) {
		return hBox.getChildren();
	}

	/**
	 * getColumnsNode
	 * 
	 * @param hBox
	 * @return
	 */
	public static ObservableList<TableColumn<ViewObject, ?>> getColumnsNode(final TableView<ViewObject> hBox) {
		return hBox.getColumns();
	}

	/**
	 * selectedItemProperty
	 * 
	 * @param tvSelModel
	 * @return
	 */
	public static ReadOnlyObjectProperty<TreeItem<String>> selectedItemProperty(
			final MultipleSelectionModel<TreeItem<String>> tvSelModel) {
		return tvSelModel.selectedItemProperty();
	}

	/**
	 * getChildSPane
	 * 
	 * @param vBox
	 * @return
	 */
	public static ObservableList<Node> getChildSPane(final StackPane pane) {
		return pane.getChildren();
	}

	/**
	 * getStyleClassSplP
	 * 
	 * @param splitPane
	 */
	public static ObservableList<String> getStyleClassSplP(final SplitPane splitPane) {
		return splitPane.getStyleClass();
	}

	/**
	 * getStyleDialog
	 * 
	 * @param dialogPane
	 */
	public static ObservableList<String> getStyleDialog(final DialogPane dialogPane) {
		return dialogPane.getStylesheets();
	}

	/**
	 * getStyleClass
	 * 
	 * @param dialogPane
	 */
	public static ObservableList<String> getStyleClass(final DialogPane dialogPane) {
		return dialogPane.getStyleClass();
	}

	/**
	 * getButtonType
	 * 
	 * @param alert
	 */
	public static ObservableList<ButtonType> getButtonType(final Alert alert) {
		return alert.getButtonTypes();
	}

	/**
	 * getXMLReader
	 * 
	 * @param parser
	 * @return
	 * @throws SAXException
	 */
	public static XMLReader getXMLReader(final SAXParser parser) throws SAXException {
		return parser.getXMLReader();
	}

	/**
	 * getChildren
	 * 
	 * @param item
	 * @return
	 */
	public static ObservableList<TreeItem<String>> getChildren(final TreeItem<String> item) {
		return item.getChildren();
	}

}
