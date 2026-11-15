package wf;

import android.util.Log;
import com.tn.lib.logger.xlog.LogType;
import java.util.Arrays;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import xf.c;
import zf.b;
import zf.d;

public final class a {

    public static final C0922a f74274a = new C0922a(null);

    private static xf.a f74275b;

    public static final class C0922a {

        public class C0923a {

            public static final int[] f74276a;

            static {
                int[] iArr = new int[LogType.values().length];
                try {
                    iArr[LogType.TYPE_LOGCAT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LogType.TYPE_XLOG.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f74276a = iArr;
            }
        }

        public C0922a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String a(String str) {
            String str2 = "MB_" + str;
            if (str2.length() <= 23) {
                return str2;
            }
            String strSubstring = str2.substring(0, 23);
            Intrinsics.g(strSubstring, "substring(...)");
            return strSubstring;
        }

        public static void e(C0922a c0922a, String str, String str2, Throwable th2, boolean z10, int i10, Object obj) {
            if ((i10 & 8) != 0) {
                z10 = false;
            }
            c0922a.b(str, str2, th2, z10);
        }

        public static void f(C0922a c0922a, String str, String str2, boolean z10, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            c0922a.c(str, str2, z10);
        }

        public static void g(C0922a c0922a, String str, boolean z10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            c0922a.d(str, z10);
        }

        public static void k(C0922a c0922a, String str, String str2, Throwable th2, boolean z10, int i10, Object obj) {
            if ((i10 & 8) != 0) {
                z10 = false;
            }
            c0922a.h(str, str2, th2, z10);
        }

        public static void l(C0922a c0922a, String str, String str2, boolean z10, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            c0922a.i(str, str2, z10);
        }

        public static void m(C0922a c0922a, String str, boolean z10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            c0922a.j(str, z10);
        }

        private final xf.a n() {
            int i10 = C0923a.f74276a[c.f75330a.d().ordinal()];
            if (i10 == 1) {
                return b.f76777b.a();
            }
            if (i10 == 2) {
                return d.f76780b.a();
            }
            throw new NoWhenBranchMatchedException();
        }

        public static void q(C0922a c0922a, String str, boolean z10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            c0922a.o(str, z10);
        }

        public static void r(C0922a c0922a, String str, String[] strArr, boolean z10, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            c0922a.p(str, strArr, z10);
        }

        private final boolean s(String str, boolean z10) {
            return !z10 || Log.isLoggable(a(str), 3);
        }

        private final boolean t(String str) {
            return Log.isLoggable(a(str), 3);
        }

        public static void v(C0922a c0922a, String str, String str2, boolean z10, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            c0922a.u(str, str2, z10);
        }

        public static void y(C0922a c0922a, String str, String str2, Throwable th2, boolean z10, int i10, Object obj) {
            if ((i10 & 8) != 0) {
                z10 = false;
            }
            c0922a.w(str, str2, th2, z10);
        }

        public static void z(C0922a c0922a, String str, String str2, boolean z10, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            c0922a.x(str, str2, z10);
        }

        public final void b(String tag, String msg, Throwable throwable, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            Intrinsics.h(throwable, "throwable");
            if (t(tag)) {
                b.f76777b.a().f(a(tag), msg, throwable.getStackTrace().toString());
                return;
            }
            if (!z10) {
                b.f76777b.a().d(a(tag), msg, throwable.getStackTrace().toString());
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.e(a(tag), msg, throwable.getStackTrace().toString());
            }
        }

        public final void c(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            if (t(tag)) {
                b.f76777b.a().f(a(tag), msg);
                return;
            }
            if (!z10) {
                b.f76777b.a().e(a(tag), msg);
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.e(a(tag), msg);
            }
        }

        public final void d(String msg, boolean z10) {
            Intrinsics.h(msg, "msg");
            if (!z10) {
                b.f76777b.a().c(msg);
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.c(msg);
            }
        }

        public final void h(String tag, String msg, Throwable throwable, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            Intrinsics.h(throwable, "throwable");
            if (s(tag, z10)) {
                b.f76777b.a().g(a(tag), msg, throwable.getStackTrace().toString());
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.g(a(tag), msg, throwable.getStackTrace().toString());
            }
        }

        public final void i(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            if (s(tag, z10)) {
                b.f76777b.a().g(a(tag), msg);
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.g(a(tag), msg);
            }
        }

        public final void j(String msg, boolean z10) {
            Intrinsics.h(msg, "msg");
            if (!z10) {
                b.f76777b.a().b(msg);
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.b(msg);
            }
        }

        public final void o(String msg, boolean z10) {
            Intrinsics.h(msg, "msg");
            if (!z10) {
                b.f76777b.a().a(msg);
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.a(msg);
            }
        }

        public final void p(String tag, String[] msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            if (t(tag)) {
                b.f76777b.a().f(a(tag), (String[]) Arrays.copyOf(msg, msg.length));
                return;
            }
            if (!z10) {
                b.f76777b.a().d(a(tag), (String[]) Arrays.copyOf(msg, msg.length));
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.d(a(tag), (String[]) Arrays.copyOf(msg, msg.length));
            }
        }

        public final void u(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            if (t(tag)) {
                b.f76777b.a().f(a(tag), msg);
                return;
            }
            if (!z10) {
                b.f76777b.a().h(a(tag), msg);
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.h(a(tag), msg);
            }
        }

        public final void w(String tag, String msg, Throwable throwable, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            Intrinsics.h(throwable, "throwable");
            if (s(tag, z10)) {
                b.f76777b.a().f(a(tag), msg, throwable.getStackTrace().toString());
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.f(a(tag), msg, throwable.getStackTrace().toString());
            }
        }

        public final void x(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            if (s(tag, z10)) {
                b.f76777b.a().f(a(tag), msg);
                return;
            }
            if (a.f74275b == null) {
                a.f74275b = n();
            }
            xf.a aVar = a.f74275b;
            if (aVar != null) {
                aVar.f(a(tag), msg);
            }
        }

        private C0922a() {
        }
    }

    public static final void c(String str, String str2, boolean z10) {
        f74274a.c(str, str2, z10);
    }
}
