package freemarker.core;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.a47;
import defpackage.am9;
import defpackage.ffa;
import defpackage.hga;
import defpackage.jl0;
import defpackage.n0a;
import defpackage.zfa;
import freemarker.template.SimpleNumber;
import freemarker.template.SimpleScalar;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;

public abstract class b0 {
    public static final BigDecimal a = new BigDecimal("1");
    public static final BigDecimal b = BigDecimal.valueOf(Long.MIN_VALUE);
    public static final BigDecimal c = BigDecimal.valueOf(Long.MAX_VALUE);
    public static final BigInteger d = BigInteger.valueOf(Long.MIN_VALUE);
    public static final BigInteger e = BigInteger.valueOf(Long.MAX_VALUE);

    public static abstract class a extends jl0 {
        public a() {
        }

        @Override
        public zfa h0(Number number, zfa zfaVar) throws Throwable {
            try {
                int iH = a47.h(number);
                if (iH > 0) {
                    return new SimpleScalar(i0(iH));
                }
                throw new _TemplateModelException(this.h, new Object[]{"The left side operand of to ?", this.i, " must be at least 1, but was ", new Integer(iH), Consts.DOT});
            } catch (ArithmeticException e) {
                throw new _TemplateModelException(this.h, new Object[]{"The left side operand value isn't compatible with ?", this.i, ": ", e.getMessage()});
            }
        }

        public abstract String i0(int i);
    }

    public static class b extends jl0 {
        @Override
        public zfa h0(Number number, zfa zfaVar) throws _TemplateModelException {
            if (number instanceof Integer) {
                int iIntValue = ((Integer) number).intValue();
                return iIntValue < 0 ? new SimpleNumber(-iIntValue) : zfaVar;
            }
            if (number instanceof BigDecimal) {
                BigDecimal bigDecimal = (BigDecimal) number;
                return bigDecimal.signum() < 0 ? new SimpleNumber(bigDecimal.negate()) : zfaVar;
            }
            if (number instanceof Double) {
                double dDoubleValue = ((Double) number).doubleValue();
                return dDoubleValue < 0.0d ? new SimpleNumber(-dDoubleValue) : zfaVar;
            }
            if (number instanceof Float) {
                float fFloatValue = ((Float) number).floatValue();
                return fFloatValue < 0.0f ? new SimpleNumber(-fFloatValue) : zfaVar;
            }
            if (number instanceof Long) {
                long jLongValue = ((Long) number).longValue();
                return jLongValue < 0 ? new SimpleNumber(-jLongValue) : zfaVar;
            }
            if (number instanceof Short) {
                short sShortValue = ((Short) number).shortValue();
                return sShortValue < 0 ? new SimpleNumber(-sShortValue) : zfaVar;
            }
            if (number instanceof Byte) {
                byte bByteValue = ((Byte) number).byteValue();
                return bByteValue < 0 ? new SimpleNumber(-bByteValue) : zfaVar;
            }
            if (!(number instanceof BigInteger)) {
                throw new _TemplateModelException(new Object[]{"Unsupported number class: ", number.getClass()});
            }
            BigInteger bigInteger = (BigInteger) number;
            return bigInteger.signum() < 0 ? new SimpleNumber(bigInteger.negate()) : zfaVar;
        }
    }

    public static class c extends jl0 {
        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return number instanceof Byte ? zfaVar : new SimpleNumber(new Byte(number.byteValue()));
        }
    }

    public static class d extends jl0 {
        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return new SimpleNumber(new BigDecimal(number.doubleValue()).divide(b0.a, 0, 2));
        }
    }

    public static class e extends jl0 {
        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return number instanceof Double ? zfaVar : new SimpleNumber(number.doubleValue());
        }
    }

    public static class f extends jl0 {
        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return number instanceof Float ? zfaVar : new SimpleNumber(number.floatValue());
        }
    }

    public static class g extends jl0 {
        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return new SimpleNumber(new BigDecimal(number.doubleValue()).divide(b0.a, 0, 3));
        }
    }

    public static class h extends jl0 {
        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return number instanceof Integer ? zfaVar : new SimpleNumber(number.intValue());
        }
    }

    public static class i extends jl0 {
        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return a47.c(number) ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class j extends jl0 {
        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return a47.e(number) ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class k extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws NonNumericalException {
            zfa zfaVarK = this.h.K(environment);
            if (!(zfaVarK instanceof hga) && (zfaVarK instanceof ffa)) {
                return new SimpleNumber(q0.f((ffa) zfaVarK, this.h).getTime());
            }
            Number numberW = this.h.W(zfaVarK, environment);
            return numberW instanceof Long ? zfaVarK : new SimpleNumber(numberW.longValue());
        }
    }

    public static class l extends a {
        public l() {
            super();
        }

        @Override
        public String i0(int i) {
            return n0a.Y(i);
        }
    }

    public static class m extends jl0 {
        public final int k;

        public m(int i) {
            this.k = i;
        }

        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return new am9(new Date(b0.c(number)), this.k);
        }
    }

    public static class n extends jl0 {
        public static final BigDecimal k = new BigDecimal("0.5");

        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return new SimpleNumber(new BigDecimal(number.doubleValue()).add(k).divide(b0.a, 0, 3));
        }
    }

    public static class o extends jl0 {
        @Override
        public zfa h0(Number number, zfa zfaVar) {
            return number instanceof Short ? zfaVar : new SimpleNumber(new Short(number.shortValue()));
        }
    }

    public static class p extends a {
        public p() {
            super();
        }

        @Override
        public String i0(int i) {
            return n0a.Z(i);
        }
    }

    public static final long c(Number number) throws _TemplateModelException {
        if (number instanceof Double) {
            double dRound = Math.round(((Double) number).doubleValue());
            if (dRound > 9.223372036854776E18d || dRound < -9.223372036854776E18d) {
                throw new _TemplateModelException(new Object[]{"Number doesn't fit into a 64 bit signed integer (long): ", new Double(dRound)});
            }
            return (long) dRound;
        }
        if (number instanceof Float) {
            float fRound = Math.round(((Float) number).floatValue());
            if (fRound > 9.223372E18f || fRound < -9.223372E18f) {
                throw new _TemplateModelException(new Object[]{"Number doesn't fit into a 64 bit signed integer (long): ", new Float(fRound)});
            }
            return (long) fRound;
        }
        if (number instanceof BigDecimal) {
            BigDecimal scale = ((BigDecimal) number).setScale(0, 4);
            if (scale.compareTo(c) > 0 || scale.compareTo(b) < 0) {
                throw new _TemplateModelException(new Object[]{"Number doesn't fit into a 64 bit signed integer (long): ", scale});
            }
            return scale.longValue();
        }
        if (number instanceof BigInteger) {
            BigInteger bigInteger = (BigInteger) number;
            if (bigInteger.compareTo(e) > 0 || bigInteger.compareTo(d) < 0) {
                throw new _TemplateModelException(new Object[]{"Number doesn't fit into a 64 bit signed integer (long): ", bigInteger});
            }
            return bigInteger.longValue();
        }
        if ((number instanceof Long) || (number instanceof Integer) || (number instanceof Byte) || (number instanceof Short)) {
            return number.longValue();
        }
        throw new _TemplateModelException(new Object[]{"Unsupported number type: ", number.getClass()});
    }
}
