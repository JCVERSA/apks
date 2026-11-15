package com.mgtv.irouting.utils;

import java.io.File;

public class d {
    private static boolean a = false;

    public static boolean a(String str) {
        try {
            System.loadLibrary("mghttpdns");
            a = true;
        } catch (UnsatisfiedLinkError e) {
            a = b(str);
            e.printStackTrace();
        }
        return a;
    }

    private static boolean b(String str) {
        File[] fileArrListFiles;
        try {
            File file = new File(str);
            if (file.isDirectory() && file.exists() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    String name = file2.getName();
                    if (name.startsWith("libmghttpdns") && name.endsWith(".so")) {
                        System.load(file2.getAbsolutePath());
                        a = true;
                    }
                }
            }
        } catch (UnsatisfiedLinkError unused) {
            a = false;
        } catch (Throwable unused2) {
            a = false;
        }
        return a;
    }
}
