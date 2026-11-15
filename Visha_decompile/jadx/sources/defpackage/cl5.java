package defpackage;

import java.io.InputStream;

public abstract class cl5 extends InputStream {
    public final InputStream b;
    public int c;

    public cl5(InputStream inputStream, int i) {
        this.b = inputStream;
        this.c = i;
    }

    public int b() {
        return this.c;
    }

    public void d(boolean z) {
        InputStream inputStream = this.b;
        if (inputStream instanceof hz4) {
            ((hz4) inputStream).g(z);
        }
    }
}
