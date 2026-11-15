package androidx.media3.common;

import androidx.media3.common.util.a1;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public final class m0 {

    public static final m0 f9799e = new m0(0, 0);

    private static final String f9800f = a1.C0(0);

    private static final String f9801g = a1.C0(1);

    private static final String f9802h = a1.C0(3);

    public final int f9803a;

    public final int f9804b;

    public final int f9805c;

    public final float f9806d;

    public m0(int i10, int i11) {
        this(i10, i11, 1.0f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m0)) {
            return false;
        }
        m0 m0Var = (m0) obj;
        return this.f9803a == m0Var.f9803a && this.f9804b == m0Var.f9804b && this.f9806d == m0Var.f9806d;
    }

    public int hashCode() {
        return ((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f9803a) * 31) + this.f9804b) * 31) + Float.floatToRawIntBits(this.f9806d);
    }

    public m0(int i10, int i11, float f10) {
        this.f9803a = i10;
        this.f9804b = i11;
        this.f9805c = 0;
        this.f9806d = f10;
    }
}
