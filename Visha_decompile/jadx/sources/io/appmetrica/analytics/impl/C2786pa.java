package io.appmetrica.analytics.impl;

import defpackage.qv0;
import defpackage.y71;
import java.util.Map;

public final class C2786pa implements U9 {
    public final N8 a = new N8();

    public final C2611i9[] a(byte[] bArr) {
        int i = 0;
        if (bArr == null) {
            return new C2611i9[0];
        }
        Map<String, byte[]> model = this.a.toModel(bArr);
        C2611i9[] c2611i9Arr = new C2611i9[model.size()];
        for (Object obj : model.entrySet()) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            Map.Entry entry = (Map.Entry) obj;
            C2611i9 c2611i9 = new C2611i9();
            c2611i9.a = ((String) entry.getKey()).getBytes(qv0.b);
            c2611i9.b = (byte[]) entry.getValue();
            c2611i9Arr[i] = c2611i9;
            i = i2;
        }
        return c2611i9Arr;
    }
}
