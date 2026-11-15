package defpackage;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import java.util.Arrays;

public final class v81 implements e {
    public static final e.a g = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return v81.e(bundle);
        }
    };
    public final int b;
    public final int c;
    public final int d;
    public final byte[] e;
    public int f;

    public v81(int i, int i2, int i3, byte[] bArr) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = bArr;
    }

    public static int b(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int c(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    private static String d(int i) {
        return Integer.toString(i, 36);
    }

    public static v81 e(Bundle bundle) {
        return new v81(bundle.getInt(d(0), -1), bundle.getInt(d(1), -1), bundle.getInt(d(2), -1), bundle.getByteArray(d(3)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v81.class != obj.getClass()) {
            return false;
        }
        v81 v81Var = (v81) obj;
        return this.b == v81Var.b && this.c == v81Var.c && this.d == v81Var.d && Arrays.equals(this.e, v81Var.e);
    }

    public int hashCode() {
        if (this.f == 0) {
            this.f = ((((((527 + this.b) * 31) + this.c) * 31) + this.d) * 31) + Arrays.hashCode(this.e);
        }
        return this.f;
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), this.b);
        bundle.putInt(d(1), this.c);
        bundle.putInt(d(2), this.d);
        bundle.putByteArray(d(3), this.e);
        return bundle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ColorInfo(");
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
