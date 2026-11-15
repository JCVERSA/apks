package freemarker.core;

import defpackage.ifa;
import defpackage.jw7;
import defpackage.pn5;
import defpackage.zfa;
import freemarker.core.Environment.Namespace;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class h extends ifa {
    public List l;

    public class a implements pn5 {
        public e1.a a;
        public Environment.Namespace b;

        public a(Environment environment) {
            e1.a aVarZ0 = environment.z0();
            this.a = aVarZ0;
            List list = aVarZ0.d;
            if (h.this.l != null) {
                for (int i = 0; i < h.this.l.size(); i++) {
                    zfa zfaVarK = ((t0) h.this.l.get(i)).K(environment);
                    if (list != null && i < list.size()) {
                        String str = (String) list.get(i);
                        if (this.b == null) {
                            this.b = environment.new Namespace();
                        }
                        this.b.put(str, zfaVarK);
                    }
                }
            }
        }

        @Override
        public Collection a() {
            List list = this.a.d;
            return list == null ? Collections.EMPTY_LIST : list;
        }

        @Override
        public zfa b(String str) {
            Environment.Namespace namespace = this.b;
            if (namespace == null) {
                return null;
            }
            return namespace.get(str);
        }
    }

    public h(List list) {
        this.l = list;
    }

    private void m0(int i) {
        List list = this.l;
        if (list == null || i >= list.size()) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override
    public void F(Environment environment) {
        environment.u1(new a(environment));
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        if (this.l != null) {
            for (int i = 0; i < this.l.size(); i++) {
                stringBuffer.append(' ');
                stringBuffer.append(((t0) this.l.get(i)).o());
            }
        }
        if (z) {
            stringBuffer.append('>');
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#nested";
    }

    @Override
    public int s() {
        List list = this.l;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override
    public jw7 t(int i) {
        m0(i);
        return jw7.n;
    }

    @Override
    public Object u(int i) {
        m0(i);
        return this.l.get(i);
    }
}
