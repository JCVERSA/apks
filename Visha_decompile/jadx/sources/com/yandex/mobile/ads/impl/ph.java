package com.yandex.mobile.ads.impl;

import android.media.AudioAttributes;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.ph;

public final class ph implements km {
    public static final ph h = new ph(0, 0, 1, 1, 0);
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;

    @Nullable
    private c g;

    @RequiresApi(29)
    public static final class a {
        @DoNotInline
        public static void a(AudioAttributes.Builder builder, int i) {
            builder.setAllowedCapturePolicy(i);
        }
    }

    @RequiresApi(32)
    public static final class b {
        @DoNotInline
        public static void a(AudioAttributes.Builder builder, int i) {
            builder.setSpatializationBehavior(i);
        }
    }

    @RequiresApi(21)
    public static final class c {
        public final AudioAttributes a;

        private c(ph phVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(phVar.b).setFlags(phVar.c).setUsage(phVar.d);
            int i = f92.a;
            if (i >= 29) {
                a.a(usage, phVar.e);
            }
            if (i >= 32) {
                b.a(usage, phVar.f);
            }
            this.a = usage.build();
        }
    }

    static {
        new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return ph.a(bundle);
            }
        };
    }

    private ph(int i, int i2, int i3, int i4, int i5) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
    }

    @RequiresApi(21)
    public final c a() {
        if (this.g == null) {
            this.g = new c();
        }
        return this.g;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ph.class != obj.getClass()) {
            return false;
        }
        ph phVar = (ph) obj;
        return this.b == phVar.b && this.c == phVar.c && this.d == phVar.d && this.e == phVar.e && this.f == phVar.f;
    }

    public final int hashCode() {
        return ((((((((this.b + 527) * 31) + this.c) * 31) + this.d) * 31) + this.e) * 31) + this.f;
    }

    public static ph a(Bundle bundle) {
        return new ph(bundle.containsKey(Integer.toString(0, 36)) ? bundle.getInt(Integer.toString(0, 36)) : 0, bundle.containsKey(Integer.toString(1, 36)) ? bundle.getInt(Integer.toString(1, 36)) : 0, bundle.containsKey(Integer.toString(2, 36)) ? bundle.getInt(Integer.toString(2, 36)) : 1, bundle.containsKey(Integer.toString(3, 36)) ? bundle.getInt(Integer.toString(3, 36)) : 1, bundle.containsKey(Integer.toString(4, 36)) ? bundle.getInt(Integer.toString(4, 36)) : 0);
    }
}
