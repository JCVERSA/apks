package com.bytedance.sdk.openadsdk.core.Ym.Sj;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.Ym.sP.TKC;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.List;
import org.json.JSONObject;

public abstract class sP {
    protected double EjP;
    public int HiB;
    public int Sj;
    protected int TKC;
    protected final Context sP;
    public Sj vS;

    public static class Sj {
        public int Sj;
        public boolean TKC;
        public int sP;
    }

    public sP(Context context, int i10, int i11) {
        this.TKC = 0;
        this.EjP = 0.0d;
        if (i11 > 0 && i10 > 0) {
            this.EjP = ((double) i10) / ((double) i11);
        }
        float fJcg = FPG.Jcg(context);
        if (fJcg != 0.0f && i10 > 0) {
            this.TKC = (int) (i10 / fJcg);
        }
        this.sP = context.getApplicationContext();
    }

    public abstract com.bytedance.sdk.openadsdk.core.Ym.Sj Sj(String str, List<TKC> list);

    protected void Sj(Exception exc, int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("exception", exc.getMessage());
            jSONObject.put("error_code", i10);
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj("load_vast", jSONObject);
        } catch (Exception unused) {
        }
    }

    protected String sP(String str, List<TKC> list) {
        String strEjP;
        int i10 = this.Sj;
        if (i10 >= 5) {
            return null;
        }
        this.Sj = i10 + 1;
        if (str == null) {
            return null;
        }
        try {
            com.bytedance.sdk.component.Jcg.sP.sP sPVarTKC = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().TKC();
            sPVarTKC.sP(str);
            com.bytedance.sdk.component.Jcg.sP sPVarSj = sPVarTKC.Sj();
            strEjP = sPVarSj.EjP();
            try {
                sPVarSj.Sj();
            } catch (Exception e10) {
                e = e10;
                Sj(e, 0);
                if (!list.isEmpty()) {
                    TKC.sP(list, com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj.WRAPPER_TIMEOUT, -1L, null);
                }
            }
        } catch (Exception e11) {
            e = e11;
            strEjP = null;
        }
        return strEjP;
    }

    protected boolean Sj(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return Integer.parseInt(str) < 2;
        } catch (NumberFormatException unused) {
            return true;
        }
    }
}
