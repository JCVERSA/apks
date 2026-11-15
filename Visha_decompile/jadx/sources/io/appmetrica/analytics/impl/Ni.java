package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.Map;

public final class Ni extends Gg {
    public Ni(C2706m5 c2706m5) {
        super(c2706m5);
        c2706m5.b().a();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0038  */
    @Override
    public final boolean a(C2408a6 c2408a6) {
        Object objRemove;
        for (Map.Entry entry : c2408a6.p.entrySet()) {
            C2746nk c2746nk = this.a.u;
            String str = (String) entry.getKey();
            byte[] bArr = (byte[]) entry.getValue();
            if (bArr != null) {
                c2746nk.getClass();
                if (bArr.length == 0) {
                    objRemove = c2746nk.b.remove(str);
                } else {
                    objRemove = c2746nk.b.put(str, bArr);
                }
            } else {
                objRemove = c2746nk.b.remove(str);
            }
            C2845rk c2845rk = c2746nk.a;
            Map<String, byte[]> map = c2746nk.b;
            IBinaryDataHelper iBinaryDataHelper = c2845rk.d;
            String str2 = c2845rk.a;
            C2821qk c2821qk = c2845rk.c;
            C2771ok c2771okFromModel = c2845rk.b.fromModel(map);
            c2821qk.getClass();
            iBinaryDataHelper.insert(str2, MessageNano.toByteArray(c2771okFromModel));
        }
        return true;
    }
}
