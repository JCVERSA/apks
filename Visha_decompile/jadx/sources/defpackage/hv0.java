package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public final class hv0 extends fv0 implements py0 {
    public static final a f = new a(null);
    public static final hv0 g = new hv0(1, 0);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public hv0(char c, char c2) {
        super(c, c2, 1);
    }

    public boolean equals(Object obj) {
        if (obj instanceof hv0) {
            if (!isEmpty() || !((hv0) obj).isEmpty()) {
                hv0 hv0Var = (hv0) obj;
                if (b() != hv0Var.b() || c() != hv0Var.c()) {
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
        return c() + (b() * 31);
    }

    public boolean isEmpty() {
        return y45.l(b(), c()) > 0;
    }

    @Override
    public Character getEndInclusive() {
        return Character.valueOf(c());
    }

    @Override
    public Character getStart() {
        return Character.valueOf(b());
    }

    public String toString() {
        return b() + FileTree.PARENT_DIR + c();
    }
}
