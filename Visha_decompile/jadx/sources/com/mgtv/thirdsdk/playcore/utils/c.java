package com.mgtv.thirdsdk.playcore.utils;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.util.q;
import com.hunantv.media.config.NetPlayConfig;
import com.transsion.videodownloader.model.Video;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Locale;

public class c {
    public static long b = 0;
    private static String c = "PlayerUtil";
    private static int d = 2;
    private static int e = -1;
    private static int f = 0;
    private static boolean g = false;
    private static int h = -1;
    private static int i = -1;
    private static StringBuilder j;
    private static Formatter k;
    private static String l;
    private static String m;
    private static String n;
    private static NetPlayConfig o;
    public static HashMap<String, String> a = new HashMap<>();
    private static float p = 0.01f;
    private static float q = 0.06f;

    public static void a(String str) {
    }

    public static int b() {
        int i2;
        int iD = d();
        if (iD != -1) {
            return iD;
        }
        NetPlayConfig netPlayConfig = NetPlayConfig.getsGlobalNetPlayConfig();
        return (netPlayConfig == null || (i2 = netPlayConfig.render_type) == 1 || i2 != 2) ? 1 : 0;
    }

    public static int c() {
        int iE = e();
        if (iE != -1) {
            return iE;
        }
        NetPlayConfig netPlayConfig = NetPlayConfig.getsGlobalNetPlayConfig();
        if (netPlayConfig != null) {
            return netPlayConfig.getIs_soft();
        }
        return 0;
    }

    public static int d() {
        return e;
    }

    public static int e() {
        return f;
    }

    public static String f() {
        return l;
    }

    public static String g() {
        return m;
    }

    public static String h() {
        return n;
    }

    public static boolean i() {
        return g;
    }

    public static long j() {
        return b;
    }

    public static void k() {
        System.out.println("clearPlayBookmark ");
        a = new HashMap<>();
    }

    public static int l() {
        return i;
    }

    public static float m() {
        return p;
    }

    public static float n() {
        return q;
    }

    public static NetPlayConfig a() {
        return o;
    }

    public static void d(String str) {
        m = str;
    }

    public static void e(String str) {
        n = str;
    }

    public static boolean f(String str) {
        return a(str, Video.SUFFIX.SUFFIX_M3U8);
    }

    public static int g(String str) {
        HashMap<String, String> map = a;
        if (map != null) {
            String str2 = map.get("bookmark" + str);
            if (!TextUtils.isEmpty(str2)) {
                System.out.println("get Bookmark videoId " + str + " prog = " + str2);
                return q.a(str2, 0);
            }
            System.out.println("get Bookmark videoId " + str + " prog null ");
        }
        return 0;
    }

    public static void a(NetPlayConfig netPlayConfig) {
        o = netPlayConfig;
    }

    public static void d(int i2) {
        h = i2;
    }

    public static void e(int i2) {
        i = i2;
    }

    public static void a(boolean z) {
        g = z;
    }

    public static void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        e = q.a(str, -1);
    }

    public static void c(String str) {
        l = str;
    }

    public static com.mgtv.thirdsdk.playcore.a.b a(Context context) {
        try {
            return new com.mgtv.thirdsdk.playcore.a.b(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static int c(int i2) {
        int i3 = h;
        return i3 == -1 ? i2 : i3;
    }

    public static String b(int i2) {
        if (j == null) {
            j = new StringBuilder();
        }
        if (k == null) {
            k = new Formatter(j, Locale.getDefault());
        }
        int i3 = i2 % 60;
        int i4 = i2 / 60;
        j.setLength(0);
        if (i4 < 60) {
            return k.format("%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3)).toString();
        }
        return k.format("%02d:%02d:%02d", Integer.valueOf(i4 / 60), Integer.valueOf(i4 % 60), Integer.valueOf(i3)).toString();
    }

    public static com.mgtv.thirdsdk.playcore.a.a a(com.mgtv.thirdsdk.playcore.a.b bVar, String str) {
        if (str == null) {
            return null;
        }
        try {
            if (str.equals("") || bVar == null) {
                return null;
            }
            return bVar.a(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void a(Context context, String str) {
        if (g) {
            com.mgtv.thirdsdk.playcore.a.b bVarA = null;
            try {
                bVarA = a(context);
                if (bVarA != null) {
                    a(bVarA, a(bVarA, str));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            } finally {
                if (bVarA != null) {
                    bVarA.a();
                }
            }
        }
    }

    public static void b(float f2) {
        q = f2;
    }

    public static void a(com.mgtv.thirdsdk.playcore.a.b bVar, com.mgtv.thirdsdk.playcore.a.a aVar) {
        if (!g || aVar == null || bVar == null) {
            return;
        }
        bVar.a(aVar.c());
    }

    public static boolean a(com.mgtv.thirdsdk.playcore.a.b bVar, String str, String str2, int i2, int i3) {
        if (!g || str == null || bVar == null) {
            return false;
        }
        com.mgtv.thirdsdk.playcore.a.a aVarA = a(bVar, str);
        if (aVarA == null) {
            com.mgtv.thirdsdk.playcore.a.a aVar = new com.mgtv.thirdsdk.playcore.a.a();
            aVar.a(str);
            aVar.a(System.currentTimeMillis());
            aVar.c(i2);
            aVar.a(i3);
            bVar.a(aVar);
            return true;
        }
        aVarA.a(System.currentTimeMillis());
        aVarA.c(i2);
        aVarA.a(i3);
        bVar.b(aVarA);
        return true;
    }

    public static String a(int i2) {
        if (j == null) {
            j = new StringBuilder();
        }
        if (k == null) {
            k = new Formatter(j, Locale.getDefault());
        }
        int i3 = i2 / 1000;
        int i4 = i3 % 60;
        j.setLength(0);
        return k.format("%02d:%02d", Integer.valueOf(i3 / 60), Integer.valueOf(i4)).toString();
    }

    public static boolean a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            Locale locale = Locale.US;
            return new URL(str.toLowerCase(locale)).getPath().endsWith(str2.toLowerCase(locale));
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return false;
        } catch (Exception e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public static void a(String str, long j2) {
        System.out.println("save Bookmark videoId " + str + " progress = " + j2);
        if (str == null) {
            return;
        }
        HashMap<String, String> map = new HashMap<>();
        a = map;
        map.put("bookmark" + str, String.valueOf(j2));
    }

    public static void a(long j2) {
        b = j2;
    }

    public static void a(float f2) {
        p = f2;
    }
}
