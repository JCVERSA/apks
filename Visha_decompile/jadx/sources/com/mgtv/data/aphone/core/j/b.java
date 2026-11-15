package com.mgtv.data.aphone.core.j;

import android.text.TextUtils;
import android.util.Log;
import com.hunantv.media.drm.IDrmManager;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class b {
    public static String a = "BigDataFileUtils";
    public static String b = "bdtrace";
    public static String c = "_";
    public static String d = "bdtrace_zip";

    public static List<String> a(File file) {
        ArrayList arrayList = new ArrayList();
        c.a("big_data_sdk", "#################### getFileName()  isDirectory: " + file.isDirectory());
        if (file.exists() && file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            c.a("big_data_sdk", "#################### getFileName()  fileList.length: " + fileArrListFiles.length);
            if (fileArrListFiles.length == 0) {
                File file2 = new File(file.getPath() + File.separator + "0.log");
                b(file2);
                arrayList.add(file2.getPath());
            } else {
                for (File file3 : fileArrListFiles) {
                    if (file3.isFile()) {
                        arrayList.add(file3.getPath());
                        c.a("big_data_sdk", "#################### getFilePath() temp.getPath() ======  : " + file3.getPath());
                    }
                }
            }
        }
        return arrayList;
    }

    public static boolean b(File file) {
        boolean z = false;
        if (file == null) {
            return false;
        }
        try {
            if (file.createNewFile() || file.isFile()) {
                z = true;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (!z) {
            Log.e(a, "FileUtil cannot create file: " + file);
        }
        return z;
    }

    public static boolean c(File file) {
        String[] list;
        if (file == null) {
            return false;
        }
        if (file.isDirectory() && (list = file.list()) != null) {
            for (String str : list) {
                if (!c(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static List<File> b(String str) {
        List<File> listA = a(str, new ArrayList());
        if (listA != null && listA.size() > 0) {
            Collections.sort(listA, new Comparator<File>() {
                @Override
                public int compare(File file, File file2) {
                    if (file.isDirectory() && file2.isFile()) {
                        return -1;
                    }
                    if (file.isFile() && file2.isDirectory()) {
                        return 1;
                    }
                    return file.getPath().compareTo(file2.getPath());
                }
            });
        }
        return listA;
    }

    public static String a(String str) {
        int i = !TextUtils.isEmpty(str) ? Integer.parseInt(str) : 0;
        if (i < 5) {
            return "00";
        }
        if (i < 10) {
            return "05";
        }
        if (i < 15) {
            return "10";
        }
        if (i < 20) {
            return "15";
        }
        if (i < 25) {
            return IDrmManager.SessionConfig.STR_DRM_TYPE_AUDIO_MAES;
        }
        if (i < 30) {
            return "25";
        }
        if (i < 35) {
            return "30";
        }
        if (i < 40) {
            return "35";
        }
        if (i < 45) {
            return "40";
        }
        if (i < 50) {
            return "45";
        }
        if (i < 55) {
            return "50";
        }
        if (i < 60) {
            return "55";
        }
        return "60";
    }

    public static List<File> a(String str, List<File> list) {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        File file = new File(str);
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory() && (fileArrListFiles2 = file2.listFiles()) != null) {
                    for (File file3 : fileArrListFiles2) {
                        list.add(file3);
                    }
                }
            }
        }
        return list;
    }
}
