package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import java.util.Map;

public final class C2845rk {
    public final String a;
    public final C2721mk b;
    public final C2821qk c;
    public final IBinaryDataHelper d;

    public C2845rk(Context context, C2532f5 c2532f5) {
        c2532f5.a();
        this.a = "session_extras";
        this.b = new C2721mk();
        this.c = new C2821qk();
        this.d = C2559g7.a(context).a(c2532f5);
    }

    public final Map a() {
        try {
            byte[] bArr = this.d.get(this.a);
            if (bArr != null) {
                if (!(bArr.length == 0)) {
                    return this.b.toModel(this.c.toState(bArr));
                }
            }
        } catch (Throwable unused) {
        }
        C2721mk c2721mk = this.b;
        this.c.getClass();
        return c2721mk.toModel(new C2771ok());
    }
}
