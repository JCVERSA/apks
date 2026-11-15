package com.transsion.postdetail.viewmodel;

import android.util.Log;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class LocalVideoDetailViewModel extends t0 {

    private final String f48108a = "LocalVideoViewModel";

    private final Lazy f48109b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LocalVideoDetailViewModel.k();
        }
    });

    private b0 f48110c = new b0();

    private b0 f48111d = new b0();

    private b0 f48112e = new b0();

    private final b0 f48113f = new b0();

    private final cx.a j() {
        return (cx.a) this.f48109b.getValue();
    }

    public static final cx.a k() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    public final void d(String str) {
        if (str == null || str.length() == 0) {
            this.f48113f.n(null);
        } else if (yg.l.f76264a.e()) {
            j().h(gg.a.f61067a.a(), str).f(dg.d.f59034a.c()).subscribe(new dg.a() {
                @Override
                public void a(String str2, String str3) {
                    this.f48114d.g().n(null);
                    Log.e(this.f48114d.f48108a, "message:" + str3);
                }

                @Override
                public void c(Subject subject) {
                    kotlinx.coroutines.k.d(u0.a(this.f48114d), null, null, new LocalVideoDetailViewModel$fetchMovieData$1$onSuccess$1(this.f48114d, subject, null), 3, null);
                }

                @Override
                public void onSubscribe(io.reactivex.rxjava3.disposables.c d10) {
                    Intrinsics.h(d10, "d");
                    super.onSubscribe(d10);
                }
            });
        } else {
            this.f48113f.n(null);
        }
    }

    public final b0 e() {
        return this.f48111d;
    }

    public final b0 f() {
        return this.f48112e;
    }

    public final b0 g() {
        return this.f48113f;
    }

    public final void h(DownloadBean downloadBean) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new LocalVideoDetailViewModel$getSeriesFromLocal$1(downloadBean, this, null), 2, null);
    }

    public final b0 i() {
        return this.f48110c;
    }
}
