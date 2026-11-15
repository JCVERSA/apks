package com.bytedance.sdk.openadsdk.multipro.EjP;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.uA;

public class EjP {
    private static boolean Sj() {
        return dNu.Sj() == null;
    }

    private static String sP(String str) {
        return TextUtils.isEmpty(str) ? "tt_sp" : str;
    }

    public static void Sj(String str, String str2, Boolean bool) {
        if (Sj()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj.Sj(sP(str), str2, bool);
        } else {
            Sj(sP(str), str2, bool);
        }
    }

    public static String sP(String str, String str2, String str3) {
        if (Sj()) {
            return str3;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            return Sj.sP(sP(str), str2, str3);
        }
        return Sj.Sj(dNu.Sj(), sP(str), str2, str3);
    }

    public static void Sj(String str, String str2, Long l10) {
        if (Sj()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj.Sj(sP(str), str2, l10);
        } else {
            Sj(sP(str), str2, l10);
        }
    }

    public static void Sj(String str, String str2, String str3) {
        if (Sj()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj.Sj(sP(str), str2, str3);
        } else {
            Sj(sP(str), str2, str3);
        }
    }

    public static void Sj(String str, String str2, Integer num) {
        if (Sj()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj.Sj(sP(str), str2, num);
        } else {
            Sj(sP(str), str2, num);
        }
    }

    public static int Sj(String str, String str2, int i10) {
        if (Sj()) {
            return i10;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            return Sj.Sj(sP(str), str2, i10);
        }
        return Sj.Sj(dNu.Sj(), sP(str), str2, i10);
    }

    public static boolean Sj(String str, String str2, boolean z10) {
        if (Sj()) {
            return z10;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            return Sj.Sj(sP(str), str2, z10);
        }
        return Sj.Sj(dNu.Sj(), sP(str), str2, z10);
    }

    public static long Sj(String str, String str2, long j10) {
        if (Sj()) {
            return j10;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            return Sj.Sj(sP(str), str2, j10);
        }
        return Sj.Sj(dNu.Sj(), sP(str), str2, j10);
    }

    public static void Sj(String str, String str2) {
        if (Sj()) {
            return;
        }
        try {
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                Sj.sP(sP(str), str2);
            } else {
                sP.sP(dNu.Sj(), sP(str), str2);
            }
        } catch (Throwable unused) {
        }
    }

    public static void Sj(String str) {
        if (Sj()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj.Sj(sP(str));
        } else {
            sP.sP(dNu.Sj(), sP(str));
        }
    }

    private static <T> void Sj(String str, String str2, T t10) {
        String strSj = Sj.Sj(str, str2);
        if (uA.Jcg(strSj)) {
            com.bytedance.sdk.component.Sj.TKC tkcSP = com.bytedance.sdk.component.Sj.Sj(dNu.Sj(), sP(strSj)).sP();
            sP.Sj(tkcSP, str2, (Object) t10);
            tkcSP.apply();
        } else {
            SharedPreferences sharedPreferencesSj = sP.Sj(dNu.Sj(), sP(strSj));
            if (sharedPreferencesSj == null) {
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferencesSj.edit();
            sP.Sj(editorEdit, str2, t10);
            editorEdit.apply();
        }
    }
}
