package freemarker.core;

import com.hunantv.imgo.data.MgtvPlayerConstants;
import defpackage.bj;
import defpackage.d0d;
import defpackage.hga;
import defpackage.ifa;
import defpackage.jw7;
import defpackage.mga;
import defpackage.zfa;

public final class e extends ifa {
    public static final Number q = new Integer(1);
    public final int l;
    public final String m;
    public final int n;
    public final t0 o;
    public t0 p;

    public e(String str, int i, t0 t0Var, int i2) {
        this.l = i2;
        this.m = str;
        if (i == 97) {
            this.n = 65536;
        } else {
            switch (i) {
                case 100:
                    this.n = MgtvPlayerConstants.Success.SUCCESS_URL;
                    break;
                case 101:
                    this.n = 0;
                    break;
                case 102:
                    this.n = 1;
                    break;
                case 103:
                    this.n = 2;
                    break;
                case 104:
                    this.n = 3;
                    break;
                case 105:
                    this.n = MgtvPlayerConstants.Success.SUCCESS_VIDEO;
                    break;
                case 106:
                    this.n = 65539;
                    break;
                default:
                    throw new BugException();
            }
        }
        this.o = t0Var;
    }

    public static String l0(int i) {
        if (i == 2) {
            return "#local";
        }
        if (i == 3) {
            return "#global";
        }
        return i == 1 ? "#assign" : "#{unknown_assignment_type}";
    }

    @Override
    public void F(Environment environment) throws Throwable {
        Environment.Namespace namespaceA0;
        zfa zfaVarX;
        t0 t0Var = this.p;
        if (t0Var == null) {
            int i = this.l;
            if (i == 1) {
                namespaceA0 = environment.A0();
            } else if (i == 2) {
                namespaceA0 = null;
            } else {
                if (i != 3) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Unexpected scope type: ");
                    stringBuffer.append(this.l);
                    throw new BugException(stringBuffer.toString());
                }
                namespaceA0 = environment.J0();
            }
        } else {
            zfa zfaVarK = t0Var.K(environment);
            try {
                namespaceA0 = (Environment.Namespace) zfaVarK;
                if (namespaceA0 == null) {
                    throw InvalidReferenceException.getInstance(this.p, environment);
                }
            } catch (ClassCastException unused) {
                throw new NonNamespaceException(this.p, zfaVarK, environment);
            }
        }
        if (this.n == 65536) {
            zfaVarX = this.o.K(environment);
            if (zfaVarX == null) {
                if (!environment.J()) {
                    throw InvalidReferenceException.getInstance(this.o, environment);
                }
                zfaVarX = mga.Y4;
            }
        } else {
            zfa zfaVarR0 = namespaceA0 == null ? environment.R0(this.m) : namespaceA0.get(this.m);
            if (this.n == 65537) {
                if (zfaVarR0 == null) {
                    if (!environment.J()) {
                        throw InvalidReferenceException.getInstance(this.m, m0(), environment);
                    }
                    zfaVarR0 = mga.Y4;
                }
                zfa zfaVar = zfaVarR0;
                zfa zfaVarK2 = this.o.K(environment);
                if (zfaVarK2 == null) {
                    if (!environment.J()) {
                        throw InvalidReferenceException.getInstance(this.o, environment);
                    }
                    zfaVarK2 = mga.Y4;
                }
                zfaVarX = a.X(environment, this.p, null, zfaVar, this.o, zfaVarK2);
            } else {
                if (!(zfaVarR0 instanceof hga)) {
                    if (zfaVarR0 != null) {
                        throw new NonNumericalException(this.m, zfaVarR0, (String[]) null, environment);
                    }
                    throw InvalidReferenceException.getInstance(this.m, m0(), environment);
                }
                Number numberG = q0.g((hga) zfaVarR0, null);
                int i2 = this.n;
                if (i2 == 65538) {
                    zfaVarX = a.Y(environment, U(), numberG, q);
                } else if (i2 == 65539) {
                    zfaVarX = d.X(environment, U(), numberG, 0, q);
                } else {
                    zfaVarX = d.X(environment, this, numberG, this.n, this.o.R(environment));
                }
            }
        }
        if (namespaceA0 == null) {
            environment.Q1(this.m, zfaVarX);
        } else {
            namespaceA0.put(this.m, zfaVarX);
        }
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        String strR = U() instanceof bj ? null : r();
        if (strR != null) {
            if (z) {
                stringBuffer.append("<");
            }
            stringBuffer.append(strR);
            stringBuffer.append(' ');
        }
        stringBuffer.append(d0d.f(this.m));
        if (this.o != null) {
            stringBuffer.append(' ');
        }
        stringBuffer.append(m0());
        if (this.o != null) {
            stringBuffer.append(' ');
            stringBuffer.append(this.o.o());
        }
        if (strR != null) {
            if (this.p != null) {
                stringBuffer.append(" in ");
                stringBuffer.append(this.p.o());
            }
            if (z) {
                stringBuffer.append(">");
            }
        }
        return stringBuffer.toString();
    }

    public final String m0() {
        int i = this.n;
        if (i == 65536) {
            return "=";
        }
        if (i == 65537) {
            return "+=";
        }
        if (i == 65538) {
            return "++";
        }
        if (i == 65539) {
            return "--";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(d.Y(this.n));
        stringBuffer.append("=");
        return stringBuffer.toString();
    }

    public void n0(t0 t0Var) {
        if (this.l != 1 && t0Var != null) {
            throw new BugException();
        }
        this.p = t0Var;
    }

    @Override
    public String r() {
        return l0(this.l);
    }

    @Override
    public int s() {
        return 5;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.h;
        }
        if (i == 1) {
            return jw7.i;
        }
        if (i == 2) {
            return jw7.j;
        }
        if (i == 3) {
            return jw7.k;
        }
        if (i == 4) {
            return jw7.l;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.m;
        }
        if (i == 1) {
            return m0();
        }
        if (i == 2) {
            return this.o;
        }
        if (i == 3) {
            return new Integer(this.l);
        }
        if (i == 4) {
            return this.p;
        }
        throw new IndexOutOfBoundsException();
    }
}
