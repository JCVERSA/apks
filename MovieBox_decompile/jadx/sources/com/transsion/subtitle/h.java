package com.transsion.subtitle;

import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

public interface h {

    public static final a f52857a = a.f52858a;

    public static final class a {

        static final a f52858a = new a();

        private static final Lazy f52859b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return h.a.c();
            }
        });

        private a() {
        }

        public static final VideoSubtitleManagerImp c() {
            return new VideoSubtitleManagerImp();
        }

        public final h b() {
            return (h) f52859b.getValue();
        }
    }

    public static final class b {
        public static void a(h hVar, DownloadBean downloadBean, Function1 function1, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onVideoPageInNet2CheckSubtitle");
            }
            if ((i10 & 2) != 0) {
                function1 = null;
            }
            hVar.e(downloadBean, function1);
        }
    }

    Object a(String str, Continuation continuation);

    void b(com.transsion.subtitle_download.a aVar);

    void c(com.transsion.subtitle_download.a aVar);

    void d(lt.c cVar);

    void destroy();

    void e(DownloadBean downloadBean, Function1 function1);

    void f(lt.c cVar);

    void g(ht.a aVar);

    void h(ht.a aVar);

    void i(DownloadBean downloadBean);

    void init();

    void j(ht.a aVar);

    void reset();
}
