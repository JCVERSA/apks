package defpackage;

import org.mozilla.classfile.ByteCode;

public abstract class b8a {
    public final int a;
    public final int b;

    public static class a extends b8a {
        public final ny9 c;

        public a() {
            super(64, 64);
            this.c = zx8.b(f.k());
        }
    }

    public static class b extends b8a {
        public final yx8 c;
        public final yx8 d;

        public b() {
            super(ByteCode.JSR, 136);
            this.c = new yx8(128);
            this.d = new yx8(256);
        }
    }

    public b8a(int i, int i2) {
        this.a = i;
        this.b = i2;
    }
}
