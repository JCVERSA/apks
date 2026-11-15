package kotlinx.serialization.json;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.json.internal.a0;
import kotlinx.serialization.json.internal.b0;
import kotlinx.serialization.json.internal.k0;
import kotlinx.serialization.json.internal.n0;
import kotlinx.serialization.json.internal.p0;
import org.apache.tools.zip.UnixStat;

public abstract class a implements kotlinx.serialization.j {

    public static final C0801a f65262d = new C0801a(null);

    private final f f65263a;

    private final ty.c f65264b;

    private final kotlinx.serialization.json.internal.u f65265c;

    public static final class C0801a extends a {
        public C0801a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0801a() {
            super(new f(false, false, false, false, false, false, null, false, false, null, false, false, UnixStat.PERM_MASK, null), ty.d.a(), null);
        }
    }

    public a(f fVar, ty.c cVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(fVar, cVar);
    }

    @Override
    public ty.c a() {
        return this.f65264b;
    }

    @Override
    public final Object b(kotlinx.serialization.a deserializer, String string) {
        Intrinsics.h(deserializer, "deserializer");
        Intrinsics.h(string, "string");
        n0 n0Var = new n0(string);
        Object objG = new k0(this, WriteMode.OBJ, n0Var, deserializer.getDescriptor(), null).G(deserializer);
        n0Var.w();
        return objG;
    }

    @Override
    public final String c(kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(serializer, "serializer");
        b0 b0Var = new b0();
        try {
            a0.a(this, b0Var, serializer, obj);
            return b0Var.toString();
        } finally {
            b0Var.g();
        }
    }

    public final Object d(kotlinx.serialization.a deserializer, h element) {
        Intrinsics.h(deserializer, "deserializer");
        Intrinsics.h(element, "element");
        return p0.a(this, element, deserializer);
    }

    public final f e() {
        return this.f65263a;
    }

    public final kotlinx.serialization.json.internal.u f() {
        return this.f65265c;
    }

    private a(f fVar, ty.c cVar) {
        this.f65263a = fVar;
        this.f65264b = cVar;
        this.f65265c = new kotlinx.serialization.json.internal.u();
    }
}
