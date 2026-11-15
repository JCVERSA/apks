package freemarker.core;

import com.transsion.audiotagger.tag.lyrics3.Lyrics3v2Fields;
import defpackage.a47;
import defpackage.ms7;
import defpackage.n0a;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;

public abstract class c {
    public static final a d = new a();
    public static final b e = new b();
    public static Class f;
    public static Class g;
    public static Class h;
    public static Class i;
    public static Class j;
    public static Class k;
    public static Class l;
    public static Class m;
    public int a = 12;
    public int b = 12;
    public int c = 4;

    public static class a extends c {
        @Override
        public Number c(Number number, Number number2) {
            return c.j(number).add(c.j(number2));
        }

        @Override
        public int e(Number number, Number number2) {
            int iB = a47.b(number);
            int iB2 = a47.b(number2);
            if (iB != iB2) {
                if (iB < iB2) {
                    return -1;
                }
                return iB > iB2 ? 1 : 0;
            }
            if (iB == 0 && iB2 == 0) {
                return 0;
            }
            return c.j(number).compareTo(c.j(number2));
        }

        @Override
        public Number f(Number number, Number number2) {
            return m(c.j(number), c.j(number2));
        }

        @Override
        public Number g(Number number, Number number2) {
            return new Long(number.longValue() % number2.longValue());
        }

        @Override
        public Number h(Number number, Number number2) {
            BigDecimal bigDecimalMultiply = c.j(number).multiply(c.j(number2));
            int iScale = bigDecimalMultiply.scale();
            int i = this.b;
            return iScale > i ? bigDecimalMultiply.setScale(i, this.c) : bigDecimalMultiply;
        }

        @Override
        public Number i(Number number, Number number2) {
            return c.j(number).subtract(c.j(number2));
        }

        @Override
        public Number l(String str) {
            return c.k(str);
        }

        public final BigDecimal m(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
            return bigDecimal.divide(bigDecimal2, Math.max(this.a, Math.max(bigDecimal.scale(), bigDecimal2.scale())), this.c);
        }
    }

    public static class b extends c {
        public static final Map n = m();

        public static Map m() throws Throwable {
            HashMap map = new HashMap(17);
            Integer num = new Integer(0);
            Class clsD = c.f;
            if (clsD == null) {
                clsD = c.d("java.lang.Byte");
                c.f = clsD;
            }
            map.put(clsD, num);
            Class clsD2 = c.g;
            if (clsD2 == null) {
                clsD2 = c.d("java.lang.Short");
                c.g = clsD2;
            }
            map.put(clsD2, num);
            Class clsD3 = c.h;
            if (clsD3 == null) {
                clsD3 = c.d("java.lang.Integer");
                c.h = clsD3;
            }
            map.put(clsD3, num);
            Class clsD4 = c.i;
            if (clsD4 == null) {
                clsD4 = c.d("java.lang.Long");
                c.i = clsD4;
            }
            map.put(clsD4, new Integer(1));
            Class clsD5 = c.j;
            if (clsD5 == null) {
                clsD5 = c.d("java.lang.Float");
                c.j = clsD5;
            }
            map.put(clsD5, new Integer(2));
            Class clsD6 = c.k;
            if (clsD6 == null) {
                clsD6 = c.d("java.lang.Double");
                c.k = clsD6;
            }
            map.put(clsD6, new Integer(3));
            Class clsD7 = c.l;
            if (clsD7 == null) {
                clsD7 = c.d("java.math.BigInteger");
                c.l = clsD7;
            }
            map.put(clsD7, new Integer(4));
            Class clsD8 = c.m;
            if (clsD8 == null) {
                clsD8 = c.d("java.math.BigDecimal");
                c.m = clsD8;
            }
            map.put(clsD8, new Integer(5));
            return map;
        }

        public static int n(Number number) throws _MiscTemplateException {
            try {
                return ((Integer) n.get(number.getClass())).intValue();
            } catch (NullPointerException unused) {
                if (number == null) {
                    throw new _MiscTemplateException("The Number object was null.");
                }
                throw new _MiscTemplateException(new Object[]{"Unknown number type ", number.getClass().getName()});
            }
        }

        public static int o(Number number, Number number2) throws _MiscTemplateException {
            int iN = n(number);
            int iN2 = n(number2);
            int i = iN > iN2 ? iN : iN2;
            if (i == 2) {
                if (iN >= iN2) {
                    iN = iN2;
                }
                if (iN == 1) {
                    return 3;
                }
            } else if (i == 4) {
                if (iN >= iN2) {
                    iN = iN2;
                }
                if (iN == 3 || iN == 2) {
                    return 5;
                }
            }
            return i;
        }

