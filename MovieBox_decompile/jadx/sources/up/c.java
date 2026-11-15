package up;

import com.tencent.mmkv.MMKV;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final a f73222a = new a(null);

    private static final Lazy f73223b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return c.e();
        }
    });

    private static List f73224c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return c.f73224c;
        }

        public final MMKV b() {
            return (MMKV) c.f73223b.getValue();
        }

        public final void c(List list) {
            c.f73224c = list;
        }

        private a() {
        }
    }

    public static final MMKV e() {
        MMKV mmkvI = MMKV.I("search_mmKv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }
}
