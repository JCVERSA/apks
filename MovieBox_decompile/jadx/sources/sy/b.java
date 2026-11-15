package sy;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.g;
import kotlinx.serialization.internal.g1;

public abstract class b implements f, d {
    @Override
    public void B(int i10) {
        J(Integer.valueOf(i10));
    }

    @Override
    public void C(kotlinx.serialization.descriptors.f descriptor, int i10, g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (H(descriptor, i10)) {
            e(serializer, obj);
        }
    }

    @Override
    public final void D(kotlinx.serialization.descriptors.f descriptor, int i10, short s10) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            q(s10);
        }
    }

    @Override
    public final void E(kotlinx.serialization.descriptors.f descriptor, int i10, double d10) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            g(d10);
        }
    }

    @Override
    public final void F(kotlinx.serialization.descriptors.f descriptor, int i10, long j10) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            m(j10);
        }
    }

    @Override
    public void G(String value) {
        Intrinsics.h(value, "value");
        J(value);
    }

    public boolean H(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return true;
    }

    public void I(g gVar, Object obj) {
        f.a.c(this, gVar, obj);
    }

    public void J(Object value) {
        Intrinsics.h(value, "value");
        throw new SerializationException("Non-serializable " + Reflection.b(value.getClass()) + " is not supported by " + Reflection.b(getClass()) + " encoder");
    }

    @Override
    public d b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    @Override
    public void e(g gVar, Object obj) {
        f.a.d(this, gVar, obj);
    }

    @Override
    public final f f(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return H(descriptor, i10) ? l(descriptor.h(i10)) : g1.f65172a;
    }

    @Override
    public void g(double d10) {
        J(Double.valueOf(d10));
    }

    @Override
    public void h(byte b10) {
        J(Byte.valueOf(b10));
    }

    public void i(kotlinx.serialization.descriptors.f descriptor, int i10, g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (H(descriptor, i10)) {
            I(serializer, obj);
        }
    }

    @Override
    public d j(kotlinx.serialization.descriptors.f fVar, int i10) {
        return f.a.a(this, fVar, i10);
    }

    @Override
    public void k(kotlinx.serialization.descriptors.f enumDescriptor, int i10) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        J(Integer.valueOf(i10));
    }

    @Override
    public f l(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    @Override
    public void m(long j10) {
        J(Long.valueOf(j10));
    }

    @Override
    public final void n(kotlinx.serialization.descriptors.f descriptor, int i10, char c10) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            u(c10);
        }
    }

    @Override
    public void o() {
        throw new SerializationException("'null' is not supported by default");
    }

    @Override
    public final void p(kotlinx.serialization.descriptors.f descriptor, int i10, byte b10) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            h(b10);
        }
    }

    @Override
    public void q(short s10) {
        J(Short.valueOf(s10));
    }

    @Override
    public void r(boolean z10) {
        J(Boolean.valueOf(z10));
    }

    @Override
    public final void s(kotlinx.serialization.descriptors.f descriptor, int i10, float f10) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            t(f10);
        }
    }

    @Override
    public void t(float f10) {
        J(Float.valueOf(f10));
    }

    @Override
    public void u(char c10) {
        J(Character.valueOf(c10));
    }

    @Override
    public void v() {
        f.a.b(this);
    }

    @Override
    public final void w(kotlinx.serialization.descriptors.f descriptor, int i10, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            B(i11);
        }
    }

    @Override
    public final void x(kotlinx.serialization.descriptors.f descriptor, int i10, boolean z10) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i10)) {
            r(z10);
        }
    }

    @Override
    public final void y(kotlinx.serialization.descriptors.f descriptor, int i10, String value) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(value, "value");
        if (H(descriptor, i10)) {
            G(value);
        }
    }

    public boolean z(kotlinx.serialization.descriptors.f fVar, int i10) {
        return d.a.a(this, fVar, i10);
    }
}
