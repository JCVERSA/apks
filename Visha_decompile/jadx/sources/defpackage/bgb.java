package defpackage;

import java.math.BigDecimal;

public final class bgb {
    public static final bgb a = new bgb();

    public static final double a(Double d) {
        if (d == null) {
            return 0.0d;
        }
        try {
            return BigDecimal.valueOf(d.doubleValue()).divide(new BigDecimal(100)).stripTrailingZeros().doubleValue();
        } catch (Exception e) {
            ikd.b().w("UnitUtil", "cents convert to dollar fail, reason is " + e.getMessage());
            return 0.0d;
        }
    }

    public static final double b(Double d) {
        if (d == null) {
            return 0.0d;
        }
        try {
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(d.doubleValue());
            y45.i(bigDecimalValueOf, "valueOf(...)");
            return bigDecimalValueOf.multiply(BigDecimal.valueOf(100L)).stripTrailingZeros().doubleValue();
        } catch (Exception e) {
            ikd.b().w("UnitUtil", "dollar convert to cents fail, reason is " + e.getMessage());
            return 0.0d;
        }
    }
}
