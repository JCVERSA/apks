package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonElementSerializer;

public final class l0 extends sy.b implements kotlinx.serialization.json.l {

    private final j f65358a;

    private final kotlinx.serialization.json.a f65359b;

    private final WriteMode f65360c;

    private final kotlinx.serialization.json.l[] f65361d;

    private final ty.c f65362e;

    private final kotlinx.serialization.json.f f65363f;

    private boolean f65364g;

    private String f65365h;

    public class a {

        public static final int[] f65366a;

        static {
            int[] iArr = new int[WriteMode.values().length];
            try {
                iArr[WriteMode.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WriteMode.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f65366a = iArr;
        }
    }

    public l0(j composer, kotlinx.serialization.json.a json, WriteMode mode, kotlinx.serialization.json.l[] lVarArr) {
        Intrinsics.h(composer, "composer");
        Intrinsics.h(json, "json");
        Intrinsics.h(mode, "mode");
        this.f65358a = composer;
        this.f65359b = json;
        this.f65360c = mode;
        this.f65361d = lVarArr;
        this.f65362e = d().a();
        this.f65363f = d().e();
        int iOrdinal = mode.ordinal();
        if (lVarArr != null) {
            kotlinx.serialization.json.l lVar = lVarArr[iOrdinal];
            if (lVar == null && lVar == this) {
                return;
            }
            lVarArr[iOrdinal] = this;
        }
    }

    private final j K() {
        j jVar = this.f65358a;
        return jVar instanceof q ? jVar : new q(jVar.f65344a, this.f65364g);
    }

    private final void L(kotlinx.serialization.descriptors.f fVar) {
        this.f65358a.c();
        String str = this.f65365h;
        Intrinsics.e(str);
        G(str);
        this.f65358a.e(':');
        this.f65358a.o();
        G(fVar.i());
    }

    @Override
    public void A(kotlinx.serialization.json.h element) {
        Intrinsics.h(element, "element");
        e(JsonElementSerializer.f65255a, element);
    }

    @Override
    public void B(int i10) {
        if (this.f65364g) {
            G(String.valueOf(i10));
        } else {
            this.f65358a.h(i10);
        }
    }

    @Override
    public void G(String value) {
        Intrinsics.h(value, "value");
        this.f65358a.m(value);
    }

    @Override
    public boolean H(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        int i11 = a.f65366a[this.f65360c.ordinal()];
        if (i11 != 1) {
            boolean z10 = false;
            if (i11 != 2) {
                if (i11 != 3) {
                    if (!this.f65358a.a()) {
                        this.f65358a.e(',');
                    }
                    this.f65358a.c();
                    G(descriptor.f(i10));
                    this.f65358a.e(':');
                    this.f65358a.o();
                } else {
                    if (i10 == 0) {
                        this.f65364g = true;
                    }
                    if (i10 == 1) {
                        this.f65358a.e(',');
                        this.f65358a.o();
                        this.f65364g = false;
                    }
                }
            } else if (this.f65358a.a()) {
                this.f65364g = true;
                this.f65358a.c();
            } else {
                if (i10 % 2 == 0) {
                    this.f65358a.e(',');
                    this.f65358a.c();
                    z10 = true;
                } else {
                    this.f65358a.e(':');
                    this.f65358a.o();
                }
                this.f65364g = z10;
            }
        } else {
            if (!this.f65358a.a()) {
                this.f65358a.e(',');
            }
            this.f65358a.c();
        }
        return true;
    }

    @Override
    public ty.c a() {
        return this.f65362e;
    }

    @Override
    public sy.d b(kotlinx.serialization.descriptors.f descriptor) {
        kotlinx.serialization.json.l lVar;
        Intrinsics.h(descriptor, "descriptor");
        WriteMode writeModeB = q0.b(d(), descriptor);
        char c10 = writeModeB.begin;
        if (c10 != 0) {
            this.f65358a.e(c10);
            this.f65358a.b();
        }
        if (this.f65365h != null) {
            L(descriptor);
            this.f65365h = null;
        }
        if (this.f65360c == writeModeB) {
            return this;
        }
        kotlinx.serialization.json.l[] lVarArr = this.f65361d;
        return (lVarArr == null || (lVar = lVarArr[writeModeB.ordinal()]) == null) ? new l0(this.f65358a, d(), writeModeB, this.f65361d) : lVar;
    }

    @Override
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        if (this.f65360c.end != 0) {
            this.f65358a.p();
            this.f65358a.c();
            this.f65358a.e(this.f65360c.end);
        }
    }

