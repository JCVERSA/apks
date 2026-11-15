package xg;

import com.tencent.mmkv.MMKV;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final C0941a f75335a = new C0941a(null);

    public static final class C0941a {
        public C0941a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MMKV a() {
            MMKV mmkvJ = MMKV.J("vshow", 2);
            Intrinsics.g(mmkvJ, "mmkvWithID(...)");
            return mmkvJ;
        }

        private C0941a() {
        }
    }
}
