package com.bytedance.sdk.component.adexpress.Sj.sP;

import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.component.adexpress.EjP.uA;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class sP {
    static Object Sj = new Object();

    public static com.bytedance.sdk.component.adexpress.Sj.TKC.Sj EjP() {
        return HiB.sP().vS();
    }

    public static boolean HiB() {
        return HiB.sP().HiB();
    }

    private static File Jcg(String str) {
        List<Pair<String, String>> listSP;
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.sP sPVarHiB = EjP().HiB();
        if (sPVarHiB == null || (listSP = sPVarHiB.sP()) == null || listSP.size() <= 0) {
            return null;
        }
        for (Pair<String, String> pair : listSP) {
            Object obj = pair.second;
            if (obj != null && ((String) obj).equals(str)) {
                return new File(HiB.Dq(), (String) pair.first);
            }
        }
        return null;
    }

    public static void Sj() {
        HiB.sP();
    }

    public static String TKC() {
        return vS.TKC();
    }

    public static void sP() {
        try {
            Dq.EjP();
            File fileDq = HiB.Dq();
            if (fileDq == null || !fileDq.exists()) {
                return;
            }
            if (fileDq.getParentFile() != null) {
                com.bytedance.sdk.component.utils.Jcg.TKC(fileDq.getParentFile());
            } else {
                com.bytedance.sdk.component.utils.Jcg.TKC(fileDq);
            }
        } catch (Throwable unused) {
        }
    }

    @Deprecated
    private static String vS() {
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sjEjP = EjP();
        if (sjEjP == null) {
            return null;
        }
        return sjEjP.EjP();
    }

    public static String EjP(String str) {
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2;
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sjEjP = EjP();
        if (sjEjP == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            return vS();
        }
        Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> mapSj = sjEjP.Sj();
        if (mapSj == null || mapSj.size() <= 0 || (sj2 = mapSj.get(str)) == null) {
            return null;
        }
        return sj2.EjP();
    }

    private static boolean HiB(String str) {
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sjEjP;
        List<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0197Sj> listVS;
        if (!HiB() || (sjEjP = EjP()) == null || (listVS = sjEjP.vS()) == null) {
            return false;
        }
        for (com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0197Sj c0197Sj : listVS) {
            if (c0197Sj != null && TextUtils.equals(str, c0197Sj.Sj())) {
                return true;
            }
        }
        return false;
    }

    public static com.bytedance.sdk.component.adexpress.Sj.TKC.sP Sj(String str) {
        return Jcg.Sj().Sj(str);
    }

    public static com.bytedance.sdk.component.adexpress.Sj.TKC.sP TKC(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.bytedance.sdk.component.adexpress.Sj.TKC.sP sPVarSj = Jcg.Sj().Sj(str);
        if (sPVarSj != null) {
            sPVarSj.Sj(Long.valueOf(System.currentTimeMillis()));
            Sj(sPVarSj);
        }
        return sPVarSj;
    }

    public static void Sj(com.bytedance.sdk.component.adexpress.Sj.TKC.EjP ejP) {
        Jcg.Sj().Sj(ejP, ejP.vS);
    }

    private static File vS(String str) {
        if (!HiB()) {
            return null;
        }
        for (com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0197Sj c0197Sj : EjP().vS()) {
            if (c0197Sj.Sj() != null && c0197Sj.Sj().equals(str)) {
                File file = new File(HiB.Dq(), com.bytedance.sdk.component.utils.HiB.Sj(c0197Sj.Sj()));
                String strSj = com.bytedance.sdk.component.utils.HiB.Sj(file);
                if (c0197Sj.sP() == null || !c0197Sj.sP().equals(strSj)) {
                    return null;
                }
                return file;
            }
        }
        return null;
    }

    private static void Sj(final com.bytedance.sdk.component.adexpress.Sj.TKC.sP sPVar) {
        com.bytedance.sdk.component.adexpress.EjP.EjP.Sj(new com.bytedance.sdk.component.Dq.Dq("updateTmplTime") {
            @Override
            public void run() {
                synchronized (sP.Sj) {
                    vS.Sj().Sj(sPVar, true);
                }
            }
        }, 10);
    }

    public static Sj Sj(String str, uA.Sj sj2, String str2, String str3) {
        File fileVS;
        Sj sj3 = new Sj();
        if (TextUtils.isEmpty(str3)) {
            fileVS = null;
        } else {
            fileVS = sP(str3, str);
            if (fileVS != null) {
                sj3.Sj(1);
            }
        }
        if (fileVS == null && (fileVS = Jcg(str)) != null) {
            sj3.Sj(3);
        }
        if (fileVS == null && (fileVS = vS(str)) != null) {
            sj3.Sj(2);
        }
        if (!TextUtils.isEmpty(str3)) {
            if (!Sj(str, str3)) {
                sj3.Sj(4);
            }
        } else if (!HiB(str)) {
            sj3.Sj(6);
        }
        sj3.sP();
        if (fileVS != null) {
            try {
                sj3.Sj(new WebResourceResponse(sj2.Sj(), "utf-8", new FileInputStream(fileVS)));
            } catch (Throwable unused) {
            }
        }
        return sj3;
    }

    public static boolean TKC(JSONObject jSONObject) {
        Object objOpt;
        if (jSONObject == null) {
            return false;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("creatives");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject == null || (objOpt = jSONObjectOptJSONObject.opt("template_Plugin")) == null || TextUtils.isEmpty(objOpt.toString())) {
                        return false;
                    }
                }
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static Set<String> sP(String str) {
        return Jcg.Sj().sP(str);
    }

    private static File sP(String str, String str2) {
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2;
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sjEjP = EjP();
        if (sjEjP == null || !HiB()) {
            return null;
        }
        Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> mapSj = sjEjP.Sj();
        if (mapSj.size() == 0 || (sj2 = mapSj.get(str)) == null) {
            return null;
        }
        for (com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0197Sj c0197Sj : sj2.vS()) {
            if (c0197Sj.Sj() != null && c0197Sj.Sj().equals(str2)) {
                File file = new File(HiB.Dq(), com.bytedance.sdk.component.utils.HiB.Sj(c0197Sj.Sj()));
                String strSj = com.bytedance.sdk.component.utils.HiB.Sj(file);
                if (c0197Sj.sP() == null || !c0197Sj.sP().equals(strSj)) {
                    return null;
                }
                return file;
            }
        }
        return null;
    }

    public static boolean sP(JSONObject jSONObject) {
        Object objOpt;
        return (jSONObject == null || (objOpt = jSONObject.opt("xTemplate")) == null || TextUtils.isEmpty(objOpt.toString())) ? false : true;
    }

    private static boolean Sj(String str, String str2) {
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sjEjP;
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2;
        if (!HiB() || (sjEjP = EjP()) == null) {
            return false;
        }
        Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> mapSj = sjEjP.Sj();
        if (mapSj.size() == 0 || (sj2 = mapSj.get(str2)) == null) {
            return false;
        }
        for (com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0197Sj c0197Sj : sj2.vS()) {
            if (c0197Sj != null && TextUtils.equals(str, c0197Sj.Sj())) {
                return true;
            }
        }
        return false;
    }

    public static boolean Sj(JSONObject jSONObject) {
        Object objOpt;
        return (jSONObject == null || (objOpt = jSONObject.opt("template_Plugin")) == null || TextUtils.isEmpty(objOpt.toString())) ? false : true;
    }
}