    @Override
    public kotlinx.serialization.json.a d() {
        return this.f65359b;
    }

    @Override
    public void e(kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(serializer, "serializer");
        if (!(serializer instanceof kotlinx.serialization.internal.b) || d().e().k()) {
            serializer.serialize(this, obj);
            return;
        }
        kotlinx.serialization.internal.b bVar = (kotlinx.serialization.internal.b) serializer;
        String strC = i0.c(serializer.getDescriptor(), d());
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Any");
        kotlinx.serialization.g gVarB = kotlinx.serialization.d.b(bVar, this, obj);
        i0.f(bVar, gVarB, strC);
        i0.b(gVarB.getDescriptor().d());
        this.f65365h = strC;
        gVarB.serialize(this, obj);
    }

    @Override
    public void g(double d10) {
        if (this.f65364g) {
            G(String.valueOf(d10));
        } else {
            this.f65358a.f(d10);
        }
        if (this.f65363f.a()) {
            return;
        }
        if (Double.isInfinite(d10) || Double.isNaN(d10)) {
            throw w.b(Double.valueOf(d10), this.f65358a.f65344a.toString());
        }
    }

    @Override
    public void h(byte b10) {
        if (this.f65364g) {
            G(String.valueOf((int) b10));
        } else {
            this.f65358a.d(b10);
        }
    }

    @Override
    public void i(kotlinx.serialization.descriptors.f descriptor, int i10, kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (obj != null || this.f65363f.f()) {
            super.i(descriptor, i10, serializer, obj);
        }
    }

    @Override
    public void k(kotlinx.serialization.descriptors.f enumDescriptor, int i10) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        G(enumDescriptor.f(i10));
    }

    @Override
    public sy.f l(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return m0.a(descriptor) ? new l0(K(), d(), this.f65360c, (kotlinx.serialization.json.l[]) null) : super.l(descriptor);
    }

    @Override
    public void m(long j10) {
        if (this.f65364g) {
            G(String.valueOf(j10));
        } else {
            this.f65358a.i(j10);
        }
    }

    @Override
    public void o() {
        this.f65358a.j("null");
    }

    @Override
    public void q(short s10) {
        if (this.f65364g) {
            G(String.valueOf((int) s10));
        } else {
            this.f65358a.k(s10);
        }
    }

    @Override
    public void r(boolean z10) {
        if (this.f65364g) {
            G(String.valueOf(z10));
        } else {
            this.f65358a.l(z10);
        }
    }

    @Override
    public void t(float f10) {
        if (this.f65364g) {
            G(String.valueOf(f10));
        } else {
            this.f65358a.g(f10);
        }
        if (this.f65363f.a()) {
            return;
        }
        if (Float.isInfinite(f10) || Float.isNaN(f10)) {
            throw w.b(Float.valueOf(f10), this.f65358a.f65344a.toString());
        }
    }

    @Override
    public void u(char c10) {
        G(String.valueOf(c10));
    }

    @Override
    public boolean z(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return this.f65363f.e();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l0(h0 output, kotlinx.serialization.json.a json, WriteMode mode, kotlinx.serialization.json.l[] modeReuseCache) {
        this(s.a(output, json), json, mode, modeReuseCache);
        Intrinsics.h(output, "output");
        Intrinsics.h(json, "json");
        Intrinsics.h(mode, "mode");
        Intrinsics.h(modeReuseCache, "modeReuseCache");
    }
}
