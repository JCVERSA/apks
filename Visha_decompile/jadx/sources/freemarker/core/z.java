package freemarker.core;

import com.alibaba.android.arouter.utils.Consts;
import com.transsion.audiotagger.tag.lyrics3.Lyrics3v2Fields;
import defpackage.a0d;
import defpackage.am9;
import defpackage.bfa;
import defpackage.cfa;
import defpackage.d1d;
import defpackage.dfa;
import defpackage.dga;
import defpackage.eu4;
import defpackage.ffa;
import defpackage.gga;
import defpackage.gu7;
import defpackage.hga;
import defpackage.k0d;
import defpackage.lm9;
import defpackage.mga;
import defpackage.nga;
import defpackage.ofa;
import defpackage.pfa;
import defpackage.pga;
import defpackage.rd0;
import defpackage.xfa;
import defpackage.zfa;
import freemarker.template.SimpleNumber;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModelException;
import java.text.NumberFormat;
import java.util.Date;
import java.util.List;
import org.apache.commons.lang3.BooleanUtils;

public abstract class z {
    public static Class a;
    public static Class b;
    public static Class c;
    public static Class d;
    public static Class e;
    public static Class f;
    public static Class g;
    public static Class h;
    public static Class i;

    public static abstract class a extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws Throwable {
            zfa zfaVarK = this.h.K(environment);
            if (zfaVarK instanceof hga) {
                return h0(environment, zfaVarK);
            }
            if (zfaVarK instanceof freemarker.template.a) {
                return new SimpleScalar(((freemarker.template.a) zfaVarK).getAsBoolean() ? BooleanUtils.TRUE : BooleanUtils.FALSE);
            }
            t0 t0Var = this.h;
            Class clsA = z.a;
            if (clsA == null) {
                clsA = z.a("freemarker.template.TemplateNumberModel");
                z.a = clsA;
            }
            Class clsA2 = z.b;
            if (clsA2 == null) {
                clsA2 = z.a("freemarker.template.TemplateBooleanModel");
                z.b = clsA2;
            }
            throw new UnexpectedTypeException(t0Var, zfaVarK, "number or boolean", new Class[]{clsA, clsA2}, environment);
        }

