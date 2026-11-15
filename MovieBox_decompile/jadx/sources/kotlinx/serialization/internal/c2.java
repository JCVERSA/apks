package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializationException;

public abstract class c2 implements sy.f, sy.d {

    private final ArrayList f65151a = new ArrayList();

    private final boolean H(kotlinx.serialization.descriptors.f fVar, int i10) {
        c0(a0(fVar, i10));
        return true;
    }

    @Override
    public final void B(int i10) {
        Q(b0(), i10);
    }

    @Override
    public void C(kotlinx.serialization.descriptors.f descriptor, int i10, kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (H(descriptor, i10)) {
            e(serializer, obj);
        }
    }

    @Override
    public final void D(kotlinx.serialization.descriptors.f descriptor, int i10, short s10) {
        Intrinsics.h(descriptor, "descriptor");
        U(a0(descriptor, i10), s10);
    }

    @Override
    public final void E(kotlinx.serialization.descriptors.f descriptor, int i10, double d10) {
        Intrinsics.h(descriptor, "descriptor");
        M(a0(descriptor, i10), d10);
    }

    @Override
    public final void F(kotlinx.serialization.descriptors.f descriptor, int i10, long j10) {
        Intrinsics.h(descriptor, "descriptor");
        R(a0(descriptor, i10), j10);
    }

    @Override
    public final void G(String value) {
        Intrinsics.h(value, "value");
        V(b0(), value);
    }

    public void I(kotlinx.serialization.g gVar, Object obj) {
        sy.f.a.c(this, gVar, obj);
    }

    protected void J(Object obj, boolean z10) {
        W(obj, Boolean.valueOf(z10));
    }

    protected void K(Object obj, byte b10) {
        W(obj, Byte.valueOf(b10));
    }

    protected void L(Object obj, char c10) {
        W(obj, Character.valueOf(c10));
    }

    protected void M(Object obj, double d10) {
        W(obj, Double.valueOf(d10));
    }

    protected void N(Object obj, kotlinx.serialization.descriptors.f enumDescriptor, int i10) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        W(obj, Integer.valueOf(i10));
    }

    protected void O(Object obj, float f10) {
        W(obj, Float.valueOf(f10));
    }

    protected sy.f P(Object obj, kotlinx.serialization.descriptors.f inlineDescriptor) {
        Intrinsics.h(inlineDescriptor, "inlineDescriptor");
        c0(obj);
        return this;
    }

    protected void Q(Object obj, int i10) {
        W(obj, Integer.valueOf(i10));
    }

    protected void R(Object obj, long j10) {
        W(obj, Long.valueOf(j10));
    }

    protected void S(Object obj) {
    }

    protected void T(Object obj) {
        throw new SerializationException("null is not supported");
    }

    protected void U(Object obj, short s10) {
        W(obj, Short.valueOf(s10));
    }

    protected void V(Object obj, String value) {
        Intrinsics.h(value, "value");
        W(obj, value);
    }

    protected void W(Object obj, Object value) {
        Intrinsics.h(value, "value");
        throw new SerializationException("Non-serializable " + Reflection.b(value.getClass()) + " is not supported by " + Reflection.b(getClass()) + " encoder");
    }

    protected void X(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    protected final Object Y() {
        return CollectionsKt.u0(this.f65151a);
    }

    protected final Object Z() {
        return CollectionsKt.v0(this.f65151a);
    }

    @Override
    public ty.c a() {
        return ty.d.a();
    }

    protected abstract Object a0(kotlinx.serialization.descriptors.f fVar, int i10);

    @Override
    public sy.d b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    protected final Object b0() {
        if (this.f65151a.isEmpty()) {
            throw new SerializationException("No tag in stack for requested element");
        }
        ArrayList arrayList = this.f65151a;
        return arrayList.remove(CollectionsKt.n(arrayList));
    }

    @Override
    public final void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        if (!this.f65151a.isEmpty()) {
            b0();
        }
        X(descriptor);
    }

    protected final void c0(Object obj) {
        this.f65151a.add(obj);
    }

    @Override
    public void e(kotlinx.serialization.g gVar, Object obj) {
        sy.f.a.d(this, gVar, obj);
    }

    @Override
    public final sy.f f(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return P(a0(descriptor, i10), descriptor.h(i10));
    }

    @Override
    public final void g(double d10) {
        M(b0(), d10);
    }

    @Override
    public final void h(byte b10) {
        K(b0(), b10);
    }

    @Override
    public void i(kotlinx.serialization.descriptors.f descriptor, int i10, kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (H(descriptor, i10)) {
            I(serializer, obj);
        }
    }

    @Override
    public sy.d j(kotlinx.serialization.descriptors.f fVar, int i10) {
        return sy.f.a.a(this, fVar, i10);
    }

    @Override
    public final void k(kotlinx.serialization.descriptors.f enumDescriptor, int i10) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        N(b0(), enumDescriptor, i10);
    }

    @Override
    public final sy.f l(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return P(b0(), descriptor);
    }

    @Override
    public final void m(long j10) {
        R(b0(), j10);
    }

    @Override
    public final void n(kotlinx.serialization.descriptors.f descriptor, int i10, char c10) {
        Intrinsics.h(descriptor, "descriptor");
        L(a0(descriptor, i10), c10);
    }

    @Override
    public void o() {
        T(b0());
    }

    @Override
    public final void p(kotlinx.serialization.descriptors.f descriptor, int i10, byte b10) {
        Intrinsics.h(descriptor, "descriptor");
        K(a0(descriptor, i10), b10);
    }

    @Override
    public final void q(short s10) {
        U(b0(), s10);
    }

    @Override
    public final void r(boolean z10) {
        J(b0(), z10);
    }

    @Override
    public final void s(kotlinx.serialization.descriptors.f descriptor, int i10, float f10) {
        Intrinsics.h(descriptor, "descriptor");
        O(a0(descriptor, i10), f10);
    }

    @Override
    public final void t(float f10) {
        O(b0(), f10);
    }

    @Override
    public final void u(char c10) {
        L(b0(), c10);
    }

    @Override
    public void v() {
        S(Y());
    }

    @Override
    public final void w(kotlinx.serialization.descriptors.f descriptor, int i10, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        Q(a0(descriptor, i10), i11);
    }

    @Override
    public final void x(kotlinx.serialization.descriptors.f descriptor, int i10, boolean z10) {
        Intrinsics.h(descriptor, "descriptor");
        J(a0(descriptor, i10), z10);
    }

    @Override
    public final void y(kotlinx.serialization.descriptors.f descriptor, int i10, String value) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(value, "value");
        V(a0(descriptor, i10), value);
    }

    @Override
    public boolean z(kotlinx.serialization.descriptors.f fVar, int i10) {
        return sy.d.a.a(this, fVar, i10);
    }
}
