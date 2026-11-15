package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.by6;
import defpackage.c92;
import defpackage.eh5;
import defpackage.md;
import defpackage.ro8;
import defpackage.xt1;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.l;

public interface e extends CallableMemberDescriptor {

    public interface a {
        a a(ro8 ro8Var);

        a b(ro8 ro8Var);

        e build();

        a c(l lVar);

        a d(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a interfaceC0379a, Object obj);

        a e();

        a f();

        a g(CallableMemberDescriptor callableMemberDescriptor);

        a h(boolean z);

        a i(List list);

        a j(eh5 eh5Var);

        a k(by6 by6Var);

        a l();

        a m(List list);

        a n(c92 c92Var);

        a o();

        a p(md mdVar);

        a q(xt1 xt1Var);

        a r(Modality modality);

        a s(CallableMemberDescriptor.Kind kind);

        a t();
    }

    boolean B0();

    boolean P();

    @Override
    e a();

    @Override
    xt1 b();

    e c(TypeSubstitutor typeSubstitutor);

    @Override
    Collection e();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    boolean isSuspend();

    a l();

    boolean v();

    e v0();
}
