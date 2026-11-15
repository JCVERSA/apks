package ns;

import android.app.Application;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final a f67352a = new a(null);

    private static ns.a f67353b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a() {
            if (b.f67353b == null) {
                b.f67353b = b();
            }
        }

        private final ns.a b() {
            return qs.b.f70230a.a();
        }

        public final void c(Application application) {
            Intrinsics.h(application, "application");
            qs.b.f70230a.b(application);
        }

        public final void d(int i10) {
            a();
            ns.a aVar = b.f67353b;
            if (aVar != null) {
                aVar.a(i10);
            }
        }

        public final void e(CharSequence charSequence) {
            a();
            ns.a aVar = b.f67353b;
            if (aVar != null) {
                aVar.b(charSequence);
            }
        }

        public final void f(int i10, CharSequence text, int i11, int i12, int i13) {
            Intrinsics.h(text, "text");
            a();
            ns.a aVar = b.f67353b;
            if (aVar != null) {
                aVar.c(i10, text, i11, i12, i13);
            }
        }

        private a() {
        }
    }
}