        public static BigInteger p(Number number) {
            return number instanceof BigInteger ? (BigInteger) number : new BigInteger(number.toString());
        }

        @Override
        public Number c(Number number, Number number2) throws _MiscTemplateException {
            int iO = o(number, number2);
            if (iO == 0) {
                int iIntValue = number.intValue();
                int iIntValue2 = number2.intValue();
                int i = iIntValue + iIntValue2;
                return ((i ^ iIntValue) >= 0 || (i ^ iIntValue2) >= 0) ? new Integer(i) : new Long(((long) iIntValue) + ((long) iIntValue2));
            }
            if (iO == 1) {
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                long j = jLongValue + jLongValue2;
                return ((jLongValue ^ j) >= 0 || (j ^ jLongValue2) >= 0) ? new Long(j) : p(number).add(p(number2));
            }
            if (iO == 2) {
                return new Float(number.floatValue() + number2.floatValue());
            }
            if (iO == 3) {
                return new Double(number.doubleValue() + number2.doubleValue());
            }
            if (iO == 4) {
                return p(number).add(p(number2));
            }
            if (iO == 5) {
                return c.j(number).add(c.j(number2));
            }
            throw new Error();
        }

        @Override
        public int e(Number number, Number number2) throws _MiscTemplateException {
            int iO = o(number, number2);
            if (iO == 0) {
                int iIntValue = number.intValue();
                int iIntValue2 = number2.intValue();
                if (iIntValue < iIntValue2) {
                    return -1;
                }
                return iIntValue == iIntValue2 ? 0 : 1;
            }
            if (iO == 1) {
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                if (jLongValue < jLongValue2) {
                    return -1;
                }
                return jLongValue == jLongValue2 ? 0 : 1;
            }
            if (iO == 2) {
                float fFloatValue = number.floatValue();
                float fFloatValue2 = number2.floatValue();
                if (fFloatValue < fFloatValue2) {
                    return -1;
                }
                return fFloatValue == fFloatValue2 ? 0 : 1;
            }
            if (iO != 3) {
                if (iO == 4) {
                    return p(number).compareTo(p(number2));
                }
                if (iO == 5) {
                    return c.j(number).compareTo(c.j(number2));
                }
                throw new Error();
            }
            double dDoubleValue = number.doubleValue();
            double dDoubleValue2 = number2.doubleValue();
            if (dDoubleValue < dDoubleValue2) {
                return -1;
            }
            return dDoubleValue == dDoubleValue2 ? 0 : 1;
        }

        @Override
        public Number f(Number number, Number number2) throws _MiscTemplateException {
            int iO = o(number, number2);
            if (iO == 0) {
                int iIntValue = number.intValue();
                int iIntValue2 = number2.intValue();
                return iIntValue % iIntValue2 == 0 ? new Integer(iIntValue / iIntValue2) : new Double(((double) iIntValue) / ((double) iIntValue2));
            }
            if (iO == 1) {
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                return jLongValue % jLongValue2 == 0 ? new Long(jLongValue / jLongValue2) : new Double(jLongValue / jLongValue2);
            }
            if (iO == 2) {
                return new Float(number.floatValue() / number2.floatValue());
            }
            if (iO == 3) {
                return new Double(number.doubleValue() / number2.doubleValue());
            }
            if (iO == 4) {
                BigInteger bigIntegerP = p(number);
                BigInteger bigIntegerP2 = p(number2);
                BigInteger[] bigIntegerArrDivideAndRemainder = bigIntegerP.divideAndRemainder(bigIntegerP2);
                return bigIntegerArrDivideAndRemainder[1].equals(BigInteger.ZERO) ? bigIntegerArrDivideAndRemainder[0] : new BigDecimal(bigIntegerP).divide(new BigDecimal(bigIntegerP2), this.a, this.c);
            }
            if (iO != 5) {
                throw new Error();
            }
            BigDecimal bigDecimalJ = c.j(number);
            BigDecimal bigDecimalJ2 = c.j(number2);
            return bigDecimalJ.divide(bigDecimalJ2, Math.max(this.a, Math.max(bigDecimalJ.scale(), bigDecimalJ2.scale())), this.c);
        }

