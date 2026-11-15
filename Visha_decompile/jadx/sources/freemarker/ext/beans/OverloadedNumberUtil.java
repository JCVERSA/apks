package freemarker.ext.beans;

import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.audiotagger.audio.mp3.MPEGFrameHeader;
import defpackage.a47;
import defpackage.hx0;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class OverloadedNumberUtil {
    public static Class A;
    public static Class B;
    public static Class C;
    public static Class D;
    public static Class a;
    public static Class b;
    public static Class c;
    public static Class d;
    public static Class e;
    public static Class f;
    public static Class g;
    public static Class h;
    public static Class i;
    public static Class j;
    public static Class k;
    public static Class l;
    public static Class m;
    public static Class n;
    public static Class o;
    public static Class p;
    public static Class q;
    public static Class r;
    public static Class s;
    public static Class t;
    public static Class u;
    public static Class v;
    public static Class w;
    public static Class x;
    public static Class y;
    public static Class z;

    public static final class BigIntegerOrByte extends BigIntegerOrPrimitive {
        public BigIntegerOrByte(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    public static final class BigIntegerOrDouble extends BigIntegerOrFPPrimitive {
        public BigIntegerOrDouble(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    public static abstract class BigIntegerOrFPPrimitive extends BigIntegerOrPrimitive {
        public BigIntegerOrFPPrimitive(BigInteger bigInteger) {
            super(bigInteger);
        }

        @Override
        public double doubleValue() {
            return this.n.longValue();
        }

        @Override
        public float floatValue() {
            return this.n.longValue();
        }
    }

    public static final class BigIntegerOrFloat extends BigIntegerOrFPPrimitive {
        public BigIntegerOrFloat(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    public static final class BigIntegerOrInteger extends BigIntegerOrPrimitive {
        public BigIntegerOrInteger(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    public static final class BigIntegerOrLong extends BigIntegerOrPrimitive {
        public BigIntegerOrLong(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    public static abstract class BigIntegerOrPrimitive extends NumberWithFallbackType {
        protected final BigInteger n;

        public BigIntegerOrPrimitive(BigInteger bigInteger) {
            this.n = bigInteger;
        }

        @Override
        public Number getSourceNumber() {
            return this.n;
        }
    }

    public static final class BigIntegerOrShort extends BigIntegerOrPrimitive {
        public BigIntegerOrShort(BigInteger bigInteger) {
            super(bigInteger);
        }
    }

    public static final class DoubleOrByte extends DoubleOrWholeNumber {
        private final byte w;

        public DoubleOrByte(Double d, byte b) {
            super(d);
            this.w = b;
        }

        @Override
        public byte byteValue() {
            return this.w;
        }

        @Override
        public int intValue() {
            return this.w;
        }

        @Override
        public long longValue() {
            return this.w;
        }

        @Override
        public short shortValue() {
            return this.w;
        }
    }

    public static final class DoubleOrFloat extends NumberWithFallbackType {
        private final Double n;

        public DoubleOrFloat(Double d) {
            this.n = d;
        }

        @Override
        public double doubleValue() {
            return this.n.doubleValue();
        }

        @Override
        public float floatValue() {
            return this.n.floatValue();
        }

        @Override
        public Number getSourceNumber() {
            return this.n;
        }
    }

    public static final class DoubleOrInteger extends DoubleOrWholeNumber {
        private final int w;

        public DoubleOrInteger(Double d, int i) {
            super(d);
            this.w = i;
        }

        @Override
        public int intValue() {
            return this.w;
        }

        @Override
        public long longValue() {
            return this.w;
        }
    }

    public static final class DoubleOrIntegerOrFloat extends DoubleOrWholeNumber {
        private final int w;

        public DoubleOrIntegerOrFloat(Double d, int i) {
            super(d);
            this.w = i;
        }

        @Override
        public int intValue() {
            return this.w;
        }

        @Override
        public long longValue() {
            return this.w;
        }
    }

    public static final class DoubleOrLong extends DoubleOrWholeNumber {
        private final long w;

        public DoubleOrLong(Double d, long j) {
            super(d);
            this.w = j;
        }

        @Override
        public long longValue() {
            return this.w;
        }
    }

    public static final class DoubleOrShort extends DoubleOrWholeNumber {
        private final short w;

        public DoubleOrShort(Double d, short s) {
            super(d);
            this.w = s;
        }

        @Override
        public int intValue() {
            return this.w;
        }

        @Override
        public long longValue() {
            return this.w;
        }

        @Override
        public short shortValue() {
            return this.w;
        }
    }

    public static abstract class DoubleOrWholeNumber extends NumberWithFallbackType {
        private final Double n;

        public DoubleOrWholeNumber(Double d) {
            this.n = d;
        }

        @Override
        public double doubleValue() {
            return this.n.doubleValue();
        }

        @Override
        public Number getSourceNumber() {
            return this.n;
        }
    }

    public static final class FloatOrByte extends FloatOrWholeNumber {
        private final byte w;

        public FloatOrByte(Float f, byte b) {
            super(f);
            this.w = b;
        }

        @Override
        public byte byteValue() {
            return this.w;
        }

        @Override
        public int intValue() {
            return this.w;
        }

        @Override
        public long longValue() {
            return this.w;
        }

        @Override
        public short shortValue() {
            return this.w;
        }
    }

    public static final class FloatOrInteger extends FloatOrWholeNumber {
        private final int w;

        public FloatOrInteger(Float f, int i) {
            super(f);
            this.w = i;
        }

        @Override
        public int intValue() {
            return this.w;
        }

        @Override
        public long longValue() {
            return this.w;
        }
    }

    public static final class FloatOrShort extends FloatOrWholeNumber {
        private final short w;

        public FloatOrShort(Float f, short s) {
            super(f);
            this.w = s;
        }

        @Override
        public int intValue() {
            return this.w;
        }

        @Override
        public long longValue() {
            return this.w;
        }

        @Override
        public short shortValue() {
            return this.w;
        }
    }

    public static abstract class FloatOrWholeNumber extends NumberWithFallbackType {
        private final Float n;

        public FloatOrWholeNumber(Float f) {
            this.n = f;
        }

        @Override
        public float floatValue() {
            return this.n.floatValue();
        }

        @Override
        public Number getSourceNumber() {
            return this.n;
        }
    }

    public static final class IntegerBigDecimal extends NumberWithFallbackType {
        private final BigDecimal n;

        public IntegerBigDecimal(BigDecimal bigDecimal) {
            this.n = bigDecimal;
        }

        public BigInteger bigIntegerValue() {
            return this.n.toBigInteger();
        }

        @Override
        public Number getSourceNumber() {
            return this.n;
        }
    }

    public static class IntegerOrByte extends IntegerOrSmallerInteger {
        private final byte w;

        public IntegerOrByte(Integer num, byte b) {
            super(num);
            this.w = b;
        }

        @Override
        public byte byteValue() {
            return this.w;
        }
    }

    public static class IntegerOrShort extends IntegerOrSmallerInteger {
        private final short w;

        public IntegerOrShort(Integer num, short s) {
            super(num);
            this.w = s;
        }

        @Override
        public short shortValue() {
            return this.w;
        }
    }

    public static abstract class IntegerOrSmallerInteger extends NumberWithFallbackType {
        private final Integer n;

        public IntegerOrSmallerInteger(Integer num) {
            this.n = num;
        }

        @Override
        public Number getSourceNumber() {
            return this.n;
        }

        @Override
        public int intValue() {
            return this.n.intValue();
        }
    }

    public static class LongOrByte extends LongOrSmallerInteger {
        private final byte w;

        public LongOrByte(Long l, byte b) {
            super(l);
            this.w = b;
        }

        @Override
        public byte byteValue() {
            return this.w;
        }
    }

    public static class LongOrInteger extends LongOrSmallerInteger {
        private final int w;

        public LongOrInteger(Long l, int i) {
            super(l);
            this.w = i;
        }

        @Override
        public int intValue() {
            return this.w;
        }
    }

    public static class LongOrShort extends LongOrSmallerInteger {
        private final short w;

        public LongOrShort(Long l, short s) {
            super(l);
            this.w = s;
        }

        @Override
        public short shortValue() {
            return this.w;
        }
    }

    public static abstract class LongOrSmallerInteger extends NumberWithFallbackType {
        private final Long n;

        public LongOrSmallerInteger(Long l) {
            this.n = l;
        }

        @Override
        public Number getSourceNumber() {
            return this.n;
        }

        @Override
        public long longValue() {
            return this.n.longValue();
        }
    }

    public static abstract class NumberWithFallbackType extends Number implements Comparable {
        @Override
        public byte byteValue() {
            return getSourceNumber().byteValue();
        }

        @Override
        public int compareTo(Object obj) {
            Object sourceNumber = getSourceNumber();
            if (sourceNumber instanceof Comparable) {
                return ((Comparable) sourceNumber).compareTo(obj);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(sourceNumber.getClass().getName());
            stringBuffer.append(" is not Comparable.");
            throw new ClassCastException(stringBuffer.toString());
        }

        @Override
        public double doubleValue() {
            return getSourceNumber().doubleValue();
        }

        public boolean equals(Object obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return getSourceNumber().equals(((NumberWithFallbackType) obj).getSourceNumber());
        }

        @Override
        public float floatValue() {
            return getSourceNumber().floatValue();
        }

        public abstract Number getSourceNumber();

        public int hashCode() {
            return getSourceNumber().hashCode();
        }

        @Override
        public int intValue() {
            return getSourceNumber().intValue();
        }

        @Override
        public long longValue() {
            return getSourceNumber().longValue();
        }

        @Override
        public short shortValue() {
            return getSourceNumber().shortValue();
        }

        public String toString() {
            return getSourceNumber().toString();
        }
    }

    public static class ShortOrByte extends NumberWithFallbackType {
        private final Short n;
        private final byte w;

        public ShortOrByte(Short sh, byte b) {
            this.n = sh;
            this.w = b;
        }

        @Override
        public byte byteValue() {
            return this.w;
        }

        @Override
        public Number getSourceNumber() {
            return this.n;
        }

        @Override
        public short shortValue() {
            return this.n.shortValue();
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x015c  */
    /* JADX WARN: Code duplicated, block: B:111:0x0174  */
    /* JADX WARN: Code duplicated, block: B:126:0x01a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:127:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:129:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:131:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:176:0x024a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:182:0x025d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:188:0x0270  */
    /* JADX WARN: Code duplicated, block: B:190:0x027a  */
    /* JADX WARN: Code duplicated, block: B:192:0x027e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:193:0x0280  */
    /* JADX WARN: Code duplicated, block: B:194:0x028a  */
    /* JADX WARN: Code duplicated, block: B:95:0x0144  */
    public static Number a(Number number, int i2) throws Throwable {
        Class<?> cls = number.getClass();
        Class<?> clsB = a;
        if (clsB == null) {
            clsB = b("java.math.BigDecimal");
            a = clsB;
        }
        if (cls == clsB) {
            BigDecimal bigDecimal = (BigDecimal) number;
            return ((i2 & 316) == 0 || (i2 & 704) == 0 || !a47.d(bigDecimal)) ? bigDecimal : new IntegerBigDecimal(bigDecimal);
        }
        Class<?> clsB2 = b;
        if (clsB2 == null) {
            clsB2 = b("java.lang.Integer");
            b = clsB2;
        }
        if (cls == clsB2) {
            int iIntValue = number.intValue();
            if ((i2 & 4) == 0 || iIntValue > 127 || iIntValue < -128) {
                return ((i2 & 8) == 0 || iIntValue > 32767 || iIntValue < -32768) ? number : new IntegerOrShort((Integer) number, (short) iIntValue);
            }
            return new IntegerOrByte((Integer) number, (byte) iIntValue);
        }
        Class<?> clsB3 = c;
        if (clsB3 == null) {
            clsB3 = b("java.lang.Long");
            c = clsB3;
        }
        if (cls == clsB3) {
            long jLongValue = number.longValue();
            if ((i2 & 4) != 0 && jLongValue <= 127 && jLongValue >= -128) {
                return new LongOrByte((Long) number, (byte) jLongValue);
            }
            if ((i2 & 8) == 0 || jLongValue > 32767 || jLongValue < -32768) {
                return ((i2 & 16) == 0 || jLongValue > 2147483647L || jLongValue < -2147483648L) ? number : new LongOrInteger((Long) number, (int) jLongValue);
            }
            return new LongOrShort((Long) number, (short) jLongValue);
        }
        Class<?> clsB4 = d;
        if (clsB4 == null) {
            clsB4 = b("java.lang.Double");
            d = clsB4;
        }
        boolean z2 = true;
        if (cls == clsB4) {
            double dDoubleValue = number.doubleValue();
            if ((i2 & 316) != 0 && dDoubleValue <= 9.007199254740992E15d && dDoubleValue >= -9.007199254740992E15d) {
                long jLongValue2 = number.longValue();
                double d2 = dDoubleValue - jLongValue2;
                if (d2 == 0.0d) {
                    if ((i2 & 4) == 0) {
                    }
                    if ((i2 & 8) == 0) {
                    }
                    if ((i2 & 16) == 0) {
                    }
                    if ((i2 & 32) != 0) {
                        if (z2) {
                            return new DoubleOrLong((Double) number, jLongValue2);
                        }
                        if (jLongValue2 >= -2147483648L) {
                            return new DoubleOrLong((Double) number, jLongValue2);
                        }
                    }
                } else if (d2 > 0.0d) {
                    if (d2 >= 1.0E-6d) {
                        if (d2 > 0.999999d) {
                            jLongValue2++;
                        }
                    }
                    z2 = false;
                    if ((i2 & 4) == 0 && jLongValue2 <= 127 && jLongValue2 >= -128) {
                        return new DoubleOrByte((Double) number, (byte) jLongValue2);
                    }
                    if ((i2 & 8) == 0 && jLongValue2 <= 32767 && jLongValue2 >= -32768) {
                        return new DoubleOrShort((Double) number, (short) jLongValue2);
                    }
                    if ((i2 & 16) == 0 && jLongValue2 <= 2147483647L && jLongValue2 >= -2147483648L) {
                        int i3 = (int) jLongValue2;
                        return ((i2 & 64) == 0 || i3 < -16777216 || i3 > 16777216) ? new DoubleOrInteger((Double) number, i3) : new DoubleOrIntegerOrFloat((Double) number, i3);
                    }
                    if ((i2 & 32) != 0) {
                        if (z2) {
                            return new DoubleOrLong((Double) number, jLongValue2);
                        }
                        if (jLongValue2 >= -2147483648L && jLongValue2 <= 2147483647L) {
                            return new DoubleOrLong((Double) number, jLongValue2);
                        }
                    }
                } else {
                    if (d2 <= -1.0E-6d) {
                        if (d2 < -0.999999d) {
                            jLongValue2--;
                        }
                    }
                    z2 = false;
                    if ((i2 & 4) == 0) {
                    }
                    if ((i2 & 8) == 0) {
                    }
                    if ((i2 & 16) == 0) {
                    }
                    if ((i2 & 32) != 0) {
                        if (z2) {
                            return new DoubleOrLong((Double) number, jLongValue2);
                        }
                        if (jLongValue2 >= -2147483648L) {
                            return new DoubleOrLong((Double) number, jLongValue2);
                        }
                    }
                }
            }
            return ((i2 & 64) == 0 || dDoubleValue < -3.4028234663852886E38d || dDoubleValue > 3.4028234663852886E38d) ? number : new DoubleOrFloat((Double) number);
        }
        Class<?> clsB5 = e;
        if (clsB5 == null) {
            clsB5 = b("java.lang.Float");
            e = clsB5;
        }
        if (cls == clsB5) {
            float fFloatValue = number.floatValue();
            if ((i2 & 316) != 0 && fFloatValue <= 1.6777216E7f && fFloatValue >= -1.6777216E7f) {
                int iIntValue2 = number.intValue();
                double d3 = fFloatValue - iIntValue2;
                if (d3 == 0.0d) {
                    if ((i2 & 4) == 0) {
                    }
                    if ((i2 & 8) == 0) {
                    }
                    if ((i2 & 16) != 0) {
                        return new FloatOrInteger((Float) number, iIntValue2);
                    }
                    if ((i2 & 32) != 0) {
                        if (z2) {
                        }
                    }
                } else if (iIntValue2 >= -128 && iIntValue2 <= 127) {
                    if (d3 > 0.0d) {
                        if (d3 >= 1.0E-5d) {
                            if (d3 > 0.99999d) {
                                iIntValue2++;
                            }
                        }
                        z2 = false;
                        if ((i2 & 4) == 0 && iIntValue2 <= 127 && iIntValue2 >= -128) {
                            return new FloatOrByte((Float) number, (byte) iIntValue2);
                        }
                        if ((i2 & 8) == 0 && iIntValue2 <= 32767 && iIntValue2 >= -32768) {
                            return new FloatOrShort((Float) number, (short) iIntValue2);
                        }
                        if ((i2 & 16) != 0) {
                            return new FloatOrInteger((Float) number, iIntValue2);
                        }
                        if ((i2 & 32) != 0) {
                            return z2 ? new FloatOrInteger((Float) number, iIntValue2) : new FloatOrByte((Float) number, (byte) iIntValue2);
                        }
                    } else {
                        if (d3 <= -1.0E-5d) {
                            if (d3 < -0.99999d) {
                                iIntValue2--;
                            }
                        }
                        z2 = false;
                        if ((i2 & 4) == 0) {
                        }
                        if ((i2 & 8) == 0) {
                        }
                        if ((i2 & 16) != 0) {
                            return new FloatOrInteger((Float) number, iIntValue2);
                        }
                        if ((i2 & 32) != 0) {
                            if (z2) {
                            }
                        }
                    }
                }
            }
            return number;
        }
        Class<?> clsB6 = f;
        if (clsB6 == null) {
            clsB6 = b("java.lang.Byte");
            f = clsB6;
        }
        if (cls == clsB6) {
            return number;
        }
        Class<?> clsB7 = g;
        if (clsB7 == null) {
            clsB7 = b("java.lang.Short");
            g = clsB7;
        }
        if (cls == clsB7) {
            short sShortValue = number.shortValue();
            return ((i2 & 4) == 0 || sShortValue > 127 || sShortValue < -128) ? number : new ShortOrByte((Short) number, (byte) sShortValue);
        }
        Class<?> clsB8 = h;
        if (clsB8 == null) {
            clsB8 = b("java.math.BigInteger");
            h = clsB8;
        }
        if (cls == clsB8 && (i2 & MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3) != 0) {
            BigInteger bigInteger = (BigInteger) number;
            int iBitLength = bigInteger.bitLength();
            if ((i2 & 4) != 0 && iBitLength <= 7) {
                return new BigIntegerOrByte(bigInteger);
            }
            if ((i2 & 8) != 0 && iBitLength <= 15) {
                return new BigIntegerOrShort(bigInteger);
            }
            if ((i2 & 16) != 0 && iBitLength <= 31) {
                return new BigIntegerOrInteger(bigInteger);
            }
            if ((i2 & 32) != 0 && iBitLength <= 63) {
                return new BigIntegerOrLong(bigInteger);
            }
            if ((i2 & 64) != 0 && (iBitLength <= 24 || (iBitLength == 25 && bigInteger.getLowestSetBit() >= 24))) {
                return new BigIntegerOrFloat(bigInteger);
            }
            if ((i2 & 128) != 0 && (iBitLength <= 53 || (iBitLength == 54 && bigInteger.getLowestSetBit() >= 53))) {
                return new BigIntegerOrDouble(bigInteger);
            }
        }
        return number;
    }

    public static Class b(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static int c(Class cls, Class cls2) throws Throwable {
        Class clsM = hx0.m(cls);
        Class clsM2 = hx0.m(cls2);
        if (clsM == clsM2) {
            return 0;
        }
        Class clsB = b;
        if (clsB == null) {
            clsB = b("java.lang.Integer");
            b = clsB;
        }
        if (clsM == clsB) {
            Class clsB2 = c;
            if (clsB2 == null) {
                clsB2 = b("java.lang.Long");
                c = clsB2;
            }
            if (clsM2 == clsB2) {
                return 1;
            }
            Class clsB3 = d;
            if (clsB3 == null) {
                clsB3 = b("java.lang.Double");
                d = clsB3;
            }
            if (clsM2 == clsB3) {
                return 4;
            }
            Class clsB4 = e;
            if (clsB4 == null) {
                clsB4 = b("java.lang.Float");
                e = clsB4;
            }
            if (clsM2 == clsB4) {
                return 3;
            }
            Class clsB5 = f;
            if (clsB5 == null) {
                clsB5 = b("java.lang.Byte");
                f = clsB5;
            }
            if (clsM2 == clsB5) {
                return -2;
            }
            Class clsB6 = g;
            if (clsB6 == null) {
                clsB6 = b("java.lang.Short");
                g = clsB6;
            }
            if (clsM2 == clsB6) {
                return -1;
            }
            Class clsB7 = a;
            if (clsB7 == null) {
                clsB7 = b("java.math.BigDecimal");
                a = clsB7;
            }
            if (clsM2 == clsB7) {
                return 5;
            }
            Class clsB8 = h;
            if (clsB8 == null) {
                clsB8 = b("java.math.BigInteger");
                h = clsB8;
            }
            return clsM2 == clsB8 ? 2 : 0;
        }
        Class clsB9 = c;
        if (clsB9 == null) {
            clsB9 = b("java.lang.Long");
            c = clsB9;
        }
        if (clsM == clsB9) {
            Class clsB10 = b;
            if (clsB10 == null) {
                clsB10 = b("java.lang.Integer");
                b = clsB10;
            }
            if (clsM2 == clsB10) {
                return -1;
            }
            Class clsB11 = d;
            if (clsB11 == null) {
                clsB11 = b("java.lang.Double");
                d = clsB11;
            }
            if (clsM2 == clsB11) {
                return 3;
            }
            Class clsB12 = e;
            if (clsB12 == null) {
                clsB12 = b("java.lang.Float");
                e = clsB12;
            }
            if (clsM2 == clsB12) {
                return 2;
            }
            Class clsB13 = f;
            if (clsB13 == null) {
                clsB13 = b("java.lang.Byte");
                f = clsB13;
            }
            if (clsM2 == clsB13) {
                return -3;
            }
            Class clsB14 = g;
            if (clsB14 == null) {
                clsB14 = b("java.lang.Short");
                g = clsB14;
            }
            if (clsM2 == clsB14) {
                return -2;
            }
            Class clsB15 = a;
            if (clsB15 == null) {
                clsB15 = b("java.math.BigDecimal");
                a = clsB15;
            }
            if (clsM2 == clsB15) {
                return 4;
            }
            Class clsB16 = h;
            if (clsB16 == null) {
                clsB16 = b("java.math.BigInteger");
                h = clsB16;
            }
            return clsM2 == clsB16 ? 1 : 0;
        }
        Class clsB17 = d;
        if (clsB17 == null) {
            clsB17 = b("java.lang.Double");
            d = clsB17;
        }
        if (clsM == clsB17) {
            Class clsB18 = b;
            if (clsB18 == null) {
                clsB18 = b("java.lang.Integer");
                b = clsB18;
            }
            if (clsM2 == clsB18) {
                return -4;
            }
            Class clsB19 = c;
            if (clsB19 == null) {
                clsB19 = b("java.lang.Long");
                c = clsB19;
            }
            if (clsM2 == clsB19) {
                return -3;
            }
            Class clsB20 = e;
            if (clsB20 == null) {
                clsB20 = b("java.lang.Float");
                e = clsB20;
            }
            if (clsM2 == clsB20) {
                return -1;
            }
            Class clsB21 = f;
            if (clsB21 == null) {
                clsB21 = b("java.lang.Byte");
                f = clsB21;
            }
            if (clsM2 == clsB21) {
                return -6;
            }
            Class clsB22 = g;
            if (clsB22 == null) {
                clsB22 = b("java.lang.Short");
                g = clsB22;
            }
            if (clsM2 == clsB22) {
                return -5;
            }
            Class clsB23 = a;
            if (clsB23 == null) {
                clsB23 = b("java.math.BigDecimal");
                a = clsB23;
            }
            if (clsM2 == clsB23) {
                return 1;
            }
            Class clsB24 = h;
            if (clsB24 == null) {
                clsB24 = b("java.math.BigInteger");
                h = clsB24;
            }
            return clsM2 == clsB24 ? -2 : 0;
        }
        Class clsB25 = e;
        if (clsB25 == null) {
            clsB25 = b("java.lang.Float");
            e = clsB25;
        }
        if (clsM == clsB25) {
            Class clsB26 = b;
            if (clsB26 == null) {
                clsB26 = b("java.lang.Integer");
                b = clsB26;
            }
            if (clsM2 == clsB26) {
                return -3;
            }
            Class clsB27 = c;
            if (clsB27 == null) {
                clsB27 = b("java.lang.Long");
                c = clsB27;
            }
            if (clsM2 == clsB27) {
                return -2;
            }
            Class clsB28 = d;
            if (clsB28 == null) {
                clsB28 = b("java.lang.Double");
                d = clsB28;
            }
            if (clsM2 == clsB28) {
                return 1;
            }
            Class clsB29 = f;
            if (clsB29 == null) {
                clsB29 = b("java.lang.Byte");
                f = clsB29;
            }
            if (clsM2 == clsB29) {
                return -5;
            }
            Class clsB30 = g;
            if (clsB30 == null) {
                clsB30 = b("java.lang.Short");
                g = clsB30;
            }
            if (clsM2 == clsB30) {
                return -4;
            }
            Class clsB31 = a;
            if (clsB31 == null) {
                clsB31 = b("java.math.BigDecimal");
                a = clsB31;
            }
            if (clsM2 == clsB31) {
                return 2;
            }
            Class clsB32 = h;
            if (clsB32 == null) {
                clsB32 = b("java.math.BigInteger");
                h = clsB32;
            }
            return clsM2 == clsB32 ? -1 : 0;
        }
        Class clsB33 = f;
        if (clsB33 == null) {
            clsB33 = b("java.lang.Byte");
            f = clsB33;
        }
        if (clsM == clsB33) {
            Class clsB34 = b;
            if (clsB34 == null) {
                clsB34 = b("java.lang.Integer");
                b = clsB34;
            }
            if (clsM2 == clsB34) {
                return 2;
            }
            Class clsB35 = c;
            if (clsB35 == null) {
                clsB35 = b("java.lang.Long");
                c = clsB35;
            }
            if (clsM2 == clsB35) {
                return 3;
            }
            Class clsB36 = d;
            if (clsB36 == null) {
                clsB36 = b("java.lang.Double");
                d = clsB36;
            }
            if (clsM2 == clsB36) {
                return 6;
            }
            Class clsB37 = e;
            if (clsB37 == null) {
                clsB37 = b("java.lang.Float");
                e = clsB37;
            }
            if (clsM2 == clsB37) {
                return 5;
            }
            Class clsB38 = g;
            if (clsB38 == null) {
                clsB38 = b("java.lang.Short");
                g = clsB38;
            }
            if (clsM2 == clsB38) {
                return 1;
            }
            Class clsB39 = a;
            if (clsB39 == null) {
                clsB39 = b("java.math.BigDecimal");
                a = clsB39;
            }
            if (clsM2 == clsB39) {
                return 7;
            }
            Class clsB40 = h;
            if (clsB40 == null) {
                clsB40 = b("java.math.BigInteger");
                h = clsB40;
            }
            return clsM2 == clsB40 ? 4 : 0;
        }
        Class clsB41 = g;
        if (clsB41 == null) {
            clsB41 = b("java.lang.Short");
            g = clsB41;
        }
        if (clsM == clsB41) {
            Class clsB42 = b;
            if (clsB42 == null) {
                clsB42 = b("java.lang.Integer");
                b = clsB42;
            }
            if (clsM2 == clsB42) {
                return 1;
            }
            Class clsB43 = c;
            if (clsB43 == null) {
                clsB43 = b("java.lang.Long");
                c = clsB43;
            }
            if (clsM2 == clsB43) {
                return 2;
            }
            Class clsB44 = d;
            if (clsB44 == null) {
                clsB44 = b("java.lang.Double");
                d = clsB44;
            }
            if (clsM2 == clsB44) {
                return 5;
            }
            Class clsB45 = e;
            if (clsB45 == null) {
                clsB45 = b("java.lang.Float");
                e = clsB45;
            }
            if (clsM2 == clsB45) {
                return 4;
            }
            Class clsB46 = f;
            if (clsB46 == null) {
                clsB46 = b("java.lang.Byte");
                f = clsB46;
            }
            if (clsM2 == clsB46) {
                return -1;
            }
            Class clsB47 = a;
            if (clsB47 == null) {
                clsB47 = b("java.math.BigDecimal");
                a = clsB47;
            }
            if (clsM2 == clsB47) {
                return 6;
            }
            Class clsB48 = h;
            if (clsB48 == null) {
                clsB48 = b("java.math.BigInteger");
                h = clsB48;
            }
            return clsM2 == clsB48 ? 3 : 0;
        }
        Class clsB49 = a;
        if (clsB49 == null) {
            clsB49 = b("java.math.BigDecimal");
            a = clsB49;
        }
        if (clsM == clsB49) {
            Class clsB50 = b;
            if (clsB50 == null) {
                clsB50 = b("java.lang.Integer");
                b = clsB50;
            }
            if (clsM2 == clsB50) {
                return -5;
            }
            Class clsB51 = c;
            if (clsB51 == null) {
                clsB51 = b("java.lang.Long");
                c = clsB51;
            }
            if (clsM2 == clsB51) {
                return -4;
            }
            Class clsB52 = d;
            if (clsB52 == null) {
                clsB52 = b("java.lang.Double");
                d = clsB52;
            }
            if (clsM2 == clsB52) {
                return -1;
            }
            Class clsB53 = e;
            if (clsB53 == null) {
                clsB53 = b("java.lang.Float");
                e = clsB53;
            }
            if (clsM2 == clsB53) {
                return -2;
            }
            Class clsB54 = f;
            if (clsB54 == null) {
                clsB54 = b("java.lang.Byte");
                f = clsB54;
            }
            if (clsM2 == clsB54) {
                return -7;
            }
            Class clsB55 = g;
            if (clsB55 == null) {
                clsB55 = b("java.lang.Short");
                g = clsB55;
            }
            if (clsM2 == clsB55) {
                return -6;
            }
            Class clsB56 = h;
            if (clsB56 == null) {
                clsB56 = b("java.math.BigInteger");
                h = clsB56;
            }
            return clsM2 == clsB56 ? -3 : 0;
        }
        Class clsB57 = h;
        if (clsB57 == null) {
            clsB57 = b("java.math.BigInteger");
            h = clsB57;
        }
        if (clsM == clsB57) {
            Class clsB58 = b;
            if (clsB58 == null) {
                clsB58 = b("java.lang.Integer");
                b = clsB58;
            }
            if (clsM2 == clsB58) {
                return -2;
            }
            Class clsB59 = c;
            if (clsB59 == null) {
                clsB59 = b("java.lang.Long");
                c = clsB59;
            }
            if (clsM2 == clsB59) {
                return -1;
            }
            Class clsB60 = d;
            if (clsB60 == null) {
                clsB60 = b("java.lang.Double");
                d = clsB60;
            }
            if (clsM2 == clsB60) {
                return 2;
            }
            Class clsB61 = e;
            if (clsB61 == null) {
                clsB61 = b("java.lang.Float");
                e = clsB61;
            }
            if (clsM2 == clsB61) {
                return 1;
            }
            Class clsB62 = f;
            if (clsB62 == null) {
                clsB62 = b("java.lang.Byte");
                f = clsB62;
            }
            if (clsM2 == clsB62) {
                return -4;
            }
            Class clsB63 = g;
            if (clsB63 == null) {
                clsB63 = b("java.lang.Short");
                g = clsB63;
            }
            if (clsM2 == clsB63) {
                return -3;
            }
            Class clsB64 = a;
            if (clsB64 == null) {
                clsB64 = b("java.math.BigDecimal");
                a = clsB64;
            }
            if (clsM2 == clsB64) {
                return 3;
            }
        }
        return 0;
    }

    public static int d(Class cls, Class cls2) throws Throwable {
        if (cls2 == cls) {
            return 0;
        }
        Class clsB = b;
        if (clsB == null) {
            clsB = b("java.lang.Integer");
            b = clsB;
        }
        if (cls2 == clsB) {
            Class clsB2 = i;
            if (clsB2 == null) {
                clsB2 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerBigDecimal");
                i = clsB2;
            }
            if (cls == clsB2) {
                return 31003;
            }
            Class clsB3 = a;
            if (clsB3 == null) {
                clsB3 = b("java.math.BigDecimal");
                a = clsB3;
            }
            if (cls == clsB3) {
                return 41003;
            }
            Class clsB4 = c;
            if (clsB4 == null) {
                clsB4 = b("java.lang.Long");
                c = clsB4;
            }
            if (cls == clsB4) {
                return Integer.MAX_VALUE;
            }
            Class clsB5 = d;
            if (clsB5 == null) {
                clsB5 = b("java.lang.Double");
                d = clsB5;
            }
            if (cls == clsB5) {
                return Integer.MAX_VALUE;
            }
            Class clsB6 = e;
            if (clsB6 == null) {
                clsB6 = b("java.lang.Float");
                e = clsB6;
            }
            if (cls == clsB6) {
                return Integer.MAX_VALUE;
            }
            Class clsB7 = f;
            if (clsB7 == null) {
                clsB7 = b("java.lang.Byte");
                f = clsB7;
            }
            if (cls == clsB7) {
                return 10003;
            }
            Class clsB8 = h;
            if (clsB8 == null) {
                clsB8 = b("java.math.BigInteger");
                h = clsB8;
            }
            if (cls == clsB8) {
                return Integer.MAX_VALUE;
            }
            Class clsB9 = j;
            if (clsB9 == null) {
                clsB9 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrInteger");
                j = clsB9;
            }
            if (cls == clsB9) {
                return 21003;
            }
            Class clsB10 = k;
            if (clsB10 == null) {
                clsB10 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrFloat");
                k = clsB10;
            }
            if (cls == clsB10) {
                return Integer.MAX_VALUE;
            }
            Class clsB11 = l;
            if (clsB11 == null) {
                clsB11 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrIntegerOrFloat");
                l = clsB11;
            }
            if (cls == clsB11) {
                return 22003;
            }
            Class clsB12 = m;
            if (clsB12 == null) {
                clsB12 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrInteger");
                m = clsB12;
            }
            if (cls == clsB12) {
                return 22003;
            }
            Class clsB13 = n;
            if (clsB13 == null) {
                clsB13 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrLong");
                n = clsB13;
            }
            if (cls == clsB13) {
                return Integer.MAX_VALUE;
            }
            Class clsB14 = o;
            if (clsB14 == null) {
                clsB14 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrByte");
                o = clsB14;
            }
            if (cls == clsB14) {
                return 0;
            }
            Class clsB15 = p;
            if (clsB15 == null) {
                clsB15 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrByte");
                p = clsB15;
            }
            if (cls == clsB15) {
                return 22003;
            }
            Class clsB16 = q;
            if (clsB16 == null) {
                clsB16 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrByte");
                q = clsB16;
            }
            if (cls == clsB16) {
                return 21003;
            }
            Class clsB17 = g;
            if (clsB17 == null) {
                clsB17 = b("java.lang.Short");
                g = clsB17;
            }
            if (cls == clsB17) {
                return 10003;
            }
            Class clsB18 = r;
            if (clsB18 == null) {
                clsB18 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrShort");
                r = clsB18;
            }
            if (cls == clsB18) {
                return 21003;
            }
            Class clsB19 = s;
            if (clsB19 == null) {
                clsB19 = b("freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte");
                s = clsB19;
            }
            if (cls == clsB19) {
                return 10003;
            }
            Class clsB20 = t;
            if (clsB20 == null) {
                clsB20 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger");
                t = clsB20;
            }
            if (cls == clsB20) {
                return 21003;
            }
            Class clsB21 = u;
            if (clsB21 == null) {
                clsB21 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte");
                u = clsB21;
            }
            if (cls == clsB21) {
                return 21003;
            }
            Class clsB22 = v;
            if (clsB22 == null) {
                clsB22 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort");
                v = clsB22;
            }
            if (cls == clsB22) {
                return 21003;
            }
            Class clsB23 = w;
            if (clsB23 == null) {
                clsB23 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger");
                w = clsB23;
            }
            if (cls == clsB23) {
                return 16003;
            }
            Class clsB24 = x;
            if (clsB24 == null) {
                clsB24 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong");
                x = clsB24;
            }
            if (cls == clsB24) {
                return Integer.MAX_VALUE;
            }
            Class clsB25 = y;
            if (clsB25 == null) {
                clsB25 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble");
                y = clsB25;
            }
            if (cls == clsB25) {
                return Integer.MAX_VALUE;
            }
            Class clsB26 = z;
            if (clsB26 == null) {
                clsB26 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat");
                z = clsB26;
            }
            if (cls == clsB26) {
                return Integer.MAX_VALUE;
            }
            Class clsB27 = A;
            if (clsB27 == null) {
                clsB27 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte");
                A = clsB27;
            }
            if (cls == clsB27) {
                return 16003;
            }
            Class clsB28 = B;
            if (clsB28 == null) {
                clsB28 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort");
                B = clsB28;
            }
            if (cls == clsB28) {
                return 0;
            }
            Class clsB29 = C;
            if (clsB29 == null) {
                clsB29 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort");
                C = clsB29;
            }
            if (cls == clsB29) {
                return 22003;
            }
            Class clsB30 = D;
            if (clsB30 == null) {
                clsB30 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort");
                D = clsB30;
            }
            return cls == clsB30 ? 16003 : Integer.MAX_VALUE;
        }
        Class clsB31 = c;
        if (clsB31 == null) {
            clsB31 = b("java.lang.Long");
            c = clsB31;
        }
        if (cls2 == clsB31) {
            Class clsB32 = b;
            if (clsB32 == null) {
                clsB32 = b("java.lang.Integer");
                b = clsB32;
            }
            if (cls == clsB32) {
                return 10004;
            }
            Class clsB33 = i;
            if (clsB33 == null) {
                clsB33 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerBigDecimal");
                i = clsB33;
            }
            if (cls == clsB33) {
                return 31004;
            }
            Class clsB34 = a;
            if (clsB34 == null) {
                clsB34 = b("java.math.BigDecimal");
                a = clsB34;
            }
            if (cls == clsB34) {
                return 41004;
            }
            Class clsB35 = d;
            if (clsB35 == null) {
                clsB35 = b("java.lang.Double");
                d = clsB35;
            }
            if (cls == clsB35) {
                return Integer.MAX_VALUE;
            }
            Class clsB36 = e;
            if (clsB36 == null) {
                clsB36 = b("java.lang.Float");
                e = clsB36;
            }
            if (cls == clsB36) {
                return Integer.MAX_VALUE;
            }
            Class clsB37 = f;
            if (clsB37 == null) {
                clsB37 = b("java.lang.Byte");
                f = clsB37;
            }
            if (cls == clsB37) {
                return 10004;
            }
            Class clsB38 = h;
            if (clsB38 == null) {
                clsB38 = b("java.math.BigInteger");
                h = clsB38;
            }
            if (cls == clsB38) {
                return Integer.MAX_VALUE;
            }
            Class clsB39 = j;
            if (clsB39 == null) {
                clsB39 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrInteger");
                j = clsB39;
            }
            if (cls == clsB39) {
                return 0;
            }
            Class clsB40 = k;
            if (clsB40 == null) {
                clsB40 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrFloat");
                k = clsB40;
            }
            if (cls == clsB40) {
                return Integer.MAX_VALUE;
            }
            Class clsB41 = l;
            if (clsB41 == null) {
                clsB41 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrIntegerOrFloat");
                l = clsB41;
            }
            if (cls == clsB41) {
                return 21004;
            }
            Class clsB42 = m;
            if (clsB42 == null) {
                clsB42 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrInteger");
                m = clsB42;
            }
            if (cls == clsB42) {
                return 21004;
            }
            Class clsB43 = n;
            if (clsB43 == null) {
                clsB43 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrLong");
                n = clsB43;
            }
            if (cls == clsB43) {
                return 21004;
            }
            Class clsB44 = o;
            if (clsB44 == null) {
                clsB44 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrByte");
                o = clsB44;
            }
            if (cls == clsB44) {
                return 10004;
            }
            Class clsB45 = p;
            if (clsB45 == null) {
                clsB45 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrByte");
                p = clsB45;
            }
            if (cls == clsB45) {
                return 21004;
            }
            Class clsB46 = q;
            if (clsB46 == null) {
                clsB46 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrByte");
                q = clsB46;
            }
            if (cls == clsB46) {
                return 0;
            }
            Class clsB47 = g;
            if (clsB47 == null) {
                clsB47 = b("java.lang.Short");
                g = clsB47;
            }
            if (cls == clsB47) {
                return 10004;
            }
            Class clsB48 = r;
            if (clsB48 == null) {
                clsB48 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrShort");
                r = clsB48;
            }
            if (cls == clsB48) {
                return 0;
            }
            Class clsB49 = s;
            if (clsB49 == null) {
                clsB49 = b("freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte");
                s = clsB49;
            }
            if (cls == clsB49) {
                return 10004;
            }
            Class clsB50 = t;
            if (clsB50 == null) {
                clsB50 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger");
                t = clsB50;
            }
            if (cls == clsB50) {
                return 21004;
            }
            Class clsB51 = u;
            if (clsB51 == null) {
                clsB51 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte");
                u = clsB51;
            }
            if (cls == clsB51) {
                return 21004;
            }
            Class clsB52 = v;
            if (clsB52 == null) {
                clsB52 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort");
                v = clsB52;
            }
            if (cls == clsB52) {
                return 21004;
            }
            Class clsB53 = w;
            if (clsB53 == null) {
                clsB53 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger");
                w = clsB53;
            }
            if (cls == clsB53) {
                return 15004;
            }
            Class clsB54 = x;
            if (clsB54 == null) {
                clsB54 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong");
                x = clsB54;
            }
            if (cls == clsB54) {
                return 15004;
            }
            Class clsB55 = y;
            if (clsB55 == null) {
                clsB55 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble");
                y = clsB55;
            }
            if (cls == clsB55) {
                return Integer.MAX_VALUE;
            }
            Class clsB56 = z;
            if (clsB56 == null) {
                clsB56 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat");
                z = clsB56;
            }
            if (cls == clsB56) {
                return Integer.MAX_VALUE;
            }
            Class clsB57 = A;
            if (clsB57 == null) {
                clsB57 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte");
                A = clsB57;
            }
            if (cls == clsB57) {
                return 15004;
            }
            Class clsB58 = B;
            if (clsB58 == null) {
                clsB58 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort");
                B = clsB58;
            }
            if (cls == clsB58) {
                return 10004;
            }
            Class clsB59 = C;
            if (clsB59 == null) {
                clsB59 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort");
                C = clsB59;
            }
            if (cls == clsB59) {
                return 21004;
            }
            Class clsB60 = D;
            if (clsB60 == null) {
                clsB60 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort");
                D = clsB60;
            }
            return cls == clsB60 ? 15004 : Integer.MAX_VALUE;
        }
        Class clsB61 = d;
        if (clsB61 == null) {
            clsB61 = b("java.lang.Double");
            d = clsB61;
        }
        if (cls2 == clsB61) {
            Class clsB62 = b;
            if (clsB62 == null) {
                clsB62 = b("java.lang.Integer");
                b = clsB62;
            }
            if (cls == clsB62) {
                return 20007;
            }
            Class clsB63 = i;
            if (clsB63 == null) {
                clsB63 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerBigDecimal");
                i = clsB63;
            }
            if (cls == clsB63) {
                return 32007;
            }
            Class clsB64 = a;
            if (clsB64 == null) {
                clsB64 = b("java.math.BigDecimal");
                a = clsB64;
            }
            if (cls == clsB64) {
                return 32007;
            }
            Class clsB65 = c;
            if (clsB65 == null) {
                clsB65 = b("java.lang.Long");
                c = clsB65;
            }
            if (cls == clsB65) {
                return 30007;
            }
            Class clsB66 = e;
            if (clsB66 == null) {
                clsB66 = b("java.lang.Float");
                e = clsB66;
            }
            if (cls == clsB66) {
                return 10007;
            }
            Class clsB67 = f;
            if (clsB67 == null) {
                clsB67 = b("java.lang.Byte");
                f = clsB67;
            }
            if (cls == clsB67) {
                return 20007;
            }
            Class clsB68 = h;
            if (clsB68 == null) {
                clsB68 = b("java.math.BigInteger");
                h = clsB68;
            }
            if (cls == clsB68) {
                return Integer.MAX_VALUE;
            }
            Class clsB69 = j;
            if (clsB69 == null) {
                clsB69 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrInteger");
                j = clsB69;
            }
            if (cls == clsB69) {
                return 21007;
            }
            Class clsB70 = k;
            if (clsB70 == null) {
                clsB70 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrFloat");
                k = clsB70;
            }
            if (cls == clsB70) {
                return 0;
            }
            Class clsB71 = l;
            if (clsB71 == null) {
                clsB71 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrIntegerOrFloat");
                l = clsB71;
            }
            if (cls == clsB71) {
                return 0;
            }
            Class clsB72 = m;
            if (clsB72 == null) {
                clsB72 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrInteger");
                m = clsB72;
            }
            if (cls == clsB72) {
                return 0;
            }
            Class clsB73 = n;
            if (clsB73 == null) {
                clsB73 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrLong");
                n = clsB73;
            }
            if (cls == clsB73) {
                return 0;
            }
            Class clsB74 = o;
            if (clsB74 == null) {
                clsB74 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrByte");
                o = clsB74;
            }
            if (cls == clsB74) {
                return 20007;
            }
            Class clsB75 = p;
            if (clsB75 == null) {
                clsB75 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrByte");
                p = clsB75;
            }
            if (cls == clsB75) {
                return 0;
            }
            Class clsB76 = q;
            if (clsB76 == null) {
                clsB76 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrByte");
                q = clsB76;
            }
            if (cls == clsB76) {
                return 21007;
            }
            Class clsB77 = g;
            if (clsB77 == null) {
                clsB77 = b("java.lang.Short");
                g = clsB77;
            }
            if (cls == clsB77) {
                return 20007;
            }
            Class clsB78 = r;
            if (clsB78 == null) {
                clsB78 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrShort");
                r = clsB78;
            }
            if (cls == clsB78) {
                return 21007;
            }
            Class clsB79 = s;
            if (clsB79 == null) {
                clsB79 = b("freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte");
                s = clsB79;
            }
            if (cls == clsB79) {
                return 20007;
            }
            Class clsB80 = t;
            if (clsB80 == null) {
                clsB80 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger");
                t = clsB80;
            }
            if (cls == clsB80) {
                return 10007;
            }
            Class clsB81 = u;
            if (clsB81 == null) {
                clsB81 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte");
                u = clsB81;
            }
            if (cls == clsB81) {
                return 10007;
            }
            Class clsB82 = v;
            if (clsB82 == null) {
                clsB82 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort");
                v = clsB82;
            }
            if (cls == clsB82) {
                return 10007;
            }
            Class clsB83 = w;
            if (clsB83 == null) {
                clsB83 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger");
                w = clsB83;
            }
            if (cls == clsB83) {
                return 20007;
            }
            Class clsB84 = x;
            if (clsB84 == null) {
                clsB84 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong");
                x = clsB84;
            }
            if (cls == clsB84) {
                return 30007;
            }
            Class clsB85 = y;
            if (clsB85 == null) {
                clsB85 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble");
                y = clsB85;
            }
            if (cls == clsB85) {
                return 20007;
            }
            Class clsB86 = z;
            if (clsB86 == null) {
                clsB86 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat");
                z = clsB86;
            }
            if (cls == clsB86) {
                return 20007;
            }
            Class clsB87 = A;
            if (clsB87 == null) {
                clsB87 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte");
                A = clsB87;
            }
            if (cls == clsB87) {
                return 20007;
            }
            Class clsB88 = B;
            if (clsB88 == null) {
                clsB88 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort");
                B = clsB88;
            }
            if (cls == clsB88) {
                return 20007;
            }
            Class clsB89 = C;
            if (clsB89 == null) {
                clsB89 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort");
                C = clsB89;
            }
            if (cls == clsB89) {
                return 0;
            }
            Class clsB90 = D;
            if (clsB90 == null) {
                clsB90 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort");
                D = clsB90;
            }
            return cls == clsB90 ? 20007 : Integer.MAX_VALUE;
        }
        Class clsB91 = e;
        if (clsB91 == null) {
            clsB91 = b("java.lang.Float");
            e = clsB91;
        }
        if (cls2 == clsB91) {
            Class clsB92 = b;
            if (clsB92 == null) {
                clsB92 = b("java.lang.Integer");
                b = clsB92;
            }
            if (cls == clsB92) {
                return TAdErrorCode.CODE_REQUEST_BIDDING_FAILED;
            }
            Class clsB93 = i;
            if (clsB93 == null) {
                clsB93 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerBigDecimal");
                i = clsB93;
            }
            if (cls == clsB93) {
                return 33006;
            }
            Class clsB94 = a;
            if (clsB94 == null) {
                clsB94 = b("java.math.BigDecimal");
                a = clsB94;
            }
            if (cls == clsB94) {
                return 33006;
            }
            Class clsB95 = c;
            if (clsB95 == null) {
                clsB95 = b("java.lang.Long");
                c = clsB95;
            }
            if (cls == clsB95) {
                return 40006;
            }
            Class clsB96 = d;
            if (clsB96 == null) {
                clsB96 = b("java.lang.Double");
                d = clsB96;
            }
            if (cls == clsB96) {
                return Integer.MAX_VALUE;
            }
            Class clsB97 = f;
            if (clsB97 == null) {
                clsB97 = b("java.lang.Byte");
                f = clsB97;
            }
            if (cls == clsB97) {
                return 20006;
            }
            Class clsB98 = h;
            if (clsB98 == null) {
                clsB98 = b("java.math.BigInteger");
                h = clsB98;
            }
            if (cls == clsB98) {
                return Integer.MAX_VALUE;
            }
            Class clsB99 = j;
            if (clsB99 == null) {
                clsB99 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrInteger");
                j = clsB99;
            }
            if (cls == clsB99) {
                return TAdErrorCode.CODE_REQUEST_BIDDING_FAILED;
            }
            Class clsB100 = k;
            if (clsB100 == null) {
                clsB100 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrFloat");
                k = clsB100;
            }
            if (cls == clsB100) {
                return TAdErrorCode.CODE_REQUEST_BIDDING_FAILED;
            }
            Class clsB101 = l;
            if (clsB101 == null) {
                clsB101 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrIntegerOrFloat");
                l = clsB101;
            }
            if (cls == clsB101) {
                return 23006;
            }
            Class clsB102 = m;
            if (clsB102 == null) {
                clsB102 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrInteger");
                m = clsB102;
            }
            if (cls == clsB102) {
                return TAdErrorCode.CODE_REQUEST_BIDDING_FAILED;
            }
            Class clsB103 = n;
            if (clsB103 == null) {
                clsB103 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrLong");
                n = clsB103;
            }
            if (cls == clsB103) {
                return 40006;
            }
            Class clsB104 = o;
            if (clsB104 == null) {
                clsB104 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrByte");
                o = clsB104;
            }
            if (cls == clsB104) {
                return 24006;
            }
            Class clsB105 = p;
            if (clsB105 == null) {
                clsB105 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrByte");
                p = clsB105;
            }
            if (cls == clsB105) {
                return 23006;
            }
            Class clsB106 = q;
            if (clsB106 == null) {
                clsB106 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrByte");
                q = clsB106;
            }
            if (cls == clsB106) {
                return 24006;
            }
            Class clsB107 = g;
            if (clsB107 == null) {
                clsB107 = b("java.lang.Short");
                g = clsB107;
            }
            if (cls == clsB107) {
                return 20006;
            }
            Class clsB108 = r;
            if (clsB108 == null) {
                clsB108 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrShort");
                r = clsB108;
            }
            if (cls == clsB108) {
                return 24006;
            }
            Class clsB109 = s;
            if (clsB109 == null) {
                clsB109 = b("freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte");
                s = clsB109;
            }
            if (cls == clsB109) {
                return 20006;
            }
            Class clsB110 = t;
            if (clsB110 == null) {
                clsB110 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger");
                t = clsB110;
            }
            if (cls == clsB110) {
                return 0;
            }
            Class clsB111 = u;
            if (clsB111 == null) {
                clsB111 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte");
                u = clsB111;
            }
            if (cls == clsB111) {
                return 0;
            }
            Class clsB112 = v;
            if (clsB112 == null) {
                clsB112 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort");
                v = clsB112;
            }
            if (cls == clsB112) {
                return 0;
            }
            Class clsB113 = w;
            if (clsB113 == null) {
                clsB113 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger");
                w = clsB113;
            }
            if (cls == clsB113) {
                return TAdErrorCode.CODE_REQUEST_BIDDING_FAILED;
            }
            Class clsB114 = x;
            if (clsB114 == null) {
                clsB114 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong");
                x = clsB114;
            }
            if (cls == clsB114) {
                return 40006;
            }
            Class clsB115 = y;
            if (clsB115 == null) {
                clsB115 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble");
                y = clsB115;
            }
            if (cls == clsB115) {
                return 40006;
            }
            Class clsB116 = z;
            if (clsB116 == null) {
                clsB116 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat");
                z = clsB116;
            }
            if (cls == clsB116) {
                return 24006;
            }
            Class clsB117 = A;
            if (clsB117 == null) {
                clsB117 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte");
                A = clsB117;
            }
            if (cls == clsB117) {
                return 24006;
            }
            Class clsB118 = B;
            if (clsB118 == null) {
                clsB118 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort");
                B = clsB118;
            }
            if (cls == clsB118) {
                return 24006;
            }
            Class clsB119 = C;
            if (clsB119 == null) {
                clsB119 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort");
                C = clsB119;
            }
            if (cls == clsB119) {
                return 23006;
            }
            Class clsB120 = D;
            if (clsB120 == null) {
                clsB120 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort");
                D = clsB120;
            }
            return cls == clsB120 ? 24006 : Integer.MAX_VALUE;
        }
        Class clsB121 = f;
        if (clsB121 == null) {
            clsB121 = b("java.lang.Byte");
            f = clsB121;
        }
        if (cls2 == clsB121) {
            Class clsB122 = b;
            if (clsB122 == null) {
                clsB122 = b("java.lang.Integer");
                b = clsB122;
            }
            if (cls == clsB122) {
                return Integer.MAX_VALUE;
            }
            Class clsB123 = i;
            if (clsB123 == null) {
                clsB123 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerBigDecimal");
                i = clsB123;
            }
            if (cls == clsB123) {
                return 35001;
            }
            Class clsB124 = a;
            if (clsB124 == null) {
                clsB124 = b("java.math.BigDecimal");
                a = clsB124;
            }
            if (cls == clsB124) {
                return 45001;
            }
            Class clsB125 = c;
            if (clsB125 == null) {
                clsB125 = b("java.lang.Long");
                c = clsB125;
            }
            if (cls == clsB125) {
                return Integer.MAX_VALUE;
            }
            Class clsB126 = d;
            if (clsB126 == null) {
                clsB126 = b("java.lang.Double");
                d = clsB126;
            }
            if (cls == clsB126) {
                return Integer.MAX_VALUE;
            }
            Class clsB127 = e;
            if (clsB127 == null) {
                clsB127 = b("java.lang.Float");
                e = clsB127;
            }
            if (cls == clsB127) {
                return Integer.MAX_VALUE;
            }
            Class clsB128 = h;
            if (clsB128 == null) {
                clsB128 = b("java.math.BigInteger");
                h = clsB128;
            }
            if (cls == clsB128) {
                return Integer.MAX_VALUE;
            }
            Class clsB129 = j;
            if (clsB129 == null) {
                clsB129 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrInteger");
                j = clsB129;
            }
            if (cls == clsB129) {
                return Integer.MAX_VALUE;
            }
            Class clsB130 = k;
            if (clsB130 == null) {
                clsB130 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrFloat");
                k = clsB130;
            }
            if (cls == clsB130) {
                return Integer.MAX_VALUE;
            }
            Class clsB131 = l;
            if (clsB131 == null) {
                clsB131 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrIntegerOrFloat");
                l = clsB131;
            }
            if (cls == clsB131) {
                return Integer.MAX_VALUE;
            }
            Class clsB132 = m;
            if (clsB132 == null) {
                clsB132 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrInteger");
                m = clsB132;
            }
            if (cls == clsB132) {
                return Integer.MAX_VALUE;
            }
            Class clsB133 = n;
            if (clsB133 == null) {
                clsB133 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrLong");
                n = clsB133;
            }
            if (cls == clsB133) {
                return Integer.MAX_VALUE;
            }
            Class clsB134 = o;
            if (clsB134 == null) {
                clsB134 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrByte");
                o = clsB134;
            }
            if (cls == clsB134) {
                return 22001;
            }
            Class clsB135 = p;
            if (clsB135 == null) {
                clsB135 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrByte");
                p = clsB135;
            }
            if (cls == clsB135) {
                return 25001;
            }
            Class clsB136 = q;
            if (clsB136 == null) {
                clsB136 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrByte");
                q = clsB136;
            }
            if (cls == clsB136) {
                return 23001;
            }
            Class clsB137 = g;
            if (clsB137 == null) {
                clsB137 = b("java.lang.Short");
                g = clsB137;
            }
            if (cls == clsB137) {
                return Integer.MAX_VALUE;
            }
            Class clsB138 = r;
            if (clsB138 == null) {
                clsB138 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrShort");
                r = clsB138;
            }
            if (cls == clsB138) {
                return Integer.MAX_VALUE;
            }
            Class clsB139 = s;
            if (clsB139 == null) {
                clsB139 = b("freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte");
                s = clsB139;
            }
            if (cls == clsB139) {
                return 21001;
            }
            Class clsB140 = t;
            if (clsB140 == null) {
                clsB140 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger");
                t = clsB140;
            }
            if (cls == clsB140) {
                return Integer.MAX_VALUE;
            }
            Class clsB141 = u;
            if (clsB141 == null) {
                clsB141 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte");
                u = clsB141;
            }
            if (cls == clsB141) {
                return 23001;
            }
            Class clsB142 = v;
            if (clsB142 == null) {
                clsB142 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort");
                v = clsB142;
            }
            if (cls == clsB142) {
                return Integer.MAX_VALUE;
            }
            Class clsB143 = w;
            if (clsB143 == null) {
                clsB143 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger");
                w = clsB143;
            }
            if (cls == clsB143) {
                return Integer.MAX_VALUE;
            }
            Class clsB144 = x;
            if (clsB144 == null) {
                clsB144 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong");
                x = clsB144;
            }
            if (cls == clsB144) {
                return Integer.MAX_VALUE;
            }
            Class clsB145 = y;
            if (clsB145 == null) {
                clsB145 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble");
                y = clsB145;
            }
            if (cls == clsB145) {
                return Integer.MAX_VALUE;
            }
            Class clsB146 = z;
            if (clsB146 == null) {
                clsB146 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat");
                z = clsB146;
            }
            if (cls == clsB146) {
                return Integer.MAX_VALUE;
            }
            Class clsB147 = A;
            if (clsB147 == null) {
                clsB147 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte");
                A = clsB147;
            }
            if (cls == clsB147) {
                return 18001;
            }
            Class clsB148 = B;
            if (clsB148 == null) {
                clsB148 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort");
                B = clsB148;
            }
            if (cls == clsB148) {
                return Integer.MAX_VALUE;
            }
            Class clsB149 = C;
            if (clsB149 == null) {
                clsB149 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort");
                C = clsB149;
            }
            if (cls != clsB149 && D == null) {
                D = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort");
            }
            return Integer.MAX_VALUE;
        }
        Class clsB150 = g;
        if (clsB150 == null) {
            clsB150 = b("java.lang.Short");
            g = clsB150;
        }
        if (cls2 == clsB150) {
            Class clsB151 = b;
            if (clsB151 == null) {
                clsB151 = b("java.lang.Integer");
                b = clsB151;
            }
            if (cls == clsB151) {
                return Integer.MAX_VALUE;
            }
            Class clsB152 = i;
            if (clsB152 == null) {
                clsB152 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerBigDecimal");
                i = clsB152;
            }
            if (cls == clsB152) {
                return 34002;
            }
            Class clsB153 = a;
            if (clsB153 == null) {
                clsB153 = b("java.math.BigDecimal");
                a = clsB153;
            }
            if (cls == clsB153) {
                return 44002;
            }
            Class clsB154 = c;
            if (clsB154 == null) {
                clsB154 = b("java.lang.Long");
                c = clsB154;
            }
            if (cls == clsB154) {
                return Integer.MAX_VALUE;
            }
            Class clsB155 = d;
            if (clsB155 == null) {
                clsB155 = b("java.lang.Double");
                d = clsB155;
            }
            if (cls == clsB155) {
                return Integer.MAX_VALUE;
            }
            Class clsB156 = e;
            if (clsB156 == null) {
                clsB156 = b("java.lang.Float");
                e = clsB156;
            }
            if (cls == clsB156) {
                return Integer.MAX_VALUE;
            }
            Class clsB157 = f;
            if (clsB157 == null) {
                clsB157 = b("java.lang.Byte");
                f = clsB157;
            }
            if (cls == clsB157) {
                return 10002;
            }
            Class clsB158 = h;
            if (clsB158 == null) {
                clsB158 = b("java.math.BigInteger");
                h = clsB158;
            }
            if (cls == clsB158) {
                return Integer.MAX_VALUE;
            }
            Class clsB159 = j;
            if (clsB159 == null) {
                clsB159 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrInteger");
                j = clsB159;
            }
            if (cls == clsB159) {
                return Integer.MAX_VALUE;
            }
            Class clsB160 = k;
            if (clsB160 == null) {
                clsB160 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrFloat");
                k = clsB160;
            }
            if (cls == clsB160) {
                return Integer.MAX_VALUE;
            }
            Class clsB161 = l;
            if (clsB161 == null) {
                clsB161 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrIntegerOrFloat");
                l = clsB161;
            }
            if (cls == clsB161) {
                return Integer.MAX_VALUE;
            }
            Class clsB162 = m;
            if (clsB162 == null) {
                clsB162 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrInteger");
                m = clsB162;
            }
            if (cls == clsB162) {
                return Integer.MAX_VALUE;
            }
            Class clsB163 = n;
            if (clsB163 == null) {
                clsB163 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrLong");
                n = clsB163;
            }
            if (cls == clsB163) {
                return Integer.MAX_VALUE;
            }
            Class clsB164 = o;
            if (clsB164 == null) {
                clsB164 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrByte");
                o = clsB164;
            }
            if (cls == clsB164) {
                return 21002;
            }
            Class clsB165 = p;
            if (clsB165 == null) {
                clsB165 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrByte");
                p = clsB165;
            }
            if (cls == clsB165) {
                return 24002;
            }
            Class clsB166 = q;
            if (clsB166 == null) {
                clsB166 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrByte");
                q = clsB166;
            }
            if (cls == clsB166) {
                return 22002;
            }
            Class clsB167 = r;
            if (clsB167 == null) {
                clsB167 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrShort");
                r = clsB167;
            }
            if (cls == clsB167) {
                return 22002;
            }
            Class clsB168 = s;
            if (clsB168 == null) {
                clsB168 = b("freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte");
                s = clsB168;
            }
            if (cls == clsB168) {
                return 0;
            }
            Class clsB169 = t;
            if (clsB169 == null) {
                clsB169 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger");
                t = clsB169;
            }
            if (cls == clsB169) {
                return Integer.MAX_VALUE;
            }
            Class clsB170 = u;
            if (clsB170 == null) {
                clsB170 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte");
                u = clsB170;
            }
            if (cls == clsB170) {
                return 22002;
            }
            Class clsB171 = v;
            if (clsB171 == null) {
                clsB171 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort");
                v = clsB171;
            }
            if (cls == clsB171) {
                return 22002;
            }
            Class clsB172 = w;
            if (clsB172 == null) {
                clsB172 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger");
                w = clsB172;
            }
            if (cls == clsB172) {
                return Integer.MAX_VALUE;
            }
            Class clsB173 = x;
            if (clsB173 == null) {
                clsB173 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong");
                x = clsB173;
            }
            if (cls == clsB173) {
                return Integer.MAX_VALUE;
            }
            Class clsB174 = y;
            if (clsB174 == null) {
                clsB174 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble");
                y = clsB174;
            }
            if (cls == clsB174) {
                return Integer.MAX_VALUE;
            }
            Class clsB175 = z;
            if (clsB175 == null) {
                clsB175 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat");
                z = clsB175;
            }
            if (cls == clsB175) {
                return Integer.MAX_VALUE;
            }
            Class clsB176 = A;
            if (clsB176 == null) {
                clsB176 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte");
                A = clsB176;
            }
            if (cls == clsB176) {
                return 17002;
            }
            Class clsB177 = B;
            if (clsB177 == null) {
                clsB177 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort");
                B = clsB177;
            }
            if (cls == clsB177) {
                return 21002;
            }
            Class clsB178 = C;
            if (clsB178 == null) {
                clsB178 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort");
                C = clsB178;
            }
            if (cls == clsB178) {
                return 24002;
            }
            Class clsB179 = D;
            if (clsB179 == null) {
                clsB179 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort");
                D = clsB179;
            }
            return cls == clsB179 ? 17002 : Integer.MAX_VALUE;
        }
        Class clsB180 = a;
        if (clsB180 == null) {
            clsB180 = b("java.math.BigDecimal");
            a = clsB180;
        }
        if (cls2 == clsB180) {
            Class clsB181 = b;
            if (clsB181 == null) {
                clsB181 = b("java.lang.Integer");
                b = clsB181;
            }
            if (cls == clsB181) {
                return 20008;
            }
            Class clsB182 = i;
            if (clsB182 == null) {
                clsB182 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerBigDecimal");
                i = clsB182;
            }
            if (cls == clsB182) {
                return 0;
            }
            Class clsB183 = c;
            if (clsB183 == null) {
                clsB183 = b("java.lang.Long");
                c = clsB183;
            }
            if (cls == clsB183) {
                return 20008;
            }
            Class clsB184 = d;
            if (clsB184 == null) {
                clsB184 = b("java.lang.Double");
                d = clsB184;
            }
            if (cls == clsB184) {
                return 20008;
            }
            Class clsB185 = e;
            if (clsB185 == null) {
                clsB185 = b("java.lang.Float");
                e = clsB185;
            }
            if (cls == clsB185) {
                return 20008;
            }
            Class clsB186 = f;
            if (clsB186 == null) {
                clsB186 = b("java.lang.Byte");
                f = clsB186;
            }
            if (cls == clsB186) {
                return 20008;
            }
            Class clsB187 = h;
            if (clsB187 == null) {
                clsB187 = b("java.math.BigInteger");
                h = clsB187;
            }
            if (cls == clsB187) {
                return 10008;
            }
            Class clsB188 = j;
            if (clsB188 == null) {
                clsB188 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrInteger");
                j = clsB188;
            }
            if (cls == clsB188) {
                return 20008;
            }
            Class clsB189 = k;
            if (clsB189 == null) {
                clsB189 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrFloat");
                k = clsB189;
            }
            if (cls == clsB189) {
                return 20008;
            }
            Class clsB190 = l;
            if (clsB190 == null) {
                clsB190 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrIntegerOrFloat");
                l = clsB190;
            }
            if (cls == clsB190) {
                return 20008;
            }
            Class clsB191 = m;
            if (clsB191 == null) {
                clsB191 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrInteger");
                m = clsB191;
            }
            if (cls == clsB191) {
                return 20008;
            }
            Class clsB192 = n;
            if (clsB192 == null) {
                clsB192 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrLong");
                n = clsB192;
            }
            if (cls == clsB192) {
                return 20008;
            }
            Class clsB193 = o;
            if (clsB193 == null) {
                clsB193 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrByte");
                o = clsB193;
            }
            if (cls == clsB193) {
                return 20008;
            }
            Class clsB194 = p;
            if (clsB194 == null) {
                clsB194 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrByte");
                p = clsB194;
            }
            if (cls == clsB194) {
                return 20008;
            }
            Class clsB195 = q;
            if (clsB195 == null) {
                clsB195 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrByte");
                q = clsB195;
            }
            if (cls == clsB195) {
                return 20008;
            }
            Class clsB196 = g;
            if (clsB196 == null) {
                clsB196 = b("java.lang.Short");
                g = clsB196;
            }
            if (cls == clsB196) {
                return 20008;
            }
            Class clsB197 = r;
            if (clsB197 == null) {
                clsB197 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrShort");
                r = clsB197;
            }
            if (cls == clsB197) {
                return 20008;
            }
            Class clsB198 = s;
            if (clsB198 == null) {
                clsB198 = b("freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte");
                s = clsB198;
            }
            if (cls == clsB198) {
                return 20008;
            }
            Class clsB199 = t;
            if (clsB199 == null) {
                clsB199 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger");
                t = clsB199;
            }
            if (cls == clsB199) {
                return 20008;
            }
            Class clsB200 = u;
            if (clsB200 == null) {
                clsB200 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte");
                u = clsB200;
            }
            if (cls == clsB200) {
                return 20008;
            }
            Class clsB201 = v;
            if (clsB201 == null) {
                clsB201 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort");
                v = clsB201;
            }
            if (cls == clsB201) {
                return 20008;
            }
            Class clsB202 = w;
            if (clsB202 == null) {
                clsB202 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger");
                w = clsB202;
            }
            if (cls == clsB202) {
                return 10008;
            }
            Class clsB203 = x;
            if (clsB203 == null) {
                clsB203 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong");
                x = clsB203;
            }
            if (cls == clsB203) {
                return 10008;
            }
            Class clsB204 = y;
            if (clsB204 == null) {
                clsB204 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble");
                y = clsB204;
            }
            if (cls == clsB204) {
                return 10008;
            }
            Class clsB205 = z;
            if (clsB205 == null) {
                clsB205 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat");
                z = clsB205;
            }
            if (cls == clsB205) {
                return 10008;
            }
            Class clsB206 = A;
            if (clsB206 == null) {
                clsB206 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte");
                A = clsB206;
            }
            if (cls == clsB206) {
                return 10008;
            }
            Class clsB207 = B;
            if (clsB207 == null) {
                clsB207 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort");
                B = clsB207;
            }
            if (cls == clsB207) {
                return 20008;
            }
            Class clsB208 = C;
            if (clsB208 == null) {
                clsB208 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort");
                C = clsB208;
            }
            if (cls == clsB208) {
                return 20008;
            }
            Class clsB209 = D;
            if (clsB209 == null) {
                clsB209 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort");
                D = clsB209;
            }
            return cls == clsB209 ? 10008 : Integer.MAX_VALUE;
        }
        Class clsB210 = h;
        if (clsB210 == null) {
            clsB210 = b("java.math.BigInteger");
            h = clsB210;
        }
        if (cls2 == clsB210) {
            Class clsB211 = b;
            if (clsB211 == null) {
                clsB211 = b("java.lang.Integer");
                b = clsB211;
            }
            if (cls == clsB211) {
                return 10005;
            }
            Class clsB212 = i;
            if (clsB212 == null) {
                clsB212 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerBigDecimal");
                i = clsB212;
            }
            if (cls == clsB212) {
                return 10005;
            }
            Class clsB213 = a;
            if (clsB213 == null) {
                clsB213 = b("java.math.BigDecimal");
                a = clsB213;
            }
            if (cls == clsB213) {
                return 40005;
            }
            Class clsB214 = c;
            if (clsB214 == null) {
                clsB214 = b("java.lang.Long");
                c = clsB214;
            }
            if (cls == clsB214) {
                return 10005;
            }
            Class clsB215 = d;
            if (clsB215 == null) {
                clsB215 = b("java.lang.Double");
                d = clsB215;
            }
            if (cls == clsB215) {
                return Integer.MAX_VALUE;
            }
            Class clsB216 = e;
            if (clsB216 == null) {
                clsB216 = b("java.lang.Float");
                e = clsB216;
            }
            if (cls == clsB216) {
                return Integer.MAX_VALUE;
            }
            Class clsB217 = f;
            if (clsB217 == null) {
                clsB217 = b("java.lang.Byte");
                f = clsB217;
            }
            if (cls == clsB217) {
                return 10005;
            }
            Class clsB218 = j;
            if (clsB218 == null) {
                clsB218 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrInteger");
                j = clsB218;
            }
            if (cls == clsB218) {
                return 10005;
            }
            Class clsB219 = k;
            if (clsB219 == null) {
                clsB219 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrFloat");
                k = clsB219;
            }
            if (cls == clsB219) {
                return Integer.MAX_VALUE;
            }
            Class clsB220 = l;
            if (clsB220 == null) {
                clsB220 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrIntegerOrFloat");
                l = clsB220;
            }
            if (cls == clsB220) {
                return 21005;
            }
            Class clsB221 = m;
            if (clsB221 == null) {
                clsB221 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrInteger");
                m = clsB221;
            }
            if (cls == clsB221) {
                return 21005;
            }
            Class clsB222 = n;
            if (clsB222 == null) {
                clsB222 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrLong");
                n = clsB222;
            }
            if (cls == clsB222) {
                return 21005;
            }
            Class clsB223 = o;
            if (clsB223 == null) {
                clsB223 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrByte");
                o = clsB223;
            }
            if (cls == clsB223) {
                return 10005;
            }
            Class clsB224 = p;
            if (clsB224 == null) {
                clsB224 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrByte");
                p = clsB224;
            }
            if (cls == clsB224) {
                return 21005;
            }
            Class clsB225 = q;
            if (clsB225 == null) {
                clsB225 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrByte");
                q = clsB225;
            }
            if (cls == clsB225) {
                return 10005;
            }
            Class clsB226 = g;
            if (clsB226 == null) {
                clsB226 = b("java.lang.Short");
                g = clsB226;
            }
            if (cls == clsB226) {
                return 10005;
            }
            Class clsB227 = r;
            if (clsB227 == null) {
                clsB227 = b("freemarker.ext.beans.OverloadedNumberUtil$LongOrShort");
                r = clsB227;
            }
            if (cls == clsB227) {
                return 10005;
            }
            Class clsB228 = s;
            if (clsB228 == null) {
                clsB228 = b("freemarker.ext.beans.OverloadedNumberUtil$ShortOrByte");
                s = clsB228;
            }
            if (cls == clsB228) {
                return 10005;
            }
            Class clsB229 = t;
            if (clsB229 == null) {
                clsB229 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrInteger");
                t = clsB229;
            }
            if (cls == clsB229) {
                return 25005;
            }
            Class clsB230 = u;
            if (clsB230 == null) {
                clsB230 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrByte");
                u = clsB230;
            }
            if (cls == clsB230) {
                return 25005;
            }
            Class clsB231 = v;
            if (clsB231 == null) {
                clsB231 = b("freemarker.ext.beans.OverloadedNumberUtil$FloatOrShort");
                v = clsB231;
            }
            if (cls == clsB231) {
                return 25005;
            }
            Class clsB232 = w;
            if (clsB232 == null) {
                clsB232 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrInteger");
                w = clsB232;
            }
            if (cls == clsB232) {
                return 0;
            }
            Class clsB233 = x;
            if (clsB233 == null) {
                clsB233 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrLong");
                x = clsB233;
            }
            if (cls == clsB233) {
                return 0;
            }
            Class clsB234 = y;
            if (clsB234 == null) {
                clsB234 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrDouble");
                y = clsB234;
            }
            if (cls == clsB234) {
                return 0;
            }
            Class clsB235 = z;
            if (clsB235 == null) {
                clsB235 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrFloat");
                z = clsB235;
            }
            if (cls == clsB235) {
                return 0;
            }
            Class clsB236 = A;
            if (clsB236 == null) {
                clsB236 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrByte");
                A = clsB236;
            }
            if (cls == clsB236) {
                return 0;
            }
            Class clsB237 = B;
            if (clsB237 == null) {
                clsB237 = b("freemarker.ext.beans.OverloadedNumberUtil$IntegerOrShort");
                B = clsB237;
            }
            if (cls == clsB237) {
                return 10005;
            }
            Class clsB238 = C;
            if (clsB238 == null) {
                clsB238 = b("freemarker.ext.beans.OverloadedNumberUtil$DoubleOrShort");
                C = clsB238;
            }
            if (cls == clsB238) {
                return 21005;
            }
            Class clsB239 = D;
            if (clsB239 == null) {
                clsB239 = b("freemarker.ext.beans.OverloadedNumberUtil$BigIntegerOrShort");
                D = clsB239;
            }
            if (cls == clsB239) {
                return 0;
            }
        }
        return Integer.MAX_VALUE;
    }
}
