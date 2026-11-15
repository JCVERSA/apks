package com.mgmi.ssp;

public class ADSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    private int height;
    private int width;

    public ADSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public String toString() {
        return "{\"width\":" + this.width + ",\"height\":" + this.height + '}';
    }
}
