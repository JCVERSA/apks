package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class C1932iO extends AbstractRunnableC1322Vt {
    public final C1931iN A00;
    public final Map A01;
    public final Map A02;

    public C1932iO(C1931iN c1931iN, Map map, Map map2) {
        this.A00 = c1931iN;
        this.A02 = map;
        this.A01 = map2;
    }

    @Override
    public final void A07() {
        if (!TextUtils.isEmpty(this.A00.A01.A7G())) {
            HashMap map = new HashMap();
            Map<String, String> extraData = this.A02;
            map.putAll(extraData);
            Map<String, String> extraData2 = this.A01;
            map.putAll(extraData2);
            this.A00.A0A.A0A().ABT(this.A00.A01.A7G(), map);
        }
    }
}
