package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public final class jr5 extends hr5 implements py0 {
    public static final a f = new a(null);
    public static final jr5 g = new jr5(1, 0);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public jr5(long j, long j2) {
        super(j, j2, 1L);
    }

    public boolean equals(Object obj) {
        if (obj instanceof jr5) {
            if (!isEmpty() || !((jr5) obj).isEmpty()) {
                jr5 jr5Var = (jr5) obj;
                if (b() != jr5Var.b() || c() != jr5Var.c()) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (int) ((((long) 31) * (b() ^ (b() >>> 32))) + (c() ^ (c() >>> 32)));
    }

    public boolean isEmpty() {
        return b() > c();
    }

    @Override
    public Long getEndInclusive() {
        return Long.valueOf(c());
    }

    @Override
    public Long getStart() {
        return Long.valueOf(b());
    }

    public String toString() {
        return b() + FileTree.PARENT_DIR + c();
    }
}
