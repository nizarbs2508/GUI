package com.ans.cda.utilities;

import java.io.File;
import java.util.Map;
import java.util.Map.Entry;

import com.ans.cda.Constant;
import com.ans.cda.LabelCls;
import com.ans.cda.ViewObject;

import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.paint.Color;

/**
 * utility class
 * 
 * @author bensa Nizar
 */
public final class Inutility2 {
	/**
	 * INUtility2 constructor
	 */
	private Inutility2() {
		// empty constructor
	}

	/**
	 * findFile
	 * 
	 * @param name
	 * @param file
	 */
	public static File findFile(final String name, final File file) {
		File found = null;
		final File[] list = file.listFiles();
		if (list != null) {
			for (final File fil : list) {
				if (fil.isDirectory()) {
					findFile(name, fil);
				} else if (name.equalsIgnoreCase(fil.getName())) {
					found = fil;
				}
			}
		}
		return found;
	}

	/**
	 * constructLabel
	 */
	public static void constructLabel(final LabelCls cls) {
		Inutility5.getLabel(cls).setStyle(Constant.STYLE16);
		Inutility5.getLabel9(cls).setStyle(Constant.STYLE14);
		Inutility5.getLabel(cls).setPadding(new Insets(10, 0, 10, 5));
		Inutility5.getLabel1(cls).setPadding(new Insets(5, 0, 0, 5));
		Inutility5.getLabel2(cls).setPadding(new Insets(0, 0, 0, 5));
		Inutility5.getLabel3(cls).setPadding(new Insets(0, 0, 0, 5));
		Inutility5.getLabel4(cls).setPadding(new Insets(0, 0, 0, 5));
		Inutility5.getLabel5(cls).setPadding(new Insets(0, 0, 0, 5));
		Inutility5.getLabel6(cls).setPadding(new Insets(0, 0, 0, 5));
		Inutility5.getLabel7(cls).setPadding(new Insets(0, 0, 0, 5));
		Inutility5.getLabel8(cls).setPadding(new Insets(10, 0, 0, 5));
		Inutility5.getLabel9(cls).setPadding(new Insets(0, 0, 0, 5));
		Inutility5.getLabel1(cls).setWrapText(true);
		Inutility5.getLabel2(cls).setWrapText(true);
		Inutility5.getLabel3(cls).setWrapText(true);
		Inutility5.getLabel4(cls).setWrapText(true);
		Inutility5.getLabel5(cls).setWrapText(true);
		Inutility5.getLabel6(cls).setWrapText(true);
		Inutility5.getLabel7(cls).setWrapText(true);
		Inutility5.getLabel8(cls).setWrapText(true);
		Inutility5.getLabel9(cls).setWrapText(true);
	}

	/**
	 * initLabel
	 * 
	 * @param lbl  @param lbl1 @param lbl2
	 * @param lbl3 @param lbl4 @param lbl5
	 * @param lbl6 @param lbl7 @param lbl8
	 * @param lbl9
	 */
	public static void initLabel(final LabelCls cls) {
		Inutility5.getLabel(cls).setText("");
		Inutility5.getLabel1(cls).setText("");
		Inutility5.getLabel2(cls).setText("");
		Inutility5.getLabel3(cls).setText("");
		Inutility5.getLabel4(cls).setText("");
		Inutility5.getLabel5(cls).setText("");
		Inutility5.getLabel6(cls).setText("");
		Inutility5.getLabel7(cls).setText("");
		Inutility5.getLabel8(cls).setText("");
		Inutility5.getLabel9(cls).setText("");
	}

	/**
	 * construct1
	 * 
	 * @param lbl1 @param lbl2 @param lbl3
	 * @param lbl4 @param lbl5 @param lbl6
	 * @param lbl7 @param lbl8 @param lbl9
	 */
	public static void construct1(final LabelCls cls, final int nbrError1, final Map<Integer, String> mapErr) {
		Inutility5.getLabel1(cls).setPadding(new Insets(5, 0, 5, 5));
		Inutility5.getLabel2(cls).setPadding(new Insets(0, 0, 5, 5));
		Inutility5.getLabel1(cls).setText(Inutility.getString("label.rapport2"));
		Inutility5.getLabel1(cls).setTextFill(Color.RED);
		Inutility5.getLabel2(cls).setText(Inutility.getString("label.rapport3") + " " + nbrError1 + "\n");
		final StringBuilder label = new StringBuilder();
		final StringBuilder label1 = new StringBuilder();
		for (final Entry<Integer, String> mapentry : mapErr.entrySet()) {
			label.append(Inutility.getString("label.rapport4")).append('\n');
			label1.append(mapentry.getValue()).append('\n');
		}
		Inutility5.getLabel3(cls).setText(label.toString());
		Inutility5.getLabel4(cls).setTextFill(Color.RED);
		Inutility5.getLabel4(cls).setText(label1.toString());
		Inutility5.getLabel5(cls).setText("");
		Inutility5.getLabel6(cls).setText("");
		Inutility5.getLabel7(cls).setText("");
		Inutility5.getLabel8(cls).setText("");
		Inutility5.getLabel9(cls).setText("");
	}

	/**
	 * construct2
	 * 
	 * @param lbl1 @param lbl2 @param lbl3
	 * @param lbl4 @param lbl5 @param lbl6
	 * @param lbl7 @param lbl8 @param lbl9
	 */
	public static void construct2(final LabelCls cls) {
		Inutility5.getLabel1(cls).setText(Inutility.getString("label.rapport5"));
		Inutility5.getLabel1(cls).setTextFill(Color.GREEN);
		Inutility5.getLabel2(cls).setText("");
		Inutility5.getLabel3(cls).setText("");
		Inutility5.getLabel4(cls).setText("");
		Inutility5.getLabel5(cls).setText("");
		Inutility5.getLabel6(cls).setText("");
		Inutility5.getLabel7(cls).setText("");
		Inutility5.getLabel8(cls).setText("");
		Inutility5.getLabel9(cls).setText("");
	}

