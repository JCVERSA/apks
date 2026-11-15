package com.blankj.utilcode.util;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;
import org.apache.commons.text.StringSubstitutor;

public abstract class e {
    public static final String[] a = {"huawei"};
    public static final String[] b = {"vivo"};
    public static final String[] c = {"xiaomi"};
    public static final String[] d = {"oppo"};
    public static final String[] e = {"leeco", "letv"};
    public static final String[] f = {"360", "qiku"};
    public static final String[] g = {"zte"};
    public static final String[] h = {"oneplus"};
    public static final String[] i = {"nubia"};
    public static final String[] j = {"coolpad", "yulong"};
    public static final String[] k = {"lg", "lge"};
    public static final String[] l = {"google"};
    public static final String[] m = {"samsung"};
    public static final String[] n = {"meizu"};
    public static final String[] o = {"lenovo"};
    public static final String[] p = {"smartisan", "deltainno"};
    public static final String[] q = {"htc"};
    public static final String[] r = {"sony"};
    public static final String[] s = {"gionee", "amigo"};
    public static final String[] t = {"motorola"};
    public static a u = null;

    public static class a {
        public String a;
        public String b;

        public String toString() {
            return "RomInfo{name=" + this.a + ", version=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
        }
    }

    public static String a() {
        try {
            String str = Build.BRAND;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    public static String b() {
        try {
            String str = Build.MANUFACTURER;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    public static a c() {
        a aVar = u;
        if (aVar != null) {
            return aVar;
        }
        u = new a();
        String strA = a();
        String strB = b();
        String[] strArr = a;
        if (g(strA, strB, strArr)) {
            u.a = strArr[0];
            String strD = d("ro.build.version.emui");
            String[] strArrSplit = strD.split("_");
            if (strArrSplit.length > 1) {
                u.b = strArrSplit[1];
            } else {
                u.b = strD;
            }
            return u;
        }
        String[] strArr2 = b;
        if (g(strA, strB, strArr2)) {
            u.a = strArr2[0];
            u.b = d("ro.vivo.os.build.display.id");
            return u;
        }
        String[] strArr3 = c;
        if (g(strA, strB, strArr3)) {
            u.a = strArr3[0];
            u.b = d("ro.build.version.incremental");
            return u;
        }
        String[] strArr4 = d;
        if (g(strA, strB, strArr4)) {
            u.a = strArr4[0];
            u.b = d("ro.build.version.opporom");
            return u;
        }
        String[] strArr5 = e;
        if (g(strA, strB, strArr5)) {
            u.a = strArr5[0];
            u.b = d("ro.letv.release.version");
            return u;
        }
        String[] strArr6 = f;
        if (g(strA, strB, strArr6)) {
            u.a = strArr6[0];
            u.b = d("ro.build.uiversion");
            return u;
        }
        String[] strArr7 = g;
        if (g(strA, strB, strArr7)) {
            u.a = strArr7[0];
            u.b = d("ro.build.MiFavor_version");
            return u;
        }
        String[] strArr8 = h;
        if (g(strA, strB, strArr8)) {
            u.a = strArr8[0];
            u.b = d("ro.rom.version");
            return u;
        }
        String[] strArr9 = i;
        if (g(strA, strB, strArr9)) {
            u.a = strArr9[0];
            u.b = d("ro.build.rom.id");
            return u;
        }
        String[] strArr10 = j;
        if (g(strA, strB, strArr10)) {
            u.a = strArr10[0];
        } else {
            String[] strArr11 = k;
            if (g(strA, strB, strArr11)) {
                u.a = strArr11[0];
            } else {
                String[] strArr12 = l;
                if (g(strA, strB, strArr12)) {
                    u.a = strArr12[0];
                } else {
                    String[] strArr13 = m;
                    if (g(strA, strB, strArr13)) {
                        u.a = strArr13[0];
                    } else {
                        String[] strArr14 = n;
                        if (g(strA, strB, strArr14)) {
                            u.a = strArr14[0];
                        } else {
                            String[] strArr15 = o;
                            if (g(strA, strB, strArr15)) {
                                u.a = strArr15[0];
                            } else {
                                String[] strArr16 = p;
                                if (g(strA, strB, strArr16)) {
                                    u.a = strArr16[0];
                                } else {
                                    String[] strArr17 = q;
                                    if (g(strA, strB, strArr17)) {
                                        u.a = strArr17[0];
                                    } else {
                                        String[] strArr18 = r;
                                        if (g(strA, strB, strArr18)) {
                                            u.a = strArr18[0];
                                        } else {
                                            String[] strArr19 = s;
                                            if (g(strA, strB, strArr19)) {
                                                u.a = strArr19[0];
                                            } else {
                                                String[] strArr20 = t;
                                                if (g(strA, strB, strArr20)) {
                                                    u.a = strArr20[0];
                                                } else {
                                                    u.a = strB;
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
        u.b = d("");
        return u;
    }

    public static String d(String str) {
        String strE = !TextUtils.isEmpty(str) ? e(str) : "";
        if (TextUtils.isEmpty(strE) || strE.equals("unknown")) {
            try {
                String str2 = Build.DISPLAY;
                if (!TextUtils.isEmpty(str2)) {
                    strE = str2.toLowerCase();
                }
            } catch (Throwable unused) {
            }
        }
        return TextUtils.isEmpty(strE) ? "unknown" : strE;
    }

    public static String e(String str) {
        String strF = f(str);
        TextUtils.isEmpty(strF);
        return strF;
    }

    public static String f(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            try {
                Properties properties = new Properties();
                properties.load(fileInputStream);
                String property = properties.getProperty(str, "");
                fileInputStream.close();
                return property;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean g(String str, String str2, String... strArr) {
        for (String str3 : strArr) {
            if (str.contains(str3) || str2.contains(str3)) {
                return true;
            }
        }
        return false;
    }

    public static boolean h() {
        return m[0].equals(c().a);
    }
}
