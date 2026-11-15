package defpackage;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorEntity;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.l;

public final class yc3 extends bm9 {

    public static final class a implements e.a {
        public a() {
        }

        @Override
        public e.a a(ro8 ro8Var) {
            return this;
        }

        @Override
        public e.a b(ro8 ro8Var) {
            return this;
        }

        @Override
        public e.a c(l lVar) {
            y45.j(lVar, "substitution");
            return this;
        }

        @Override
        public e.a d(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a interfaceC0379a, Object obj) {
            y45.j(interfaceC0379a, "userDataKey");
            return this;
        }

        @Override
        public e.a e() {
            return this;
        }

        @Override
        public e.a f() {
            return this;
        }

        @Override
        public e.a g(CallableMemberDescriptor callableMemberDescriptor) {
            return this;
        }

        @Override
        public e.a h(boolean z) {
            return this;
        }

        @Override
        public e.a i(List list) {
            y45.j(list, "parameters");
            return this;
        }

        @Override
        public e.a j(eh5 eh5Var) {
            y45.j(eh5Var, "type");
            return this;
        }

        @Override
        public e.a k(by6 by6Var) {
            y45.j(by6Var, "name");
            return this;
        }

        @Override
        public e.a l() {
            return this;
        }

        @Override
        public e.a m(List list) {
            y45.j(list, "parameters");
            return this;
        }

        @Override
        public e.a n(c92 c92Var) {
            y45.j(c92Var, "visibility");
            return this;
        }

        @Override
        public e.a o() {
            return this;
        }

        @Override
        public e.a p(md mdVar) {
            y45.j(mdVar, "additionalAnnotations");
            return this;
        }

        @Override
        public e.a q(xt1 xt1Var) {
            y45.j(xt1Var, "owner");
            return this;
        }

        @Override
        public e.a r(Modality modality) {
            y45.j(modality, "modality");
            return this;
        }

        @Override
        public e.a s(CallableMemberDescriptor.Kind kind) {
            y45.j(kind, "kind");
            return this;
        }

        @Override
        public e.a t() {
            return this;
        }

        @Override
        public g build() {
            return yc3.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yc3(qw0 qw0Var) {
        super(qw0Var, null, md.u1.b(), by6.j(ErrorEntity.ERROR_FUNCTION.getDebugText()), CallableMemberDescriptor.Kind.DECLARATION, yt9.a);
        y45.j(qw0Var, "containingDeclaration");
        M0(null, null, y71.k(), y71.k(), y71.k(), id3.d(ErrorTypeKind.RETURN_TYPE_FOR_FUNCTION, new String[0]), Modality.OPEN, b92.e);
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.descriptors.impl.a G0(xt1 xt1Var, e eVar, CallableMemberDescriptor.Kind kind, by6 by6Var, md mdVar, yt9 yt9Var) {
        y45.j(xt1Var, "newOwner");
        y45.j(kind, "kind");
        y45.j(mdVar, "annotations");
        y45.j(yt9Var, "source");
        return this;
    }

    @Override
    public Object K(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a interfaceC0379a) {
        y45.j(interfaceC0379a, "key");
        return null;
    }

    @Override
    public void O(Collection collection) {
        y45.j(collection, "overriddenDescriptors");
    }

    @Override
    public g J(xt1 xt1Var, Modality modality, c92 c92Var, CallableMemberDescriptor.Kind kind, boolean z) {
        y45.j(xt1Var, "newOwner");
        y45.j(modality, "modality");
        y45.j(c92Var, "visibility");
        y45.j(kind, "kind");
        return this;
    }

    @Override
    public boolean isSuspend() {
        return false;
    }

    @Override
    public e.a l() {
        return new a();
    }
}
