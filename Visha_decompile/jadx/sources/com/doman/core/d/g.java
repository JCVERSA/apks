package com.doman.core.d;

import android.annotation.SuppressLint;
import android.util.Log;
import java.io.File;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public final class g {
    public static boolean a = false;
    public static boolean b = false;

    @SuppressLint({"SimpleDateFormat"})
    private static SimpleDateFormat c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSS");

    private static String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        synchronized (c) {
            sb.append(c.format(Calendar.getInstance().getTime()));
        }
        sb.append("][");
        sb.append(str2);
        sb.append("][");
        sb.append(str3);
        sb.append("]");
        sb.append(str);
        sb.append("\n");
        return sb.toString();
    }

    public static void a() {
        b = false;
        a = false;
    }

    public static void a(String str, String str2) {
        if (a) {
            Log.d("wssdk_1.0.0.".concat(String.valueOf(str)), str2);
            if (b) {
                try {
                    String strA = a(str2, str, "D");
                    String strA2 = j.a();
                    String str3 = File.separator;
                    if (!strA2.endsWith(str3)) {
                        strA2 = strA2 + str3;
                    }
                    File file = new File(strA2 + str3 + com.doman.core.d.c.b.b("TPstNgfMEZ8Dlf9a", e.a("M3dzQCFqdXN0YWdhbWU4QWJj")), com.doman.core.d.c.b.b("frxQkY5t3Jraw/TCuzyfKQ==", e.a("MXdzQCF3ZWxjb21ldG93czg=")));
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.seek(file.length());
                    randomAccessFile.write(strA.getBytes());
                    randomAccessFile.close();
                } catch (Exception unused) {
                }
            }
        }
    }
}
