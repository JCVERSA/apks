package io.appmetrica.analytics.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class C2633j7 implements ProtobufConverter {
    public final C2491de a;
    public final C2832r7 b;

    /* JADX WARN: Multi-variable type inference failed */
    public C2633j7() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @Override
    public final C2907u7 fromModel(C2683l7 c2683l7) {
        C2907u7 c2907u7 = new C2907u7();
        Integer num = c2683l7.a;
        if (num != null) {
            c2907u7.a = num.intValue();
        }
        String str = c2683l7.b;
        if (str != null) {
            c2907u7.b = StringUtils.correctIllFormedString(str);
        }
        String str2 = c2683l7.c;
        if (str2 != null) {
            c2907u7.c = StringUtils.correctIllFormedString(str2);
        }
        Long l = c2683l7.d;
        if (l != null) {
            c2907u7.d = l.longValue();
        }
        C2808q7 c2808q7 = c2683l7.e;
        if (c2808q7 != null) {
            c2907u7.e = this.b.fromModel(c2808q7);
        }
        String str3 = c2683l7.f;
        if (str3 != null) {
            c2907u7.f = str3;
        }
        String str4 = c2683l7.g;
        if (str4 != null) {
            c2907u7.g = str4;
        }
        Long l2 = c2683l7.h;
        if (l2 != null) {
            c2907u7.h = l2.longValue();
        }
        Integer num2 = c2683l7.i;
        if (num2 != null) {
            c2907u7.i = num2.intValue();
        }
        Integer num3 = c2683l7.j;
        if (num3 != null) {
            c2907u7.j = num3.intValue();
        }
        String str5 = c2683l7.k;
        if (str5 != null) {
            c2907u7.k = str5;
        }
        M8 m8 = c2683l7.l;
        if (m8 != null) {
            c2907u7.l = m8.a;
        }
        String str6 = c2683l7.m;
        if (str6 != null) {
            c2907u7.m = str6;
        }
        EnumC2661ka enumC2661ka = c2683l7.n;
        if (enumC2661ka != null) {
            c2907u7.n = enumC2661ka.a;
        }
        EnumC2859s9 enumC2859s9 = c2683l7.o;
        if (enumC2859s9 != null) {
            c2907u7.o = enumC2859s9.a;
        }
        Boolean bool = c2683l7.p;
        if (bool != null) {
            c2907u7.p = this.a.fromModel(bool).intValue();
        }
        Integer num4 = c2683l7.q;
        if (num4 != null) {
            c2907u7.q = num4.intValue();
        }
        byte[] bArr = c2683l7.r;
        if (bArr != null) {
            c2907u7.r = bArr;
        }
        return c2907u7;
    }

    public C2633j7(C2491de c2491de, C2832r7 c2832r7) {
        this.a = c2491de;
        this.b = c2832r7;
    }

    public C2633j7(C2491de c2491de, C2832r7 c2832r7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new C2491de() : c2491de, (i & 2) != 0 ? new C2832r7(null, 1, null) : c2832r7);
    }

    @Override
    public final C2683l7 toModel(C2907u7 c2907u7) {
        EnumC2859s9 enumC2859s9;
        C2907u7 c2907u8 = new C2907u7();
        int i = c2907u7.a;
        Integer numValueOf = i != c2907u8.a ? Integer.valueOf(i) : null;
        String str = c2907u7.b;
        String str2 = !y45.e(str, c2907u8.b) ? str : null;
        String str3 = c2907u7.c;
        String str4 = !y45.e(str3, c2907u8.c) ? str3 : null;
        long j = c2907u7.d;
        Long lValueOf = j != c2907u8.d ? Long.valueOf(j) : null;
        C2808q7 model = this.b.toModel(c2907u7.e);
        String str5 = c2907u7.f;
        String str6 = !y45.e(str5, c2907u8.f) ? str5 : null;
        String str7 = c2907u7.g;
        String str8 = !y45.e(str7, c2907u8.g) ? str7 : null;
        long j2 = c2907u7.h;
        Long lValueOf2 = Long.valueOf(j2);
        if (j2 == c2907u8.h) {
            lValueOf2 = null;
        }
        int i2 = c2907u7.i;
        Integer numValueOf2 = i2 != c2907u8.i ? Integer.valueOf(i2) : null;
        int i3 = c2907u7.j;
        Integer numValueOf3 = i3 != c2907u8.j ? Integer.valueOf(i3) : null;
        String str9 = c2907u7.k;
        String str10 = !y45.e(str9, c2907u8.k) ? str9 : null;
        int i4 = c2907u7.l;
        Integer numValueOf4 = Integer.valueOf(i4);
        if (i4 == c2907u8.l) {
            numValueOf4 = null;
        }
        M8 m8A = numValueOf4 != null ? M8.a(Integer.valueOf(numValueOf4.intValue())) : null;
        String str11 = c2907u7.m;
        String str12 = !y45.e(str11, c2907u8.m) ? str11 : null;
        int i5 = c2907u7.n;
        Integer numValueOf5 = Integer.valueOf(i5);
        if (i5 == c2907u8.n) {
            numValueOf5 = null;
        }
        EnumC2661ka enumC2661kaA = numValueOf5 != null ? EnumC2661ka.a(Integer.valueOf(numValueOf5.intValue())) : null;
        int i6 = c2907u7.o;
        Integer numValueOf6 = Integer.valueOf(i6);
        if (i6 == c2907u8.o) {
            numValueOf6 = null;
        }
        if (numValueOf6 != null) {
            int iIntValue = numValueOf6.intValue();
            EnumC2859s9[] enumC2859s9ArrValues = EnumC2859s9.values();
            int length = enumC2859s9ArrValues.length;
            int i7 = 0;
            while (true) {
                if (i7 < length) {
                    EnumC2859s9 enumC2859s10 = enumC2859s9ArrValues[i7];
                    EnumC2859s9[] enumC2859s9Arr = enumC2859s9ArrValues;
                    if (enumC2859s10.a == iIntValue) {
                        enumC2859s9 = enumC2859s10;
                        break;
                    }
                    i7++;
                    enumC2859s9ArrValues = enumC2859s9Arr;
                } else {
                    enumC2859s9 = EnumC2859s9.NATIVE;
                    break;
                }
            }
        } else {
            enumC2859s9 = null;
        }
        Boolean boolA = this.a.a(c2907u7.p);
        int i8 = c2907u7.q;
        Integer numValueOf7 = i8 != c2907u8.q ? Integer.valueOf(i8) : null;
        byte[] bArr = c2907u7.r;
        return new C2683l7(numValueOf, str2, str4, lValueOf, model, str6, str8, lValueOf2, numValueOf2, numValueOf3, str10, m8A, str12, enumC2661kaA, enumC2859s9, boolA, numValueOf7, !Arrays.equals(bArr, c2907u8.r) ? bArr : null);
    }
}
