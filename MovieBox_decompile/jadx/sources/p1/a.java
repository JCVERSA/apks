package p1;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    private final Map f68962a = new LinkedHashMap();

    public static final class C0848a extends a {

        public static final C0848a f68963b = new C0848a();

        private C0848a() {
        }

        @Override
        public Object a(b key) {
            Intrinsics.h(key, "key");
            return null;
        }
    }

    public interface b {
    }

    public abstract Object a(b bVar);

    public final Map b() {
        return this.f68962a;
    }
}
