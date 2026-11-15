package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Tg extends Gg {
    public final C2690le b;
    public final ProtobufStateStorage c;
    public final I2 d;
    public final C2554g2 e;
    public final B2 f;

    public Tg(C2706m5 c2706m5, C2690le c2690le) {
        this(c2706m5, c2690le, C2872sm.a(X1.class).a(c2706m5.getContext()), new I2(c2706m5.getContext()), new C2554g2(), new B2(c2706m5.getContext()));
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        C2706m5 c2706m5 = this.a;
        c2706m5.b.toString();
        if (!c2706m5.t.c() || !c2706m5.w()) {
            return false;
        }
        X1 x1 = (X1) this.c.read();
        List list = x1.a;
        H2 h2 = x1.b;
        I2 i2 = this.d;
        i2.getClass();
        X1 x2 = null;
        H2 h2A = AndroidUtils.isApiAchieved(28) ? E2.a(i2.a, i2.b) : null;
        List list2 = x1.c;
        List list3 = (List) SystemServiceUtils.accessSystemServiceSafelyOrDefault(this.f.a, "getting available providers", "location manager", Collections.emptyList(), new A2());
        C2690le c2690le = this.b;
        Context context = this.a.a;
        c2690le.getClass();
        ArrayList arrayListA = new Fi(context, new SafePackageManager()).a();
        if (CollectionUtils.areCollectionsEqual(arrayListA, list)) {
            arrayListA = null;
        }
        if (arrayListA != null || !In.a(h2, h2A) || !CollectionUtils.areCollectionsEqual(list2, list3)) {
            if (arrayListA != null) {
                list = arrayListA;
            }
            x2 = new X1(list, h2A, list3);
        }
        if (x2 != null) {
            C2810q9 c2810q9 = c2706m5.n;
            C2408a6 c2408a6A = C2408a6.a(c2408a6, x2.a, x2.b, this.e, x2.c);
            c2810q9.a(c2408a6A, C2945vk.a(c2810q9.c.b(c2408a6A), c2408a6A.i));
            long jCurrentTimeSeconds = c2810q9.j.currentTimeSeconds();
            c2810q9.l = jCurrentTimeSeconds;
            c2810q9.a.a(jCurrentTimeSeconds).b();
            this.c.save(x2);
            return false;
        }
        if (!c2706m5.z()) {
            return false;
        }
        C2810q9 c2810q10 = c2706m5.n;
        C2408a6 c2408a6A2 = C2408a6.a(c2408a6, x1.a, x1.b, this.e, x1.c);
        c2810q10.a(c2408a6A2, C2945vk.a(c2810q10.c.b(c2408a6A2), c2408a6A2.i));
        long jCurrentTimeSeconds2 = c2810q10.j.currentTimeSeconds();
        c2810q10.l = jCurrentTimeSeconds2;
        c2810q10.a.a(jCurrentTimeSeconds2).b();
        return false;
    }

    public Tg(C2706m5 c2706m5, C2690le c2690le, ProtobufStateStorage protobufStateStorage, I2 i2, C2554g2 c2554g2, B2 b2) {
        super(c2706m5);
        this.b = c2690le;
        this.c = protobufStateStorage;
        this.d = i2;
        this.e = c2554g2;
        this.f = b2;
    }
}
