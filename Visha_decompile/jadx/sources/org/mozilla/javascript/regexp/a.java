package org.mozilla.javascript.regexp;

import androidx.media3.muxer.MuxerUtil;
import defpackage.xm8;
import defpackage.zm8;

public class a {
    public boolean a;
    public RECompiled b;
    public int c;
    public int d;
    public long[] e;
    public zm8 f;
    public xm8 g;

    public int a(int i) {
        return (int) this.e[i];
    }

    public int b(int i) {
        return (int) (this.e[i] >>> 32);
    }

    public void c(int i, int i2, int i3) {
        xm8 xm8Var = this.g;
        if (xm8Var != null) {
            long[] jArr = xm8Var.g;
            long[] jArr2 = this.e;
            if (jArr == jArr2) {
                this.e = (long[]) jArr2.clone();
            }
        }
        this.e[i] = (((long) i3) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }
}
