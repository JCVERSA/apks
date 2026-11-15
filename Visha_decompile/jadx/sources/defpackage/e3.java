package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.lzy.okgo.model.Progress;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.b;
import kotlinx.serialization.json.c;
import kotlinx.serialization.json.internal.JsonNamesMapKt;

public abstract class e3 extends iy6 implements ia5 {
    public final u95 c;
    public final b d;
    public final da5 e;

    public e3(u95 u95Var, b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(u95Var, bVar);
    }

    @Override
    public Object B(k92 k92Var) {
        y45.j(k92Var, "deserializer");
        return nc8.d(this, k92Var);
    }

    @Override
    public boolean E() {
        return !(f0() instanceof JsonNull);
    }

    @Override
    public String Z(String str, String str2) {
        y45.j(str, "parentName");
        y45.j(str2, "childName");
        return str2;
    }

    @Override
    public td9 a() {
        return d().a();
    }

    @Override
    public fd1 b(a aVar) {
        y45.j(aVar, "descriptor");
        b bVarF0 = f0();
        id9 kind = aVar.getKind();
        if (y45.e(kind, kotlinx.serialization.descriptors.b.C0418b.a) ? true : kind instanceof mc8) {
            u95 u95VarD = d();
            if (bVarF0 instanceof kotlinx.serialization.json.a) {
                return new hc5(u95VarD, (kotlinx.serialization.json.a) bVarF0);
            }
            throw oa5.d(-1, "Expected " + xq8.b(kotlinx.serialization.json.a.class) + " as the serialized body of " + aVar.h() + ", but had " + xq8.b(bVarF0.getClass()));
        }
        if (!y45.e(kind, kotlinx.serialization.descriptors.b.c.a)) {
            u95 u95VarD2 = d();
            if (bVarF0 instanceof JsonObject) {
                return new kotlinx.serialization.json.internal.b(u95VarD2, (JsonObject) bVarF0, null, null, 12, null);
            }
            throw oa5.d(-1, "Expected " + xq8.b(JsonObject.class) + " as the serialized body of " + aVar.h() + ", but had " + xq8.b(bVarF0.getClass()));
        }
        u95 u95VarD3 = d();
        a aVarA = ppc.a(aVar.d(0), u95VarD3.a());
        id9 kind2 = aVarA.getKind();
        if ((kind2 instanceof ef8) || y45.e(kind2, id9.b.a)) {
            u95 u95VarD4 = d();
            if (bVarF0 instanceof JsonObject) {
                return new ic5(u95VarD4, (JsonObject) bVarF0);
            }
            throw oa5.d(-1, "Expected " + xq8.b(JsonObject.class) + " as the serialized body of " + aVar.h() + ", but had " + xq8.b(bVarF0.getClass()));
        }
        if (!u95VarD3.d().b()) {
            throw oa5.c(aVarA);
        }
        u95 u95VarD5 = d();
        if (bVarF0 instanceof kotlinx.serialization.json.a) {
            return new hc5(u95VarD5, (kotlinx.serialization.json.a) bVarF0);
        }
        throw oa5.d(-1, "Expected " + xq8.b(kotlinx.serialization.json.a.class) + " as the serialized body of " + aVar.h() + ", but had " + xq8.b(bVarF0.getClass()));
    }

    @Override
    public void c(a aVar) {
        y45.j(aVar, "descriptor");
    }

    @Override
    public u95 d() {
        return this.c;
    }

    public final wa5 d0(c cVar, String str) {
        wa5 wa5Var = cVar instanceof wa5 ? (wa5) cVar : null;
        if (wa5Var != null) {
            return wa5Var;
        }
        throw oa5.d(-1, "Unexpected 'null' when " + str + " was expected");
    }

    public abstract b e0(String str);

    public final b f0() {
        b bVarE0;
        String str = (String) U();
        return (str == null || (bVarE0 = e0(str)) == null) ? s0() : bVarE0;
    }

