package defpackage;

import kotlin.KotlinNothingValueException;
import kotlinx.serialization.descriptors.a;

public final class ja5 extends t2 {
    public final c3 a;
    public final td9 b;

    public ja5(c3 c3Var, u95 u95Var) {
        y45.j(c3Var, "lexer");
        y45.j(u95Var, "json");
        this.a = c3Var;
        this.b = u95Var.a();
    }

    @Override
    public byte H() {
        c3 c3Var = this.a;
        String strS = c3Var.s();
        try {
            return hfb.a(strS);
        } catch (IllegalArgumentException unused) {
            c3.y(c3Var, "Failed to parse type 'UByte' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public td9 a() {
        return this.b;
    }

    @Override
    public long h() {
        c3 c3Var = this.a;
        String strS = c3Var.s();
        try {
            return hfb.g(strS);
        } catch (IllegalArgumentException unused) {
            c3.y(c3Var, "Failed to parse type 'ULong' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public short l() {
        c3 c3Var = this.a;
        String strS = c3Var.s();
        try {
            return hfb.j(strS);
        } catch (IllegalArgumentException unused) {
            c3.y(c3Var, "Failed to parse type 'UShort' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public int t() {
        c3 c3Var = this.a;
        String strS = c3Var.s();
        try {
            return hfb.d(strS);
        } catch (IllegalArgumentException unused) {
            c3.y(c3Var, "Failed to parse type 'UInt' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public int v(a aVar) {
        y45.j(aVar, "descriptor");
        throw new IllegalStateException("unsupported");
    }
}
