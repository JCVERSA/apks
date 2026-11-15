package x4;

import androidx.core.os.s;

public class h {

    private final String[] f75080a = new String[5];

    private final long[] f75081b = new long[5];

    private int f75082c = 0;

    private int f75083d = 0;

    public void a(String str) {
        int i10 = this.f75082c;
        if (i10 == 5) {
            this.f75083d++;
            return;
        }
        this.f75080a[i10] = str;
        this.f75081b[i10] = System.nanoTime();
        s.a(str);
        this.f75082c++;
    }

    public float b(String str) {
        int i10 = this.f75083d;
        if (i10 > 0) {
            this.f75083d = i10 - 1;
            return 0.0f;
        }
        int i11 = this.f75082c - 1;
        this.f75082c = i11;
        if (i11 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (str.equals(this.f75080a[i11])) {
            s.b();
            return (System.nanoTime() - this.f75081b[this.f75082c]) / 1000000.0f;
        }
        throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + this.f75080a[this.f75082c] + ".");
    }
}
