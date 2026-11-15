package com.mgtv.downloader.util;

import android.util.Log;

public class c {
    private static int a = 2;

    public static class a {
        public String a;
        public String b;
        public String c;
        public String d;
    }

    public static void a(int i) {
        a = i;
    }

    public static void b(String str) {
        String str2 = String.format("Network: %s, %s", b(a), str);
        Log.d("DownloadSDK_1.8.0", str2);
        com.hunantv.imgo.log.e.d("DownloadSDK_1.8.0", str2, true);
    }

    public static void a(String str, a aVar, com.mgtv.downloader.net.entity.a aVar2, int i) {
        String str2;
        String str3;
        String str4;
        String str5;
        if (aVar2 != null) {
            String str6 = aVar2.a() + "";
            String strB = aVar2.b();
            String str7 = aVar2.e() + "";
            str4 = aVar2.d() + "";
            str5 = strB;
            str3 = str7;
            str2 = str6;
        } else {
            str2 = "unknown";
            str3 = str2;
            str4 = str3;
            str5 = str4;
        }
        if (aVar == null) {
            com.hunantv.imgo.log.e.b("DownloadSDK_1.8.0", String.format("\"Network\":\"%s\",\"Desc\":\"%s\",\n\"DownloadDBInfo\":{\"VideoID\":\"%s\",\"TotalSize\":\"%s\",\"CompleteSize\":\"%s\",\"Url\":\"%s\"},\n\"HTTP\":{\"RspContentLength\":\"%s\",\"ReqRange\":\"%s\",\"RspRange\":\"%s\",\"RspCode\":\"%s\"}", b(i) + "=" + i, str, str2, str3, str4, str5, "", "", "", ""), true);
            return;
        }
        com.hunantv.imgo.log.e.b("DownloadSDK_1.8.0", String.format("\"Network\":\"%s\",\"Desc\":\"%s\",\n\"DownloadDBInfo\":{\"VideoID\":\"%s\",\"TotalSize\":\"%s\",\"CompleteSize\":\"%s\",\"Url\":\"%s\"},\n\"HTTP\":{\"RspContentLength\":\"%s\",\"ReqRange\":\"%s\",\"RspRange\":\"%s\",\"RspCode\":\"%s\"}", b(i) + "=" + i, str, str2, str3, str4, str5, aVar.a, aVar.b, aVar.c, aVar.d), true);
    }

    private static String b(int i) {
        if (i == 1) {
            return "WIFI";
        }
        if (i == 0) {
            return "Mobile";
        }
        if (i == 2) {
            return "Invalid";
        }
        return "unknown";
    }

    public static void a(String str) {
        String str2 = String.format("Network: %s, %s", b(a), str);
        Log.d("DownloadSDK_1.8.0", str2);
        com.hunantv.imgo.log.e.b("DownloadSDK_1.8.0", str2, true);
    }
}
