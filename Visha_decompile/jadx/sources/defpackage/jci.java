package defpackage;

import java.util.Objects;

public final class jci extends jai {
    public final int a;
    public final hci b;

    public jci(int i, hci hciVar, ici iciVar) {
        this.a = i;
        this.b = hciVar;
    }

    public static gci c() {
        return new gci(null);
    }

    @Override
    public final boolean a() {
        return this.b != hci.d;
    }

    public final int b() {
        return this.a;
    }

    public final hci d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof jci)) {
            return false;
        }
        jci jciVar = (jci) obj;
        return jciVar.a == this.a && jciVar.b == this.b;
    }

    public final int hashCode() {
        return Objects.hash(jci.class, Integer.valueOf(this.a), this.b);
    }

    public final String toString() {
        return "AesGcmSiv Parameters (variant: " + String.valueOf(this.b) + ", " + this.a + "-byte key)";
    }
}
