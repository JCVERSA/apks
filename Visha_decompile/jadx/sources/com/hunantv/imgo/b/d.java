package com.hunantv.imgo.b;

public class d {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final int e;
    public final boolean f;

    public static final class a {
        private boolean a;
        private boolean c;
        private int e;
        private boolean b = false;
        private boolean d = true;
        private boolean f = true;

        public d a() {
            return new d(this);
        }
    }

    public static a a() {
        return new a();
    }

    private d(a aVar) {
        this.d = aVar.a;
        this.b = aVar.c;
        this.a = aVar.b;
        this.c = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
    }
}
