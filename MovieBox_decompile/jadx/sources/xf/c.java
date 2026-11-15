package xf;

import android.app.Application;
import android.os.Environment;
import android.util.Log;
import com.elvishew.xlog.printer.file.FilePrinter;
import com.tn.lib.logger.xlog.LogType;
import h8.d;
import java.io.File;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import s7.e;

public final class c {

    private static Application f75331b;

    private static boolean f75332c;

    public static final a f75330a = new a(null);

    private static LogType f75333d = LogType.TYPE_LOGCAT;

    public static final class a {

        public class C0940a {

            public static final int[] f75334a;

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
                f75334a = iArr;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void g(a aVar, Application application, LogType logType, boolean z10, String str, long j10, int i10, Object obj) {
            if ((i10 & 8) != 0) {
                str = "";
            }
            String str2 = str;
            if ((i10 & 16) != 0) {
                j10 = 0;
            }
            aVar.f(application, logType, z10, str2, j10);
        }

        private final void h(String str, long j10, boolean z10) {
            i(str, j10, z10);
        }

        private final void i(String str, long j10, boolean z10) {
            String strC = c(b());
            if (str.length() <= 0) {
                str = strC;
            }
            s7.a aVarR = new s7.a.C0881a().B(Integer.MIN_VALUE).E("X-LOG").A(new w7.a()).H(new z7.a()).G(new y7.a()).F(new yf.b()).D(new a8.a()).q(new v7.b()).p(new c8.a() {
                @Override
                public final s7.b a(s7.b bVar) {
                    return c.a.j(bVar);
                }
            }).r();
            g8.a aVar = new g8.a();
            FilePrinter filePrinterB = str.length() > 0 ? new FilePrinter.b(str).d(new yf.a()).a(new d()).c(new yf.c()).f(new t7.a()).b() : null;
            if (z10) {
                if (filePrinterB == null) {
                    e.f(aVarR, aVar);
                    return;
                } else {
                    e.f(aVarR, aVar, filePrinterB);
                    return;
                }
            }
            if (filePrinterB == null) {
                e.e(aVarR);
            } else {
                e.f(aVarR, filePrinterB);
            }
        }

        private final boolean k() {
            return Intrinsics.c(Environment.getExternalStorageState(), "mounted");
        }

        public final Application b() {
            return c.f75331b;
        }

        public final String c(Application application) {
            if (application == null) {
                throw new RuntimeException("日志库传入Application为空");
            }
            if (k()) {
                StringBuilder sb2 = new StringBuilder();
                File externalFilesDir = application.getExternalFilesDir(null);
                sb2.append(externalFilesDir != null ? externalFilesDir.getParent() : null);
                sb2.append(File.separator);
                sb2.append("log");
                return sb2.toString();
            }
            StringBuilder sb3 = new StringBuilder();
            File filesDir = application.getFilesDir();
            sb3.append(filesDir != null ? filesDir.getParent() : null);
            sb3.append(File.separator);
            sb3.append("log");
            return sb3.toString();
        }

        public final LogType d() {
            return c.f75333d;
        }

        public final boolean e() {
            return c.f75332c;
        }

        public final void f(Application application, LogType logType, boolean z10, String loggerPath, long j10) {
            Intrinsics.h(application, "application");
            Intrinsics.h(logType, "logType");
            Intrinsics.h(loggerPath, "loggerPath");
            a aVar = c.f75330a;
            if (aVar.b() != null) {
                return;
            }
            c.f75333d = logType;
            c.f75332c = z10 || Log.isLoggable("oneroom_logger", 3);
            aVar.l(application);
            int i10 = C0940a.f75334a[logType.ordinal()];
            if (i10 == 1) {
                h(loggerPath, j10, z10);
            } else {
                if (i10 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                i(loggerPath, j10, z10);
            }
        }

        public final void l(Application application) {
            c.f75331b = application;
        }

        private a() {
        }

        public static final s7.b j(s7.b bVar) {
            return bVar;
        }
    }
}
