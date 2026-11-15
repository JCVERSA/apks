package com.facebook.ads.redexgen.core;

import java.util.Collection;
import org.json.JSONObject;

public class C1956io implements MK {
    public final C1635dL A00;
    public final String A01;
    public final JSONObject A02;

    public C1956io(JSONObject jSONObject, C1635dL c1635dL, String str) {
        this.A02 = jSONObject;
        this.A00 = c1635dL;
        this.A01 = str;
    }

    @Override
    public final String A7G() {
        return this.A01;
    }

    @Override
    public final Collection<String> A7h() {
        return ML.A03(this.A00, this.A02);
    }

    @Override
    public final MJ A8C() {
        return ML.A00(this.A02);
    }
}
