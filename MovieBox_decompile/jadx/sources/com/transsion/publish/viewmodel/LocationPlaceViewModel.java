package com.transsion.publish.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.place.PlaceDao;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class LocationPlaceViewModel extends t0 {

    private final Lazy f48675a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LocationPlaceViewModel.q();
        }
    });

    private final Lazy f48676b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LocationPlaceViewModel.p();
        }
    });

    private final b0 f48677c = new b0();

    private final b0 f48678d = new b0();

    public final PlaceDao m() {
        return (PlaceDao) this.f48676b.getValue();
    }

    public final po.a n() {
        return (po.a) this.f48675a.getValue();
    }

    public static final PlaceDao p() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).u1();
    }

    public static final po.a q() {
        return (po.a) kg.c.f63982e.a().h(po.a.class);
    }

    public final void h() {
        k.d(u0.a(this), y0.b(), null, new LocationPlaceViewModel$clearCache$1(this, null), 2, null);
    }

    public final void i() {
        k.d(u0.a(this), null, null, new LocationPlaceViewModel$getCache$1(this, null), 3, null);
    }

    public final b0 j() {
        return this.f48678d;
    }

    public final void k(Double d10, Double d11) {
        k.d(u0.a(this), null, null, new LocationPlaceViewModel$getLocationPlaceList$1(this, d10, d11, null), 3, null);
    }

    public final b0 l() {
        return this.f48677c;
    }

    public final void o(List list) {
        Intrinsics.h(list, "list");
        k.d(u0.a(this), y0.b(), null, new LocationPlaceViewModel$insertCache$1(list, this, null), 2, null);
    }
}
