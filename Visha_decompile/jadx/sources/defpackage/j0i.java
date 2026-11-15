package defpackage;

import android.os.IBinder;

public final class j0i extends l1i {
    public IBinder a;
    public String b;
    public int c;
    public float d;
    public int e;
    public String f;
    public byte g;

    @Override
    public final l1i a(String str) {
        this.f = str;
        return this;
    }

    @Override
    public final l1i b(String str) {
        this.b = str;
        return this;
    }

    @Override
    public final l1i c(int i) {
        this.g = (byte) (this.g | 4);
        return this;
    }

    @Override
    public final l1i d(int i) {
        this.c = i;
        this.g = (byte) (this.g | 1);
        return this;
    }

    @Override
    public final l1i e(float f) {
        this.d = f;
        this.g = (byte) (this.g | 2);
        return this;
    }

    @Override
    public final l1i f(int i) {
        this.g = (byte) (this.g | 8);
        return this;
    }

    @Override
    public final l1i g(IBinder iBinder) {
        if (iBinder == null) {
            throw new NullPointerException("Null windowToken");
        }
        this.a = iBinder;
        return this;
    }

    @Override
    public final l1i h(int i) {
        this.e = i;
        this.g = (byte) (this.g | 16);
        return this;
    }

    @Override
    public final m1i i() {
        IBinder iBinder;
        if (this.g == 31 && (iBinder = this.a) != null) {
            return new l0i(iBinder, this.b, this.c, this.d, 0, 0, null, this.e, null, this.f, null, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" windowToken");
        }
        if ((this.g & 1) == 0) {
            sb.append(" layoutGravity");
        }
        if ((this.g & 2) == 0) {
            sb.append(" layoutVerticalMargin");
        }
        if ((this.g & 4) == 0) {
            sb.append(" displayMode");
        }
        if ((this.g & 8) == 0) {
            sb.append(" triggerMode");
        }
        if ((this.g & 16) == 0) {
            sb.append(" windowWidthPx");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
