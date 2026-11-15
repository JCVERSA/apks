package com.cloud.tmc.miniutils.util;

import android.graphics.Color;
import androidx.annotation.NonNull;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;

public final class ColorUtils {
    private ColorUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static int getColor(int i10) {
        return androidx.core.content.b.getColor(Utils.getApp(), i10);
    }

    public static int getRandomColor() {
        return getRandomColor(true);
    }

    public static String int2ArgbString(int i10) {
        String hexString = Integer.toHexString(i10);
        while (hexString.length() < 6) {
            hexString = "0" + hexString;
        }
        while (hexString.length() < 8) {
            hexString = "f" + hexString;
        }
        return com.transsion.gslb.Utils.SEPARATOR + hexString;
    }

    public static String int2RgbString(int i10) {
        String hexString = Integer.toHexString(i10 & 16777215);
        while (hexString.length() < 6) {
            hexString = "0" + hexString;
        }
        return com.transsion.gslb.Utils.SEPARATOR + hexString;
    }

    public static boolean isLightColor(int i10) {
        return ((((double) Color.red(i10)) * 0.299d) + (((double) Color.green(i10)) * 0.587d)) + (((double) Color.blue(i10)) * 0.114d) >= 127.5d;
    }

    public static int setAlphaComponent(int i10, float f10) {
        return (i10 & 16777215) | (((int) ((f10 * 255.0f) + 0.5f)) << 24);
    }

    public static int setBlueComponent(int i10, float f10) {
        return (i10 & InputDeviceCompat.SOURCE_ANY) | ((int) ((f10 * 255.0f) + 0.5f));
    }

    public static int setGreenComponent(int i10, float f10) {
        return (i10 & (-65281)) | (((int) ((f10 * 255.0f) + 0.5f)) << 8);
    }

    public static int setRedComponent(int i10, float f10) {
        return (i10 & (-16711681)) | (((int) ((f10 * 255.0f) + 0.5f)) << 16);
    }

    public static int string2Int(@NonNull String str) {
        return Color.parseColor(str);
    }

    public static int getRandomColor(boolean z10) {
        return (z10 ? ((int) (Math.random() * 256.0d)) << 24 : ViewCompat.MEASURED_STATE_MASK) | ((int) (Math.random() * 1.6777216E7d));
    }

    public static int setAlphaComponent(int i10, int i11) {
        return (i10 & 16777215) | (i11 << 24);
    }

    public static int setBlueComponent(int i10, int i11) {
        return (i10 & InputDeviceCompat.SOURCE_ANY) | i11;
    }

    public static int setGreenComponent(int i10, int i11) {
        return (i10 & (-65281)) | (i11 << 8);
    }

    public static int setRedComponent(int i10, int i11) {
        return (i10 & (-16711681)) | (i11 << 16);
    }
}
