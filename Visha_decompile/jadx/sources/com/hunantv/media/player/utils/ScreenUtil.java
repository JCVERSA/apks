package com.hunantv.media.player.utils;

import android.content.Context;

public class ScreenUtil {
    public static int getScreenHeight(Context context) {
        try {
            return context.getResources().getDisplayMetrics().heightPixels;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static int getScreenWidth(Context context) {
        try {
            return context.getResources().getDisplayMetrics().widthPixels;
        } catch (Exception unused) {
            return -1;
        }
    }
}
