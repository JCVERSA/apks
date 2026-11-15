package com.yunfan.net;

import java.util.List;

public abstract class Yfnet {
    private static native int AddBackupIps(String str, boolean z, String str2);

    public static int a(String str, List list, boolean z) {
        if (str == null || str.isEmpty() || list == null || list.size() == 0) {
            return -5;
        }
        String str2 = new String();
        for (int i = 0; i < list.size(); i++) {
            str2 = String.valueOf(str2) + ((String) list.get(i)) + "\n";
        }
        return AddBackupIps(str, z, str2);
    }
}
