package defpackage;

import java.util.Objects;

public final class cpf {
    public static final cpf e = new cpf(-1, -1, -1);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public cpf(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = kfh.k(i3) ? kfh.F(i3) * i2 : -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cpf)) {
            return false;
        }
        cpf cpfVar = (cpf) obj;
        return this.a == cpfVar.a && this.b == cpfVar.b && this.c == cpfVar.c;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c));
    }

    public final String toString() {
        return "AudioFormat[sampleRate=" + this.a + ", channelCount=" + this.b + ", encoding=" + this.c + "]";
    }
}
