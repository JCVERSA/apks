package ag;

import android.app.Application;
import android.util.Log;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final C0003a f344a = new C0003a(null);

    private static Application f345b;

    private static b f346c;

    private static boolean f347d;

    public static final class C0003a {
        public C0003a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return a.f347d;
        }

        public final b b() {
            return a.f346c;
        }

        public final boolean c() {
            b bVarB = b();
            return (bVarB != null ? bVarB.c() : false) || Log.isLoggable("net_proxy_tag", 3);
        }

        public final boolean d() {
            b bVarB;
            if (a() || (bVarB = b()) == null) {
                return false;
            }
            return bVarB.d();
        }

        public final void e(Application application) {
            a.f345b = application;
        }

        public final void f(Application application, b bVar) {
            Intrinsics.h(application, "application");
            e(application);
            i(bVar);
        }

        public final void g(boolean z10) {
            a.f347d = z10;
        }

        public final void h(boolean z10) {
            g(z10);
        }

        public final void i(b bVar) {
            a.f346c = bVar;
        }

        private C0003a() {
        }
    }
}
