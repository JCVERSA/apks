package com.transsion.room.viewmodel;

import android.app.Application;
import android.content.Context;
import android.location.Address;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomTabBean;
import java.io.InputStream;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;
import okio.Okio;

public final class RoomViewModel extends androidx.p009lifecycle.b {

    public static final a f49827l = new a(null);

    private final Lazy f49828b;

    private final Lazy f49829c;

    private final b0 f49830d;

    private final b0 f49831e;

    private final Lazy f49832f;

    private final b0 f49833g;

    private final b0 f49834h;

    private final b0 f49835i;

    private final b0 f49836j;

    private final Lazy f49837k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends dg.a {
        b() {
        }

        @Override
        public void a(String str, String str2) {
            RoomViewModel.this.y().q(null);
        }

        @Override
        public void c(RoomBean roomBean) {
            RoomViewModel.this.y().q(roomBean);
        }
    }

    public static final class c extends dg.a {
        c() {
        }

        @Override
        public void a(String str, String str2) {
            RoomViewModel.this.D().q(null);
        }

        @Override
        public void c(RoomBean roomBean) {
            RoomViewModel.this.D().q(roomBean);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f49828b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomViewModel.L();
            }
        });
        this.f49829c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomViewModel.O();
            }
        });
        this.f49830d = new b0();
        this.f49831e = new b0();
        this.f49832f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomViewModel.r();
            }
        });
        this.f49833g = new b0();
        this.f49834h = new b0();
        this.f49835i = new b0();
        this.f49836j = new b0();
        this.f49837k = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomViewModel.Q();
            }
        });
    }

    public final b0 D() {
        return (b0) this.f49829c.getValue();
    }

    public final ip.a K() {
        return (ip.a) this.f49837k.getValue();
    }

    public static final b0 L() {
        return new b0();
    }

    public final String M() {
        try {
            InputStream inputStreamOpen = Utils.a().getAssets().open("room_top_tab.json");
            Intrinsics.e(inputStreamOpen);
            return Okio.buffer(Okio.source(inputStreamOpen)).readUtf8();
        } catch (Exception unused) {
            return null;
        }
    }

    private final void N() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomViewModel$loadRoomTabCache$1(this, null), 2, null);
    }

    public static final b0 O() {
        return new b0();
    }

    public final void P(RoomTabBean roomTabBean) {
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            bVar.b().putString("k_room_tab_cache_version", roomTabBean.getVersion());
            Result.m453constructorimpl(bVar.b().putString("k_room_tab_cache", com.blankj.utilcode.util.o.j(roomTabBean)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final ip.a Q() {
        return (ip.a) kg.c.f63982e.a().h(ip.a.class);
    }

    public static final qp.a r() {
        return new qp.a();
    }

    public final qp.a s() {
        return (qp.a) this.f49832f.getValue();
    }

    public static void u(RoomViewModel roomViewModel, Context context, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "1";
        }
        if ((i11 & 4) != 0) {
            i10 = 16;
        }
        roomViewModel.t(context, str, i10);
    }

    public final b0 y() {
        return (b0) this.f49828b.getValue();
    }

    public final b0 A() {
        return this.f49831e;
    }

    public final void B(String page, int i10, String str) {
        Intrinsics.h(page, "page");
        if (str != null) {
            K().o(gg.a.f61067a.a(), page, i10, str).f(dg.d.f59034a.c()).subscribe(new c());
        }
    }

    public final LiveData C() {
        return D();
    }

    public final void E() {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomViewModel$getRoomFilterTabList$1(this, null), 3, null);
    }

    public final void F(boolean z10, int i10, String page, int i11, Double d10, Double d11, Address address) {
        Intrinsics.h(page, "page");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomViewModel$getRoomList$1(d11, d10, address, page, i11, i10, this, z10, null), 3, null);
    }

    public final b0 G() {
        return this.f49830d;
    }

    public final void H() {
        N();
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomViewModel$getRoomTabs$1(this, null), 3, null);
    }

    public final b0 I() {
        return this.f49834h;
    }

    public final b0 J() {
        return this.f49835i;
    }

    public final void t(Context context, String page, int i10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(page, "page");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomViewModel$getCommunityRooms$1(this, context, page, i10, null), 3, null);
    }

    public final b0 v() {
        return this.f49836j;
    }

    public final void w(String page, int i10) {
        Intrinsics.h(page, "page");
        K().f(gg.a.f61067a.a(), page, i10).f(dg.d.f59034a.c()).subscribe(new b());
    }

    public final LiveData x() {
        return y();
    }

    public final void z(boolean z10, String str, int i10, String str2) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomViewModel$getMyRooms$1(this, str, i10, str2, z10, null), 3, null);
    }
}
