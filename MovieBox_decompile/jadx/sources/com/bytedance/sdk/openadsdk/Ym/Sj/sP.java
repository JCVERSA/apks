package com.bytedance.sdk.openadsdk.Ym.Sj;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

public class sP extends com.bytedance.sdk.component.Sj.EjP<JSONObject, JSONObject> {
    private final WeakReference<Yf> Sj;

    public sP(Yf yf2) {
        this.Sj = new WeakReference<>(yf2);
    }

    public static void Sj(dNu dnu, final Yf yf2) {
        dnu.Sj("interstitial_webview_close", new com.bytedance.sdk.component.Sj.EjP.sP() {
            @Override
            public com.bytedance.sdk.component.Sj.EjP Sj() {
                return new sP(yf2);
            }
        });
    }

    @Override
    public void Sj(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.uA.sP().RiZ();
        Yf yf2 = this.Sj.get();
        if (yf2 == null) {
            TKC();
        } else {
            yf2.Dq();
        }
    }
}
