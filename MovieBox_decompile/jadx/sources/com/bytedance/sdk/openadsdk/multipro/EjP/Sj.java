package com.bytedance.sdk.openadsdk.multipro.EjP;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.vS;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.uA;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashSet;

public class Sj {
    public static HashSet<String> Sj = new HashSet<String>() {
        {
            add("app_id");
            add("tt_gdpr");
            add("keywords");
            add("extra_data");
            add("sdk_app_sha1");
            add("uuid");
            add("android_system_ua");
            add("sdk_local_web_ua");
            add("sdk_local_rom_info");
        }
    };

    private static String EjP() {
        return com.bytedance.sdk.openadsdk.multipro.EjP.sP + "/t_sp/";
    }

    public static boolean Sj() {
        return dNu.Sj() != null;
    }

    private static Context TKC() {
        return dNu.Sj();
    }

    private static vS sP() {
        try {
            if (Sj()) {
                return com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(dNu.Sj());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static synchronized void Sj(String str, String str2, Boolean bool) {
        if (Sj()) {
            try {
                if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                    sP.Sj(TKC(), str, str2, bool);
                    return;
                }
                vS vSVarSP = sP();
                if (vSVarSP != null) {
                    Uri uri = Uri.parse(EjP() + "boolean/" + str2 + sP(str));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, bool);
                    vSVarSP.Sj(uri, contentValues, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static String sP(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return "?sp_file_name=".concat(String.valueOf(str));
    }

    public static String sP(String str, String str2, String str3) {
        if (!Sj()) {
            return str3;
        }
        try {
            if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                return Sj(TKC(), str, str2, str3);
            }
            vS vSVarSP = sP();
            if (vSVarSP != null) {
                String strSj = vSVarSP.Sj(Uri.parse(EjP() + "string/" + str2 + sP(str)));
                if (strSj != null && !strSj.equals("null")) {
                    return strSj;
                }
            }
            return str3;
        } catch (Throwable unused) {
        }
    }

    public static void sP(String str, String str2) {
        if (Sj()) {
            try {
                if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                    sP.sP(TKC(), str, str2);
                    return;
                }
                vS vSVarSP = sP();
                if (vSVarSP != null) {
                    vSVarSP.Sj(Uri.parse(EjP() + "long/" + str2 + sP(str)), null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void Sj(String str, String str2, String str3) {
        if (Sj()) {
            try {
                if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                    sP.Sj(TKC(), str, str2, str3);
                    return;
                }
                vS vSVarSP = sP();
                if (vSVarSP != null) {
                    Uri uri = Uri.parse(EjP() + "string/" + str2 + sP(str));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, str3);
                    vSVarSP.Sj(uri, contentValues, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void Sj(String str, String str2, Integer num) {
        if (Sj()) {
            try {
                if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                    sP.Sj(TKC(), str, str2, num);
                    return;
                }
                vS vSVarSP = sP();
                if (vSVarSP != null) {
                    Uri uri = Uri.parse(EjP() + "int/" + str2 + sP(str));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, num);
                    vSVarSP.Sj(uri, contentValues, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void Sj(String str, String str2, Long l10) {
        if (Sj()) {
            try {
                if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                    sP.Sj(TKC(), str, str2, l10);
                    return;
                }
                vS vSVarSP = sP();
                if (vSVarSP != null) {
                    Uri uri = Uri.parse(EjP() + "long/" + str2 + sP(str));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, l10);
                    vSVarSP.Sj(uri, contentValues, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    protected static String Sj(Context context, String str, String str2, String str3) {
        String strSj = Sj(str, str2);
        if (uA.Jcg(strSj)) {
            return com.bytedance.sdk.component.Sj.Sj(context, strSj).Sj(str2, str3);
        }
        SharedPreferences sharedPreferencesSj = sP.Sj(context, strSj);
        return sharedPreferencesSj == null ? str3 : sharedPreferencesSj.getString(str2, str3);
    }

    public static String Sj(String str, String str2) {
        return Sj.contains(str2) ? "pag_sp_bad_par" : str;
    }

    public static int Sj(String str, String str2, int i10) {
        if (!Sj()) {
            return i10;
        }
        try {
            if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                return Sj(TKC(), str, str2, i10);
            }
            vS vSVarSP = sP();
            if (vSVarSP != null) {
                String strSj = vSVarSP.Sj(Uri.parse(EjP() + "int/" + str2 + sP(str)));
                if (strSj != null && !strSj.equals("null")) {
                    return Integer.parseInt(strSj);
                }
            }
            return i10;
        } catch (Throwable unused) {
        }
    }

    protected static int Sj(Context context, String str, String str2, int i10) {
        String strSj = Sj(str, str2);
        if (uA.Jcg(strSj)) {
            return com.bytedance.sdk.component.Sj.Sj(context, strSj).Sj(str2, i10);
        }
        SharedPreferences sharedPreferencesSj = sP.Sj(context, strSj);
        return sharedPreferencesSj == null ? i10 : sharedPreferencesSj.getInt(str2, i10);
    }

    protected static float Sj(Context context, String str, String str2, float f10) {
        String strSj = Sj(str, str2);
        if (uA.Jcg(strSj)) {
            return com.bytedance.sdk.component.Sj.Sj(context, strSj).Sj(str2, f10);
        }
        SharedPreferences sharedPreferencesSj = sP.Sj(context, strSj);
        return sharedPreferencesSj == null ? f10 : sharedPreferencesSj.getFloat(str2, f10);
    }

    public static boolean Sj(String str, String str2, boolean z10) {
        if (!Sj()) {
            return z10;
        }
        try {
            if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                return Sj(TKC(), str, str2, z10);
            }
            vS vSVarSP = sP();
            if (vSVarSP != null) {
                String strSj = vSVarSP.Sj(Uri.parse(EjP() + "boolean/" + str2 + sP(str)));
                if (strSj != null && !strSj.equals("null")) {
                    return Boolean.parseBoolean(strSj);
                }
            }
            return z10;
        } catch (Throwable unused) {
        }
    }

    protected static boolean Sj(Context context, String str, String str2, boolean z10) {
        String strSj = Sj(str, str2);
        if (uA.Jcg(strSj)) {
            return com.bytedance.sdk.component.Sj.Sj(context, strSj).Sj(str2, z10);
        }
        SharedPreferences sharedPreferencesSj = sP.Sj(context, strSj);
        return sharedPreferencesSj == null ? z10 : sharedPreferencesSj.getBoolean(str2, z10);
    }

    public static long Sj(String str, String str2, long j10) {
        if (!Sj()) {
            return j10;
        }
        try {
            if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                return Sj(TKC(), str, str2, j10);
            }
            vS vSVarSP = sP();
            if (vSVarSP != null) {
                String strSj = vSVarSP.Sj(Uri.parse(EjP() + "long/" + str2 + sP(str)));
                if (strSj != null && !strSj.equals("null")) {
                    return Long.parseLong(strSj);
                }
            }
            return j10;
        } catch (Throwable unused) {
        }
    }

    protected static long Sj(Context context, String str, String str2, long j10) {
        String strSj = Sj(str, str2);
        if (uA.Jcg(strSj)) {
            return com.bytedance.sdk.component.Sj.Sj(context, strSj).Sj(str2, j10);
        }
        SharedPreferences sharedPreferencesSj = sP.Sj(context, strSj);
        return sharedPreferencesSj == null ? j10 : sharedPreferencesSj.getLong(str2, j10);
    }

    public static void Sj(String str) {
        if (Sj()) {
            try {
                if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                    sP.sP(TKC(), str);
                    return;
                }
                vS vSVarSP = sP();
                if (vSVarSP != null) {
                    vSVarSP.Sj(Uri.parse(EjP() + "clean" + sP(str)), null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }
}
