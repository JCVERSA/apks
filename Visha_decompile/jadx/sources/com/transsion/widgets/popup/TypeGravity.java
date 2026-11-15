package com.transsion.widgets.popup;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface TypeGravity {
    public static final int BOTTOM_CENTER = 9;
    public static final int BOTTOM_LEFT = 8;
    public static final int BOTTOM_RIGHT = 10;
    public static final int CENTER = 7;
    public static final int CENTER_LEFT_BOTTOM = 5;
    public static final int CENTER_LEFT_TOP = 3;
    public static final int CENTER_RIGHT_BOTTOM = 6;
    public static final int CENTER_RIGHT_TOP = 4;
    public static final int FROM_BOTTOM = 11;
    public static final int FROM_TOP = 12;
    public static final int TOP_CENTER = 1;
    public static final int TOP_LEFT = 0;
    public static final int TOP_RIGHT = 2;
}
