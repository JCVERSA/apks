package defpackage;

import android.text.TextUtils;
import androidx.media3.datasource.cache.CacheDataSink;
import com.mgadplus.mgutil.SourceKitLogger;
import java.io.File;

public abstract class yld {

    public static class a implements x1d.b {
        public final x1d a;
        public final String b;
        public final String c;

        public class C0460a implements z1d {
            public C0460a() {
            }

            @Override
            public void a(String str) {
                SourceKitLogger.c("mgmi", "MgmiDownloadManager onFinish，url：" + str);
            }

            @Override
            public void a(int i, String str) {
                SourceKitLogger.c("mgmi", "MgmiDownloadManager onFail，url：" + str + "，reason：" + i);
            }

            @Override
            public void a(long j, long j2, String str) {
            }
        }

        public a(x1d x1dVar, String str, String str2) {
            this.a = x1dVar;
            this.b = str;
            this.c = str2;
        }

        @Override
        public void a() {
            x1d x1dVar = this.a;
            if (x1dVar != null) {
                x1dVar.e(new x1d.a().d(this.b).b(this.c).a(new C0460a()));
            }
        }

        @Override
        public void b() {
            SourceKitLogger.a("mgmi", "MgmiDownloadManager onFreeSizeFail");
        }
    }

    public static class b implements z1d {
        @Override
        public void a(String str) {
            SourceKitLogger.c("mgmi", "MgmiDownloadManager onFinish，url：" + str);
        }

        @Override
        public void a(int i, String str) {
            SourceKitLogger.c("mgmi", "MgmiDownloadManager onFail，url：" + str + "，reason：" + i);
        }

        @Override
        public void a(long j, long j2, String str) {
        }
    }

    public static class c implements x1d.b {
        public final x1d a;
        public final String b;
        public final String c;
        public final e d;

        public c(x1d x1dVar, String str, String str2, e eVar) {
            this.a = x1dVar;
            this.b = str;
            this.c = str2;
            this.d = eVar;
        }

        @Override
        public void a() {
            x1d x1dVar = this.a;
            if (x1dVar != null) {
                x1dVar.e(new x1d.a().d(this.b).b(this.c).a(new a()));
            }
        }

        @Override
        public void b() {
        }

        public class a implements z1d {
            public a() {
            }

            @Override
            public void a(String str) {
                e eVar = c.this.d;
                if (eVar != null) {
                    eVar.a(str);
                }
            }

            @Override
            public void a(int i, String str) {
            }

            @Override
            public void a(long j, long j2, String str) {
            }
        }
    }

    public interface e {
        void a(int i, String str);

        void a(String str);
    }

    public static long a(String str, int i) {
        if (str != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    File file = new File(str);
                    if (file.exists() && file.isDirectory()) {
                        double d2 = i;
                        if (aud.a(file) < t3d.a(d2) - CacheDataSink.DEFAULT_FRAGMENT_SIZE) {
                            return 0L;
                        }
                        return t3d.a(d2);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 0L;
    }

    public static final String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return x1d.a(com.mgmi.ads.api.c.a()).k(str);
    }

    public static void c(String str, int i, String str2) {
        long jA = i > 0 ? a(str, i) : 0L;
        x1d x1dVarA = x1d.a(com.mgmi.ads.api.c.a());
        if (jA > 0) {
            if (x1dVarA != null) {
                x1dVarA.d(jA, new a(x1dVarA, str, str2), null, 0);
            }
        } else if (x1dVarA != null) {
            x1dVarA.e(new x1d.a().d(str).b(str2).a(new b()));
        }
    }

    public static void d(String str, int i, String str2, e eVar) {
        long jA = i > 0 ? a(str, i) : 0L;
        x1d x1dVarA = x1d.a(com.mgmi.ads.api.c.a());
        if (jA > 0) {
            if (x1dVarA != null) {
                x1dVarA.d(jA, new c(x1dVarA, str, str2, eVar), null, 0);
            }
        } else if (x1dVarA != null) {
            x1dVarA.e(new x1d.a().d(str).b(str2).a(new d(eVar)));
        }
    }

    public static class d implements z1d {
        public final e a;

        public d(e eVar) {
            this.a = eVar;
        }

        @Override
        public void a(String str) {
            e eVar = this.a;
            if (eVar != null) {
                eVar.a(str);
            }
        }

        @Override
        public void a(int i, String str) {
            e eVar = this.a;
            if (eVar != null) {
                eVar.a(i, str);
            }
        }

        @Override
        public void a(long j, long j2, String str) {
        }
    }
}
