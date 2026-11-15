package defpackage;

public class sw7 {
    public int a;
    public String b;

    public sw7(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public String toString() {
        return this.a + ": " + this.b;
    }

    public sw7(int i, String str, Object... objArr) {
        this.b = String.format(str, objArr);
        this.a = i;
    }
}
