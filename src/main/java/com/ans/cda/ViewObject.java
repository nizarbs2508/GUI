package com.ans.cda;

import java.util.Objects;

import javafx.scene.image.ImageView;

/**
 * ViewObject
 */
public class ViewObject {

	/**
	 * row
	 */
	private int row;
	/**
	 * image
	 */
	private ImageView image;
	/**
	 * fileName
	 */
	private String fileName;

	/**
	 * ViewObject
	 */
	public ViewObject() {
		// empty constructor
	}

	/**
	 * ViewObject
	 * 
	 * @param image
	 * @param fileName
	 */
	public ViewObject(final int row, final ImageView image, final String fileName) {
		this.image = image;
		this.fileName = fileName;
		this.row = row;
	}

	/**
	 * @return the image
	 */
	public ImageView getImage() {
		return image;
	}

	/**
	 * @param image the image to set
	 */
	public void setImage(final ImageView image) {
		this.image = image;
	}

	/**
	 * @return the fileName
	 */
	public String getFileName() {
		return fileName;
	}

	/**
	 * @param fileName the fileName to set
	 */
	public void setFileName(final String fileName) {
		this.fileName = fileName;
	}

	/**
	 * @return the row
	 */
	public int getRow() {
		return row;
	}

	/**
	 * @param row the row to set
	 */
	public void setRow(final int row) {
		this.row = row;
	}

	/**
	 * hashCode
	 */
	@Override
	public int hashCode() {
		return Objects.hash(fileName, image, row);
	}

	/**
	 * equals
	 */
	@Override
	public boolean equals(final Object obj) {
		boolean bool;
		if (this == obj) {
			bool = true;
		} else if (obj == null || getClass() != obj.getClass()) {
			bool = false;
		} else {
			final ViewObject other = (ViewObject) obj;
			bool = Objects.equals(fileName, other.fileName) && Objects.equals(image, other.image) && row == other.row;
		}
		return bool;
	}

	/**
	 * toString
	 */
	@Override
	public String toString() {
		return "ViewObject [row=" + row + ", image=" + image + ", fileName=" + fileName + "]";
	}

}
