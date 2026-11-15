package defpackage;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorEntity;

public final class bd3 implements ti8 {
    public final ui8 b;

    public bd3() {
        id3 id3Var = id3.a;
        ui8 ui8VarJ0 = ui8.J0(id3Var.h(), md.u1.b(), Modality.OPEN, b92.e, true, by6.j(ErrorEntity.ERROR_PROPERTY.getDebugText()), CallableMemberDescriptor.Kind.DECLARATION, yt9.a, false, false, false, false, false, false);
        ui8VarJ0.W0(id3Var.k(), y71.k(), null, null, y71.k());
        this.b = ui8VarJ0;
    }

    @Override
    public CallableMemberDescriptor J(xt1 xt1Var, Modality modality, c92 c92Var, CallableMemberDescriptor.Kind kind, boolean z) {
        return this.b.J(xt1Var, modality, c92Var, kind, z);
    }

    @Override
    public Object K(a.InterfaceC0379a interfaceC0379a) {
        return this.b.K(interfaceC0379a);
    }

    @Override
    public wp3 L() {
        return this.b.L();
    }

    @Override
    public void O(Collection collection) {
        y45.j(collection, "overriddenDescriptors");
        this.b.O(collection);
    }

    @Override
    public boolean U() {
        return this.b.U();
    }

    @Override
    public ro8 Z() {
        return this.b.Z();
    }

    @Override
    public ti8 a() {
        return this.b.a();
    }

    @Override
    public xt1 b() {
        return this.b.b();
    }

    @Override
    public ro8 b0() {
        return this.b.b0();
    }

    @Override
    public ti8 c(TypeSubstitutor typeSubstitutor) {
        y45.j(typeSubstitutor, "substitutor");
        return this.b.c(typeSubstitutor);
    }

    @Override
    public Collection e() {
        return this.b.e();
    }

    @Override
    public List f() {
        return this.b.f();
    }

    @Override
    public boolean f0() {
        return this.b.f0();
    }

    @Override
    public md getAnnotations() {
        md annotations = this.b.getAnnotations();
        y45.i(annotations, "<get-annotations>(...)");
        return annotations;
    }

    @Override
    public vi8 getGetter() {
        return this.b.getGetter();
    }

    @Override
    public CallableMemberDescriptor.Kind getKind() {
        return this.b.getKind();
    }

    @Override
    public by6 getName() {
        return this.b.getName();
    }

    @Override
    public eh5 getReturnType() {
        return this.b.getReturnType();
    }

    @Override
    public xi8 getSetter() {
        return this.b.getSetter();
    }

    @Override
    public yt9 getSource() {
        return this.b.getSource();
    }

    @Override
    public eh5 getType() {
        return this.b.getType();
    }

    @Override
    public List getTypeParameters() {
        return this.b.getTypeParameters();
    }

    @Override
    public c92 getVisibility() {
        return this.b.getVisibility();
    }

    @Override
    public boolean isConst() {
        return this.b.isConst();
    }

    @Override
    public boolean isExternal() {
        return this.b.isExternal();
    }

    @Override
    public Modality j() {
        return this.b.j();
    }

    @Override
    public boolean k0() {
        return this.b.k0();
    }

    @Override
    public boolean m0() {
        return this.b.m0();
    }

    @Override
    public pf1 p0() {
        return this.b.p0();
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return this.b.q0(bu1Var, obj);
    }

    @Override
    public List t() {
        return this.b.t();
    }

    @Override
    public boolean y() {
        return this.b.y();
    }

    @Override
    public List y0() {
        return this.b.y0();
    }

    @Override
    public wp3 z() {
        return this.b.z();
    }

    @Override
    public boolean z0() {
        return this.b.z0();
    }
}
