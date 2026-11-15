package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.component.embedapplog.IDefaultEncrypt;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import org.json.JSONObject;

public class dx implements IDefaultEncrypt {
    private final PangleEncryptConstant.CryptDataScene Sj;

    public dx(PangleEncryptConstant.CryptDataScene cryptDataScene) {
        this.Sj = cryptDataScene;
    }

    @Override
    public JSONObject encrypt(JSONObject jSONObject, int i10) {
        zR.Sj(1, this.Sj, i10);
        return com.bytedance.sdk.component.utils.Sj.Sj(jSONObject);
    }
}
