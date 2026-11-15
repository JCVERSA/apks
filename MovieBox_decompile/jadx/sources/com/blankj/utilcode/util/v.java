package com.blankj.utilcode.util;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

public abstract class v {

    private static final String[] f19481a = {"huawei"};

    private static final String[] f19482b = {"vivo"};

    private static final String[] f19483c = {"xiaomi"};

    private static final String[] f19484d = {"oppo"};

    private static final String[] f19485e = {"leeco", "letv"};

    private static final String[] f19486f = {"360", "qiku"};

    private static final String[] f19487g = {"zte"};

    private static final String[] f19488h = {"oneplus"};

    private static final String[] f19489i = {"nubia"};

    private static final String[] f19490j = {"coolpad", "yulong"};

    private static final String[] f19491k = {"lg", "lge"};

    private static final String[] f19492l = {"google"};

    private static final String[] f19493m = {"samsung"};

    private static final String[] f19494n = {"meizu"};

    private static final String[] f19495o = {"lenovo"};

    private static final String[] f19496p = {"smartisan", "deltainno"};

    private static final String[] f19497q = {"htc"};

    private static final String[] f19498r = {"sony"};

    private static final String[] f19499s = {"gionee", "amigo"};

    private static final String[] f19500t = {"motorola"};

    private static a f19501u = null;

    public static class a {

        private String f19502a;

        private String f19503b;

        public String toString() {
            return "RomInfo{name=" + this.f19502a + ", version=" + this.f19503b + "}";
        }
    }

    private static String a() {
        try {
            String str = Build.BRAND;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : TmcConstants.ROUTE_UNKNOWN;
        } catch (Throwable unused) {
            return TmcConstants.ROUTE_UNKNOWN;
        }
    }

    private static String b() {
        try {
            String str = Build.MANUFACTURER;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : TmcConstants.ROUTE_UNKNOWN;
        } catch (Throwable unused) {
            return TmcConstants.ROUTE_UNKNOWN;
        }
    }

