package freemarker.core;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.d1d;
import defpackage.gc7;
import defpackage.hga;
import defpackage.jw7;
import defpackage.mga;
import defpackage.nga;
import defpackage.ofa;
import defpackage.zfa;
import freemarker.template.SimpleScalar;
import freemarker.template.SimpleSequence;
import freemarker.template.TemplateModelException;
import freemarker.template.utility.Constants;
import java.util.ArrayList;
import java.util.Collections;

public final class n0 extends t0 {
    public static Class[] j;
    public static Class k;
    public static Class l;
    public static Class m;
    public static Class n;
    public final t0 h;
    public final t0 i;

    static {
        Class[] clsArr = new Class[NonStringException.STRING_COERCABLE_TYPES.length + 1];
        j = clsArr;
        Class clsX = n;
        if (clsX == null) {
            clsX = X("freemarker.template.TemplateSequenceModel");
            n = clsX;
        }
        int i = 0;
        clsArr[0] = clsX;
        while (true) {
            Class[] clsArr2 = NonStringException.STRING_COERCABLE_TYPES;
            if (i >= clsArr2.length) {
                return;
            }
            int i2 = i + 1;
            j[i2] = clsArr2[i];
            i = i2;
        }
    }

    public n0(t0 t0Var, t0 t0Var2) {
        this.i = t0Var;
        this.h = t0Var2;
    }

