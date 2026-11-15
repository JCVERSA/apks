package com.mgtv.easydatasource.b;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;

public class a {
    private static boolean a = false;
    private static String b = "";
    private static Context c;

    public static synchronized boolean a() {
        if (a(b)) {
            return true;
        }
        if (a) {
            return true;
        }
        try {
            System.loadLibrary("mgds");
            a = true;
        } catch (UnsatisfiedLinkError unused) {
            a = false;
        }
        return a;
    }

    private static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            String strA = b.a(c);
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            String str2 = File.separator;
            System.load((str.endsWith(str2) ? str.concat(strA) : str.concat(str2).concat(strA)).concat(str2).concat("libmgds.so"));
            a = true;
        } catch (UnsatisfiedLinkError unused) {
            a = false;
        }
        return a;
    }
}
