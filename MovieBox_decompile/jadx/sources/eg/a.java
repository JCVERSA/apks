package eg;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final C0723a f59670a = new C0723a(null);

    public static final class C0723a {
        public C0723a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(String token) {
            Intrinsics.h(token, "token");
            return "Bearer " + token;
        }

        private C0723a() {
        }
    }
}
