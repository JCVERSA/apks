package defpackage;

import java.util.Objects;

public final class adi extends jai {
    public final String a;
    public final xci b;

    public adi(String str, xci xciVar) {
        this.a = str;
        this.b = xciVar;
    }

    public static adi c(String str, xci xciVar) {
        return new adi(str, xciVar);
    }

    @Override
    public final boolean a() {
        return this.b != xci.c;
    }

    public final xci b() {
        return this.b;
    }

    public final String d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof adi)) {
            return false;
        }
        adi adiVar = (adi) obj;
        return adiVar.a.equals(this.a) && adiVar.b.equals(this.b);
    }

    public final int hashCode() {
        return Objects.hash(adi.class, this.a, this.b);
    }

    public final String toString() {
        return "LegacyKmsAead Parameters (keyUri: " + this.a + ", variant: " + this.b.toString() + ")";
    }
}
