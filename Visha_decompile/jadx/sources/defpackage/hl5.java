package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class hl5 implements Iterator, qe5 {
    public static final a g = new a(null);
    public final CharSequence b;
    public int c;
    public int d;
    public int e;
    public int f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public hl5(CharSequence charSequence) {
        y45.j(charSequence, "string");
        this.b = charSequence;
    }

    @Override
    public String next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.c = 0;
        int i = this.e;
        int i2 = this.d;
        this.d = this.f + i;
        return this.b.subSequence(i2, i).toString();
    }

    @Override
    public boolean hasNext() {
        int i;
        int i2;
        int i3 = this.c;
        if (i3 != 0) {
            return i3 == 1;
        }
        if (this.f < 0) {
            this.c = 2;
            return false;
        }
        int length = this.b.length();
        int length2 = this.b.length();
        for (int i4 = this.d; i4 < length2; i4++) {
            char cCharAt = this.b.charAt(i4);
            if (cCharAt == '\n' || cCharAt == '\r') {
                i = (cCharAt == '\r' && (i2 = i4 + 1) < this.b.length() && this.b.charAt(i2) == '\n') ? 2 : 1;
                length = i4;
                this.c = 1;
                this.f = i;
                this.e = length;
                return true;
            }
        }
        i = -1;
        this.c = 1;
        this.f = i;
        this.e = length;
        return true;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
