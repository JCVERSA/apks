package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.MissingFieldException;

public class k0 extends sy.a implements kotlinx.serialization.json.g {

    private final kotlinx.serialization.json.a f65348a;

    private final WriteMode f65349b;

    public final kotlinx.serialization.json.internal.a f65350c;

    private final ty.c f65351d;

    private int f65352e;

    private a f65353f;

    private final kotlinx.serialization.json.f f65354g;

    private final JsonElementMarker f65355h;

    public static final class a {

        public String f65356a;

        public a(String str) {
            this.f65356a = str;
        }
    }

    public class b {

        public static final int[] f65357a;

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
            try {
                iArr[WriteMode.OBJ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f65357a = iArr;
        }
    }

    public k0(kotlinx.serialization.json.a json, WriteMode mode, kotlinx.serialization.json.internal.a lexer, kotlinx.serialization.descriptors.f descriptor, a aVar) {
        Intrinsics.h(json, "json");
        Intrinsics.h(mode, "mode");
        Intrinsics.h(lexer, "lexer");
        Intrinsics.h(descriptor, "descriptor");
        this.f65348a = json;
        this.f65349b = mode;
        this.f65350c = lexer;
        this.f65351d = json.a();
        this.f65352e = -1;
        this.f65353f = aVar;
        kotlinx.serialization.json.f fVarE = json.e();
        this.f65354g = fVarE;
        this.f65355h = fVarE.f() ? null : new JsonElementMarker(descriptor);
    }

