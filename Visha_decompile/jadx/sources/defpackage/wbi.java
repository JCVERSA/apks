package defpackage;

import java.util.Objects;

public final class wbi extends jai {
    public final int a;
    public final int b = 12;
    public final int c = 16;
    public final ubi d;

    public wbi(int i, int i2, int i3, ubi ubiVar, vbi vbiVar) {
        this.a = i;
        this.d = ubiVar;
    }

    public static tbi c() {
        return new tbi(null);
    }

    @Override
    public final boolean a() {
        return this.d != ubi.d;
    }

    public final int b() {
        return this.a;
    }

    public final ubi d() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof wbi)) {
            return false;
        }
        wbi wbiVar = (wbi) obj;
        return wbiVar.a == this.a && wbiVar.d == this.d;
    }

    public final int hashCode() {
        return Objects.hash(wbi.class, Integer.valueOf(this.a), 12, 16, this.d);
    }

    public final String toString() {
        return "AesGcm Parameters (variant: " + String.valueOf(this.d) + ", 12-byte IV, 16-byte tag, and " + this.a + "-byte key)";
    }
}
