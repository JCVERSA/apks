package freemarker.core;

import defpackage.bga;
import defpackage.d0d;
import defpackage.ifa;
import defpackage.jw7;
import defpackage.k0d;
import defpackage.pn5;
import defpackage.q0d;
import defpackage.xga;
import defpackage.zfa;
import freemarker.core.Environment.Namespace;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

public final class e1 extends ifa implements zfa {
    public static final e1 q = new e1(".pass", Collections.EMPTY_LIST, Collections.EMPTY_MAP, null, false, xga.o);
    public final String l;
    public final String[] m;
    public final Map n;
    public final String o;
    public final boolean p;

    public class a implements pn5 {
        public final Environment.Namespace a;
        public final ifa b;
        public final Environment.Namespace c;
        public final List d;
        public final ArrayList e;
        public final a f;

        public a(Environment environment, ifa ifaVar, List list) {
            environment.getClass();
            this.a = environment.new Namespace();
            this.b = ifaVar;
            this.c = environment.A0();
            this.d = list;
            this.e = environment.Q0();
            this.f = environment.z0();
        }

        @Override
        public Collection a() {
            HashSet hashSet = new HashSet();
            bga it = this.a.keys().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().toString());
            }
            return hashSet;
        }

        @Override
        public zfa b(String str) {
            return this.a.get(str);
        }

        public Environment.Namespace c() {
            return this.a;
        }

        public e1 d() {
            return e1.this;
        }

        public void e(Environment environment) throws _MiscTemplateException, InvalidReferenceException {
            f(environment);
            if (e1.this.S() != null) {
                environment.X1(e1.this.S());
            }
        }

        public void f(Environment environment) throws _MiscTemplateException, InvalidReferenceException {
            InvalidReferenceException invalidReferenceException;
            t0 t0Var;
            boolean z;
            do {
                invalidReferenceException = null;
                t0Var = null;
                boolean z2 = false;
                z = false;
                for (int i = 0; i < e1.this.m.length; i++) {
                    String str = e1.this.m[i];
                    if (this.a.get(str) == null) {
                        t0 t0Var2 = (t0) e1.this.n.get(str);
                        if (t0Var2 != null) {
                            try {
                                zfa zfaVarK = t0Var2.K(environment);
                                if (zfaVarK != null) {
                                    this.a.put(str, zfaVarK);
                                    z2 = true;
                                } else if (!z) {
                                    t0Var = t0Var2;
                                    z = true;
                                }
                            } catch (InvalidReferenceException e) {
                                if (!z) {
                                    invalidReferenceException = e;
                                    z = true;
                                }
                            }
                        } else if (!environment.J()) {
                            boolean zContainsKey = this.a.containsKey(str);
                            throw new _MiscTemplateException(environment, new q0d(new Object[]{"When calling macro ", new k0d(e1.this.l), ", required parameter ", new k0d(str), " (parameter #", new Integer(i + 1), ") was ", zContainsKey ? "specified, but had null/missing value." : "not specified."}).i(zContainsKey ? new Object[]{"If the parameter value expression on the caller side is known to be legally null/missing, you may want to specify a default value for it with the \"!\" operator, like paramValue!defaultValue."} : new Object[]{"If the omission was deliberate, you may consider making the parameter optional in the macro by specifying a default value for it, like ", "<#macro macroName paramName=defaultExpr>", ")"}));
                        }
                    }
                }
                if (!z2) {
                    break;
                }
            } while (z);
            if (z) {
                if (invalidReferenceException != null) {
                    throw invalidReferenceException;
                }
                if (!environment.J()) {
                    throw InvalidReferenceException.getInstance(t0Var, environment);
                }
            }
        }

        public void g(String str, zfa zfaVar) {
            this.a.put(str, zfaVar);
        }
    }

    public e1(String str, List list, Map map, String str2, boolean z, ifa ifaVar) {
        this.l = str;
        this.m = (String[]) list.toArray(new String[list.size()]);
        this.n = map;
        this.p = z;
        this.o = str2;
        j0(ifaVar);
    }

    @Override
    public void F(Environment environment) {
        environment.c2(this);
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        stringBuffer.append(' ');
        stringBuffer.append(d0d.f(this.l));
        if (this.p) {
            stringBuffer.append('(');
        }
        int length = this.m.length;
        for (int i = 0; i < length; i++) {
            if (!this.p) {
                stringBuffer.append(' ');
            } else if (i != 0) {
                stringBuffer.append(", ");
            }
            String str = this.m[i];
            stringBuffer.append(d0d.e(str));
            Map map = this.n;
            if (map != null && map.get(str) != null) {
                stringBuffer.append('=');
                t0 t0Var = (t0) this.n.get(str);
                if (this.p) {
                    stringBuffer.append(t0Var.o());
                } else {
                    f1.a(stringBuffer, t0Var);
                }
            }
        }
        if (this.o != null) {
            if (!this.p) {
                stringBuffer.append(' ');
            } else if (length != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(this.o);
            stringBuffer.append("...");
        }
        if (this.p) {
            stringBuffer.append(')');
        }
        if (z) {
            stringBuffer.append('>');
            if (S() != null) {
                stringBuffer.append(S().o());
            }
            stringBuffer.append("</");
            stringBuffer.append(r());
            stringBuffer.append('>');
        }
        return stringBuffer.toString();
    }

    @Override
    public boolean b0() {
        return false;
    }

    public String[] o0() {
        return this.m;
    }

    public String p0() {
        return this.o;
    }

    public String q0() {
        return this.l;
    }

    @Override
    public String r() {
        return this.p ? "#function" : "#macro";
    }

    public boolean r0(String str) {
        return this.n.containsKey(str);
    }

    @Override
    public int s() {
        return (this.m.length * 2) + 3;
    }

    public boolean s0() {
        return this.p;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.h;
        }
        int length = this.m.length * 2;
        int i2 = length + 1;
        if (i < i2) {
            return i % 2 != 0 ? jw7.z : jw7.A;
        }
        if (i == i2) {
            return jw7.B;
        }
        if (i == length + 2) {
            return jw7.q;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.l;
        }
        String[] strArr = this.m;
        int length = strArr.length * 2;
        int i2 = length + 1;
        if (i < i2) {
            String str = strArr[(i - 1) / 2];
            return i % 2 != 0 ? str : this.n.get(str);
        }
        if (i == i2) {
            return this.o;
        }
        if (i == length + 2) {
            return new Integer(this.p ? 1 : 0);
        }
        throw new IndexOutOfBoundsException();
    }
}
