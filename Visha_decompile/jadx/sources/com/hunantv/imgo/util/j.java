package com.hunantv.imgo.util;

import android.os.Environment;
import android.text.TextUtils;
import com.hunantv.imgo.BaseApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class j {
    public static boolean a(String str) {
        if (TextUtils.isEmpty(str) || str.length() == 0) {
            return true;
        }
        File file = new File(str);
        if (!file.exists()) {
            return true;
        }
        if (file.isFile()) {
            return file.delete();
        }
        if (!file.isDirectory()) {
            return false;
        }
        for (File file2 : file.listFiles()) {
            if (file2.isFile()) {
                file2.delete();
            } else if (file2.isDirectory()) {
                a(file2.getAbsolutePath());
            }
        }
        return file.delete();
    }

    public static boolean b(String str) {
        return a(str, (List<String>) null);
    }

    public static boolean a(String str, List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new File(it.next()));
            }
        }
        return a(new File(str), arrayList);
    }

    public static boolean a(File file, List<File> list) {
        if (file == null) {
            return false;
        }
        if (list != null && list.contains(file)) {
            return true;
        }
        if (file.isDirectory()) {
            for (String str : file.list()) {
                if (!a(new File(file, str), list)) {
                    return false;
                }
            }
            return true;
        }
        return file.delete();
    }

    public static String a() {
        try {
            File externalFilesDir = BaseApplication.getContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            if (externalFilesDir == null) {
                return "";
            }
            return externalFilesDir.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }
}
