package com.cloud.hisavana.sdk.common.util;

import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class m0 {
    public static BigDecimal a(BigDecimal bigDecimal) {
        return bigDecimal.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimal.stripTrailingZeros();
    }
}
