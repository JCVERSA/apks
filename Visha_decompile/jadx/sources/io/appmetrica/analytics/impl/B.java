package io.appmetrica.analytics.impl;

import defpackage.abb;
import defpackage.e74;
import defpackage.qv0;
import defpackage.y71;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Map;
import kotlin.Pair;

public final class B {
    public final AdRevenue a;
    public final boolean b;
    public final C3022ym c;
    public final C2972wm d;

    public B(AdRevenue adRevenue, boolean z, PublicLogger publicLogger) {
        this.a = adRevenue;
        this.b = z;
        this.c = new C3022ym(100, "ad revenue strings", publicLogger);
        this.d = new C2972wm(30720, "ad revenue payload", publicLogger);
    }

    public final Pair a() {
        C2874t c2874t = new C2874t();
        int length = 0;
        for (Pair pair : y71.n(abb.a(this.a.adNetwork, new C2899u(c2874t)), abb.a(this.a.adPlacementId, new C2924v(c2874t)), abb.a(this.a.adPlacementName, new C2949w(c2874t)), abb.a(this.a.adUnitId, new C2974x(c2874t)), abb.a(this.a.adUnitName, new C2999y(c2874t)), abb.a(this.a.precision, new C3024z(c2874t)), abb.a(this.a.currency.getCurrencyCode(), new A(c2874t)))) {
            String str = (String) pair.getFirst();
            e74 e74Var = (e74) pair.getSecond();
            C3022ym c3022ym = this.c;
            c3022ym.getClass();
            String strA = c3022ym.a(str);
            byte[] bArrStringToBytesForProtobuf = StringUtils.stringToBytesForProtobuf(str);
            byte[] bArrStringToBytesForProtobuf2 = StringUtils.stringToBytesForProtobuf(strA);
            e74Var.invoke(bArrStringToBytesForProtobuf2);
            length += bArrStringToBytesForProtobuf.length - bArrStringToBytesForProtobuf2.length;
        }
        Integer num = (Integer) C.a.get(this.a.adType);
        c2874t.d = num != null ? num.intValue() : 0;
        C2849s c2849s = new C2849s();
        BigDecimal bigDecimal = this.a.adRevenue;
        BigInteger bigInteger = F7.a;
        int i = -bigDecimal.scale();
        BigInteger bigIntegerUnscaledValue = bigDecimal.unscaledValue();
        while (true) {
            if (bigIntegerUnscaledValue.compareTo(F7.a) <= 0 && bigIntegerUnscaledValue.compareTo(F7.b) >= 0) {
                break;
            }
            bigIntegerUnscaledValue = bigIntegerUnscaledValue.divide(BigInteger.TEN);
            i++;
        }
        Pair pairA = abb.a(Long.valueOf(bigIntegerUnscaledValue.longValue()), Integer.valueOf(i));
        long jLongValue = ((Number) pairA.getFirst()).longValue();
        int iIntValue = ((Number) pairA.getSecond()).intValue();
        c2849s.a = jLongValue;
        c2849s.b = iIntValue;
        c2874t.b = c2849s;
        Map<String, String> map = this.a.payload;
        if (map != null) {
            String strB = AbstractC2712mb.b(map);
            C2972wm c2972wm = this.d;
            c2972wm.getClass();
            byte[] bArrStringToBytesForProtobuf3 = StringUtils.stringToBytesForProtobuf(c2972wm.a(strB));
            c2874t.k = bArrStringToBytesForProtobuf3;
            length += StringUtils.stringToBytesForProtobuf(strB).length - bArrStringToBytesForProtobuf3.length;
        }
        if (this.b) {
            c2874t.a = "autocollected".getBytes(qv0.b);
        }
        return abb.a(MessageNano.toByteArray(c2874t), Integer.valueOf(length));
    }
}
