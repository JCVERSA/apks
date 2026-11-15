package com.transsion.ugcvideodetail.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public final class UGCLocalVideoDetailViewModel extends t0 {

    public static final a f54357g = new a(null);

    private final Lazy f54358a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCLocalVideoDetailViewModel.l();
        }
    });

    private final b0 f54359b = new b0();

    private final b0 f54360c = new b0();

    private final b0 f54361d = new b0();

    private final b0 f54362e;

    private final LiveData f54363f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public UGCLocalVideoDetailViewModel() {
        b0 b0Var = new b0();
        this.f54362e = b0Var;
        this.f54363f = b0Var;
    }

    public final UGCVideoDetailPlayDao g() {
        return (UGCVideoDetailPlayDao) this.f54358a.getValue();
    }

    public static final UGCVideoDetailPlayDao l() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).B1();
    }

    public final b0 e() {
        return this.f54360c;
    }

    public final b0 f() {
        return this.f54359b;
    }

    public final void h(String resourceId) {
        Intrinsics.h(resourceId, "resourceId");
        k.d(u0.a(this), null, null, new UGCLocalVideoDetailViewModel$getPlayInfo$1(resourceId, this, null), 3, null);
    }

    public final b0 i() {
        return this.f54361d;
    }

    public final void j(String resourceId) {
        Intrinsics.h(resourceId, "resourceId");
        k.d(u0.a(this), null, null, new UGCLocalVideoDetailViewModel$getPlayList$1(resourceId, this, null), 3, null);
    }

    public final LiveData k() {
        return this.f54363f;
    }
}