    @Override
    public boolean J(String str) {
        y45.j(str, Progress.TAG);
        c cVarR0 = r0(str);
        if (!d().d().m() && d0(cVarR0, TypedValues.Custom.S_BOOLEAN).f()) {
            throw oa5.e(-1, "Boolean literal for key '" + str + "' should be unquoted.\nUse 'isLenient = true' in 'Json {}` builder to accept non-compliant JSON.", f0().toString());
        }
        try {
            Boolean boolE = la5.e(cVarR0);
            if (boolE != null) {
                return boolE.booleanValue();
            }
            throw new IllegalArgumentException();
        } catch (IllegalArgumentException unused) {
            t0(TypedValues.Custom.S_BOOLEAN);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public byte K(String str) {
        y45.j(str, Progress.TAG);
        try {
            int iJ = la5.j(r0(str));
            Byte bValueOf = (-128 > iJ || iJ > 127) ? null : Byte.valueOf((byte) iJ);
            if (bValueOf != null) {
                return bValueOf.byteValue();
            }
            t0("byte");
            throw new KotlinNothingValueException();
        } catch (IllegalArgumentException unused) {
            t0("byte");
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public char L(String str) {
        y45.j(str, Progress.TAG);
        try {
            return l1a.t1(r0(str).b());
        } catch (IllegalArgumentException unused) {
            t0("char");
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public double M(String str) {
        y45.j(str, Progress.TAG);
        try {
            double dG = la5.g(r0(str));
            if (d().d().a() || !(Double.isInfinite(dG) || Double.isNaN(dG))) {
                return dG;
            }
            throw oa5.a(Double.valueOf(dG), str, f0().toString());
        } catch (IllegalArgumentException unused) {
            t0("double");
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public int N(String str, a aVar) {
        y45.j(str, Progress.TAG);
        y45.j(aVar, "enumDescriptor");
        return JsonNamesMapKt.j(aVar, d(), r0(str).b(), null, 4, null);
    }

    @Override
    public float O(String str) {
        y45.j(str, Progress.TAG);
        try {
            float fI = la5.i(r0(str));
            if (d().d().a() || !(Float.isInfinite(fI) || Float.isNaN(fI))) {
                return fI;
            }
            throw oa5.a(Float.valueOf(fI), str, f0().toString());
        } catch (IllegalArgumentException unused) {
            t0(TypedValues.Custom.S_FLOAT);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public hu1 P(String str, a aVar) {
        y45.j(str, Progress.TAG);
        y45.j(aVar, "inlineDescriptor");
        return zy9.b(aVar) ? new ja5(new oz9(r0(str).b()), d()) : super.P(str, aVar);
    }

    @Override
    public int Q(String str) {
        y45.j(str, Progress.TAG);
        try {
            return la5.j(r0(str));
        } catch (IllegalArgumentException unused) {
            t0("int");
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public long R(String str) {
        y45.j(str, Progress.TAG);
        try {
            return la5.m(r0(str));
        } catch (IllegalArgumentException unused) {
            t0("long");
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public short S(String str) {
        y45.j(str, Progress.TAG);
        try {
            int iJ = la5.j(r0(str));
            Short shValueOf = (-32768 > iJ || iJ > 32767) ? null : Short.valueOf((short) iJ);
            if (shValueOf != null) {
                return shValueOf.shortValue();
            }
            t0("short");
            throw new KotlinNothingValueException();
        } catch (IllegalArgumentException unused) {
            t0("short");
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public String T(String str) {
        y45.j(str, Progress.TAG);
        c cVarR0 = r0(str);
        if (d().d().m() || d0(cVarR0, "string").f()) {
            if (cVarR0 instanceof JsonNull) {
                throw oa5.e(-1, "Unexpected 'null' value instead of string literal", f0().toString());
            }
            return cVarR0.b();
        }
        throw oa5.e(-1, "String literal for key '" + str + "' should be quoted.\nUse 'isLenient = true' in 'Json {}` builder to accept non-compliant JSON.", f0().toString());
    }

    public final c r0(String str) {
        y45.j(str, Progress.TAG);
        b bVarE0 = e0(str);
        c cVar = bVarE0 instanceof c ? (c) bVarE0 : null;
        if (cVar != null) {
            return cVar;
        }
        throw oa5.e(-1, "Expected JsonPrimitive at " + str + ", found " + bVarE0, f0().toString());
    }

    @Override
    public b s() {
        return f0();
    }

    public abstract b s0();

    public final Void t0(String str) {
        throw oa5.e(-1, "Failed to parse '" + str + '\'', f0().toString());
    }

    @Override
    public hu1 w(a aVar) {
        y45.j(aVar, "descriptor");
        return U() != null ? super.w(aVar) : new qb5(d(), s0()).w(aVar);
    }

    public e3(u95 u95Var, b bVar) {
        this.c = u95Var;
        this.d = bVar;
        this.e = d().d();
    }
}
