package defpackage;

import java.util.Objects;

public final class bbi extends jai {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final zai e;
    public final yai f;

    public bbi(int i, int i2, int i3, int i4, zai zaiVar, yai yaiVar, abi abiVar) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = zaiVar;
        this.f = yaiVar;
    }

    public static xai f() {
        return new xai(null);
    }

    @Override
    public final boolean a() {
        return this.e != zai.d;
    }

    public final int b() {
        return this.a;
    }

    public final int c() {
        return this.b;
    }

    public final int d() {
        return this.c;
    }

    public final int e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof bbi)) {
            return false;
        }
        bbi bbiVar = (bbi) obj;
        return bbiVar.a == this.a && bbiVar.b == this.b && bbiVar.c == this.c && bbiVar.d == this.d && bbiVar.e == this.e && bbiVar.f == this.f;
    }

    public final yai g() {
        return this.f;
    }

    public final zai h() {
        return this.e;
    }

    public final int hashCode() {
        return Objects.hash(bbi.class, Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.d), this.e, this.f);
    }

    public final String toString() {
        yai yaiVar = this.f;
        return "AesCtrHmacAead Parameters (variant: " + String.valueOf(this.e) + ", hashType: " + String.valueOf(yaiVar) + ", " + this.c + "-byte IV, and " + this.d + "-byte tags, and " + this.a + "-byte AES key, and " + this.b + "-byte HMAC key)";
    }
}
