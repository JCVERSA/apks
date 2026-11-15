package defpackage;

import freemarker.template.utility.UnsupportedNumberClassException;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class a47 {
    public static final BigDecimal a;
    public static final BigDecimal b;
    public static final BigInteger c;
    public static final BigInteger d;
    public static Class e;

    static {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(-2147483648L);
        a = bigDecimalValueOf;
        BigDecimal bigDecimalValueOf2 = BigDecimal.valueOf(2147483647L);
        b = bigDecimalValueOf2;
        c = bigDecimalValueOf.toBigInteger();
        d = bigDecimalValueOf2.toBigInteger();
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static int b(Number number) {
        if (number instanceof Integer) {
            int iIntValue = ((Integer) number).intValue();
            if (iIntValue > 0) {
                return 1;
            }
            return iIntValue == 0 ? 0 : -1;
        }
        if (number instanceof BigDecimal) {
            return ((BigDecimal) number).signum();
        }
        if (number instanceof Double) {
            double dDoubleValue = ((Double) number).doubleValue();
            if (dDoubleValue > 0.0d) {
                return 1;
            }
            if (dDoubleValue == 0.0d) {
                return 0;
            }
            if (dDoubleValue < 0.0d) {
                return -1;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("The signum of ");
            stringBuffer.append(dDoubleValue);
            stringBuffer.append(" is not defined.");
            throw new ArithmeticException(stringBuffer.toString());
        }
        if (number instanceof Float) {
            float fFloatValue = ((Float) number).floatValue();
            if (fFloatValue > 0.0f) {
                return 1;
            }
            if (fFloatValue == 0.0f) {
                return 0;
            }
            if (fFloatValue < 0.0f) {
                return -1;
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("The signum of ");
            stringBuffer2.append(fFloatValue);
            stringBuffer2.append(" is not defined.");
            throw new ArithmeticException(stringBuffer2.toString());
        }
        if (number instanceof Long) {
            long jLongValue = ((Long) number).longValue();
            if (jLongValue > 0) {
                return 1;
            }
            return jLongValue == 0 ? 0 : -1;
        }
        if (number instanceof Short) {
            short sShortValue = ((Short) number).shortValue();
            if (sShortValue > 0) {
                return 1;
            }
            return sShortValue == 0 ? 0 : -1;
        }
        if (!(number instanceof Byte)) {
            if (number instanceof BigInteger) {
                return ((BigInteger) number).signum();
            }
            throw new UnsupportedNumberClassException(number.getClass());
        }
        byte bByteValue = ((Byte) number).byteValue();
        if (bByteValue > 0) {
            return 1;
        }
        return bByteValue == 0 ? 0 : -1;
    }

    public static boolean c(Number number) {
        if (number instanceof Double) {
            return ((Double) number).isInfinite();
        }
        if (number instanceof Float) {
            return ((Float) number).isInfinite();
        }
        if (f(number)) {
            return false;
        }
        throw new UnsupportedNumberClassException(number.getClass());
    }

    public static boolean d(BigDecimal bigDecimal) {
        return bigDecimal.scale() <= 0 || bigDecimal.setScale(0, 1).compareTo(bigDecimal) == 0;
    }

    public static boolean e(Number number) {
        if (number instanceof Double) {
            return ((Double) number).isNaN();
        }
        if (number instanceof Float) {
            return ((Float) number).isNaN();
        }
        if (f(number)) {
            return false;
        }
        throw new UnsupportedNumberClassException(number.getClass());
    }

    public static boolean f(Number number) {
        return (number instanceof Integer) || (number instanceof BigDecimal) || (number instanceof Long) || (number instanceof Short) || (number instanceof Byte) || (number instanceof BigInteger);
    }

    public static ArithmeticException g(Number number, Class cls) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Can't convert ");
        stringBuffer.append(number);
        stringBuffer.append(" to type ");
        stringBuffer.append(hx0.g(cls));
        stringBuffer.append(" without loss.");
        return new ArithmeticException(stringBuffer.toString());
    }

    public static int h(Number number) throws Throwable {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return number.intValue();
        }
        if (number instanceof Long) {
            long jLongValue = number.longValue();
            int i = (int) jLongValue;
            if (jLongValue == i) {
                return i;
            }
            Class clsA = e;
            if (clsA == null) {
                clsA = a("java.lang.Integer");
                e = clsA;
            }
            throw g(number, clsA);
        }
        if ((number instanceof Double) || (number instanceof Float)) {
            double dDoubleValue = number.doubleValue();
            if (dDoubleValue % 1.0d == 0.0d && dDoubleValue >= -2.147483648E9d && dDoubleValue <= 2.147483647E9d) {
                return (int) dDoubleValue;
            }
            Class clsA2 = e;
            if (clsA2 == null) {
                clsA2 = a("java.lang.Integer");
                e = clsA2;
            }
            throw g(number, clsA2);
        }
        if (number instanceof BigDecimal) {
            BigDecimal bigDecimal = (BigDecimal) number;
            if (d(bigDecimal) && bigDecimal.compareTo(b) <= 0 && bigDecimal.compareTo(a) >= 0) {
                return bigDecimal.intValue();
            }
            Class clsA3 = e;
            if (clsA3 == null) {
                clsA3 = a("java.lang.Integer");
                e = clsA3;
            }
            throw g(number, clsA3);
        }
        if (!(number instanceof BigInteger)) {
            throw new UnsupportedNumberClassException(number.getClass());
        }
        BigInteger bigInteger = (BigInteger) number;
        if (bigInteger.compareTo(d) <= 0 && bigInteger.compareTo(c) >= 0) {
            return bigInteger.intValue();
        }
        Class clsA4 = e;
        if (clsA4 == null) {
            clsA4 = a("java.lang.Integer");
            e = clsA4;
        }
        throw g(number, clsA4);
    }
}
