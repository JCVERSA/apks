package fq;

import com.tencent.mmkv.MMKV;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final a f60489a = new a(null);

    private static final Lazy f60490b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return b.c();
        }
    });

    private static List f60491c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return b.f60491c;
        }

        private a() {
        }
    }

    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("search_mmKv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }
}
