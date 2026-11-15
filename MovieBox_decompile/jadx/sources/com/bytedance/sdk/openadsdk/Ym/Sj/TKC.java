package com.bytedance.sdk.openadsdk.Ym.Sj;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

public class TKC extends com.bytedance.sdk.component.Sj.EjP<JSONObject, JSONObject> {
    private final WeakReference<Yf> Sj;

    public TKC(Yf yf2) {
        this.Sj = new WeakReference<>(yf2);
    }

    public static void Sj(dNu dnu, final Yf yf2) {
        dnu.Sj("newClickEvent", new com.bytedance.sdk.component.Sj.EjP.sP() {
            @Override
            public com.bytedance.sdk.component.Sj.EjP Sj() {
                return new TKC(yf2);
            }
        });
    }

    @Override
    public void Sj(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        Yf yf2 = this.Sj.get();
        if (yf2 == null) {
            TKC();
        } else {
            yf2.HiB(jSONObject);
        }
    }
}
