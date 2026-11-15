package com.hunantv.imgo.util;

import android.annotation.SuppressLint;
import android.os.Environment;

@SuppressLint({"NewApi"})
public class i {
    public static boolean a() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
