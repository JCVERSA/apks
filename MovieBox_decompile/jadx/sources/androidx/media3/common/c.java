package androidx.media3.common;

import android.media.AudioAttributes;
import androidx.media3.common.util.a1;

public final class c {

    public static final c f9595g = new e().a();

    private static final String f9596h = a1.C0(0);

    private static final String f9597i = a1.C0(1);

    private static final String f9598j = a1.C0(2);

    private static final String f9599k = a1.C0(3);

    private static final String f9600l = a1.C0(4);

    public final int f9601a;

    public final int f9602b;

    public final int f9603c;

    public final int f9604d;

    public final int f9605e;

    private d f9606f;

    private static final class b {
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setAllowedCapturePolicy(i10);
        }
    }

    private static final class C0082c {
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setSpatializationBehavior(i10);
        }
    }

    public static final class d {

        public final AudioAttributes f9607a;

        private d(c cVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(cVar.f9601a).setFlags(cVar.f9602b).setUsage(cVar.f9603c);
            int i10 = a1.f10038a;
            if (i10 >= 29) {
                b.a(usage, cVar.f9604d);
            }
            if (i10 >= 32) {
                C0082c.a(usage, cVar.f9605e);
            }
            this.f9607a = usage.build();
        }
    }

    public static final class e {

        private int f9608a = 0;

        private int f9609b = 0;

        private int f9610c = 1;

        private int f9611d = 1;

        private int f9612e = 0;

        public c a() {
            return new c(this.f9608a, this.f9609b, this.f9610c, this.f9611d, this.f9612e);
        }
    }

    public d a() {
        if (this.f9606f == null) {
            this.f9606f = new d();
        }
        return this.f9606f;
    }

    public int b() {
        if ((this.f9602b & 1) == 1) {
            return 1;
        }
        switch (this.f9603c) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 12:
            default:
                return 3;
            case 13:
                return 1;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f9601a == cVar.f9601a && this.f9602b == cVar.f9602b && this.f9603c == cVar.f9603c && this.f9604d == cVar.f9604d && this.f9605e == cVar.f9605e;
    }

    public int hashCode() {
        return ((((((((527 + this.f9601a) * 31) + this.f9602b) * 31) + this.f9603c) * 31) + this.f9604d) * 31) + this.f9605e;
    }

    private c(int i10, int i11, int i12, int i13, int i14) {
        this.f9601a = i10;
        this.f9602b = i11;
        this.f9603c = i12;
        this.f9604d = i13;
        this.f9605e = i14;
    }
}
