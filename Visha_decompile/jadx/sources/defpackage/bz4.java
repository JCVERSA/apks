package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import freemarker.core.BugException;
import freemarker.core.Environment;
import freemarker.core.NonBooleanException;
import freemarker.core.ParseException;
import freemarker.core._MiscTemplateException;
import freemarker.core.q0;
import freemarker.core.r1;
import freemarker.core.t0;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import java.io.IOException;

public final class bz4 extends ifa {
    public final t0 l;
    public final t0 m;
    public final t0 n;
    public final t0 o;
    public final String p;
    public final Boolean q;
    public final Boolean r;

    public bz4(Template template, t0 t0Var, t0 t0Var2, t0 t0Var3, t0 t0Var4) throws ParseException {
        this.l = t0Var;
        this.m = t0Var2;
        if (t0Var2 != null && t0Var2.T()) {
            try {
                zfa zfaVarK = t0Var2.K(null);
                if (!(zfaVarK instanceof mga)) {
                    throw new ParseException("Expected a string as the value of the \"encoding\" argument", t0Var2);
                }
                this.p = ((mga) zfaVarK).getAsString();
            } catch (TemplateException e) {
                throw new BugException(e);
            }
        } else {
            this.p = null;
        }
        this.n = t0Var3;
        if (t0Var3 == null) {
            this.q = Boolean.TRUE;
        } else if (t0Var3.T()) {
            try {
                if (t0Var3 instanceof r1) {
                    this.q = Boolean.valueOf(n0a.u(t0Var3.L(null)));
                } else {
                    try {
                        this.q = Boolean.valueOf(t0Var3.N(template.t0()));
                    } catch (NonBooleanException e2) {
                        throw new ParseException("Expected a boolean or string as the value of the parse attribute", t0Var3, e2);
                    }
                }
            } catch (TemplateException e3) {
                throw new BugException(e3);
            }
        } else {
            this.q = null;
        }
        this.o = t0Var4;
        if (t0Var4 != null) {
            try {
                if (t0Var4.T()) {
                    try {
                        this.r = Boolean.valueOf(t0Var4.N(template.t0()));
                        return;
                    } catch (NonBooleanException e4) {
                        throw new ParseException("Expected a boolean as the value of the \"ignore_missing\" attribute", t0Var4, e4);
                    }
                }
            } catch (TemplateException e5) {
                throw new BugException(e5);
            }
        }
        this.r = null;
    }

    @Override
    public void F(Environment environment) throws _MiscTemplateException {
        boolean zU;
        boolean zO;
        String strL = this.l.L(environment);
        try {
            String strW1 = environment.W1(y().y0(), strL);
            String strL2 = this.p;
            if (strL2 == null) {
                t0 t0Var = this.m;
                strL2 = t0Var != null ? t0Var.L(environment) : null;
            }
            Boolean bool = this.q;
            if (bool != null) {
                zU = bool.booleanValue();
            } else {
                zfa zfaVarK = this.n.K(environment);
                if (zfaVarK instanceof mga) {
                    t0 t0Var2 = this.n;
                    zU = l0(t0Var2, q0.h((mga) zfaVarK, t0Var2, environment));
                } else {
                    zU = this.n.U(zfaVarK, environment);
                }
            }
            Boolean bool2 = this.r;
            if (bool2 != null) {
                zO = bool2.booleanValue();
            } else {
                t0 t0Var3 = this.o;
                zO = t0Var3 != null ? t0Var3.O(environment) : false;
            }
            try {
                Template templateK1 = environment.k1(strW1, strL2, zU, zO);
                if (templateK1 != null) {
                    environment.r1(templateK1);
                }
            } catch (IOException e) {
                throw new _MiscTemplateException(e, environment, new Object[]{"Template inclusion failed (for parameter value ", new k0d(strL), "):\n", new i0d(e)});
            }
        } catch (MalformedTemplateNameException e2) {
            throw new _MiscTemplateException(e2, environment, new Object[]{"Malformed template name ", new k0d(e2.getTemplateName()), ":\n", e2.getMalformednessDescription()});
        }
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        stringBuffer.append(' ');
        stringBuffer.append(this.l.o());
        if (this.m != null) {
            stringBuffer.append(" encoding=");
            stringBuffer.append(this.m.o());
        }
        if (this.n != null) {
            stringBuffer.append(" parse=");
            stringBuffer.append(this.n.o());
        }
        if (this.o != null) {
            stringBuffer.append(" ignore_missing=");
            stringBuffer.append(this.o.o());
        }
        if (z) {
            stringBuffer.append("/>");
        }
        return stringBuffer.toString();
    }

    public final boolean l0(t0 t0Var, String str) throws _MiscTemplateException {
        try {
            return n0a.u(str);
        } catch (IllegalArgumentException unused) {
            throw new _MiscTemplateException(t0Var, new Object[]{"Value must be boolean (or one of these strings: \"n\", \"no\", \"f\", \"false\", \"y\", \"yes\", \"t\", \"true\"), but it was ", new k0d(str), Consts.DOT});
        }
    }

    @Override
    public String r() {
        return "#include";
    }

    @Override
    public int s() {
        return 3;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.v;
        }
        if (i == 1) {
            return jw7.w;
        }
        if (i == 2) {
            return jw7.x;
        }
        if (i == 3) {
            return jw7.y;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.l;
        }
        if (i == 1) {
            return this.n;
        }
        if (i == 2) {
            return this.m;
        }
        if (i == 3) {
            return this.o;
        }
        throw new IndexOutOfBoundsException();
    }
}
