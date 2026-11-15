package freemarker.core;

import defpackage.am9;
import defpackage.c8;
import defpackage.d1d;
import defpackage.ffa;
import defpackage.hl0;
import defpackage.k0d;
import defpackage.mga;
import defpackage.q0d;
import defpackage.yfa;
import defpackage.zfa;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateException;
import freemarker.template.utility.DateUtil;
import freemarker.template.utility.UnrecognizedTimeZoneException;
import java.sql.Time;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

public abstract class n {
    public static Class a;

    public static abstract class a extends hl0 {
        public final Boolean k;
        public final int l;

        public a(Boolean bool, int i) {
            this.k = bool;
            this.l = i;
        }

        public void j0(int i) throws _MiscTemplateException {
            if (i == 0) {
                throw new _MiscTemplateException(new q0d(new Object[]{"The value of the following has unknown date type, but ?", this.i, " needs a value where it's known if it's a date (no time part), time, or date-time value:"}).b(this.h).h("Use ?date, ?time, or ?datetime to tell FreeMarker the exact type."));
            }
        }

        public boolean k0(Date date, int i, Environment environment) {
            if (i == 2) {
                return false;
            }
            Boolean bool = this.k;
            if (bool != null) {
                return bool.booleanValue();
            }
            return !(date instanceof Time) || d1d.e(this) < d1d.d;
        }
    }

    public static class b extends j {
        public final int k;

        public b(int i) {
            this.k = i;
        }

        @Override
        public zfa F(Environment environment) throws TemplateException {
            zfa zfaVarK = this.h.K(environment);
            if (!(zfaVarK instanceof ffa)) {
                throw hl0.i0(environment, zfaVarK, this.h);
            }
            ffa ffaVar = (ffa) zfaVarK;
            return ffaVar.j() != 0 ? ffaVar : new am9(q0.f(ffaVar, this.h), this.k);
        }
    }

    public static class c extends a {

        public class a implements yfa {
            public final Date b;
            public final int c;
            public final Environment d;

            public a(Date date, int i, Environment environment) {
                this.b = date;
                this.c = i;
                this.d = environment;
            }

            /* JADX WARN: Code duplicated, block: B:11:0x002c  */
            /* JADX WARN: Code duplicated, block: B:13:0x0030  */
            /* JADX WARN: Code duplicated, block: B:28:0x007e  */
            @Override
            public Object exec(List list) throws Throwable {
                String strH;
                TimeZone timeZoneE;
                c.this.Z(list, 1);
                zfa zfaVar = (zfa) list.get(0);
                if (zfaVar instanceof c8) {
                    c8 c8Var = (c8) zfaVar;
                    Class clsA = n.a;
                    if (clsA == null) {
                        clsA = n.a("java.util.TimeZone");
                        n.a = clsA;
                    }
                    Object adaptedObject = c8Var.getAdaptedObject(clsA);
                    if (adaptedObject instanceof TimeZone) {
                        timeZoneE = (TimeZone) adaptedObject;
                    } else {
                        if (zfaVar instanceof mga) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("?");
                            stringBuffer.append(c.this.i);
                            throw f1.r(stringBuffer.toString(), 0, "string or java.util.TimeZone", zfaVar);
                        }
                        strH = q0.h((mga) zfaVar, null, null);
                        try {
                            timeZoneE = DateUtil.e(strH);
                        } catch (UnrecognizedTimeZoneException unused) {
                            throw new _TemplateModelException(new Object[]{"The time zone string specified for ?", c.this.i, "(...) is not recognized as a valid time zone name: ", new k0d(strH)});
                        }
                    }
                } else {
                    if (zfaVar instanceof mga) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("?");
                        stringBuffer2.append(c.this.i);
                        throw f1.r(stringBuffer2.toString(), 0, "string or java.util.TimeZone", zfaVar);
                    }
                    strH = q0.h((mga) zfaVar, null, null);
                    timeZoneE = DateUtil.e(strH);
                }
                TimeZone timeZone = timeZoneE;
                Date date = this.b;
                int i = this.c;
                return new SimpleScalar(DateUtil.b(date, i != 1, i != 2, c.this.k0(date, i, this.d), c.this.l, timeZone, this.d.M0()));
            }
        }

        public c(Boolean bool, int i) {
            super(bool, i);
        }

        @Override
        public zfa h0(Date date, int i, Environment environment) throws _MiscTemplateException {
            j0(i);
            return new a(date, i, environment);
        }
    }

    public static class d extends a {
        public final boolean m;

        public d(Boolean bool, int i, boolean z) {
            super(bool, i);
            this.m = z;
        }

        @Override
        public zfa h0(Date date, int i, Environment environment) throws _MiscTemplateException {
            TimeZone timeZoneX;
            j0(i);
            boolean z = i != 1;
            boolean z2 = i != 2;
            boolean zK0 = k0(date, i, environment);
            int i2 = this.l;
            if (this.m) {
                timeZoneX = DateUtil.a;
            } else {
                timeZoneX = environment.U1(date.getClass()) ? environment.x() : environment.E();
            }
            return new SimpleScalar(DateUtil.b(date, z, z2, zK0, i2, timeZoneX, environment.M0()));
        }
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }
}
