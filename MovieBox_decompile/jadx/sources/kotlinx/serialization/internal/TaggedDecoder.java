package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializationException;

public abstract class TaggedDecoder implements sy.e, sy.c {

    private final ArrayList f65129a = new ArrayList();

    private boolean f65130b;

    private final Object a0(Object obj, Function0 function0) {
        Z(obj);
        Object objInvoke = function0.invoke();
        if (!this.f65130b) {
            Y();
        }
        this.f65130b = false;
        return objInvoke;
    }

    @Override
    public final char A(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return L(X(descriptor, i10));
    }

    @Override
    public final byte B(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return K(X(descriptor, i10));
    }

    @Override
    public final boolean C(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return J(X(descriptor, i10));
    }

    @Override
    public boolean D() {
        Object objW = W();
        if (objW == null) {
            return false;
        }
        return S(objW);
    }

    @Override
    public final short E(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return T(X(descriptor, i10));
    }

    @Override
    public final double F(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return M(X(descriptor, i10));
    }

    @Override
    public Object G(kotlinx.serialization.a aVar) {
        return sy.e.a.a(this, aVar);
    }

    @Override
    public final byte H() {
        return K(Y());
    }

    protected Object I(kotlinx.serialization.a deserializer, Object obj) {
        Intrinsics.h(deserializer, "deserializer");
        return G(deserializer);
    }

    protected boolean J(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objV).booleanValue();
    }

    protected byte K(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Byte");
        return ((Byte) objV).byteValue();
    }

    protected char L(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Char");
        return ((Character) objV).charValue();
    }

    protected double M(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Double");
        return ((Double) objV).doubleValue();
    }

    protected int N(Object obj, kotlinx.serialization.descriptors.f enumDescriptor) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objV).intValue();
    }

    protected float O(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) objV).floatValue();
    }

    protected sy.e P(Object obj, kotlinx.serialization.descriptors.f inlineDescriptor) {
        Intrinsics.h(inlineDescriptor, "inlineDescriptor");
        Z(obj);
        return this;
    }

    protected int Q(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objV).intValue();
    }

    protected long R(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) objV).longValue();
    }

    protected boolean S(Object obj) {
        return true;
    }

    protected short T(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Short");
        return ((Short) objV).shortValue();
    }

    protected String U(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.String");
        return (String) objV;
    }

    protected Object V(Object obj) {
        throw new SerializationException(Reflection.b(getClass()) + " can't retrieve untyped values");
    }

    protected final Object W() {
        return CollectionsKt.v0(this.f65129a);
    }

    protected abstract Object X(kotlinx.serialization.descriptors.f fVar, int i10);

    protected final Object Y() {
        ArrayList arrayList = this.f65129a;
        Object objRemove = arrayList.remove(CollectionsKt.n(arrayList));
        this.f65130b = true;
        return objRemove;
    }

    protected final void Z(Object obj) {
        this.f65129a.add(obj);
    }

    @Override
    public ty.c a() {
        return ty.d.a();
    }

    @Override
    public sy.c b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    @Override
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    @Override
    public final int e(kotlinx.serialization.descriptors.f enumDescriptor) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        return N(Y(), enumDescriptor);
    }

    @Override
    public final long f(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return R(X(descriptor, i10));
    }

    @Override
    public final int h() {
        return Q(Y());
    }

    @Override
    public final int i(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return Q(X(descriptor, i10));
    }

    @Override
    public final Void j() {
        return null;
    }

    @Override
    public int k(kotlinx.serialization.descriptors.f fVar) {
        return sy.c.a.a(this, fVar);
    }

    @Override
    public final long l() {
        return R(Y());
    }

    @Override
    public final String m(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return U(X(descriptor, i10));
    }

    @Override
    public final Object n(kotlinx.serialization.descriptors.f descriptor, int i10, final kotlinx.serialization.a deserializer, final Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(deserializer, "deserializer");
        return a0(X(descriptor, i10), new Function0<Object>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Object invoke() {
                return this.this$0.D() ? this.this$0.I(deserializer, obj) : this.this$0.j();
            }
        });
    }

    @Override
    public boolean p() {
        return sy.c.a.b(this);
    }

    @Override
    public final sy.e q(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return P(Y(), descriptor);
    }

    @Override
    public final sy.e r(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return P(X(descriptor, i10), descriptor.h(i10));
    }

    @Override
    public final short s() {
        return T(Y());
    }

    @Override
    public final float t() {
        return O(Y());
    }

    @Override
    public final float u(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return O(X(descriptor, i10));
    }

    @Override
    public final double v() {
        return M(Y());
    }

    @Override
    public final boolean w() {
        return J(Y());
    }

    @Override
    public final char x() {
        return L(Y());
    }

    @Override
    public final Object y(kotlinx.serialization.descriptors.f descriptor, int i10, final kotlinx.serialization.a deserializer, final Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(deserializer, "deserializer");
        return a0(X(descriptor, i10), new Function0<Object>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Object invoke() {
                return this.this$0.I(deserializer, obj);
            }
        });
    }

    @Override
    public final String z() {
        return U(Y());
    }
}
