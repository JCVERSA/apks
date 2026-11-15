package defpackage;

import freemarker.core.Environment;
import freemarker.core.UnexpectedTypeException;
import freemarker.core.f1;
import freemarker.core.h1;
import freemarker.core.t0;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class w6b extends ifa {
    public static Class o;
    public t0 l;
    public Map m;
    public volatile transient SoftReference n;

    public w6b(t0 t0Var, Map map, ifa ifaVar) {
        this.l = t0Var;
        this.m = map;
        j0(ifaVar);
    }

    public static Class l0(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override
    public void F(Environment environment) throws Throwable {
        Map map;
        pga pgaVarL1 = environment.l1(this.l);
        if (pgaVarL1 == null) {
            zfa zfaVarK = this.l.K(environment);
            t0 t0Var = this.l;
            Class clsL0 = o;
            if (clsL0 == null) {
                clsL0 = l0("freemarker.template.TemplateTransformModel");
                o = clsL0;
            }
            throw new UnexpectedTypeException(t0Var, zfaVarK, "transform", new Class[]{clsL0}, environment);
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
        environment.Y1(S(), pgaVarL1, map);
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        stringBuffer.append(' ');
        stringBuffer.append(this.l);
        if (this.m != null) {
            for (Map.Entry entry : m0()) {
                stringBuffer.append(' ');
                stringBuffer.append(entry.getKey());
                stringBuffer.append('=');
                f1.a(stringBuffer, (t0) entry.getValue());
            }
        }
        if (z) {
            stringBuffer.append(">");
            if (S() != null) {
                stringBuffer.append(S().o());
            }
            stringBuffer.append("</");
            stringBuffer.append(r());
            stringBuffer.append('>');
        }
        return stringBuffer.toString();
    }

    public final List m0() {
        List list;
        SoftReference softReference = this.n;
        if (softReference != null && (list = (List) softReference.get()) != null) {
            return list;
        }
        List listA = h1.a(this.m);
        this.n = new SoftReference(listA);
        return listA;
    }

    @Override
    public String r() {
        return "#transform";
    }

    @Override
    public int s() {
        Map map = this.m;
        return (map != null ? map.size() * 2 : 0) + 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.J;
        }
        int i2 = i - 1;
        if (i2 < this.m.size() * 2) {
            return i2 % 2 == 0 ? jw7.C : jw7.D;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        int i2;
        if (i == 0) {
            return this.l;
        }
        Map map = this.m;
        if (map == null || (i2 = i - 1) >= map.size() * 2) {
            throw new IndexOutOfBoundsException();
        }
        Map.Entry entry = (Map.Entry) m0().get(i2 / 2);
        return i2 % 2 == 0 ? entry.getKey() : entry.getValue();
    }
}
