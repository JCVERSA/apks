package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.e;
import defpackage.blb;

public final class a implements com.google.android.exoplayer2.e {
    public static final a h = new e().a();
    public static final com.google.android.exoplayer2.e.a i = new com.google.android.exoplayer2.e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return a.d(bundle);
        }
    };
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public d g;

    public static final class b {
        @DoNotInline
        public static void a(AudioAttributes.Builder builder, int i) {
            builder.setAllowedCapturePolicy(i);
        }
    }

    public static final class c {
        @DoNotInline
        public static void a(AudioAttributes.Builder builder, int i) {
            builder.setSpatializationBehavior(i);
        }
    }

    public static final class d {
        public final AudioAttributes a;

        public d(a aVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(aVar.b).setFlags(aVar.c).setUsage(aVar.d);
            int i = blb.a;
            if (i >= 29) {
                b.a(usage, aVar.e);
            }
            if (i >= 32) {
                c.a(usage, aVar.f);
            }
            this.a = usage.build();
        }
    }

    public static final class e {
        public int a = 0;
        public int b = 0;
        public int c = 1;
        public int d = 1;
        public int e = 0;

        public a a() {
            return new a(this.a, this.b, this.c, this.d, this.e);
        }

        public e b(int i) {
            this.d = i;
            return this;
        }

        public e c(int i) {
            this.a = i;
            return this;
        }

        public e d(int i) {
            this.b = i;
            return this;
        }

        public e e(int i) {
            this.e = i;
            return this;
        }

        public e f(int i) {
            this.c = i;
            return this;
        }
    }

    private static String c(int i2) {
        return Integer.toString(i2, 36);
    }

    public static a d(Bundle bundle) {
        e eVar = new e();
        if (bundle.containsKey(c(0))) {
            eVar.c(bundle.getInt(c(0)));
        }
        if (bundle.containsKey(c(1))) {
            eVar.d(bundle.getInt(c(1)));
        }
        if (bundle.containsKey(c(2))) {
            eVar.f(bundle.getInt(c(2)));
        }
        if (bundle.containsKey(c(3))) {
            eVar.b(bundle.getInt(c(3)));
        }
        if (bundle.containsKey(c(4))) {
            eVar.e(bundle.getInt(c(4)));
        }
        return eVar.a();
    }

    public d b() {
        if (this.g == null) {
            this.g = new d();
        }
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.b == aVar.b && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e && this.f == aVar.f;
    }

    public int hashCode() {
        return ((((((((527 + this.b) * 31) + this.c) * 31) + this.d) * 31) + this.e) * 31) + this.f;
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), this.b);
        bundle.putInt(c(1), this.c);
        bundle.putInt(c(2), this.d);
        bundle.putInt(c(3), this.e);
        bundle.putInt(c(4), this.f);
        return bundle;
    }

    public a(int i2, int i3, int i4, int i5, int i6) {
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }
}
