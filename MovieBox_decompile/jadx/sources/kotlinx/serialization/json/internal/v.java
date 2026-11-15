package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;

public final class v extends sy.a {

    private final a f65375a;

    private final ty.c f65376b;

    public v(a lexer, kotlinx.serialization.json.a json) {
        Intrinsics.h(lexer, "lexer");
        Intrinsics.h(json, "json");
        this.f65375a = lexer;
        this.f65376b = json.a();
    }

    @Override
    public byte H() {
        a aVar = this.f65375a;
        String strS = aVar.s();
        try {
            return UStringsKt.a(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'UByte' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public ty.c a() {
        return this.f65376b;
    }

    @Override
    public int h() {
        a aVar = this.f65375a;
        String strS = aVar.s();
        try {
            return UStringsKt.d(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'UInt' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public long l() {
        a aVar = this.f65375a;
        String strS = aVar.s();
        try {
            return UStringsKt.g(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'ULong' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        throw new IllegalStateException("unsupported");
    }

    @Override
    public short s() {
        a aVar = this.f65375a;
        String strS = aVar.s();
        try {
            return UStringsKt.j(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'UShort' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }
}
