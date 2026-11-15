package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import defpackage.abb;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.math.BigDecimal;
import java.math.BigInteger;
import kotlin.Pair;

public final class D7 implements ProtobufConverter {
    @NonNull
    public final BigDecimal a(@NonNull C2709m8 c2709m8) {
        throw new UnsupportedOperationException();
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @NonNull
    public final C2709m8 fromModel(@NonNull BigDecimal bigDecimal) {
        BigInteger bigInteger = F7.a;
        int i = -bigDecimal.scale();
        BigInteger bigIntegerUnscaledValue = bigDecimal.unscaledValue();
        while (true) {
            if (bigIntegerUnscaledValue.compareTo(F7.a) <= 0 && bigIntegerUnscaledValue.compareTo(F7.b) >= 0) {
                Pair pairA = abb.a(Long.valueOf(bigIntegerUnscaledValue.longValue()), Integer.valueOf(i));
                E7 e7 = new E7(((Number) pairA.getSecond()).intValue(), ((Number) pairA.getFirst()).longValue());
                C2709m8 c2709m8 = new C2709m8();
                c2709m8.a = e7.a;
                c2709m8.b = e7.b;
                return c2709m8;
            }
            bigIntegerUnscaledValue = bigIntegerUnscaledValue.divide(BigInteger.TEN);
            i++;
        }
    }
}
