package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.af5;
import defpackage.c74;
import defpackage.e74;
import defpackage.qw0;
import defpackage.sbb;
import defpackage.ux9;
import defpackage.vx9;
import defpackage.x17;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public final class ScopesHolderForClass {
    public final qw0 a;
    public final e74 b;
    public final kotlin.reflect.jvm.internal.impl.types.checker.c c;
    public final x17 d;
    public static final af5[] f = {xq8.j(new PropertyReference1Impl(xq8.b(ScopesHolderForClass.class), "scopeForOwnerModule", "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};
    public static final a e = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ScopesHolderForClass a(qw0 qw0Var, vx9 vx9Var, kotlin.reflect.jvm.internal.impl.types.checker.c cVar, e74 e74Var) {
            y45.j(qw0Var, "classDescriptor");
            y45.j(vx9Var, "storageManager");
            y45.j(cVar, "kotlinTypeRefinerForOwnerModule");
            y45.j(e74Var, "scopeFactory");
            return new ScopesHolderForClass(qw0Var, vx9Var, e74Var, cVar, null);
        }

        public a() {
        }
    }

    public ScopesHolderForClass(qw0 qw0Var, vx9 vx9Var, e74 e74Var, kotlin.reflect.jvm.internal.impl.types.checker.c cVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(qw0Var, vx9Var, e74Var, cVar);
    }

    public final MemberScope c(final kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        if (!cVar.d(DescriptorUtilsKt.p(this.a))) {
            return d();
        }
        sbb sbbVarM = this.a.m();
        y45.i(sbbVarM, "classDescriptor.typeConstructor");
        return !cVar.e(sbbVarM) ? d() : cVar.c(this.a, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final MemberScope invoke() {
                return (MemberScope) this.this$0.b.invoke(cVar);
            }
        });
    }

    public final MemberScope d() {
        return (MemberScope) ux9.a(this.d, this, f[0]);
    }

    public ScopesHolderForClass(qw0 qw0Var, vx9 vx9Var, e74 e74Var, kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        this.a = qw0Var;
        this.b = e74Var;
        this.c = cVar;
        this.d = vx9Var.c(new c74() {
            {
                super(0);
            }

            @Override
            public final MemberScope invoke() {
                return (MemberScope) this.this$0.b.invoke(this.this$0.c);
            }
        });
    }
}
