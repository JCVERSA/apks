package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public class s15 implements Iterable, qe5 {
    public static final a e = new a(null);
    public final int b;
    public final int c;
    public final int d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final s15 a(int i, int i2, int i3) {
            return new s15(i, i2, i3);
        }

        public a() {
        }
    }

    public s15(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i3 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.b = i;
        this.c = xh8.c(i, i2, i3);
        this.d = i3;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof s15) {
            if (!isEmpty() || !((s15) obj).isEmpty()) {
                s15 s15Var = (s15) obj;
                if (this.b != s15Var.b || this.c != s15Var.c || this.d != s15Var.d) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f() {
        return this.d;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return this.d + (((this.b * 31) + this.c) * 31);
    }

    public boolean isEmpty() {
        if (this.d > 0) {
            if (this.b <= this.c) {
                return false;
            }
        } else if (this.b >= this.c) {
            return false;
        }
        return true;
    }

    @Override
    public q15 iterator() {
        return new t15(this.b, this.c, this.d);
    }

    public String toString() {
        StringBuilder sb;
        int i;
        if (this.d > 0) {
            sb = new StringBuilder();
            sb.append(this.b);
            sb.append(FileTree.PARENT_DIR);
            sb.append(this.c);
            sb.append(" step ");
            i = this.d;
        } else {
            sb = new StringBuilder();
            sb.append(this.b);
            sb.append(" downTo ");
            sb.append(this.c);
            sb.append(" step ");
            i = -this.d;
        }
        sb.append(i);
        return sb.toString();
    }
}
