package com.bytedance.sdk.openadsdk.Ym.Sj;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.model.sU;
import java.lang.ref.WeakReference;
import java.util.List;
import org.json.JSONObject;

public class Sj extends com.bytedance.sdk.component.Sj.EjP<JSONObject, JSONObject> {
    private final WeakReference<Yf> Sj;

    public Sj(Yf yf2) {
        this.Sj = new WeakReference<>(yf2);
    }

    public static void Sj(dNu dnu, final Yf yf2) {
        dnu.Sj("getNetworkData", new com.bytedance.sdk.component.Sj.EjP.sP() {
            @Override
            public com.bytedance.sdk.component.Sj.EjP Sj() {
                return new Sj(yf2);
            }
        });
    }

    @Override
    public void Sj(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        Yf yf2 = this.Sj.get();
        if (yf2 == null) {
            TKC();
        } else {
            yf2.Sj(jSONObject, new com.bytedance.sdk.openadsdk.aa.EjP() {
                @Override
                public void Sj(boolean z10, List<sU> list) {
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        if (!z10) {
                            Sj.this.Sj(jSONObject2);
                        } else {
                            jSONObject2.put("creatives", Yf.sP(list));
                            Sj.this.Sj(jSONObject2);
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }
}
