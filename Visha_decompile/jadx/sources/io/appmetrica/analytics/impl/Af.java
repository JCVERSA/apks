package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import android.util.Base64;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

public final class Af implements Qn {
    @Override
    public final byte[] a(R8 r8, C2469ch c2469ch) {
        if (!TextUtils.isEmpty(r8.b)) {
            try {
                byte[] bArrDecode = Base64.decode(r8.b, 0);
                C2468cg c2468cg = (bArrDecode == null || bArrDecode.length == 0) ? null : new C2468cg(bArrDecode);
                If r2 = new If();
                String str = c2468cg.a;
                r2.a = str == null ? new byte[0] : str.getBytes();
                r2.c = c2468cg.b;
                r2.b = c2468cg.c;
                int iOrdinal = c2468cg.d.ordinal();
                int i = 1;
                if (iOrdinal != 1) {
                    i = 2;
                    if (iOrdinal != 2) {
                        i = 0;
                    }
                }
                r2.d = i;
                return MessageNano.toByteArray(r2);
            } catch (Throwable unused) {
            }
        }
        return new byte[0];
    }
}
