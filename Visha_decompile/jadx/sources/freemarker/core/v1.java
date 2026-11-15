package freemarker.core;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.d0d;
import defpackage.ifa;
import defpackage.jw7;
import defpackage.k0d;
import defpackage.pga;
import defpackage.r93;
import defpackage.xga;
import defpackage.zfa;
import freemarker.template.TemplateException;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class v1 extends ifa {
    public t0 l;
    public Map m;
    public List n;
    public List o;
    public boolean p;
    public volatile transient SoftReference q;

    public v1(t0 t0Var, Map map, ifa ifaVar, List list) {
        this.l = t0Var;
        this.m = map;
        j0(ifaVar);
        this.o = list;
    }

    private List l0() {
        List list;
        SoftReference softReference = this.q;
        if (softReference != null && (list = (List) softReference.get()) != null) {
            return list;
        }
        List listA = h1.a(this.m);
        this.q = new SoftReference(listA);
        return listA;
    }

    @Override
    public void F(Environment environment) throws TemplateException, IOException {
        Map map;
        zfa zfaVarK = this.l.K(environment);
        if (zfaVarK == e1.q) {
            return;
        }
        if (zfaVarK instanceof e1) {
            e1 e1Var = (e1) zfaVarK;
            if (e1Var.s0() && !this.p) {
                throw new _MiscTemplateException(environment, new Object[]{"Routine ", new k0d(e1Var.q0()), " is a function, not a directive. Functions can only be called from expressions, like in ${f()}, ${x + f()} or ", "<@someDirective someParam=f() />", Consts.DOT});
            }
            environment.t1(e1Var, this.m, this.n, this.o, S());
            return;
        }
        if (!(zfaVarK instanceof pga)) {
            if (zfaVarK != null) {
                throw new NonUserDefinedDirectiveLikeException(this.l, zfaVarK, environment);
            }
            throw InvalidReferenceException.getInstance(this.l, environment);
        }
        Map map2 = this.m;
        if (map2 == null || map2.isEmpty()) {
            map = r93.b;
        } else {
            map = new HashMap();
            for (Map.Entry entry : this.m.entrySet()) {
                map.put((String) entry.getKey(), ((t0) entry.getValue()).K(environment));
            }
        }
        environment.Y1(S(), (pga) zfaVarK, map);
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append('@');
        f1.a(stringBuffer, this.l);
        boolean z2 = stringBuffer.charAt(stringBuffer.length() - 1) == ')';
        if (this.n != null) {
            for (int i = 0; i < this.n.size(); i++) {
                t0 t0Var = (t0) this.n.get(i);
                if (i != 0) {
                    stringBuffer.append(',');
                }
                stringBuffer.append(' ');
                stringBuffer.append(t0Var.o());
            }
        } else {
            List listL0 = l0();
            for (int i2 = 0; i2 < listL0.size(); i2++) {
                Map.Entry entry = (Map.Entry) listL0.get(i2);
                t0 t0Var2 = (t0) entry.getValue();
                stringBuffer.append(' ');
                stringBuffer.append(d0d.e((String) entry.getKey()));
                stringBuffer.append('=');
                f1.a(stringBuffer, t0Var2);
            }
        }
        List list = this.o;
        if (list != null && !list.isEmpty()) {
            stringBuffer.append("; ");
            for (int i3 = 0; i3 < this.o.size(); i3++) {
                if (i3 != 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append(d0d.e((String) this.o.get(i3)));
            }
        }
        if (z) {
            if (S() == null) {
                stringBuffer.append("/>");
            } else {
                stringBuffer.append('>');
                stringBuffer.append(S().o());
                stringBuffer.append("</@");
                if (!z2) {
                    t0 t0Var3 = this.l;
                    if ((t0Var3 instanceof x0) || ((t0Var3 instanceof m0) && ((m0) t0Var3).Y())) {
                        stringBuffer.append(this.l.o());
                    }
                }
                stringBuffer.append('>');
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "@";
    }

    @Override
    public int s() {
        List list = this.n;
        int size = (list != null ? list.size() : 0) + 1;
        Map map = this.m;
        int size2 = size + (map != null ? map.size() * 2 : 0);
        List list2 = this.o;
        return size2 + (list2 != null ? list2.size() : 0);
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.J;
        }
        List list = this.n;
        int size = list != null ? list.size() : 0;
        if (i - 1 < size) {
            return jw7.D;
        }
        int i2 = size + 1;
        Map map = this.m;
        int i3 = i - i2;
        int size2 = (map != null ? map.size() : 0) * 2;
        if (i3 < size2) {
            return i3 % 2 == 0 ? jw7.C : jw7.D;
        }
        int i4 = i2 + size2;
        List list2 = this.o;
        if (i - i4 < (list2 != null ? list2.size() : 0)) {
            return jw7.u;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.l;
        }
        List list = this.n;
        int size = list != null ? list.size() : 0;
        int i2 = i - 1;
        if (i2 < size) {
            return this.n.get(i2);
        }
        int i3 = size + 1;
        Map map = this.m;
        int i4 = i - i3;
        int size2 = (map != null ? map.size() : 0) * 2;
        if (i4 < size2) {
            Map.Entry entry = (Map.Entry) l0().get(i4 / 2);
            return i4 % 2 == 0 ? entry.getKey() : entry.getValue();
        }
        int i5 = i3 + size2;
        List list2 = this.o;
        int i6 = i - i5;
        if (i6 < (list2 != null ? list2.size() : 0)) {
            return this.o.get(i6);
        }
        throw new IndexOutOfBoundsException();
    }

    public v1(t0 t0Var, List list, ifa ifaVar, List list2) {
        this.l = t0Var;
        this.n = list;
        j0(ifaVar == xga.o ? null : ifaVar);
        this.o = list2;
    }
}
