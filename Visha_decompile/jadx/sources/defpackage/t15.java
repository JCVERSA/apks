package defpackage;

import java.util.NoSuchElementException;

public final class t15 extends q15 {
    public final int b;
    public final int c;
    public boolean d;
    public int e;

    public t15(int i, int i2, int i3) {
        this.b = i3;
        this.c = i2;
        boolean z = false;
        if (i3 <= 0 ? i >= i2 : i <= i2) {
            z = true;
        }
        this.d = z;
        this.e = z ? i : i2;
    }

    @Override
    public boolean hasNext() {
        return this.d;
    }

    @Override
    public int nextInt() {
        int i = this.e;
        if (i != this.c) {
            this.e = this.b + i;
        } else {
            if (!this.d) {
                throw new NoSuchElementException();
            }
            this.d = false;
        }
        return i;
    }
}
