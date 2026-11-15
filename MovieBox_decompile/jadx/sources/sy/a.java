package sy;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializationException;

public abstract class a implements e, c {
    @Override
    public final char A(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return x();
    }

    @Override
    public final byte B(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return H();
    }

    @Override
    public final boolean C(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return w();
    }

    @Override
    public boolean D() {
        return true;
    }

    @Override
    public final short E(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return s();
    }

    @Override
    public final double F(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return v();
    }

    @Override
    public Object G(kotlinx.serialization.a aVar) {
        return e.a.a(this, aVar);
    }

    @Override
    public byte H() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Byte");
        return ((Byte) objJ).byteValue();
    }

    public Object I(kotlinx.serialization.a deserializer, Object obj) {
        Intrinsics.h(deserializer, "deserializer");
        return G(deserializer);
    }

    public Object J() {
        throw new SerializationException(Reflection.b(getClass()) + " can't retrieve untyped values");
    }

    @Override
    public c b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    @Override
    public int e(kotlinx.serialization.descriptors.f enumDescriptor) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objJ).intValue();
    }

    @Override
    public final long f(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return l();
    }

    @Override
    public int h() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objJ).intValue();
    }

    @Override
    public final int i(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return h();
    }

    @Override
    public Void j() {
        return null;
    }

    @Override
    public int k(kotlinx.serialization.descriptors.f fVar) {
        return c.a.a(this, fVar);
    }

    @Override
    public long l() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) objJ).longValue();
    }

    @Override
    public final String m(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return z();
    }

    @Override
    public final Object n(kotlinx.serialization.descriptors.f descriptor, int i10, kotlinx.serialization.a deserializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(deserializer, "deserializer");
        return (deserializer.getDescriptor().b() || D()) ? I(deserializer, obj) : j();
    }

    @Override
    public boolean p() {
        return c.a.b(this);
    }

    @Override
    public e q(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    @Override
    public e r(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return q(descriptor.h(i10));
    }

    @Override
    public short s() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Short");
        return ((Short) objJ).shortValue();
    }

    @Override
    public float t() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) objJ).floatValue();
    }

    @Override
    public final float u(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return t();
    }

    @Override
    public double v() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Double");
        return ((Double) objJ).doubleValue();
    }

    @Override
    public boolean w() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objJ).booleanValue();
    }

    @Override
    public char x() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Char");
        return ((Character) objJ).charValue();
    }

    public Object y(kotlinx.serialization.descriptors.f descriptor, int i10, kotlinx.serialization.a deserializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(deserializer, "deserializer");
        return I(deserializer, obj);
    }

    @Override
    public String z() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.String");
        return (String) objJ;
    }
}
