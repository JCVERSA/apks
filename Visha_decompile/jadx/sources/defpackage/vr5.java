package defpackage;

import androidx.collection.LruCache;

public class vr5 {
    public static final vr5 b = new vr5();
    public final LruCache a = new LruCache(20);

    public static vr5 b() {
        return b;
    }

    public ur5 a(String str) {
        if (str == null) {
            return null;
        }
        return (ur5) this.a.get(str);
    }

    public void c(String str, ur5 ur5Var) {
        if (str == null) {
            return;
        }
        this.a.put(str, ur5Var);
    }
}
