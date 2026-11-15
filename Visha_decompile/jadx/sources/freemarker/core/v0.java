package freemarker.core;

import defpackage.bfa;
import defpackage.d1d;
import defpackage.jw7;
import defpackage.pfa;
import defpackage.zfa;
import freemarker.template.SimpleSequence;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.ListIterator;
import org.apache.commons.text.StringSubstitutor;

public final class v0 extends t0 {
    public final ArrayList h;
    public final ArrayList i;
    public final int j;

    public class a implements pfa {
        public HashMap b;
        public bfa c;
        public bfa d;

        public a(Environment environment) throws InvalidReferenceException {
            int i = 0;
            if (d1d.e(v0.this) >= d1d.d) {
                this.b = new LinkedHashMap();
                while (i < v0.this.j) {
                    t0 t0Var = (t0) v0.this.h.get(i);
                    t0 t0Var2 = (t0) v0.this.i.get(i);
                    String strL = t0Var.L(environment);
                    zfa zfaVarK = t0Var2.K(environment);
                    if (environment == null || !environment.J()) {
                        t0Var2.G(zfaVarK, environment);
                    }
                    this.b.put(strL, zfaVarK);
                    i++;
                }
                return;
            }
            this.b = new HashMap();
            ArrayList arrayList = new ArrayList(v0.this.j);
            ArrayList arrayList2 = new ArrayList(v0.this.j);
            while (i < v0.this.j) {
                t0 t0Var3 = (t0) v0.this.h.get(i);
                t0 t0Var4 = (t0) v0.this.i.get(i);
                String strL2 = t0Var3.L(environment);
                zfa zfaVarK2 = t0Var4.K(environment);
                if (environment == null || !environment.J()) {
                    t0Var4.G(zfaVarK2, environment);
                }
                this.b.put(strL2, zfaVarK2);
                arrayList.add(strL2);
                arrayList2.add(zfaVarK2);
                i++;
            }
            this.c = new CollectionAndSequence(new SimpleSequence(arrayList));
            this.d = new CollectionAndSequence(new SimpleSequence(arrayList2));
        }

        @Override
        public zfa get(String str) {
            return (zfa) this.b.get(str);
        }

        @Override
        public boolean isEmpty() {
            return v0.this.j == 0;
        }

        @Override
        public bfa keys() {
            if (this.c == null) {
                this.c = new CollectionAndSequence(new SimpleSequence(this.b.keySet()));
            }
            return this.c;
        }

        @Override
        public int size() {
            return v0.this.j;
        }

        public String toString() {
            return v0.this.o();
        }

        @Override
        public bfa values() {
            if (this.d == null) {
                this.d = new CollectionAndSequence(new SimpleSequence(this.b.values()));
            }
            return this.d;
        }
    }

    public v0(ArrayList arrayList, ArrayList arrayList2) {
        this.h = arrayList;
        this.i = arrayList2;
        this.j = arrayList.size();
        arrayList.trimToSize();
        arrayList2.trimToSize();
    }

    @Override
    public zfa F(Environment environment) {
        return new a(environment);
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        ArrayList arrayList = (ArrayList) this.h.clone();
        ListIterator listIterator = arrayList.listIterator();
        while (listIterator.hasNext()) {
            listIterator.set(((t0) listIterator.next()).I(str, t0Var, aVar));
        }
        ArrayList arrayList2 = (ArrayList) this.i.clone();
        ListIterator listIterator2 = arrayList2.listIterator();
        while (listIterator2.hasNext()) {
            listIterator2.set(((t0) listIterator2.next()).I(str, t0Var, aVar));
        }
        return new v0(arrayList, arrayList2);
    }

    @Override
    public boolean T() {
        if (this.g != null) {
            return true;
        }
        for (int i = 0; i < this.j; i++) {
            t0 t0Var = (t0) this.h.get(i);
            t0 t0Var2 = (t0) this.i.get(i);
            if (!t0Var.T() || !t0Var2.T()) {
                return false;
            }
        }
        return true;
    }

    public final void a0(int i) {
        if (i >= this.j * 2) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer("{");
        for (int i = 0; i < this.j; i++) {
            t0 t0Var = (t0) this.h.get(i);
            t0 t0Var2 = (t0) this.i.get(i);
            stringBuffer.append(t0Var.o());
            stringBuffer.append(": ");
            stringBuffer.append(t0Var2.o());
            if (i != this.j - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(StringSubstitutor.DEFAULT_VAR_END);
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "{...}";
    }

    @Override
    public int s() {
        return this.j * 2;
    }

    @Override
    public jw7 t(int i) {
        a0(i);
        return i % 2 == 0 ? jw7.g : jw7.f;
    }

    @Override
    public Object u(int i) {
        a0(i);
        return (i % 2 == 0 ? this.h : this.i).get(i / 2);
    }
}
