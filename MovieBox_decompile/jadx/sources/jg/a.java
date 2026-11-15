package jg;

import com.tn.lib.net.cons.HeaderType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Interceptor;

public final class a {

    public static final C0774a f63118a = new C0774a(null);

    public static final class C0774a {
        public C0774a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Interceptor a() {
            ag.b bVarB = ag.a.f344a.b();
            return (bVarB != null ? bVarB.a() : null) == HeaderType.ONE_ROOM ? new c() : new c();
        }

        private C0774a() {
        }
    }
}