	/**
	 * 
	 * @param lbl       @param sNomFichierCDA @param dateHeure
	 * @param schema    @param pattern @param rules
	 * @param nbrError2 @param nbrWar2 @param mapErr2
	 * @param mapWar2
	 */
	public static void construct3(final LabelCls cls, final String sNomFichierCDA, final String dateHeure,
			final String schema, final int pattern, final int rules, final int nbrError2, final int nbrWar2,
			final Map<String, String> mapErr2, final Map<String, String> mapWar2) {
		Inutility5.getLabel1(cls).setTextFill(Color.BLACK);
		Inutility5.getLabel1(cls).setText(Inutility.getString("label.rapport7") + " " + sNomFichierCDA + ".xml" + "\n");
		Inutility5.getLabel2(cls).setText(Inutility.getString("label.rapport8") + " " + dateHeure);
		Inutility5.getLabel3(cls).setText(Inutility.getString("label.rapport9") + " " + schema);
		Inutility5.getLabel4(cls).setTextFill(Color.BLACK);
		Inutility5.getLabel4(cls).setText(Inutility.getString("label.rapport10") + " " + pattern);
		Inutility5.getLabel5(cls).setText(Inutility.getString("label.rapport11") + " " + rules);
		Inutility5.getLabel6(cls).setTextFill(Color.RED);
		Inutility5.getLabel6(cls).setText(Inutility.getString("label.rapport3") + " " + nbrError2 + "\n");
		Inutility5.getLabel7(cls).setTextFill(Color.GREEN);
		if (nbrWar2 > 0) {
			Inutility5.getLabel7(cls).setText(Inutility.getString("label.rapport6") + ":" + "\n");
			final StringBuilder label1 = new StringBuilder();
			for (final Entry<String, String> mapentry : mapWar2.entrySet()) {
				label1.append(mapentry.getKey().trim()).append('\n');
			}
			Inutility5.getLabel7(cls).setText(label1.toString());
		} else {
			Inutility5.getLabel7(cls).setText(Inutility.getString("label.rapport13"));
		}
		final StringBuilder label1 = new StringBuilder();
		for (final Map.Entry<String, String> mapentry : mapErr2.entrySet()) {
			label1.append(Inutility.getString("label.location")).append(':').append(mapentry.getValue()).append('\n')
					.append(mapentry.getKey().trim()).append("\n\n");
		}
		Inutility5.getLabel8(cls).setText(Inutility.getString("label.rapport4") + "\n");
		Inutility5.getLabel9(cls).setTextFill(Color.RED);
		Inutility5.getLabel9(cls).setText(label1.toString());
	}

	/**
	 * 
	 * @param lbl
	 * @param sNomFichierCDA @param dateHeure @param schema
	 * @param pattern        @param rules
	 * @param nbrError2      @param nbrWar2 @param mapWar2
	 */
	public static void construct4(final LabelCls cls, final String sNomFichierCDA, final String dateHeure,
			final String schema, final int pattern, final int rules, final int nbrError2, final int nbrWar2,
			final Map<String, String> mapWar2) {
		Inutility5.getLabel1(cls).setTextFill(Color.BLACK);
		Inutility5.getLabel1(cls).setText(Inutility.getString("label.rapport7") + " " + sNomFichierCDA + ".xml" + "\n");
		Inutility5.getLabel2(cls).setText(Inutility.getString("label.rapport8") + " " + dateHeure);
		Inutility5.getLabel3(cls).setText(Inutility.getString("label.rapport9") + " " + schema);
		Inutility5.getLabel4(cls).setTextFill(Color.BLACK);
		Inutility5.getLabel4(cls).setText(Inutility.getString("label.rapport10") + " " + pattern);
		Inutility5.getLabel5(cls).setText(Inutility.getString("label.rapport11") + " " + rules);
		Inutility5.getLabel6(cls).setTextFill(Color.GREEN);
		Inutility5.getLabel6(cls).setText(Inutility.getString("label.rapport12"));
		Inutility5.getLabel7(cls).setTextFill(Color.GREEN);
		if (nbrWar2 > 0) {
			Inutility5.getLabel7(cls).setText(Inutility.getString("label.rapport6") + ":" + "\n");
			final StringBuilder label1 = new StringBuilder();
			for (final Map.Entry<String, String> mapentry : mapWar2.entrySet()) {
				label1.append(mapentry.getKey().trim()).append('\n');
			}
			Inutility5.getLabel7(cls).setText(label1.toString());
		} else {
			Inutility5.getLabel7(cls).setText(Inutility.getString("label.rapport13"));
		}
		Inutility5.getLabel8(cls).setText("");
		Inutility5.getLabel9(cls).setText("");
	}

	/**
	 * setData
	 * 
	 * @param firstNameCol
	 * @param lastNameCol
	 * @param tableView
	 * @param data
	 */
	public static void setData(final TableColumn<ViewObject, String> firstNameCol,
			final TableColumn<ViewObject, String> lastNameCol, final TableView<ViewObject> tableView,
			final ObservableList<ViewObject> data) {
		firstNameCol.setCellValueFactory(new PropertyValueFactory<>(Constant.IMG));
		lastNameCol.setCellValueFactory(new PropertyValueFactory<>(Constant.FNAME));
		tableView.setItems(data);
	}

}