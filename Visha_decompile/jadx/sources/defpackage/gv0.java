package defpackage;

import java.util.NoSuchElementException;

public final class gv0 extends cv0 {
    public final int b;
    public final int c;
    public boolean d;
    public int e;

    public gv0(char c, char c2, int i) {
        this.b = i;
        this.c = c2;
        boolean z = false;
        if (i <= 0 ? y45.l(c, c2) >= 0 : y45.l(c, c2) <= 0) {
            z = true;
        }
        this.d = z;
        this.e = z ? c : c2;
    }

    @Override
    public char b() {
        int i = this.e;
        if (i != this.c) {
            this.e = this.b + i;
        } else {
            if (!this.d) {
                throw new NoSuchElementException();
            }
            this.d = false;
        }
        return (char) i;
    }

    @Override
    public boolean hasNext() {
        return this.d;
    }
}
