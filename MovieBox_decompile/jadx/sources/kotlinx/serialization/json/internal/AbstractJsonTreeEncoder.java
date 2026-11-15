package kotlinx.serialization.json.internal;

import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.f1;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonNull;

abstract class AbstractJsonTreeEncoder extends f1 implements kotlinx.serialization.json.l {

    private final kotlinx.serialization.json.a f65299b;

    private final Function1 f65300c;

    protected final kotlinx.serialization.json.f f65301d;

    private String f65302e;

    public static final class a extends sy.b {

        private final ty.c f65303a;

        final String f65305c;

        a(String str) {
            this.f65305c = str;
            this.f65303a = AbstractJsonTreeEncoder.this.d().a();
        }

        @Override
        public void B(int i10) {
            K(Long.toString(((long) UInt.b(i10)) & 4294967295L, 10));
        }

        public final void K(String s10) {
            Intrinsics.h(s10, "s");
            AbstractJsonTreeEncoder.this.w0(this.f65305c, new kotlinx.serialization.json.o(s10, false));
        }

        @Override
        public ty.c a() {
            return this.f65303a;
        }

        @Override
        public void h(byte b10) {
            K(UByte.f(UByte.b(b10)));
        }

        @Override
        public void m(long j10) {
            K(g.a(ULong.b(j10), 10));
        }

        @Override
        public void q(short s10) {
            K(UShort.f(UShort.b(s10)));
        }
    }

    public AbstractJsonTreeEncoder(kotlinx.serialization.json.a aVar, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, function1);
    }

    public static final String h0(AbstractJsonTreeEncoder abstractJsonTreeEncoder) {
        return (String) abstractJsonTreeEncoder.Y();
    }

    @Override
    public void A(kotlinx.serialization.json.h element) {
        Intrinsics.h(element, "element");
        e(JsonElementSerializer.f65255a, element);
    }

    @Override
    protected void X(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        this.f65300c.invoke(v0());
    }

    @Override
    public final ty.c a() {
        return this.f65299b.a();
    }

    @Override
    public sy.d b(kotlinx.serialization.descriptors.f descriptor) {
        AbstractJsonTreeEncoder c0Var;
        Intrinsics.h(descriptor, "descriptor");
        Function1<kotlinx.serialization.json.h, Unit> function1 = Z() == null ? this.f65300c : new Function1<kotlinx.serialization.json.h, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((kotlinx.serialization.json.h) obj);
                return Unit.f64096a;
            }

            public final void invoke(kotlinx.serialization.json.h node) {
                Intrinsics.h(node, "node");
                AbstractJsonTreeEncoder abstractJsonTreeEncoder = this.this$0;
                abstractJsonTreeEncoder.w0(AbstractJsonTreeEncoder.h0(abstractJsonTreeEncoder), node);
            }
        };
        kotlinx.serialization.descriptors.h hVarD = descriptor.d();
        if (Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.b.f65102a) ? true : hVarD instanceof kotlinx.serialization.descriptors.d) {
            c0Var = new e0(this.f65299b, function1);
        } else if (Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.c.f65103a)) {
            kotlinx.serialization.json.a aVar = this.f65299b;
            kotlinx.serialization.descriptors.f fVarA = q0.a(descriptor.h(0), aVar.a());
            kotlinx.serialization.descriptors.h hVarD2 = fVarA.d();
            if ((hVarD2 instanceof kotlinx.serialization.descriptors.e) || Intrinsics.c(hVarD2, kotlinx.serialization.descriptors.h.b.f65100a)) {
                c0Var = new g0(this.f65299b, function1);
            } else {
                if (!aVar.e().b()) {
                    throw w.d(fVarA);
                }
                c0Var = new e0(this.f65299b, function1);
            }
        } else {
            c0Var = new c0(this.f65299b, function1);
        }
        String str = this.f65302e;
        if (str != null) {
            Intrinsics.e(str);
            c0Var.w0(str, kotlinx.serialization.json.j.c(descriptor.i()));
            this.f65302e = null;
        }
        return c0Var;
    }

    @Override
    public final kotlinx.serialization.json.a d() {
        return this.f65299b;
    }

    @Override
    protected String d0(String parentName, String childName) {
        Intrinsics.h(parentName, "parentName");
        Intrinsics.h(childName, "childName");
        return childName;
    }

    @Override
    public void e(kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(serializer, "serializer");
        if (Z() == null && TreeJsonEncoderKt.b(q0.a(serializer.getDescriptor(), a()))) {
            z zVar = new z(this.f65299b, this.f65300c);
            zVar.e(serializer, obj);
            zVar.X(serializer.getDescriptor());
        } else {
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
            this.f65302e = strC;
            gVarB.serialize(this, obj);
        }
    }

    @Override
    public void J(String tag, boolean z10) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.a(Boolean.valueOf(z10)));
    }

    @Override
    public void K(String tag, byte b10) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Byte.valueOf(b10)));
    }

    @Override
    public void L(String tag, char c10) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.c(String.valueOf(c10)));
    }

    @Override
    public void M(String tag, double d10) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Double.valueOf(d10)));
        if (this.f65301d.a()) {
            return;
        }
        if (Double.isInfinite(d10) || Double.isNaN(d10)) {
            throw w.c(Double.valueOf(d10), tag, v0().toString());
        }
    }

    @Override
    public void N(String tag, kotlinx.serialization.descriptors.f enumDescriptor, int i10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        w0(tag, kotlinx.serialization.json.j.c(enumDescriptor.f(i10)));
    }

    @Override
    public void O(String tag, float f10) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Float.valueOf(f10)));
        if (this.f65301d.a()) {
            return;
        }
        if (Float.isInfinite(f10) || Float.isNaN(f10)) {
            throw w.c(Float.valueOf(f10), tag, v0().toString());
        }
    }

    @Override
    public void o() {
        String str = (String) Z();
        if (str == null) {
            this.f65300c.invoke(JsonNull.f65257c);
        } else {
            T(str);
        }
    }

    @Override
    public sy.f P(String tag, kotlinx.serialization.descriptors.f inlineDescriptor) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(inlineDescriptor, "inlineDescriptor");
        return m0.a(inlineDescriptor) ? new a(tag) : super.P(tag, inlineDescriptor);
    }

    @Override
    public void Q(String tag, int i10) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Integer.valueOf(i10)));
    }

    @Override
    public void R(String tag, long j10) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Long.valueOf(j10)));
    }

    @Override
    public void T(String tag) {
        Intrinsics.h(tag, "tag");
        w0(tag, JsonNull.f65257c);
    }

    @Override
    public void U(String tag, short s10) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Short.valueOf(s10)));
    }

    @Override
    public void V(String tag, String value) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(value, "value");
        w0(tag, kotlinx.serialization.json.j.c(value));
    }

    @Override
    public void W(String tag, Object value) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(value, "value");
        w0(tag, kotlinx.serialization.json.j.c(value.toString()));
    }

    @Override
    public void v() {
    }

    public abstract kotlinx.serialization.json.h v0();

    public abstract void w0(String str, kotlinx.serialization.json.h hVar);

    @Override
    public boolean z(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return this.f65301d.e();
    }

    private AbstractJsonTreeEncoder(kotlinx.serialization.json.a aVar, Function1 function1) {
        this.f65299b = aVar;
        this.f65300c = function1;
        this.f65301d = aVar.e();
    }
}
