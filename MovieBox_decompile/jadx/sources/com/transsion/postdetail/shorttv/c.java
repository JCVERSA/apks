package com.transsion.postdetail.shorttv;

import android.app.Activity;
import android.os.Bundle;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.therouter.router.RouteItem;
import com.transsion.moviedetailapi.SubjectType;
import ij.t;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class c {

    public static final a f47168a = new a(null);

    private static final Lazy f47169b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return c.c();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return (c) c.f47169b.getValue();
        }

        private a() {
        }
    }

    public static final c c() {
        return new c();
    }

    public final void d(RouteItem postcard, mf.b callback) {
        Object next;
        Object objM453constructorimpl;
        String localClassName;
        Intrinsics.h(postcard, "postcard");
        Intrinsics.h(callback, "callback");
        Iterator it = com.transsion.baselib.report.k.f42210a.m().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                localClassName = ((Activity) next).getLocalClassName();
                Intrinsics.g(localClassName, "getLocalClassName(...)");
            }
        } while (!StringsKt.c0(localClassName, "MainActivity", false, 2, null));
        Activity activityO = (Activity) next;
        if (activityO == null) {
            activityO = com.transsion.baselib.report.k.f42210a.o();
        }
        if (!Intrinsics.c(postcard.getPath(), "/movie/detail")) {
            if (!Intrinsics.c(postcard.getPath(), "/video/detail")) {
                callback.a(postcard);
                return;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                if (postcard.getExtras().getInt("subject_type", SubjectType.MOVIE.getValue()) == SubjectType.MUSIC.getValue()) {
                    if (activityO != null && !activityO.isDestroyed() && !activityO.isFinishing()) {
                        Navigator.x(ij.k.b(TheRouter.c("/playvideo/music_detail"), postcard.getExtras()), activityO, null, 2, null);
                    }
                    fj.b.a(callback);
                } else {
                    callback.a(postcard);
                }
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            if (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null) {
                return;
            }
            callback.a(postcard);
            return;
        }
        try {
            Bundle extras = postcard.getExtras();
            int i10 = extras.getInt("subject_type", SubjectType.MOVIE.getValue());
            boolean z10 = extras.getBoolean("without_intercept", false);
            cw.e.b.a(cw.e.f58665a.b(), false, 1, null);
            if (!z10 && i10 == SubjectType.SHORT_TV.getValue()) {
                if (activityO != null && !activityO.isDestroyed() && !activityO.isFinishing()) {
                    Navigator.x(ij.k.b(TheRouter.c(pr.a.f69252a.b()), postcard.getExtras()), activityO, null, 2, null);
                }
                fj.b.a(callback);
                return;
            }
            if (i10 != SubjectType.MUSIC.getValue()) {
                if (!t.f62121a.b()) {
                    callback.a(postcard);
                    return;
                }
                if (activityO != null && !activityO.isDestroyed() && !activityO.isFinishing()) {
                    Navigator.x(ij.k.b(TheRouter.c("/playvideo/detail"), postcard.getExtras()), activityO, null, 2, null);
                }
                fj.b.a(callback);
                return;
            }
            try {
                Result.Companion companion3 = Result.INSTANCE;
                postcard.getExtras().putBoolean("is_music_liked_fragment", extras.getBoolean("is_music_liked_fragment"));
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th3) {
                Result.Companion companion4 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th3));
            }
            if (activityO != null && !activityO.isDestroyed() && !activityO.isFinishing()) {
                Navigator.x(ij.k.b(TheRouter.c("/playvideo/music_detail"), postcard.getExtras()), activityO, null, 2, null);
            }
            fj.b.a(callback);
        } catch (Exception unused) {
            callback.a(postcard);
        }
    }
}
