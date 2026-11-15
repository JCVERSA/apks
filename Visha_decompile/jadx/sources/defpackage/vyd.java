package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.BooleanUtils;

public abstract class vyd {
    public static final String a;
    public static final boolean b;
    public static final boolean c;
    public static final boolean d;
    public static final Method e;
    public static final Object f;
    public static final Bundle g;

    /* JADX WARN: Code duplicated, block: B:15:0x0069  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fc  */
    static {
        boolean z;
        boolean z2;
        Class<?> cls;
        Method method;
        String strA = a("ro.tranos.version");
        a = strA;
        String strA2 = a("ro.tranos.type");
        Log.e("Utils", "isAfterOS151.version:" + strA + " type:" + strA2);
        if (TextUtils.isEmpty(strA2)) {
            z = false;
        } else {
            try {
                if (strA.isEmpty()) {
                    z = false;
                } else {
                    String strSubstring = strA.substring(strA2.length());
                    String[] strArrSplit = strSubstring.split("\\.");
                    Log.d("Utils", "OS version($version) :".concat(strSubstring));
                    if (strArrSplit.length >= 2) {
                        int i = Integer.parseInt(strArrSplit[0]);
                        int i2 = Integer.parseInt(strArrSplit[1]);
                        if (i > 15 || (i == 15 && i2 >= 1)) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                }
            } catch (Exception unused) {
                Log.e("Utils", "isAfterOS15.1.0: parse faile.version:" + strA + " type:" + strA2);
            }
        }
        b = z;
        if (TextUtils.isEmpty("16.2.0")) {
            z2 = false;
        } else {
            String str = a;
            if (TextUtils.isEmpty(str)) {
                z2 = false;
            } else {
                Pattern patternCompile = Pattern.compile("[0-9.]+");
                Matcher matcher = patternCompile.matcher(str);
                Matcher matcher2 = patternCompile.matcher("16.2.0");
                String strGroup = "";
                String strGroup2 = "";
                while (matcher.find()) {
                    strGroup2 = matcher.group();
                }
                while (matcher2.find()) {
                    strGroup = matcher2.group();
                }
                if (!strGroup2.equalsIgnoreCase(strGroup)) {
                    String[] strArrSplit2 = strGroup2.split("\\.");
                    String[] strArrSplit3 = strGroup.split("\\.");
                    int i3 = 0;
                    while (true) {
                        if (i3 >= strArrSplit2.length || i3 >= strArrSplit3.length) {
                            if (strArrSplit2.length > strArrSplit3.length) {
                                int length = strArrSplit3.length;
                                while (true) {
                                    if (length < strArrSplit2.length) {
                                        if (Integer.parseInt(strArrSplit2[length]) < 0) {
                                            length++;
                                        }
                                    }
                                }
                            }
                            z2 = false;
                        } else {
                            int i4 = Integer.parseInt(strArrSplit2[i3]);
                            int i5 = Integer.parseInt(strArrSplit3[i3]);
                            if (i4 <= i5) {
                                if (i4 < i5) {
                                    z2 = false;
                                } else {
                                    i3++;
                                }
                            }
                        }
                    }
                }
                z2 = true;
            }
        }
        c = z2;
        d = BooleanUtils.TRUE.equals(a("ro.vendor.tran_vib3_support")) || BooleanUtils.TRUE.equals(a("ro.tr_vibrate.vibrate30.feature.support"));
        try {
            cls = Class.forName("com.transsion.hubsdk.os.TranVibrator");
        } catch (Exception e2) {
            e2.printStackTrace();
            cls = null;
        }
        try {
            method = cls.getMethod("vibrate", String.class, Bundle.class);
        } catch (Exception e3) {
            e3.printStackTrace();
            method = null;
        }
        e = method;
        g = new Bundle();
        Log.d("Utils", "OPT_BOUNCE_EFFECT:" + b);
        if (cls != null) {
            try {
                f = cls.getConstructor(null).newInstance(null);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public static String a(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean b() {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("getBoolean", String.class, Boolean.TYPE).invoke(null, "persist.sys.traneffect.enable", Boolean.TRUE);
            if (objInvoke instanceof Boolean) {
                return ((Boolean) objInvoke).booleanValue();
            }
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }
}
