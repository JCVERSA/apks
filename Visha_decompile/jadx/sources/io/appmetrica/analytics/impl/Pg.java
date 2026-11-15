package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

public final class Pg extends Gg {
    public final Q8 b;

    public Pg(@NonNull C2706m5 c2706m5) {
        this(c2706m5, c2706m5.i());
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        EnumC2661ka enumC2661ka;
        if (!TextUtils.isEmpty(c2408a6.getName())) {
            Q8 q8 = this.b;
            String name = c2408a6.getName();
            if (q8.c == null) {
                q8.a();
            }
            int iHashCode = name.hashCode();
            if (q8.c.b.contains(Integer.valueOf(iHashCode))) {
                enumC2661ka = EnumC2661ka.NON_FIRST_OCCURENCE;
            } else {
                S8 s8 = q8.c;
                EnumC2661ka enumC2661ka2 = s8.a ? EnumC2661ka.FIRST_OCCURRENCE : EnumC2661ka.UNKNOWN;
                if (s8.d < 1000) {
                    s8.b.add(Integer.valueOf(iHashCode));
                    s8.d++;
                } else {
                    s8.a = false;
                }
                V8 v8 = q8.b;
                S8 s9 = q8.c;
                IBinaryDataHelper iBinaryDataHelper = v8.c;
                U8 u8 = v8.b;
                v8.a.getClass();
                A9 a9A = T8.a(s9);
                u8.getClass();
                iBinaryDataHelper.insert("event_hashes", MessageNano.toByteArray(a9A));
                enumC2661ka = enumC2661ka2;
            }
            c2408a6.k = enumC2661ka;
        }
        return false;
    }

    public Pg(C2706m5 c2706m5, Q8 q8) {
        super(c2706m5);
        this.b = q8;
    }
}
