package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import defpackage.b92;
import defpackage.bm9;
import defpackage.by6;
import defpackage.md;
import defpackage.qw0;
import defpackage.vx9;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import defpackage.yt9;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;

public final class a extends GivenFunctionsMemberScope {
    public static final C0378a e = new C0378a(null);
    public static final by6 f;

    public static final class C0378a {
        public C0378a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final by6 a() {
            return a.f;
        }

        public C0378a() {
        }
    }

    static {
        by6 by6VarG = by6.g("clone");
        y45.i(by6VarG, "identifier(\"clone\")");
        f = by6VarG;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(vx9 vx9Var, qw0 qw0Var) {
        super(vx9Var, qw0Var);
        y45.j(vx9Var, "storageManager");
        y45.j(qw0Var, "containingClass");
    }

    @Override
    public List i() {
        bm9 bm9VarG1 = bm9.g1(l(), md.u1.b(), f, CallableMemberDescriptor.Kind.DECLARATION, yt9.a);
        bm9VarG1.M0(null, l().R(), y71.k(), y71.k(), y71.k(), DescriptorUtilsKt.j(l()).i(), Modality.OPEN, b92.c);
        return x71.e(bm9VarG1);
    }
}