    public static Class X(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override
    public zfa F(Environment environment) throws Throwable {
        zfa zfaVarK = this.i.K(environment);
        if (zfaVarK == null) {
            if (environment.J()) {
                return null;
            }
            throw InvalidReferenceException.getInstance(this.i, environment);
        }
        zfa zfaVarK2 = this.h.K(environment);
        if (zfaVarK2 == null) {
            if (environment.J()) {
                zfaVarK2 = mga.Y4;
            } else {
                this.h.G(null, environment);
            }
        }
        zfa zfaVar = zfaVarK2;
        if (zfaVar instanceof hga) {
            return Y(zfaVarK, this.h.W(zfaVar, environment).intValue(), environment);
        }
        if (zfaVar instanceof mga) {
            return a0(zfaVarK, q0.h((mga) zfaVar, this.h, environment), environment);
        }
        if (zfaVar instanceof RangeModel) {
            return Z(zfaVarK, (RangeModel) zfaVar, environment);
        }
        t0 t0Var = this.h;
        Class clsX = k;
        if (clsX == null) {
            clsX = X("freemarker.template.TemplateNumberModel");
            k = clsX;
        }
        Class clsX2 = l;
        if (clsX2 == null) {
            clsX2 = X("freemarker.template.TemplateScalarModel");
            l = clsX2;
        }
        Class clsX3 = m;
        if (clsX3 == null) {
            clsX3 = X("freemarker.core.Range");
            m = clsX3;
        }
        throw new UnexpectedTypeException(t0Var, zfaVar, "number, range, or string", new Class[]{clsX, clsX2, clsX3}, environment);
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new n0(this.i.I(str, t0Var, aVar), this.h.I(str, t0Var, aVar));
    }

    @Override
    public boolean T() {
        return this.g != null || (this.i.T() && this.h.T());
    }

    public final zfa Y(zfa zfaVar, int i, Environment environment) throws _MiscTemplateException, UnexpectedTypeException {
        int size;
        if (zfaVar instanceof nga) {
            nga ngaVar = (nga) zfaVar;
            try {
                size = ngaVar.size();
            } catch (Exception unused) {
                size = Integer.MAX_VALUE;
            }
            if (i < size) {
                return ngaVar.get(i);
            }
            return null;
        }
        try {
            String strL = this.i.L(environment);
            try {
                return new SimpleScalar(strL.substring(i, i + 1));
            } catch (IndexOutOfBoundsException e) {
                if (i < 0) {
                    throw new _MiscTemplateException(new Object[]{"Negative index not allowed: ", new Integer(i)});
                }
                if (i >= strL.length()) {
                    throw new _MiscTemplateException(new Object[]{"String index out of range: The index was ", new Integer(i), " (0-based), but the length of the string is only ", new Integer(strL.length()), Consts.DOT});
                }
                throw new RuntimeException("Can't explain exception", e);
            }
        } catch (NonStringException unused2) {
            throw new UnexpectedTypeException(this.i, zfaVar, "sequence or string or something automatically convertible to string (number, date or boolean)", j, zfaVar instanceof ofa ? "You had a numberical value inside the []. Currently that's only supported for sequences (lists) and strings. To get a Map item with a non-string key, use myMap?api.get(myKey)." : null, environment);
        }
    }

    public final zfa Z(zfa zfaVar, RangeModel rangeModel, Environment environment) throws _MiscTemplateException, TemplateModelException, UnexpectedTypeException {
        String strL;
        nga ngaVar;
        int i;
        if (zfaVar instanceof nga) {
            ngaVar = (nga) zfaVar;
            strL = null;
        } else {
            try {
                strL = this.i.L(environment);
                ngaVar = null;
            } catch (NonStringException unused) {
                t0 t0Var = this.i;
                throw new UnexpectedTypeException(t0Var, t0Var.K(environment), "sequence or string or something automatically convertible to string (number, date or boolean)", j, environment);
            }
        }
        int size = rangeModel.size();
        boolean zIsRightUnbounded = rangeModel.isRightUnbounded();
        boolean zIsRightAdaptive = rangeModel.isRightAdaptive();
        if (!zIsRightUnbounded && size == 0) {
            return b0(ngaVar != null);
        }
        int begining = rangeModel.getBegining();
        if (begining < 0) {
            throw new _MiscTemplateException(this.h, new Object[]{"Negative range start index (", new Integer(begining), ") isn't allowed for a range used for slicing."});
        }
        int length = strL != null ? strL.length() : ngaVar.size();
        int step = rangeModel.getStep();
        if (!(zIsRightAdaptive && step == 1) ? begining < length : begining <= length) {
            throw new _MiscTemplateException(this.h, new Object[]{"Range start index ", new Integer(begining), " is out of bounds, because the sliced ", strL != null ? "string" : "sequence", " has only ", new Integer(length), " ", strL != null ? "character(s)" : "element(s)", ". ", "(Note that indices are 0-based)."});
        }
        if (zIsRightUnbounded) {
            size = length - begining;
        } else {
            int i2 = ((size - 1) * step) + begining;
            if (i2 < 0) {
                if (!zIsRightAdaptive) {
                    throw new _MiscTemplateException(this.h, new Object[]{"Negative range end index (", new Integer(i2), ") isn't allowed for a range used for slicing."});
                }
                size = begining + 1;
            } else if (i2 >= length) {
                if (!zIsRightAdaptive) {
                    throw new _MiscTemplateException(this.h, new Object[]{"Range end index ", new Integer(i2), " is out of bounds, because the sliced ", strL != null ? "string" : "sequence", " has only ", new Integer(length), " ", strL != null ? "character(s)" : "element(s)", ". (Note that indices are 0-based)."});
                }
                size = Math.abs(length - begining);
            }
        }
        if (size == 0) {
            return b0(ngaVar != null);
        }
        if (ngaVar != null) {
            ArrayList arrayList = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(ngaVar.get(begining));
                begining += step;
            }
            return new SimpleSequence(arrayList, (gc7) null);
        }
        if (step >= 0 || size <= 1) {
            i = size + begining;
        } else {
            if (!rangeModel.isAffactedByStringSlicingBug() || size != 2) {
                throw new _MiscTemplateException(this.h, new Object[]{"Decreasing ranges aren't allowed for slicing strings (as it would give reversed text). The index range was: first = ", new Integer(begining), ", last = ", new Integer(begining + ((size - 1) * step))});
            }
            i = begining;
        }
        return new SimpleScalar(strL.substring(begining, i));
    }

    public final zfa a0(zfa zfaVar, String str, Environment environment) throws NonHashException {
        if (zfaVar instanceof ofa) {
            return ((ofa) zfaVar).get(str);
        }
        throw new NonHashException(this.i, zfaVar, environment);
    }

    public final zfa b0(boolean z) {
        if (z) {
            return d1d.e(this) < d1d.d ? new SimpleSequence(Collections.EMPTY_LIST, (gc7) null) : Constants.i;
        }
        return mga.Y4;
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.i.o());
        stringBuffer.append("[");
        stringBuffer.append(this.h.o());
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "...[...]";
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        return i == 0 ? jw7.c : jw7.e;
    }

    @Override
    public Object u(int i) {
        return i == 0 ? this.i : this.h;
    }
}
