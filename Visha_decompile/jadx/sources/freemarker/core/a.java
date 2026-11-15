package freemarker.core;

import defpackage.bfa;
import defpackage.bga;
import defpackage.hga;
import defpackage.jw7;
import defpackage.mga;
import defpackage.nga;
import defpackage.ofa;
import defpackage.pfa;
import defpackage.zfa;
import freemarker.template.SimpleNumber;
import freemarker.template.SimpleScalar;
import freemarker.template.SimpleSequence;
import freemarker.template.TemplateModelException;
import java.util.HashSet;
import java.util.Set;
import org.slf4j.Marker;

public final class a extends t0 {
    public final t0 h;
    public final t0 i;

    public static class C0345a implements ofa {
        public final ofa b;
        public final ofa c;

        public C0345a(ofa ofaVar, ofa ofaVar2) {
            this.b = ofaVar;
            this.c = ofaVar2;
        }

        @Override
        public zfa get(String str) {
            zfa zfaVar = this.c.get(str);
            return zfaVar != null ? zfaVar : this.b.get(str);
        }

        @Override
        public boolean isEmpty() {
            return this.b.isEmpty() && this.c.isEmpty();
        }
    }

    public static final class b extends C0345a implements pfa {
        public CollectionAndSequence d;
        public CollectionAndSequence e;
        public int f;

        public b(pfa pfaVar, pfa pfaVar2) {
            super(pfaVar, pfaVar2);
        }

        public static void b(Set set, SimpleSequence simpleSequence, pfa pfaVar) {
            bga it = pfaVar.keys().iterator();
            while (it.hasNext()) {
                mga mgaVar = (mga) it.next();
                if (set.add(mgaVar.getAsString())) {
                    simpleSequence.add(mgaVar);
                }
            }
        }

        public final void c() {
            if (this.d == null) {
                HashSet hashSet = new HashSet();
                SimpleSequence simpleSequence = new SimpleSequence(32);
                b(hashSet, simpleSequence, (pfa) this.b);
                b(hashSet, simpleSequence, (pfa) this.c);
                this.f = hashSet.size();
                this.d = new CollectionAndSequence(simpleSequence);
            }
        }

        public final void e() throws TemplateModelException {
            if (this.e == null) {
                SimpleSequence simpleSequence = new SimpleSequence(size());
                int size = this.d.size();
                for (int i = 0; i < size; i++) {
                    simpleSequence.add(get(((mga) this.d.get(i)).getAsString()));
                }
                this.e = new CollectionAndSequence(simpleSequence);
            }
        }

        @Override
        public bfa keys() {
            c();
            return this.d;
        }

        @Override
        public int size() {
            c();
            return this.f;
        }

        @Override
        public bfa values() throws TemplateModelException {
            e();
            return this.e;
        }
    }

    public static final class c implements nga {
        public final nga b;
        public final nga c;

        public c(nga ngaVar, nga ngaVar2) {
            this.b = ngaVar;
            this.c = ngaVar2;
        }

        @Override
        public zfa get(int i) {
            nga ngaVar;
            int size = this.b.size();
            if (i < size) {
                ngaVar = this.b;
            } else {
                ngaVar = this.c;
                i -= size;
            }
            return ngaVar.get(i);
        }

        @Override
        public int size() {
            return this.b.size() + this.c.size();
        }
    }

    public a(t0 t0Var, t0 t0Var2) {
        this.h = t0Var;
        this.i = t0Var2;
    }

    public static zfa X(Environment environment, t1 t1Var, t0 t0Var, zfa zfaVar, t0 t0Var2, zfa zfaVar2) {
        if ((zfaVar instanceof hga) && (zfaVar2 instanceof hga)) {
            return Y(environment, t1Var, q0.g((hga) zfaVar, t0Var), q0.g((hga) zfaVar2, t0Var2));
        }
        if ((zfaVar instanceof nga) && (zfaVar2 instanceof nga)) {
            return new c((nga) zfaVar, (nga) zfaVar2);
        }
        try {
            String strH = t0.H(zfaVar, t0Var, environment);
            String str = "null";
            if (strH == null) {
                strH = "null";
            }
            String strH2 = t0.H(zfaVar2, t0Var2, environment);
            if (strH2 != null) {
                str = strH2;
            }
            return new SimpleScalar(strH.concat(str));
        } catch (NonStringException e) {
            if (!(zfaVar instanceof ofa) || !(zfaVar2 instanceof ofa)) {
                throw e;
            }
            if (!(zfaVar instanceof pfa) || !(zfaVar2 instanceof pfa)) {
                return new C0345a((ofa) zfaVar, (ofa) zfaVar2);
            }
            pfa pfaVar = (pfa) zfaVar;
            pfa pfaVar2 = (pfa) zfaVar2;
            if (pfaVar.size() == 0) {
                return pfaVar2;
            }
            return pfaVar2.size() == 0 ? pfaVar : new b(pfaVar, pfaVar2);
        }
    }

    public static zfa Y(Environment environment, t1 t1Var, Number number, Number number2) {
        return new SimpleNumber((environment != null ? environment.f() : t1Var.y().f()).c(number, number2));
    }

    @Override
    public zfa F(Environment environment) {
        t0 t0Var = this.h;
        zfa zfaVarK = t0Var.K(environment);
        t0 t0Var2 = this.i;
        return X(environment, this, t0Var, zfaVarK, t0Var2, t0Var2.K(environment));
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new a(this.h.I(str, t0Var, aVar), this.i.I(str, t0Var, aVar));
    }

    @Override
    public boolean T() {
        return this.g != null || (this.h.T() && this.i.T());
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.h.o());
        stringBuffer.append(" + ");
        stringBuffer.append(this.i.o());
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return Marker.ANY_NON_NULL_MARKER;
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        return jw7.a(i);
    }

    @Override
    public Object u(int i) {
        return i == 0 ? this.h : this.i;
    }
}
