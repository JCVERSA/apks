package defpackage;

public class nf3 {
    public int a;
    public int b;
    public int c;

    public nf3(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public int a() {
        return this.b;
    }

    public int b() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        nf3 nf3Var = (nf3) obj;
        return this.a == nf3Var.a && this.b == nf3Var.b && this.c == nf3Var.c;
    }

    public int hashCode() {
        return (((this.a * 31) + this.b) * 31) + this.c;
    }
}
