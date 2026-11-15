package com.bytedance.sdk.openadsdk.Ym.Sj;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import org.json.JSONObject;

public class uA extends com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject> {
    private final Yf Sj;

    public uA(Yf yf2) {
        this.Sj = yf2;
    }

    public static void Sj(dNu dnu, Yf yf2) {
        dnu.Sj("overlayRenderFinish", new uA(yf2));
    }

    @Override
    @Nullable
    public JSONObject Sj(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        this.Sj.Fmk();
        return null;
    }
}
