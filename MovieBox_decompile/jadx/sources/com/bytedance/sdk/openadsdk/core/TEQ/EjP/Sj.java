package com.bytedance.sdk.openadsdk.core.TEQ.EjP;

import android.content.Context;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.adsdk.ugeno.EjP.vS;
import com.bytedance.adsdk.ugeno.core.Fmk;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.adsdk.ugeno.core.aa;
import com.bytedance.adsdk.ugeno.core.uA;
import com.bytedance.adsdk.ugeno.sP.TKC;
import com.bytedance.sdk.openadsdk.core.TEQ.vS.EjP;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import org.json.JSONException;
import org.json.JSONObject;

public class Sj implements Fmk, aa {
    private Fmk EjP;
    private final Context Sj;
    private InterfaceC0237Sj TKC;
    private TKC<View> sP;

    interface InterfaceC0237Sj {
        void Sj(TEQ teq);
    }

    public Sj(Context context) {
        this.Sj = context;
    }

    public void sP(JSONObject jSONObject, JSONObject jSONObject2, EjP ejP) {
        try {
            uA uAVar = new uA(this.Sj);
            TKC<View> tkcSj = uAVar.Sj(jSONObject);
            this.sP = tkcSj;
            if (tkcSj == null) {
                if (ejP != null) {
                    ejP.Sj(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, "ugen render fail");
                    return;
                }
                return;
            }
            View viewYm = tkcSj.Ym();
            if (viewYm != null) {
                viewYm.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                    }
                });
            }
            uAVar.Sj((aa) this);
            uAVar.Sj((Fmk) this);
            if (jSONObject2 != null) {
                try {
                    jSONObject2.put(TmcConstants.KEY_LANGUAGE, com.bytedance.sdk.openadsdk.core.aa.sP());
                    jSONObject2.put("os", "Android");
                } catch (JSONException unused) {
                }
            }
            uAVar.sP(jSONObject2);
            if (ejP != null) {
                ejP.Sj(this.sP);
            }
        } catch (Exception e10) {
            if (ejP != null) {
                ejP.Sj(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, "ugen render fail exception is" + e10.getMessage());
            }
        }
    }

    @Override
    public void Sj(TKC tkc, String str, vS.Sj sj2) {
    }

    public void Sj(final JSONObject jSONObject, final JSONObject jSONObject2, final EjP ejP) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            sP(jSONObject, jSONObject2, ejP);
        } else {
            JcM.Sj(new Runnable() {
                @Override
                public void run() {
                    Sj.this.sP(jSONObject, jSONObject2, ejP);
                }
            });
        }
    }

    public void Sj(InterfaceC0237Sj interfaceC0237Sj) {
        this.TKC = interfaceC0237Sj;
    }

    public void Sj(Fmk fmk) {
        this.EjP = fmk;
    }

    @Override
    public void Sj(TEQ teq, aa.sP sPVar, aa.Sj sj2) {
        InterfaceC0237Sj interfaceC0237Sj;
        if (teq == null) {
            return;
        }
        if ((teq.sP() == 1 || teq.sP() == 4) && (interfaceC0237Sj = this.TKC) != null) {
            interfaceC0237Sj.Sj(teq);
        }
        if (sPVar == null || teq.EjP() == null) {
            return;
        }
        sPVar.Sj(teq.EjP());
    }

    @Override
    public void Sj(TKC tkc, MotionEvent motionEvent) {
        Fmk fmk = this.EjP;
        if (fmk != null) {
            fmk.Sj(tkc, motionEvent);
        }
    }
}
