package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.os.Bundle;
import com.google.android.exoplayer2.util.p0;

public final class e implements com.google.android.exoplayer2.k {

    public static final e f23942g = new C0342e().a();

    public static final com.google.android.exoplayer2.k.a f23943h = new com.google.android.exoplayer2.k.a() {
        @Override
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return e.d(bundle);
        }
    };

    public final int f23944a;

    public final int f23945b;

    public final int f23946c;

    public final int f23947d;

    public final int f23948e;

    private d f23949f;

    private static final class b {
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setAllowedCapturePolicy(i10);
        }
    }

    private static final class c {
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setSpatializationBehavior(i10);
        }
    }

    public static final class d {

        public final AudioAttributes f23950a;

        private d(e eVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(eVar.f23944a).setFlags(eVar.f23945b).setUsage(eVar.f23946c);
            int i10 = p0.f26854a;
            if (i10 >= 29) {
                b.a(usage, eVar.f23947d);
            }
            if (i10 >= 32) {
                c.a(usage, eVar.f23948e);
            }
            this.f23950a = usage.build();
        }
    }

    public static final class C0342e {

        private int f23951a = 0;

        private int f23952b = 0;

        private int f23953c = 1;

        private int f23954d = 1;

        private int f23955e = 0;

        public e a() {
            return new e(this.f23951a, this.f23952b, this.f23953c, this.f23954d, this.f23955e);
        }

        public C0342e b(int i10) {
            this.f23954d = i10;
            return this;
        }

        public C0342e c(int i10) {
            this.f23951a = i10;
            return this;
        }

        public C0342e d(int i10) {
            this.f23952b = i10;
            return this;
        }

        public C0342e e(int i10) {
            this.f23955e = i10;
            return this;
        }

        public C0342e f(int i10) {
            this.f23953c = i10;
            return this;
        }
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public static e d(Bundle bundle) {
        C0342e c0342e = new C0342e();
        if (bundle.containsKey(c(0))) {
            c0342e.c(bundle.getInt(c(0)));
        }
        if (bundle.containsKey(c(1))) {
            c0342e.d(bundle.getInt(c(1)));
        }
        if (bundle.containsKey(c(2))) {
            c0342e.f(bundle.getInt(c(2)));
        }
        if (bundle.containsKey(c(3))) {
            c0342e.b(bundle.getInt(c(3)));
        }
        if (bundle.containsKey(c(4))) {
            c0342e.e(bundle.getInt(c(4)));
        }
        return c0342e.a();
    }

    public d b() {
        if (this.f23949f == null) {
            this.f23949f = new d();
        }
        return this.f23949f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f23944a == eVar.f23944a && this.f23945b == eVar.f23945b && this.f23946c == eVar.f23946c && this.f23947d == eVar.f23947d && this.f23948e == eVar.f23948e;
    }

    public int hashCode() {
        return ((((((((527 + this.f23944a) * 31) + this.f23945b) * 31) + this.f23946c) * 31) + this.f23947d) * 31) + this.f23948e;
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), this.f23944a);
        bundle.putInt(c(1), this.f23945b);
        bundle.putInt(c(2), this.f23946c);
        bundle.putInt(c(3), this.f23947d);
        bundle.putInt(c(4), this.f23948e);
        return bundle;
    }

    private e(int i10, int i11, int i12, int i13, int i14) {
        this.f23944a = i10;
        this.f23945b = i11;
        this.f23946c = i12;
        this.f23947d = i13;
        this.f23948e = i14;
    }
}
