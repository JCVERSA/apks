package kotlin.reflect.jvm.internal.impl.types;

import defpackage.ebb;
import defpackage.eh5;
import defpackage.gd;
import defpackage.hcb;
import defpackage.y45;

public interface i {

    public static final class a implements i {
        public static final a a = new a();

        @Override
        public void a(ebb ebbVar, hcb hcbVar, eh5 eh5Var) {
            y45.j(ebbVar, "typeAlias");
            y45.j(eh5Var, "substitutedArgument");
        }

        @Override
        public void b(gd gdVar) {
            y45.j(gdVar, "annotation");
        }

        @Override
        public void c(TypeSubstitutor typeSubstitutor, eh5 eh5Var, eh5 eh5Var2, hcb hcbVar) {
            y45.j(typeSubstitutor, "substitutor");
            y45.j(eh5Var, "unsubstitutedArgument");
            y45.j(eh5Var2, "argument");
            y45.j(hcbVar, "typeParameter");
        }

        @Override
        public void d(ebb ebbVar) {
            y45.j(ebbVar, "typeAlias");
        }
    }

    void a(ebb ebbVar, hcb hcbVar, eh5 eh5Var);

    void b(gd gdVar);

    void c(TypeSubstitutor typeSubstitutor, eh5 eh5Var, eh5 eh5Var2, hcb hcbVar);

    void d(ebb ebbVar);
}
