package jr;

import android.app.Application;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final a f63248a = new a(null);

    private static jr.a f63249b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a() {
            if (b.f63249b == null) {
                b.f63249b = b();
            }
        }

        private final jr.a b() {
            return mr.b.f66686a.a();
        }

        public final void c(Application application) {
            Intrinsics.h(application, "application");
            mr.b.f66686a.b(application);
        }

        public final void d(int i10) {
            a();
            jr.a aVar = b.f63249b;
            if (aVar != null) {
                aVar.a(i10);
            }
        }

        public final void e(CharSequence charSequence) {
            a();
            jr.a aVar = b.f63249b;
            if (aVar != null) {
                aVar.b(charSequence);
            }
        }

        private a() {
        }
    }
}
