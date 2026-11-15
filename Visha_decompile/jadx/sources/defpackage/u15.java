package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public final class u15 extends s15 implements py0 {
    public static final a f = new a(null);
    public static final u15 g = new u15(1, 0);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final u15 a() {
            return u15.g;
        }

        public a() {
        }
    }

    public u15(int i, int i2) {
        super(i, i2, 1);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof u15) {
            if (!isEmpty() || !((u15) obj).isEmpty()) {
                u15 u15Var = (u15) obj;
                if (b() != u15Var.b() || c() != u15Var.c()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return c() + (b() * 31);
    }

    @Override
    public boolean isEmpty() {
        return b() > c();
    }

    public boolean m(int i) {
        return b() <= i && i <= c();
    }

    @Override
    public Integer getEndInclusive() {
        return Integer.valueOf(c());
    }

    @Override
    public Integer getStart() {
        return Integer.valueOf(b());
    }

    @Override
    public String toString() {
        return b() + FileTree.PARENT_DIR + c();
    }
}
