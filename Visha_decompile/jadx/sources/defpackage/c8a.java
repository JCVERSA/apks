package defpackage;

import org.mozilla.classfile.ByteCode;

public abstract class c8a {
    public final int a;

    public static class a extends c8a {
        public final ux8 b;
        public final xx8 c;
        public final ny9 d;

        public a() {
            super(64);
            this.b = new ux8();
            this.c = new xx8();
            this.d = zx8.b(f.k());
        }
    }

    public static class b extends c8a {
        public final yx8 b;
        public final wx8 c;
        public final wx8 d;
        public final yx8 e;

        public b() {
            super(ByteCode.JSR);
            this.b = new yx8(128);
            this.e = new yx8(256);
            this.d = new wx8(256);
            this.c = new wx8(512);
        }
    }

    public c8a(int i) {
        this.a = i;
    }
}
