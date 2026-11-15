package defpackage;

import androidx.core.os.TraceCompat;
import com.alibaba.android.arouter.utils.Consts;

public class mt5 {
    public final String[] a = new String[5];
    public final long[] b = new long[5];
    public int c = 0;
    public int d = 0;

    public void a(String str) {
        int i = this.c;
        if (i == 5) {
            this.d++;
            return;
        }
        this.a[i] = str;
        this.b[i] = System.nanoTime();
        TraceCompat.beginSection(str);
        this.c++;
    }

    public float b(String str) {
        int i = this.d;
        if (i > 0) {
            this.d = i - 1;
            return 0.0f;
        }
        int i2 = this.c - 1;
        this.c = i2;
        if (i2 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (str.equals(this.a[i2])) {
            TraceCompat.endSection();
            return (System.nanoTime() - this.b[this.c]) / 1000000.0f;
        }
        throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + this.a[this.c] + Consts.DOT);
    }
}
