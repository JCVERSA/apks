package defpackage;

import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class ms7 {
    public static final BigInteger a = new BigInteger(Integer.toString(Integer.MIN_VALUE));
    public static final BigInteger b = new BigInteger(Integer.toString(Integer.MAX_VALUE));
    public static final BigInteger c = new BigInteger(Long.toString(Long.MIN_VALUE));
    public static final BigInteger d = new BigInteger(Long.toString(Long.MAX_VALUE));

    public static Number a(Number number) {
        if (number instanceof BigDecimal) {
            BigDecimal bigDecimal = (BigDecimal) number;
            if (bigDecimal.scale() == 0) {
                number = bigDecimal.unscaledValue();
            } else {
                double dDoubleValue = bigDecimal.doubleValue();
                if (dDoubleValue != Double.POSITIVE_INFINITY && dDoubleValue != Double.NEGATIVE_INFINITY) {
                    return new Double(dDoubleValue);
                }
            }
        }
        if (!(number instanceof BigInteger)) {
            return number;
        }
        BigInteger bigInteger = (BigInteger) number;
        if (bigInteger.compareTo(b) > 0 || bigInteger.compareTo(a) < 0) {
            return (bigInteger.compareTo(d) > 0 || bigInteger.compareTo(c) < 0) ? number : new Long(bigInteger.longValue());
        }
        return new Integer(bigInteger.intValue());
    }
}
