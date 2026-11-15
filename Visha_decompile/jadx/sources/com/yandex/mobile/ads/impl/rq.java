package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.rq;
import java.util.Arrays;

public final class rq implements km {
    public static final km.a<rq> g = new km.a() {
        @Override
        public final km fromBundle(Bundle bundle) {
            return rq.a(bundle);
        }
    };
    public final int b;
    public final int c;
    public final int d;

    @Nullable
    public final byte[] e;
    private int f;

    public rq(int i, int i2, int i3, @Nullable byte[] bArr) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = bArr;
    }

    public static rq a(Bundle bundle) {
        return new rq(bundle.getInt(Integer.toString(0, 36), -1), bundle.getInt(Integer.toString(1, 36), -1), bundle.getInt(Integer.toString(2, 36), -1), bundle.getByteArray(Integer.toString(3, 36)));
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || rq.class != obj.getClass()) {
            return false;
        }
        rq rqVar = (rq) obj;
        return this.b == rqVar.b && this.c == rqVar.c && this.d == rqVar.d && Arrays.equals(this.e, rqVar.e);
    }

    public final int hashCode() {
        if (this.f == 0) {
            this.f = Arrays.hashCode(this.e) + ((((((this.b + 527) * 31) + this.c) * 31) + this.d) * 31);
        }
        return this.f;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ColorInfo(");
        sb.append(this.b);
        sb.append(", ");
        sb.append(this.c);
        sb.append(", ");
        sb.append(this.d);
        sb.append(", ");
        sb.append(this.e != null);
        sb.append(")");
        return sb.toString();
    }
}
