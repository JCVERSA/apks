package defpackage;

import java.io.InputStream;

public final class k85 implements kd9 {
    public final pv0 a;

    public k85(InputStream inputStream) {
        y45.j(inputStream, "stream");
        this.a = new pv0(inputStream, qv0.b);
    }

    @Override
    public int a(char[] cArr, int i, int i2) {
        y45.j(cArr, "buffer");
        return this.a.d(cArr, i, i2);
    }

    public final void b() {
        this.a.e();
    }
}
