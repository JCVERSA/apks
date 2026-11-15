package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.KotlinNothingValueException;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.json.internal.JsonElementMarker;
import kotlinx.serialization.json.internal.JsonNamesMapKt;
import kotlinx.serialization.json.internal.JsonTreeReader;
import kotlinx.serialization.json.internal.WriteMode;

public class xy9 extends t2 implements ia5 {
    public final u95 a;
    public final WriteMode b;
    public final c3 c;
    public final td9 d;
    public int e;
    public a f;
    public final da5 g;
    public final JsonElementMarker h;

    public static final class a {
        public String a;

        public a(String str) {
            this.a = str;
        }
    }

    public class b {
        public static final int[] a;

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
            a = iArr;
        }
    }

    public xy9(u95 u95Var, WriteMode writeMode, c3 c3Var, kotlinx.serialization.descriptors.a aVar, a aVar2) {
        y45.j(u95Var, "json");
        y45.j(writeMode, hb0.KEY_NAME_MODE);
        y45.j(c3Var, "lexer");
        y45.j(aVar, "descriptor");
        this.a = u95Var;
        this.b = writeMode;
        this.c = c3Var;
        this.d = u95Var.a();
        this.e = -1;
        this.f = aVar2;
        da5 da5VarD = u95Var.d();
        this.g = da5VarD;
        this.h = da5VarD.f() ? null : new JsonElementMarker(aVar);
    }

    @Override
    public Object A(kotlinx.serialization.descriptors.a aVar, int i, k92 k92Var, Object obj) {
        y45.j(aVar, "descriptor");
        y45.j(k92Var, "deserializer");
        boolean z = this.b == WriteMode.MAP && (i & 1) == 0;
        if (z) {
            this.c.b.d();
        }
        Object objA = super.A(aVar, i, k92Var, obj);
        if (z) {
            this.c.b.f(objA);
        }
        return objA;
    }

    @Override
    public Object B(k92 k92Var) {
        y45.j(k92Var, "deserializer");
        try {
            if ((k92Var instanceof p3) && !this.a.d().l()) {
                String strC = nc8.c(k92Var.getDescriptor(), this.a);
                String strL = this.c.l(strC, this.g.m());
                k92 k92VarC = strL != null ? ((p3) k92Var).c(this, strL) : null;
                if (k92VarC == null) {
                    return nc8.d(this, k92Var);
                }
                this.f = new a(strC);
                return k92VarC.deserialize(this);
            }
            return k92Var.deserialize(this);
        } catch (MissingFieldException e) {
            String message = e.getMessage();
            y45.g(message);
            if (j1a.X(message, "at path", false, 2, null)) {
                throw e;
            }
            throw new MissingFieldException(e.getMissingFields(), e.getMessage() + " at path: " + this.c.b.a(), e);
        }
    }

    @Override
    public boolean E() {
        JsonElementMarker jsonElementMarker = this.h;
        return ((jsonElementMarker != null ? jsonElementMarker.b() : false) || c3.O(this.c, false, 1, null)) ? false : true;
    }

    @Override
    public byte H() {
        long jP = this.c.p();
        byte b2 = (byte) jP;
        if (jP == b2) {
            return b2;
        }
        c3.y(this.c, "Failed to parse byte for input '" + jP + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final void K() {
        if (this.c.F() != 4) {
            return;
        }
        c3.y(this.c, "Unexpected leading comma", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final boolean L(kotlinx.serialization.descriptors.a aVar, int i) {
        String strG;
        u95 u95Var = this.a;
        kotlinx.serialization.descriptors.a aVarD = aVar.d(i);
        if (!aVarD.b() && this.c.N(true)) {
            return true;
        }
        if (!y45.e(aVarD.getKind(), id9.b.a) || ((aVarD.b() && this.c.N(false)) || (strG = this.c.G(this.g.m())) == null || JsonNamesMapKt.g(aVarD, u95Var, strG) != -3)) {
            return false;
        }
        this.c.q();
        return true;
    }

    public final int M() {
        boolean zM = this.c.M();
        if (!this.c.f()) {
            if (!zM) {
                return -1;
            }
            c3.y(this.c, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i = this.e;
        if (i != -1 && !zM) {
            c3.y(this.c, "Expected end of the array or comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i2 = i + 1;
        this.e = i2;
        return i2;
    }

    public final int N() {
        int i = this.e;
        boolean zM = false;
        boolean z = i % 2 != 0;
        if (!z) {
            this.c.o(':');
        } else if (i != -1) {
            zM = this.c.M();
        }
        if (!this.c.f()) {
            if (!zM) {
                return -1;
            }
            c3.y(this.c, "Expected '}', but had ',' instead", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (z) {
            if (this.e == -1) {
                c3 c3Var = this.c;
                int i2 = c3Var.a;
                if (zM) {
                    c3.y(c3Var, "Unexpected trailing comma", i2, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                c3 c3Var2 = this.c;
                int i3 = c3Var2.a;
                if (!zM) {
                    c3.y(c3Var2, "Expected comma after the key-value pair", i3, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            }
        }
        int i4 = this.e + 1;
        this.e = i4;
        return i4;
    }

    public final int O(kotlinx.serialization.descriptors.a aVar) {
        boolean zM;
        boolean zM2 = this.c.M();
        while (this.c.f()) {
            String strP = P();
            this.c.o(':');
            int iG = JsonNamesMapKt.g(aVar, this.a, strP);
            boolean z = false;
            if (iG == -3) {
                z = true;
                zM = false;
            } else {
                if (!this.g.d() || !L(aVar, iG)) {
                    JsonElementMarker jsonElementMarker = this.h;
                    if (jsonElementMarker != null) {
                        jsonElementMarker.c(iG);
                    }
                    return iG;
                }
                zM = this.c.M();
            }
            zM2 = z ? Q(strP) : zM;
        }
        if (zM2) {
            c3.y(this.c, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        JsonElementMarker jsonElementMarker2 = this.h;
        if (jsonElementMarker2 != null) {
            return jsonElementMarker2.d();
        }
        return -1;
    }

    public final String P() {
        return this.g.m() ? this.c.t() : this.c.k();
    }

    public final boolean Q(String str) {
        if (this.g.g() || S(this.f, str)) {
            this.c.I(this.g.m());
        } else {
            this.c.A(str);
        }
        return this.c.M();
    }

    public final void R(kotlinx.serialization.descriptors.a aVar) {
        while (v(aVar) != -1) {
        }
    }

    public final boolean S(a aVar, String str) {
        if (aVar == null || !y45.e(aVar.a, str)) {
            return false;
        }
        aVar.a = null;
        return true;
    }

    @Override
    public td9 a() {
        return this.d;
    }

    @Override
    public fd1 b(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "descriptor");
        WriteMode writeModeB = ppc.b(this.a, aVar);
        this.c.b.c(aVar);
        this.c.o(writeModeB.begin);
        K();
        int i = b.a[writeModeB.ordinal()];
        if (i != 1 && i != 2 && i != 3 && this.b == writeModeB && this.a.d().f()) {
            return this;
        }
        xy9 xy9Var = new xy9(this.a, writeModeB, this.c, aVar, this.f);
        return xy9Var;
    }

    @Override
    public void c(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "descriptor");
        if (this.a.d().g() && aVar.e() == 0) {
            R(aVar);
        }
        this.c.o(this.b.end);
        this.c.b.b();
    }

    @Override
    public final u95 d() {
        return this.a;
    }

    @Override
    public Void g() {
        return null;
    }

    @Override
    public long h() {
        return this.c.p();
    }

    @Override
    public short l() {
        long jP = this.c.p();
        short s = (short) jP;
        if (jP == s) {
            return s;
        }
        c3.y(this.c, "Failed to parse short for input '" + jP + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override
    public double m() {
        c3 c3Var = this.c;
        String strS = c3Var.s();
        try {
            double d = Double.parseDouble(strS);
            if (this.a.d().a() || !(Double.isInfinite(d) || Double.isNaN(d))) {
                return d;
            }
            oa5.i(this.c, Double.valueOf(d));
            throw new KotlinNothingValueException();
        } catch (IllegalArgumentException unused) {
            c3.y(c3Var, "Failed to parse type 'double' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public char n() {
        String strS = this.c.s();
        if (strS.length() == 1) {
            return strS.charAt(0);
        }
        c3.y(this.c, "Expected single char, but got '" + strS + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override
    public String o() {
        return this.g.m() ? this.c.t() : this.c.q();
    }

    @Override
    public int q(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "enumDescriptor");
        return JsonNamesMapKt.i(aVar, this.a, o(), " at path " + this.c.b.a());
    }

    @Override
    public kotlinx.serialization.json.b s() {
        return new JsonTreeReader(this.a.d(), this.c).e();
    }

    @Override
    public int t() {
        long jP = this.c.p();
        int i = (int) jP;
        if (jP == i) {
            return i;
        }
        c3.y(this.c, "Failed to parse int for input '" + jP + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override
    public int v(kotlinx.serialization.descriptors.a aVar) {
        int iN;
        y45.j(aVar, "descriptor");
        int i = b.a[this.b.ordinal()];
        if (i != 2) {
            iN = i != 4 ? M() : O(aVar);
        } else {
            iN = N();
        }
        if (this.b != WriteMode.MAP) {
            this.c.b.g(iN);
        }
        return iN;
    }

    @Override
    public hu1 w(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "descriptor");
        return zy9.b(aVar) ? new ja5(this.c, this.a) : super.w(aVar);
    }

    @Override
    public float x() {
        c3 c3Var = this.c;
        String strS = c3Var.s();
        try {
            float f = Float.parseFloat(strS);
            if (this.a.d().a() || !(Float.isInfinite(f) || Float.isNaN(f))) {
                return f;
            }
            oa5.i(this.c, Float.valueOf(f));
            throw new KotlinNothingValueException();
        } catch (IllegalArgumentException unused) {
            c3.y(c3Var, "Failed to parse type '" + TypedValues.Custom.S_FLOAT + "' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public boolean z() {
        return this.g.m() ? this.c.i() : this.c.g();
    }
}
