package com.transsion.search.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class SearchWorkViewModel extends t0 {

    private int f50247e;

    private boolean f50243a = true;

    private final b0 f50244b = new b0();

    private final List f50245c = new ArrayList();

    private final Lazy f50246d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SearchWorkViewModel.n();
        }
    });

    private int f50248f = 50;

    public final VideoDetailPlayDao j() {
        return (VideoDetailPlayDao) this.f50246d.getValue();
    }

    public static void l(SearchWorkViewModel searchWorkViewModel, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        searchWorkViewModel.k(z10);
    }

    public static final VideoDetailPlayDao n() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public final boolean g() {
        return this.f50243a;
    }

    public final b0 h() {
        return this.f50244b;
    }

    public final int i() {
        return this.f50247e;
    }

    public final void k(boolean z10) {
        k.d(u0.a(this), y0.b(), null, new SearchWorkViewModel$getVideoHistoryList$1(z10, this, null), 2, null);
    }

    public final void m(int i10) {
        this.f50247e = i10;
    }
}
