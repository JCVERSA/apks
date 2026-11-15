package defpackage;

public final class m0i extends n1i {
    public int a;
    public String b;
    public byte c;

    @Override
    public final n1i a(String str) {
        this.b = str;
        return this;
    }

    @Override
    public final n1i b(int i) {
        this.a = i;
        this.c = (byte) 1;
        return this;
    }

    @Override
    public final o1i c() {
        if (this.c == 1) {
            return new o0i(this.a, this.b, null);
        }
        throw new IllegalStateException("Missing required properties: statusCode");
    }
}
