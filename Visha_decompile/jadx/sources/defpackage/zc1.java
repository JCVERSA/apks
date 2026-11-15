package defpackage;

import java.io.ByteArrayOutputStream;

public class zc1 {
    public final ByteArrayOutputStream a = new ByteArrayOutputStream();

    public static zc1 f() {
        return new zc1();
    }

    public zc1 a(boolean z) {
        this.a.write(z ? 1 : 0);
        return this;
    }

    public byte[] b() {
        return this.a.toByteArray();
    }

    public zc1 c(y93 y93Var) {
        try {
            this.a.write(y93Var.getEncoded());
            return this;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public zc1 d(byte[] bArr) {
        try {
            this.a.write(bArr);
            return this;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public zc1 e(byte[][] bArr) {
        try {
            for (byte[] bArr2 : bArr) {
                this.a.write(bArr2);
            }
            return this;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public zc1 g(int i, int i2) {
        while (this.a.size() < i2) {
            this.a.write(i);
        }
        return this;
    }

    public zc1 h(int i) {
        int i2 = i & 65535;
        this.a.write((byte) (i2 >>> 8));
        this.a.write((byte) i2);
        return this;
    }

    public zc1 i(int i) {
        this.a.write((byte) (i >>> 24));
        this.a.write((byte) (i >>> 16));
        this.a.write((byte) (i >>> 8));
        this.a.write((byte) i);
        return this;
    }

    public zc1 j(long j) {
        i((int) (j >>> 32));
        i((int) j);
        return this;
    }
}
