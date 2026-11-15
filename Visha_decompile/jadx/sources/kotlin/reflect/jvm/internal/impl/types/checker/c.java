package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.c74;
import defpackage.eh5;
import defpackage.gh5;
import defpackage.h4;
import defpackage.px0;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.sbb;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public abstract class c extends h4 {

    public static final class a extends c {
        public static final a a = new a();

        @Override
        public qw0 b(xw0 xw0Var) {
            y45.j(xw0Var, "classId");
            return null;
        }

        @Override
        public MemberScope c(qw0 qw0Var, c74 c74Var) {
            y45.j(qw0Var, "classDescriptor");
            y45.j(c74Var, "compute");
            return (MemberScope) c74Var.invoke();
        }

        @Override
        public boolean d(qq6 qq6Var) {
            y45.j(qq6Var, "moduleDescriptor");
            return false;
        }

        @Override
        public boolean e(sbb sbbVar) {
            y45.j(sbbVar, "typeConstructor");
            return false;
        }

        @Override
        public Collection g(qw0 qw0Var) {
            y45.j(qw0Var, "classDescriptor");
            Collection collectionK = qw0Var.m().k();
            y45.i(collectionK, "classDescriptor.typeConstructor.supertypes");
            return collectionK;
        }

        @Override
        public eh5 a(gh5 gh5Var) {
            y45.j(gh5Var, "type");
            return (eh5) gh5Var;
        }

        @Override
        public qw0 f(xt1 xt1Var) {
            y45.j(xt1Var, "descriptor");
            return null;
        }
    }

    public abstract qw0 b(xw0 xw0Var);

    public abstract MemberScope c(qw0 qw0Var, c74 c74Var);

    public abstract boolean d(qq6 qq6Var);

    public abstract boolean e(sbb sbbVar);

    public abstract px0 f(xt1 xt1Var);

    public abstract Collection g(qw0 qw0Var);

    public abstract eh5 a(gh5 gh5Var);
}