        @Override
        public Number g(Number number, Number number2) throws _MiscTemplateException {
            int iO = o(number, number2);
            if (iO == 0) {
                return new Integer(number.intValue() % number2.intValue());
            }
            if (iO == 1) {
                return new Long(number.longValue() % number2.longValue());
            }
            if (iO == 2) {
                return new Float(number.floatValue() % number2.floatValue());
            }
            if (iO == 3) {
                return new Double(number.doubleValue() % number2.doubleValue());
            }
            if (iO == 4) {
                return p(number).mod(p(number2));
            }
            if (iO != 5) {
                throw new BugException();
            }
            throw new _MiscTemplateException("Can't calculate remainder on BigDecimals");
        }

        @Override
        public Number h(Number number, Number number2) throws _MiscTemplateException {
            int iO = o(number, number2);
            if (iO == 0) {
                int iIntValue = number.intValue();
                int iIntValue2 = number2.intValue();
                int i = iIntValue * iIntValue2;
                return (iIntValue == 0 || i / iIntValue == iIntValue2) ? new Integer(i) : new Long(((long) iIntValue) * ((long) iIntValue2));
            }
            if (iO == 1) {
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                long j = jLongValue * jLongValue2;
                return (jLongValue == 0 || j / jLongValue == jLongValue2) ? new Long(j) : p(number).multiply(p(number2));
            }
            if (iO == 2) {
                return new Float(number.floatValue() * number2.floatValue());
            }
            if (iO == 3) {
                return new Double(number.doubleValue() * number2.doubleValue());
            }
            if (iO == 4) {
                return p(number).multiply(p(number2));
            }
            if (iO != 5) {
                throw new Error();
            }
            BigDecimal bigDecimalMultiply = c.j(number).multiply(c.j(number2));
            int iScale = bigDecimalMultiply.scale();
            int i2 = this.b;
            return iScale > i2 ? bigDecimalMultiply.setScale(i2, this.c) : bigDecimalMultiply;
        }

        @Override
        public Number i(Number number, Number number2) throws _MiscTemplateException {
            int iO = o(number, number2);
            if (iO == 0) {
                int iIntValue = number.intValue();
                int iIntValue2 = number2.intValue();
                int i = iIntValue - iIntValue2;
                return ((i ^ iIntValue) >= 0 || ((~iIntValue2) ^ i) >= 0) ? new Integer(i) : new Long(((long) iIntValue) - ((long) iIntValue2));
            }
            if (iO == 1) {
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                long j = jLongValue - jLongValue2;
                return ((jLongValue ^ j) >= 0 || ((~jLongValue2) ^ j) >= 0) ? new Long(j) : p(number).subtract(p(number2));
            }
            if (iO == 2) {
                return new Float(number.floatValue() - number2.floatValue());
            }
            if (iO == 3) {
                return new Double(number.doubleValue() - number2.doubleValue());
            }
            if (iO == 4) {
                return p(number).subtract(p(number2));
            }
            if (iO == 5) {
                return c.j(number).subtract(c.j(number2));
            }
            throw new Error();
        }

        @Override
        public Number l(String str) {
            Number numberK = c.k(str);
            return numberK instanceof BigDecimal ? ms7.a(numberK) : numberK;
        }
    }

    public static Class d(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static BigDecimal j(Number number) {
        try {
            return number instanceof BigDecimal ? (BigDecimal) number : new BigDecimal(number.toString());
        } catch (NumberFormatException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Can't parse this as BigDecimal number: ");
            stringBuffer.append(n0a.C(number));
            throw new NumberFormatException(stringBuffer.toString());
        }
    }

    public static Number k(String str) {
        if (str.length() > 2) {
            char cCharAt = str.charAt(0);
            if (cCharAt == 'I' && (str.equals(Lyrics3v2Fields.FIELD_V2_ADDITIONAL_MULTI_LINE_TEXT) || str.equals("Infinity"))) {
                return new Double(Double.POSITIVE_INFINITY);
            }
            if (cCharAt == 'N' && str.equals("NaN")) {
                return new Double(Double.NaN);
            }
            if (cCharAt == '-' && str.charAt(1) == 'I' && (str.equals("-INF") || str.equals("-Infinity"))) {
                return new Double(Double.NEGATIVE_INFINITY);
            }
        }
        return new BigDecimal(str);
    }

    public abstract Number c(Number number, Number number2);

    public abstract int e(Number number, Number number2);

    public abstract Number f(Number number, Number number2);

    public abstract Number g(Number number, Number number2);

    public abstract Number h(Number number, Number number2);

    public abstract Number i(Number number, Number number2);

    public abstract Number l(String str);
}
