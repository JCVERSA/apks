package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONArray;

public class b {

    private static String f34688a = "DomainReport";

    public static boolean a(com.mbridge.msdk.setting.g gVar, String str) {
        if (gVar == null) {
            return true;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            int iK = gVar.K();
            JSONArray jSONArrayI = gVar.I();
            JSONArray jSONArrayH = gVar.H();
            if (jSONArrayH != null) {
                for (int i10 = 0; i10 < jSONArrayH.length(); i10++) {
                    if (str.contains(jSONArrayH.getString(i10))) {
                        return false;
                    }
                }
            }
            if (iK != 2) {
                return true;
            }
            if (jSONArrayI != null) {
                for (int i11 = 0; i11 < jSONArrayI.length(); i11++) {
                    if (str.contains(jSONArrayI.getString(i11))) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e10) {
            o0.b(f34688a, e10.getMessage());
            return true;
        }
    }
}
