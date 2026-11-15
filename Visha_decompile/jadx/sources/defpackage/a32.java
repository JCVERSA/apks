package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.Version;
import java.lang.ref.ReferenceQueue;
import java.util.WeakHashMap;

public class a32 extends b32 {
    public static final WeakHashMap k = new WeakHashMap();
    public static final ReferenceQueue l = new ReferenceQueue();

    public static class a implements a0d.a {
        public static final a a = new a();

        @Override
        public b a(xd0 xd0Var) {
            return new z22(xd0Var, true);
        }
    }

    public a32(Version version) {
        super(version);
    }

    public z22 m() {
        return (z22) a0d.b(this, k, l, a.a);
    }
}
