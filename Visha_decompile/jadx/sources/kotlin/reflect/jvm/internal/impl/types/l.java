package kotlin.reflect.jvm.internal.impl.types;

import defpackage.eh5;
import defpackage.mcb;
import defpackage.md;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class l {
    public static final b a = new b(null);
    public static final l b = new a();

    public static final class a extends l {
        @Override
        public mcb e(eh5 eh5Var) {
            return (mcb) i(eh5Var);
        }

        @Override
        public boolean f() {
            return true;
        }

        public Void i(eh5 eh5Var) {
            y45.j(eh5Var, "key");
            return null;
        }

        public String toString() {
            return "Empty TypeSubstitution";
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public b() {
        }
    }

    public static final class c extends l {
        public c() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public boolean b() {
            return false;
        }

        @Override
        public md d(md mdVar) {
            y45.j(mdVar, "annotations");
            return l.this.d(mdVar);
        }

        @Override
        public mcb e(eh5 eh5Var) {
            y45.j(eh5Var, "key");
            return l.this.e(eh5Var);
        }

        @Override
        public boolean f() {
            return l.this.f();
        }

        @Override
        public eh5 g(eh5 eh5Var, Variance variance) {
            y45.j(eh5Var, "topLevelType");
            y45.j(variance, "position");
            return l.this.g(eh5Var, variance);
        }
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return false;
    }

    public final TypeSubstitutor c() {
        TypeSubstitutor typeSubstitutorG = TypeSubstitutor.g(this);
        y45.i(typeSubstitutorG, "create(this)");
        return typeSubstitutorG;
    }

    public md d(md mdVar) {
        y45.j(mdVar, "annotations");
        return mdVar;
    }

    public abstract mcb e(eh5 eh5Var);

    public boolean f() {
        return false;
    }

    public eh5 g(eh5 eh5Var, Variance variance) {
        y45.j(eh5Var, "topLevelType");
        y45.j(variance, "position");
        return eh5Var;
    }

    public final l h() {
        return new c();
    }
}