    public static a c() {
        a aVar = f19501u;
        if (aVar != null) {
            return aVar;
        }
        f19501u = new a();
        String strA = a();
        String strB = b();
        String[] strArr = f19481a;
        if (i(strA, strB, strArr)) {
            f19501u.f19502a = strArr[0];
            String strD = d("ro.build.version.emui");
            String[] strArrSplit = strD.split("_");
            if (strArrSplit.length > 1) {
                f19501u.f19503b = strArrSplit[1];
            } else {
                f19501u.f19503b = strD;
            }
            return f19501u;
        }
        String[] strArr2 = f19482b;
        if (i(strA, strB, strArr2)) {
            f19501u.f19502a = strArr2[0];
            f19501u.f19503b = d("ro.vivo.os.build.display.id");
            return f19501u;
        }
        String[] strArr3 = f19483c;
        if (i(strA, strB, strArr3)) {
            f19501u.f19502a = strArr3[0];
            f19501u.f19503b = d("ro.build.version.incremental");
            return f19501u;
        }
        String[] strArr4 = f19484d;
        if (i(strA, strB, strArr4)) {
            f19501u.f19502a = strArr4[0];
            f19501u.f19503b = d("ro.build.version.opporom");
            return f19501u;
        }
        String[] strArr5 = f19485e;
        if (i(strA, strB, strArr5)) {
            f19501u.f19502a = strArr5[0];
            f19501u.f19503b = d("ro.letv.release.version");
            return f19501u;
        }
        String[] strArr6 = f19486f;
        if (i(strA, strB, strArr6)) {
            f19501u.f19502a = strArr6[0];
            f19501u.f19503b = d("ro.build.uiversion");
            return f19501u;
        }
        String[] strArr7 = f19487g;
        if (i(strA, strB, strArr7)) {
            f19501u.f19502a = strArr7[0];
            f19501u.f19503b = d("ro.build.MiFavor_version");
            return f19501u;
        }
        String[] strArr8 = f19488h;
        if (i(strA, strB, strArr8)) {
            f19501u.f19502a = strArr8[0];
            f19501u.f19503b = d("ro.rom.version");
            return f19501u;
        }
        String[] strArr9 = f19489i;
        if (i(strA, strB, strArr9)) {
            f19501u.f19502a = strArr9[0];
            f19501u.f19503b = d("ro.build.rom.id");
            return f19501u;
        }
        String[] strArr10 = f19490j;
        if (i(strA, strB, strArr10)) {
            f19501u.f19502a = strArr10[0];
        } else {
            String[] strArr11 = f19491k;
            if (i(strA, strB, strArr11)) {
                f19501u.f19502a = strArr11[0];
            } else {
                String[] strArr12 = f19492l;
                if (i(strA, strB, strArr12)) {
                    f19501u.f19502a = strArr12[0];
                } else {
                    String[] strArr13 = f19493m;
                    if (i(strA, strB, strArr13)) {
                        f19501u.f19502a = strArr13[0];
                    } else {
                        String[] strArr14 = f19494n;
                        if (i(strA, strB, strArr14)) {
                            f19501u.f19502a = strArr14[0];
                        } else {
                            String[] strArr15 = f19495o;
                            if (i(strA, strB, strArr15)) {
                                f19501u.f19502a = strArr15[0];
                            } else {
                                String[] strArr16 = f19496p;
                                if (i(strA, strB, strArr16)) {
                                    f19501u.f19502a = strArr16[0];
                                } else {
                                    String[] strArr17 = f19497q;
                                    if (i(strA, strB, strArr17)) {
                                        f19501u.f19502a = strArr17[0];
                                    } else {
                                        String[] strArr18 = f19498r;
                                        if (i(strA, strB, strArr18)) {
                                            f19501u.f19502a = strArr18[0];
                                        } else {
                                            String[] strArr19 = f19499s;
                                            if (i(strA, strB, strArr19)) {
                                                f19501u.f19502a = strArr19[0];
                                            } else {
                                                String[] strArr20 = f19500t;
                                                if (i(strA, strB, strArr20)) {
                                                    f19501u.f19502a = strArr20[0];
                                                } else {
                                                    f19501u.f19502a = strB;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        f19501u.f19503b = d("");
        return f19501u;
    }

    private static String d(String str) {
        String strE = !TextUtils.isEmpty(str) ? e(str) : "";
        if (TextUtils.isEmpty(strE) || strE.equals(TmcConstants.ROUTE_UNKNOWN)) {
            try {
                String str2 = Build.DISPLAY;
                if (!TextUtils.isEmpty(str2)) {
                    strE = str2.toLowerCase();
                }
            } catch (Throwable unused) {
            }
        }
        return TextUtils.isEmpty(strE) ? TmcConstants.ROUTE_UNKNOWN : strE;
    }

    private static String e(String str) throws Throwable {
        String strG = g(str);
        if (!TextUtils.isEmpty(strG)) {
            return strG;
        }
        String strH = h(str);
        return (TextUtils.isEmpty(strH) && Build.VERSION.SDK_INT < 28) ? f(str) : strH;
    }

    private static String f(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    private static String g(String str) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
                try {
                    String line = bufferedReader2.readLine();
                    if (line != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException unused) {
                        }
                        return line;
                    }
                    bufferedReader2.close();
                    return "";
                } catch (IOException unused2) {
                    bufferedReader = bufferedReader2;
                    if (bufferedReader == null) {
                        return "";
                    }
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused4) {
                return "";
            }
        } catch (IOException unused5) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static String h(String str) {
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
            return properties.getProperty(str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    private static boolean i(String str, String str2, String... strArr) {
        for (String str3 : strArr) {
            if (str.contains(str3) || str2.contains(str3)) {
                return true;
            }
        }
        return false;
    }

    public static boolean j() {
        return f19493m[0].equals(c().f19502a);
    }
}
