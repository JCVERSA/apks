package kotlinx.serialization.descriptors;

import defpackage.abb;
import defpackage.c74;
import defpackage.cc8;
import defpackage.dx0;
import defpackage.e28;
import defpackage.e74;
import defpackage.gq0;
import defpackage.hi;
import defpackage.i81;
import defpackage.id9;
import defpackage.mz4;
import defpackage.wn8;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class SerialDescriptorImpl implements a, gq0 {
    public final String a;
    public final id9 b;
    public final int c;
    public final List d;
    public final Set e;
    public final String[] f;
    public final a[] g;
    public final List[] h;
    public final boolean[] i;
    public final Map j;
    public final a[] k;
    public final yi5 l;

    public SerialDescriptorImpl(String str, id9 id9Var, int i, List list, dx0 dx0Var) {
        y45.j(str, "serialName");
        y45.j(id9Var, "kind");
        y45.j(list, "typeParameters");
        y45.j(dx0Var, "builder");
        this.a = str;
        this.b = id9Var;
        this.c = i;
        this.d = dx0Var.c();
        this.e = i81.Z0(dx0Var.f());
        String[] strArr = (String[]) dx0Var.f().toArray(new String[0]);
        this.f = strArr;
        this.g = e28.b(dx0Var.e());
        this.h = (List[]) dx0Var.d().toArray(new List[0]);
        this.i = i81.W0(dx0Var.g());
        Iterable<mz4> iterableQ1 = hi.q1(strArr);
        ArrayList arrayList = new ArrayList(z71.v(iterableQ1, 10));
        for (mz4 mz4Var : iterableQ1) {
            arrayList.add(abb.a(mz4Var.d(), Integer.valueOf(mz4Var.c())));
        }
        this.j = kotlin.collections.a.y(arrayList);
        this.k = e28.b(list);
        this.l = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final Integer invoke() {
                SerialDescriptorImpl serialDescriptorImpl = this.this$0;
                return Integer.valueOf(cc8.a(serialDescriptorImpl, serialDescriptorImpl.k));
            }
        });
    }

    @Override
    public Set a() {
        return this.e;
    }

    @Override
    public boolean b() {
        return a.C0417a.c(this);
    }

    @Override
    public int c(String str) {
        y45.j(str, "name");
        Integer num = (Integer) this.j.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override
    public a d(int i) {
        return this.g[i];
    }

    @Override
    public int e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SerialDescriptorImpl) {
            a aVar = (a) obj;
            if (y45.e(h(), aVar.h()) && Arrays.equals(this.k, ((SerialDescriptorImpl) obj).k) && e() == aVar.e()) {
                int iE = e();
                for (int i = 0; i < iE; i++) {
                    if (y45.e(d(i).h(), aVar.d(i).h()) && y45.e(d(i).getKind(), aVar.d(i).getKind())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override
    public String f(int i) {
        return this.f[i];
    }

    @Override
    public List g(int i) {
        return this.h[i];
    }

    @Override
    public List getAnnotations() {
        return this.d;
    }

    @Override
    public id9 getKind() {
        return this.b;
    }

    @Override
    public String h() {
        return this.a;
    }

    public int hashCode() {
        return k();
    }

    @Override
    public boolean i(int i) {
        return this.i[i];
    }

    @Override
    public boolean isInline() {
        return a.C0417a.b(this);
    }

    public final int k() {
        return ((Number) this.l.getValue()).intValue();
    }

    public String toString() {
        return i81.y0(wn8.q(0, e()), ", ", h() + '(', ")", 0, null, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }

            public final CharSequence invoke(int i) {
                return SerialDescriptorImpl.this.f(i) + ": " + SerialDescriptorImpl.this.d(i).h();
            }
        }, 24, null);
    }
}
