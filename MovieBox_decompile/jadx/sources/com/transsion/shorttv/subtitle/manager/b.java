package com.transsion.shorttv.subtitle.manager;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

public interface b {

    public static final a f51081a = a.f51082a;

    public static final class a {

        static final a f51082a = new a();

        private static final Lazy f51083b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return b.a.c();
            }
        });

        private a() {
        }

        public static final ShortTvVideoSubtitleManagerImp c() {
            return new ShortTvVideoSubtitleManagerImp();
        }

        public final b b() {
            return (b) f51083b.getValue();
        }
    }

    public static final class C0635b {
        public static void a(b bVar, xr.a aVar, Function1 function1, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onVideoPageInNet2CheckSubtitle");
            }
            if ((i10 & 2) != 0) {
                function1 = null;
            }
            bVar.e(aVar, function1);
        }
    }

    Object a(String str, Continuation continuation);

    void b(com.transsion.subtitle_download.a aVar);

    void c(com.transsion.subtitle_download.a aVar);

    void d(xr.b bVar);

    void e(xr.a aVar, Function1 function1);

    void f(zr.a aVar);

    void g(zr.a aVar);

    void init();
}