    private final void K() {
        if (this.f65350c.E() != 4) {
            return;
        }
        kotlinx.serialization.json.internal.a.y(this.f65350c, "Unexpected leading comma", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final boolean L(kotlinx.serialization.descriptors.f fVar, int i10) {
        String strF;
        kotlinx.serialization.json.a aVar = this.f65348a;
        kotlinx.serialization.descriptors.f fVarH = fVar.h(i10);
        if (!fVarH.b() && !this.f65350c.M()) {
            return true;
        }
        if (!Intrinsics.c(fVarH.d(), kotlinx.serialization.descriptors.h.b.f65100a) || (strF = this.f65350c.F(this.f65354g.l())) == null || JsonNamesMapKt.d(fVarH, aVar, strF) != -3) {
            return false;
        }
        this.f65350c.q();
        return true;
    }

    private final int M() {
        boolean zL = this.f65350c.L();
        if (!this.f65350c.f()) {
            if (!zL) {
                return -1;
            }
            kotlinx.serialization.json.internal.a.y(this.f65350c, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i10 = this.f65352e;
        if (i10 != -1 && !zL) {
            kotlinx.serialization.json.internal.a.y(this.f65350c, "Expected end of the array or comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i11 = i10 + 1;
        this.f65352e = i11;
        return i11;
    }

    private final int N() {
        int i10 = this.f65352e;
        boolean zL = false;
        boolean z10 = i10 % 2 != 0;
        if (!z10) {
            this.f65350c.o(':');
        } else if (i10 != -1) {
            zL = this.f65350c.L();
        }
        if (!this.f65350c.f()) {
            if (!zL) {
                return -1;
            }
            kotlinx.serialization.json.internal.a.y(this.f65350c, "Expected '}', but had ',' instead", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (z10) {
            if (this.f65352e == -1) {
                kotlinx.serialization.json.internal.a aVar = this.f65350c;
                int i11 = aVar.f65317a;
                if (zL) {
                    kotlinx.serialization.json.internal.a.y(aVar, "Unexpected trailing comma", i11, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                kotlinx.serialization.json.internal.a aVar2 = this.f65350c;
                int i12 = aVar2.f65317a;
                if (!zL) {
                    kotlinx.serialization.json.internal.a.y(aVar2, "Expected comma after the key-value pair", i12, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            }
        }
        int i13 = this.f65352e + 1;
        this.f65352e = i13;
        return i13;
    }

    private final int O(kotlinx.serialization.descriptors.f fVar) {
        boolean zL;
        boolean zL2 = this.f65350c.L();
        while (this.f65350c.f()) {
            String strP = P();
            this.f65350c.o(':');
            int iD = JsonNamesMapKt.d(fVar, this.f65348a, strP);
            boolean z10 = false;
            if (iD == -3) {
                z10 = true;
                zL = false;
            } else {
                if (!this.f65354g.d() || !L(fVar, iD)) {
                    JsonElementMarker jsonElementMarker = this.f65355h;
                    if (jsonElementMarker != null) {
                        jsonElementMarker.c(iD);
                    }
                    return iD;
                }
                zL = this.f65350c.L();
            }
            zL2 = z10 ? Q(strP) : zL;
        }
        if (zL2) {
            kotlinx.serialization.json.internal.a.y(this.f65350c, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        JsonElementMarker jsonElementMarker2 = this.f65355h;
        if (jsonElementMarker2 != null) {
            return jsonElementMarker2.d();
        }
        return -1;
    }

    private final String P() {
        return this.f65354g.l() ? this.f65350c.t() : this.f65350c.k();
    }

    private final boolean Q(String str) {
        if (this.f65354g.g() || S(this.f65353f, str)) {
            this.f65350c.H(this.f65354g.l());
        } else {
            this.f65350c.A(str);
        }
        return this.f65350c.L();
    }

    private final void R(kotlinx.serialization.descriptors.f fVar) {
        while (o(fVar) != -1) {
        }
    }

    private final boolean S(a aVar, String str) {
        if (aVar == null || !Intrinsics.c(aVar.f65356a, str)) {
            return false;
        }
        aVar.f65356a = null;
        return true;
    }

    @Override
    public boolean D() {
        JsonElementMarker jsonElementMarker = this.f65355h;
        return !(jsonElementMarker != null ? jsonElementMarker.b() : false) && this.f65350c.M();
    }

    @Override
    public Object G(kotlinx.serialization.a deserializer) {
        Intrinsics.h(deserializer, "deserializer");
        try {
            if ((deserializer instanceof kotlinx.serialization.internal.b) && !this.f65348a.e().k()) {
                String strC = i0.c(deserializer.getDescriptor(), this.f65348a);
                String strL = this.f65350c.l(strC, this.f65354g.l());
                kotlinx.serialization.a aVarC = strL != null ? ((kotlinx.serialization.internal.b) deserializer).c(this, strL) : null;
                if (aVarC == null) {
                    return i0.d(this, deserializer);
                }
                this.f65353f = new a(strC);
                return aVarC.deserialize(this);
            }
            return deserializer.deserialize(this);
        } catch (MissingFieldException e10) {
            throw new MissingFieldException(e10.getMissingFields(), e10.getMessage() + " at path: " + this.f65350c.f65318b.a(), e10);
        }
    }

    @Override
    public byte H() {
        long jP = this.f65350c.p();
        byte b10 = (byte) jP;
        if (jP == b10) {
            return b10;
        }
        kotlinx.serialization.json.internal.a.y(this.f65350c, "Failed to parse byte for input '" + jP + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override
    public ty.c a() {
        return this.f65351d;
    }

    @Override
    public sy.c b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        WriteMode writeModeB = q0.b(this.f65348a, descriptor);
        this.f65350c.f65318b.c(descriptor);
        this.f65350c.o(writeModeB.begin);
        K();
        int i10 = b.f65357a[writeModeB.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return new k0(this.f65348a, writeModeB, this.f65350c, descriptor, this.f65353f);
        }
        return (this.f65349b == writeModeB && this.f65348a.e().f()) ? this : new k0(this.f65348a, writeModeB, this.f65350c, descriptor, this.f65353f);
    }

    @Override
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        if (this.f65348a.e().g() && descriptor.e() == 0) {
            R(descriptor);
        }
        this.f65350c.o(this.f65349b.end);
        this.f65350c.f65318b.b();
    }

    @Override
    public final kotlinx.serialization.json.a d() {
        return this.f65348a;
    }

    @Override
    public int e(kotlinx.serialization.descriptors.f enumDescriptor) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        return JsonNamesMapKt.e(enumDescriptor, this.f65348a, z(), " at path " + this.f65350c.f65318b.a());
    }

    @Override
    public kotlinx.serialization.json.h g() {
        return new JsonTreeReader(this.f65348a.e(), this.f65350c).e();
    }

    @Override
    public int h() {
        long jP = this.f65350c.p();
        int i10 = (int) jP;
        if (jP == i10) {
            return i10;
        }
        kotlinx.serialization.json.internal.a.y(this.f65350c, "Failed to parse int for input '" + jP + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override
    public Void j() {
        return null;
    }

    @Override
    public long l() {
        return this.f65350c.p();
    }

    @Override
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        int iN;
        Intrinsics.h(descriptor, "descriptor");
        int i10 = b.f65357a[this.f65349b.ordinal()];
        if (i10 != 2) {
            iN = i10 != 4 ? M() : O(descriptor);
        } else {
            iN = N();
        }
        if (this.f65349b != WriteMode.MAP) {
            this.f65350c.f65318b.g(iN);
        }
        return iN;
    }

    @Override
    public sy.e q(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return m0.a(descriptor) ? new v(this.f65350c, this.f65348a) : super.q(descriptor);
    }

    @Override
    public short s() {
        long jP = this.f65350c.p();
        short s10 = (short) jP;
        if (jP == s10) {
            return s10;
        }
        kotlinx.serialization.json.internal.a.y(this.f65350c, "Failed to parse short for input '" + jP + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override
    public float t() {
        kotlinx.serialization.json.internal.a aVar = this.f65350c;
        String strS = aVar.s();
        try {
            float f10 = Float.parseFloat(strS);
            if (this.f65348a.e().a() || !(Float.isInfinite(f10) || Float.isNaN(f10))) {
                return f10;
            }
            w.j(this.f65350c, Float.valueOf(f10));
            throw new KotlinNothingValueException();
        } catch (IllegalArgumentException unused) {
            kotlinx.serialization.json.internal.a.y(aVar, "Failed to parse type 'float' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public double v() {
        kotlinx.serialization.json.internal.a aVar = this.f65350c;
        String strS = aVar.s();
        try {
            double d10 = Double.parseDouble(strS);
            if (this.f65348a.e().a() || !(Double.isInfinite(d10) || Double.isNaN(d10))) {
                return d10;
            }
            w.j(this.f65350c, Double.valueOf(d10));
            throw new KotlinNothingValueException();
        } catch (IllegalArgumentException unused) {
            kotlinx.serialization.json.internal.a.y(aVar, "Failed to parse type 'double' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public boolean w() {
        return this.f65354g.l() ? this.f65350c.i() : this.f65350c.g();
    }

    @Override
    public char x() {
        String strS = this.f65350c.s();
        if (strS.length() == 1) {
            return strS.charAt(0);
        }
        kotlinx.serialization.json.internal.a.y(this.f65350c, "Expected single char, but got '" + strS + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override
    public Object y(kotlinx.serialization.descriptors.f descriptor, int i10, kotlinx.serialization.a deserializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(deserializer, "deserializer");
        boolean z10 = this.f65349b == WriteMode.MAP && (i10 & 1) == 0;
        if (z10) {
            this.f65350c.f65318b.d();
        }
        Object objY = super.y(descriptor, i10, deserializer, obj);
        if (z10) {
            this.f65350c.f65318b.f(objY);
        }
        return objY;
    }

    @Override
    public String z() {
        return this.f65354g.l() ? this.f65350c.t() : this.f65350c.q();
    }
}
