package com.transsion.privateroom.privateroom;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import com.blankj.utilcode.util.LogUtils;
import defpackage.pp3;
import defpackage.px8;
import defpackage.r0a;
import defpackage.zu3;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

public abstract class a {
    public static final String a = "a";
    public static String b = "";
    public static String c = "";
    public static String d = "";

    public interface InterfaceC0249a {
    }

    public static boolean a(Context context, int i) {
        if (pp3.j && Build.VERSION.SDK_INT >= 30) {
            return Environment.isExternalStorageManager();
        }
        if (Build.VERSION.SDK_INT < 33) {
            return context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0;
        }
        if (i == 1) {
            return context.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") == 0;
        }
        if (i != 2) {
            return context.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") == 0 && context.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") == 0;
        }
        return context.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") == 0;
    }

    public static String b() {
        if (r0a.g(c)) {
            String strC = c();
            if (!r0a.g(strC)) {
                String str = strC + "/.media";
                c = str;
                return str;
            }
            c = "";
        }
        LogUtils.j(a, "private data path: " + c);
        return c;
    }

    public static String c() {
        if (!r0a.g(b)) {
            LogUtils.j(a, "private folder path: " + b);
            return b;
        }
        String strA = px8.a();
        if (r0a.g(strA)) {
            return null;
        }
        String str = strA + "/visha/v/i/s/h/a";
        b = str;
        return str;
    }

    public static String d() {
        if (r0a.g(d)) {
            String strC = c();
            if (r0a.g(strC)) {
                b = "";
            } else {
                d = strC + "/.security";
            }
        }
        LogUtils.j(a, "private security path: " + d);
        return d;
    }

    public static boolean e(File file, File file2, InterfaceC0249a interfaceC0249a) {
        if (file == null || file2 == null || file.equals(file2) || !file.exists() || !file.isFile() || !zu3.c(file2.getParentFile())) {
            return false;
        }
        try {
            Files.move(file.toPath(), file2.toPath(), StandardCopyOption.ATOMIC_MOVE);
            return file2.exists();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
}
