package io.appmetrica.analytics.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class C2832r7 implements Converter {
    public final C2491de a;

    /* JADX WARN: Multi-variable type inference failed */
    public C2832r7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override
    public final C2932v7 fromModel(C2808q7 c2808q7) {
        C2932v7 c2932v7 = new C2932v7();
        Boolean bool = c2808q7.a;
        if (bool != null) {
            c2932v7.a = this.a.fromModel(bool).intValue();
        }
        Double d = c2808q7.c;
        if (d != null) {
            c2932v7.c = d.doubleValue();
        }
        Double d2 = c2808q7.b;
        if (d2 != null) {
            c2932v7.b = d2.doubleValue();
        }
        Long l = c2808q7.h;
        if (l != null) {
            c2932v7.h = l.longValue();
        }
        Integer num = c2808q7.f;
        if (num != null) {
            c2932v7.f = num.intValue();
        }
        Integer num2 = c2808q7.e;
        if (num2 != null) {
            c2932v7.e = num2.intValue();
        }
        Integer num3 = c2808q7.g;
        if (num3 != null) {
            c2932v7.g = num3.intValue();
        }
        Integer num4 = c2808q7.d;
        if (num4 != null) {
            c2932v7.d = num4.intValue();
        }
        String str = c2808q7.i;
        if (str != null) {
            c2932v7.i = str;
        }
        String str2 = c2808q7.j;
        if (str2 != null) {
            c2932v7.j = str2;
        }
        return c2932v7;
    }

    public C2832r7(C2491de c2491de) {
        this.a = c2491de;
    }

    public C2832r7(C2491de c2491de, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new C2491de() : c2491de);
    }

    @Override
    public final C2808q7 toModel(C2932v7 c2932v7) {
        if (c2932v7 == null) {
            return new C2808q7(null, null, null, null, null, null, null, null, null, null);
        }
        C2932v7 c2932v8 = new C2932v7();
        Boolean boolA = this.a.a(c2932v7.a);
        double d = c2932v7.c;
        Double dValueOf = Double.valueOf(d);
        if (d == c2932v8.c) {
            dValueOf = null;
        }
        double d2 = c2932v7.b;
        Double dValueOf2 = !(d2 == c2932v8.b) ? Double.valueOf(d2) : null;
        long j = c2932v7.h;
        Long lValueOf = j != c2932v8.h ? Long.valueOf(j) : null;
        int i = c2932v7.f;
        Integer numValueOf = i != c2932v8.f ? Integer.valueOf(i) : null;
        int i2 = c2932v7.e;
        Integer numValueOf2 = i2 != c2932v8.e ? Integer.valueOf(i2) : null;
        int i3 = c2932v7.g;
        Integer numValueOf3 = i3 != c2932v8.g ? Integer.valueOf(i3) : null;
        int i4 = c2932v7.d;
        Integer numValueOf4 = i4 != c2932v8.d ? Integer.valueOf(i4) : null;
        String str = c2932v7.i;
        String str2 = !y45.e(str, c2932v8.i) ? str : null;
        String str3 = c2932v7.j;
        return new C2808q7(boolA, dValueOf2, dValueOf, numValueOf4, numValueOf2, numValueOf, numValueOf3, lValueOf, str2, !y45.e(str3, c2932v8.j) ? str3 : null);
    }
}
