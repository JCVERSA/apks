package defpackage;

import android.text.TextUtils;

public abstract class bld {
    public static String a(dkd dkdVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (dkdVar == null) {
            return str.replace("[CS_A_X]", "-1").replace("[CS_A_Y]", "-1").replace("[CS_D_X]", "-1").replace("[CS_D_Y]", "-1").replace("[CE_A_X]", "-1").replace("[CE_A_Y]", "-1").replace("[CE_D_X]", "-1").replace("[CE_D_Y]", "-1").replace("__WIDTH__", "-999").replace("__HEIGHT__", "-999").replace("__DOWN_X__", "-999").replace("__DOWN_Y__", "-999").replace("__UP_X__", "-999").replace("__UP_Y__", "-999");
        }
        String strReplace = str.replace("[CS_A_X]", String.valueOf(dkdVar.j())).replace("[CS_A_Y]", String.valueOf(dkdVar.k())).replace("[CS_D_X]", String.valueOf(dkdVar.d())).replace("[CS_D_Y]", String.valueOf(dkdVar.i())).replace("[CE_A_X]", String.valueOf(dkdVar.j())).replace("[CE_A_Y]", String.valueOf(dkdVar.k())).replace("[CE_D_X]", String.valueOf(dkdVar.d())).replace("[CE_D_Y]", String.valueOf(dkdVar.i()));
        if (dkdVar.g() != -1) {
            strReplace = strReplace.replace("[CLICK_POS]", String.valueOf(dkdVar.g()));
        }
        return strReplace.replace("__WIDTH__", String.valueOf((int) dkdVar.a())).replace("__HEIGHT__", String.valueOf((int) dkdVar.c())).replace("__DOWN_X__", String.valueOf((int) dkdVar.j())).replace("__DOWN_Y__", String.valueOf((int) dkdVar.k())).replace("__UP_X__", String.valueOf((int) dkdVar.j())).replace("__UP_Y__", String.valueOf((int) dkdVar.k()));
    }

    public static String b(String str, String str2, String str3) {
        return c(str, str2, str3, false);
    }

    public static String c(String str, String str2, String str3, boolean z) {
        if (TextUtils.isEmpty(str) || !"1".equalsIgnoreCase(str2)) {
            return str;
        }
        return (!z || TextUtils.isEmpty(str3)) ? str.replace("__SLD__", "0") : str.replace("__SLD__", str3);
    }
}
