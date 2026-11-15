package com.transsion.ugcvideodetail.hepler.subtitle.manager;

import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

public interface b {

    public static final a f54329a = a.f54330a;

    public static final class a {

        static final a f54330a = new a();

        private static final String f54331b = "UGCVideoSubtitleManager";

        private static final Lazy f54332c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return b.a.d();
            }
        });

        private a() {
        }

        public static final UGCVideoSubtitleManagerImp d() {
            return new UGCVideoSubtitleManagerImp();
        }

        public final b b() {
            return (b) f54332c.getValue();
        }

        public final String c() {
            return f54331b;
        }
    }

    public static final class C0656b {
        public static void a(b bVar, DownloadBean downloadBean, Function1 function1, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onVideoPageInNet2CheckSubtitle");
            }
            if ((i10 & 2) != 0) {
                function1 = null;
            }
            bVar.e(downloadBean, function1);
        }
    }

    Object a(String str, Continuation continuation);

    void b(com.transsion.subtitle_download.a aVar);

    void c(com.transsion.subtitle_download.a aVar);

    void d(lt.c cVar);

    void e(DownloadBean downloadBean, Function1 function1);

    void f(lt.c cVar);

    void h(ht.a aVar);
}
