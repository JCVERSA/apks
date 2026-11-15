package fh;

import android.app.Application;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final a f60176a = new a(null);

    private static fh.a f60177b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a() {
            if (b.f60177b == null) {
                b.f60177b = b();
            }
        }

        private final fh.a b() {
            return ih.b.f62091a.a();
        }

        public final void c(Application application) {
            Intrinsics.h(application, "application");
            ih.b.f62091a.b(application);
        }

        public final void d(int i10) {
            a();
            fh.a aVar = b.f60177b;
            if (aVar != null) {
                aVar.a(i10);
            }
        }

        public final void e(CharSequence charSequence) {
            a();
            fh.a aVar = b.f60177b;
            if (aVar != null) {
                aVar.b(charSequence);
            }
        }

        public final void f(CharSequence charSequence, int i10) {
            a();
            fh.a aVar = b.f60177b;
            if (aVar != null) {
                aVar.d(charSequence, i10);
            }
        }

        public final void g(int i10, CharSequence text, int i11, int i12, int i13) {
            Intrinsics.h(text, "text");
            a();
            fh.a aVar = b.f60177b;
            if (aVar != null) {
                aVar.c(i10, text, i11, i12, i13);
            }
        }

        private a() {
        }
    }
}