        public abstract zfa h0(Environment environment, zfa zfaVar);
    }

    public static class b extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws _MiscTemplateException, InvalidReferenceException, APINotSupportedTemplateException {
            if (!environment.I()) {
                throw new _MiscTemplateException(this, new Object[]{"Can't use ?api, because the \"", "api_builtin_enabled", "\" configuration setting is false. Think twice before you set it to true though. Especially, it shouldn't abussed for modifying Map-s and Collection-s."});
            }
            zfa zfaVarK = this.h.K(environment);
            if (zfaVarK instanceof dga) {
                return ((dga) zfaVarK).getAPI();
            }
            this.h.G(zfaVarK, environment);
            throw new APINotSupportedTemplateException(environment, this.h, zfaVarK);
        }
    }

    public static class c extends a implements eu4 {
        public final a k = new a();

        public static class a extends a {
            @Override
            public zfa h0(Environment environment, zfa zfaVar) throws Throwable {
                Number numberG = q0.g((hga) zfaVar, this.h);
                return ((numberG instanceof Integer) || (numberG instanceof Long)) ? new SimpleScalar(numberG.toString()) : new SimpleScalar(environment.u0().format(numberG));
            }
        }

        @Override
        public zfa F(Environment environment) throws Throwable {
            zfa zfaVarK = this.h.K(environment);
            if (zfaVarK instanceof hga) {
                return h0(environment, zfaVarK);
            }
            if (zfaVarK instanceof freemarker.template.a) {
                return new SimpleScalar(((freemarker.template.a) zfaVarK).getAsBoolean() ? BooleanUtils.TRUE : BooleanUtils.FALSE);
            }
            t0 t0Var = this.h;
            Class clsA = z.a;
            if (clsA == null) {
                clsA = z.a("freemarker.template.TemplateNumberModel");
                z.a = clsA;
            }
            Class clsA2 = z.b;
            if (clsA2 == null) {
                clsA2 = z.a("freemarker.template.TemplateBooleanModel");
                z.b = clsA2;
            }
            throw new UnexpectedTypeException(t0Var, zfaVarK, "number or boolean", new Class[]{clsA, clsA2}, environment);
        }

        @Override
        public int c() {
            return d1d.d;
        }

        @Override
        public Object e() {
            return this.k;
        }

        @Override
        public zfa h0(Environment environment, zfa zfaVar) throws Throwable {
            Number numberG = q0.g((hga) zfaVar, this.h);
            if ((numberG instanceof Integer) || (numberG instanceof Long)) {
                return new SimpleScalar(numberG.toString());
            }
            if (numberG instanceof Double) {
                double dDoubleValue = numberG.doubleValue();
                if (dDoubleValue == Double.POSITIVE_INFINITY) {
                    return new SimpleScalar(Lyrics3v2Fields.FIELD_V2_ADDITIONAL_MULTI_LINE_TEXT);
                }
                if (dDoubleValue == Double.NEGATIVE_INFINITY) {
                    return new SimpleScalar("-INF");
                }
                if (Double.isNaN(dDoubleValue)) {
                    return new SimpleScalar("NaN");
                }
            } else if (numberG instanceof Float) {
                float fFloatValue = numberG.floatValue();
                if (fFloatValue == Float.POSITIVE_INFINITY) {
                    return new SimpleScalar(Lyrics3v2Fields.FIELD_V2_ADDITIONAL_MULTI_LINE_TEXT);
                }
                if (fFloatValue == Float.NEGATIVE_INFINITY) {
                    return new SimpleScalar("-INF");
                }
                if (Float.isNaN(fFloatValue)) {
                    return new SimpleScalar("NaN");
                }
            }
            return new SimpleScalar(environment.u0().format(numberG));
        }
    }

    public static class d extends freemarker.core.j {
        public final int k;

        public class a implements ffa, xfa, ofa {
            public final String b;
            public final Environment c;
            public final dfa d;
            public Date e;

            public a(String str, Environment environment) throws Throwable {
                this.b = str;
                this.c = environment;
                int i = d.this.k;
                Class clsA = z.c;
                if (clsA == null) {
                    clsA = z.a("java.util.Date");
                    z.c = clsA;
                }
                this.d = environment.e1(i, clsA, d.this.h);
            }

            public final Date b(dfa dfaVar) throws _TemplateModelException {
                try {
                    return dfaVar.d(this.b);
                } catch (java.text.ParseException e) {
                    throw new _TemplateModelException(e, new Object[]{"The string doesn't match the expected date/time/date-time format. The string to parse was: ", new k0d(this.b), ". ", "The expected format was: ", new k0d(dfaVar.b()), Consts.DOT, e.getMessage() != null ? "\nThe nested reason given follows:\n" : "", e.getMessage() != null ? e.getMessage() : ""});
                }
            }

            @Override
            public Object exec(List list) throws TemplateModelException {
                d.this.Z(list, 1);
                return get((String) list.get(0));
            }

            @Override
            public Date f() {
                if (this.e == null) {
                    this.e = b(this.d);
                }
                return this.e;
            }

            @Override
            public zfa get(String str) throws Throwable {
                Environment environment = this.c;
                int i = d.this.k;
                Class clsA = z.c;
                if (clsA == null) {
                    clsA = z.a("java.util.Date");
                    z.c = clsA;
                }
                return new am9(b(environment.f1(i, clsA, str, d.this.h)), d.this.k);
            }

            @Override
            public boolean isEmpty() {
                return false;
            }

            @Override
            public int j() {
                return d.this.k;
            }
        }

        public d(int i) {
            this.k = i;
        }

        @Override
        public zfa F(Environment environment) throws _MiscTemplateException {
            zfa zfaVarK = this.h.K(environment);
            if (!(zfaVarK instanceof ffa)) {
                return new a(this.h.L(environment), environment);
            }
            ffa ffaVar = (ffa) zfaVarK;
            int iJ = ffaVar.j();
            if (this.k == iJ) {
                return zfaVarK;
            }
            if (iJ == 0 || iJ == 3) {
                return new am9(ffaVar.f(), this.k);
            }
            List list = ffa.W4;
            throw new _MiscTemplateException(this, new Object[]{"Cannot convert ", list.get(iJ), " to ", list.get(this.k)});
        }
    }

    public static class e extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof dga ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class f extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof freemarker.template.a ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class g extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof bfa ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class h extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof cfa ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class i extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof ffa ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class j extends freemarker.core.j {
        public final int k;

        public j(int i) {
            this.k = i;
        }

        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return ((zfaVarK instanceof ffa) && ((ffa) zfaVarK).j() == this.k) ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class k extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return ((zfaVarK instanceof pga) || (zfaVarK instanceof e1)) ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class l extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return (((zfaVarK instanceof nga) || (zfaVarK instanceof bfa)) && (d1d.e(this) < d1d.d || !((zfaVarK instanceof lm9) || (zfaVarK instanceof gu7)))) ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class m extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof ofa ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class n extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof pfa ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class o extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof nga ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class p extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof e1 ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class q extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof xfa ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class r extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof gga ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class s extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof hga ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class t extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof nga ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class u extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof mga ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class v extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws InvalidReferenceException {
            zfa zfaVarK = this.h.K(environment);
            this.h.G(zfaVarK, environment);
            return zfaVarK instanceof pga ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }
    }

    public static class w extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws Throwable {
            zfa zfaVarK = this.h.K(environment);
            if (zfaVarK instanceof e1) {
                return environment.S0((e1) zfaVarK);
            }
            t0 t0Var = this.h;
            Class clsA = z.d;
            if (clsA == null) {
                clsA = z.a("freemarker.core.Macro");
                z.d = clsA;
            }
            throw new UnexpectedTypeException(t0Var, zfaVarK, "macro or function", new Class[]{clsA}, environment);
        }
    }

    public static class x extends freemarker.core.j {
        @Override
        public zfa F(Environment environment) throws Throwable {
            int size;
            zfa zfaVarK = this.h.K(environment);
            if (zfaVarK instanceof nga) {
                size = ((nga) zfaVarK).size();
            } else if (zfaVarK instanceof cfa) {
                size = ((cfa) zfaVarK).size();
            } else {
                if (!(zfaVarK instanceof pfa)) {
                    t0 t0Var = this.h;
                    Class clsA = z.e;
                    if (clsA == null) {
                        clsA = z.a("freemarker.template.TemplateHashModelEx");
                        z.e = clsA;
                    }
                    Class clsA2 = z.f;
                    if (clsA2 == null) {
                        clsA2 = z.a("freemarker.template.TemplateSequenceModel");
                        z.f = clsA2;
                    }
                    Class clsA3 = z.g;
                    if (clsA3 == null) {
                        clsA3 = z.a("freemarker.template.TemplateCollectionModelEx");
                        z.g = clsA3;
                    }
                    throw new UnexpectedTypeException(t0Var, zfaVarK, "extended-hash or sequence or extended collection", new Class[]{clsA, clsA2, clsA3}, environment);
                }
                size = ((pfa) zfaVarK).size();
            }
            return new SimpleNumber(size);
        }
    }

    public static class y extends freemarker.core.j {

        public class a implements mga, xfa {
            public final freemarker.template.a b;
            public final Environment c;

            public a(freemarker.template.a aVar, Environment environment) {
                this.b = aVar;
                this.c = environment;
            }

            @Override
            public Object exec(List list) throws TemplateModelException {
                y.this.Z(list, 2);
                return new SimpleScalar((String) list.get(!this.b.getAsBoolean() ? 1 : 0));
            }

            @Override
            public String getAsString() throws TemplateModelException {
                freemarker.template.a aVar = this.b;
                if (aVar instanceof mga) {
                    return ((mga) aVar).getAsString();
                }
                try {
                    return this.c.e(aVar.getAsBoolean(), true);
                } catch (TemplateException e) {
                    throw new TemplateModelException((Exception) e);
                }
            }
        }

        public class b implements mga, ofa, xfa {
            public final ffa b;
            public final Environment c;
            public final dfa d;
            public String e;

            public b(ffa ffaVar, Environment environment) {
                this.b = ffaVar;
                this.c = environment;
                int iJ = ffaVar.j();
                this.d = iJ == 0 ? null : environment.e1(iJ, q0.f(ffaVar, y.this.h).getClass(), y.this.h);
            }

            @Override
            public Object exec(List list) throws TemplateModelException {
                y.this.Z(list, 1);
                return get((String) list.get(0));
            }

            @Override
            public zfa get(String str) {
                return new SimpleScalar(this.c.s0(this.b, str, y.this.h));
            }

            @Override
            public String getAsString() throws TemplateModelException {
                if (this.e == null) {
                    try {
                        dfa dfaVar = this.d;
                        if (dfaVar == null) {
                            if (this.b.j() == 0) {
                                throw f1.m(y.this.h, null);
                            }
                            throw new BugException();
                        }
                        this.e = dfaVar.a(this.b);
                    } catch (UnformattableDateException e) {
                        throw f1.l(y.this.h, e);
                    }
                }
                return this.e;
            }

            @Override
            public boolean isEmpty() {
                return false;
            }
        }

        public class c implements mga, ofa, xfa {
            public final Number b;
            public final Environment c;
            public final NumberFormat d;
            public String e;

            public c(Number number, Environment environment) {
                this.b = number;
                this.c = environment;
                this.d = environment.Z0(environment.t());
            }

            @Override
            public Object exec(List list) throws TemplateModelException {
                y.this.Z(list, 1);
                return get((String) list.get(0));
            }

            @Override
            public zfa get(String str) {
                return new SimpleScalar(this.c.Z0(str).format(this.b));
            }

            @Override
            public String getAsString() {
                if (this.e == null) {
                    this.e = this.d.format(this.b);
                }
                return this.e;
            }

            @Override
            public boolean isEmpty() {
                return false;
            }
        }

        @Override
        public zfa F(Environment environment) throws Throwable {
            zfa zfaVarK = this.h.K(environment);
            if (zfaVarK instanceof hga) {
                return new c(q0.g((hga) zfaVarK, this.h), environment);
            }
            if (zfaVarK instanceof ffa) {
                return new b((ffa) zfaVarK, environment);
            }
            if (zfaVarK instanceof SimpleScalar) {
                return zfaVarK;
            }
            if (zfaVarK instanceof freemarker.template.a) {
                return new a((freemarker.template.a) zfaVarK, environment);
            }
            if (zfaVarK instanceof mga) {
                return new SimpleScalar(((mga) zfaVarK).getAsString());
            }
            if (environment.J() && (zfaVarK instanceof rd0)) {
                return new SimpleScalar(a0d.a((rd0) zfaVarK));
            }
            t0 t0Var = this.h;
            Class clsA = z.a;
            if (clsA == null) {
                clsA = z.a("freemarker.template.TemplateNumberModel");
                z.a = clsA;
            }
            Class clsA2 = z.h;
            if (clsA2 == null) {
                clsA2 = z.a("freemarker.template.TemplateDateModel");
                z.h = clsA2;
            }
            Class clsA3 = z.b;
            if (clsA3 == null) {
                clsA3 = z.a("freemarker.template.TemplateBooleanModel");
                z.b = clsA3;
            }
            Class clsA4 = z.i;
            if (clsA4 == null) {
                clsA4 = z.a("freemarker.template.TemplateScalarModel");
                z.i = clsA4;
            }
            throw new UnexpectedTypeException(t0Var, zfaVarK, "number, date, boolean or string", new Class[]{clsA, clsA2, clsA3, clsA4}, environment);
        }
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }
}
