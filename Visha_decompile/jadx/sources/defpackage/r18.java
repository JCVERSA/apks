package defpackage;

import com.google.common.base.Optional;
import java.lang.ref.WeakReference;

public abstract class r18 {
    public static final oy7 a = c();

    public static final class b implements oy7 {
        public b() {
        }
    }

    public static String a(String str) {
        if (e(str)) {
            return null;
        }
        return str;
    }

    public static Optional b(Class cls, String str) {
        WeakReference weakReference = (WeakReference) hb3.a(cls).get(str);
        return weakReference == null ? Optional.absent() : Optional.fromNullable((Enum) cls.cast(weakReference.get()));
    }

    public static oy7 c() {
        return new b();
    }

    public static String d(String str) {
        return str == null ? "" : str;
    }

    public static boolean e(String str) {
        return str == null || str.isEmpty();
    }
}
