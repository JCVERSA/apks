package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

final class e implements Iterator, KMappedMarker {

    private static final a f64595f = new a(null);

    private final CharSequence f64596a;

    private int f64597b;

    private int f64598c;

    private int f64599d;

    private int f64600e;

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public e(CharSequence string) {
        Intrinsics.h(string, "string");
        this.f64596a = string;
    }

    @Override
    public String next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f64597b = 0;
        int i10 = this.f64599d;
        int i11 = this.f64598c;
        this.f64598c = this.f64600e + i10;
        return this.f64596a.subSequence(i11, i10).toString();
    }

    @Override
    public boolean hasNext() {
        int i10;
        int i11;
        int i12 = this.f64597b;
        if (i12 != 0) {
            return i12 == 1;
        }
        if (this.f64600e < 0) {
            this.f64597b = 2;
            return false;
        }
        int length = this.f64596a.length();
        int length2 = this.f64596a.length();
        for (int i13 = this.f64598c; i13 < length2; i13++) {
            char cCharAt = this.f64596a.charAt(i13);
            if (cCharAt == '\n' || cCharAt == '\r') {
                i10 = (cCharAt == '\r' && (i11 = i13 + 1) < this.f64596a.length() && this.f64596a.charAt(i11) == '\n') ? 2 : 1;
                length = i13;
                this.f64597b = 1;
                this.f64600e = i10;
                this.f64599d = length;
                return true;
            }
        }
        i10 = -1;
        this.f64597b = 1;
        this.f64600e = i10;
        this.f64599d = length;
        return true;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
