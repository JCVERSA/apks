package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.HashSet;

public final class C2678l2 extends Gg {
    public final Un b;
    public final Kj c;

    public C2678l2(@NonNull C2706m5 c2706m5) {
        this(c2706m5, c2706m5.t(), Kj.c());
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        C2706m5 c2706m5 = this.a;
        if (!this.b.c() && !this.b.d()) {
            if (((C2469ch) c2706m5.k.a()).e) {
                this.c.b();
            }
            Q8 q8 = this.a.l;
            if (q8.c == null) {
                q8.a();
            }
            S8 s8 = q8.c;
            s8.getClass();
            s8.b = new HashSet();
            s8.d = 0;
            S8 s9 = q8.c;
            s9.a = true;
            V8 v8 = q8.b;
            IBinaryDataHelper iBinaryDataHelper = v8.c;
            U8 u8 = v8.b;
            v8.a.getClass();
            A9 a9A = T8.a(s9);
            u8.getClass();
            iBinaryDataHelper.insert("event_hashes", MessageNano.toByteArray(a9A));
        }
        return false;
    }

    public C2678l2(C2706m5 c2706m5, Un un, Kj kj) {
        super(c2706m5);
        this.b = un;
        this.c = kj;
    }
}
