package com.transsion.room.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.RoomNet;
import com.transsion.room.R$string;
import com.transsion.room.bean.CheckInEntity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class RoomDetailViewModel extends t0 {

    public static final a f49809f = new a(null);

    private final Lazy f49810a = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
        @Override
        public final Object invoke() {
            return RoomDetailViewModel.D();
        }
    });

    private final Lazy f49811b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomDetailViewModel.A();
        }
    });

    private final Lazy f49812c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomDetailViewModel.B();
        }
    });

    private final Lazy f49813d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomDetailViewModel.y();
        }
    });

    private final Lazy f49814e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomDetailViewModel.z();
        }
    });

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
            RoomDetailViewModel.this.r().q(null);
        }

        @Override
        public void c(RoomItem roomItem) {
            RoomDetailViewModel.this.r().q(roomItem);
        }
    }

    public static final class c extends dg.a {

        final String f49816d;

        final RoomDetailViewModel f49817e;

        c(String str, RoomDetailViewModel roomDetailViewModel) {
            this.f49816d = str;
            this.f49817e = roomDetailViewModel;
        }

        @Override
        public void a(String str, String str2) {
            this.f49817e.m().q(null);
            fh.b.f60176a.d(R$string.join_room_fail);
            wf.a.C0922a.f(wf.a.f74274a, "RoomModel", "onFailure message.." + str2, false, 4, null);
        }

        @Override
        public void c(RoomNet roomNet) {
            fh.b.f60176a.d(R$string.join_room_success);
            gx.b.f61207a.a().f(1, this.f49816d);
            this.f49817e.m().q(new RoomNet(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS));
            wf.a.C0922a.f(wf.a.f74274a, "RoomModel", "onSuccess groupId.." + (roomNet != null ? roomNet.getGroupId() : null), false, 4, null);
        }
    }

    public static final class d extends dg.a {

        final String f49818d;

        final RoomDetailViewModel f49819e;

        d(String str, RoomDetailViewModel roomDetailViewModel) {
            this.f49818d = str;
            this.f49819e = roomDetailViewModel;
        }

        @Override
        public void a(String str, String str2) {
            this.f49819e.n().q(null);
            wf.a.C0922a.f(wf.a.f74274a, "RoomModel", "checkOutRoom onFailure message.." + str2, false, 4, null);
        }

        @Override
        public void c(RoomNet roomNet) {
            gx.b.f61207a.a().f(0, this.f49818d);
            this.f49819e.n().q(new RoomNet(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS));
            wf.a.C0922a.f(wf.a.f74274a, "RoomModel", "checkOutRoom onSuccess groupId.." + (roomNet != null ? roomNet.getGroupId() : null), false, 4, null);
        }
    }

    public static final aj.a A() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).v1();
        }
        return null;
    }

    public static final b0 B() {
        return new b0();
    }

    public static final ip.a D() {
        return (ip.a) kg.c.f63982e.a().h(ip.a.class);
    }

    private final RequestBody l(String str) {
        return RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json"));
    }

    public final b0 m() {
        return (b0) this.f49813d.getValue();
    }

    public final b0 n() {
        return (b0) this.f49814e.getValue();
    }

    public final aj.a o() {
        return (aj.a) this.f49811b.getValue();
    }

    public final b0 r() {
        return (b0) this.f49812c.getValue();
    }

    public final ip.a u() {
        return (ip.a) this.f49810a.getValue();
    }

    public static final b0 y() {
        return new b0();
    }

    public static final b0 z() {
        return new b0();
    }

    public final void C(String groupId) {
        Intrinsics.h(groupId, "groupId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomDetailViewModel$roomVisit$1(groupId, this, null), 3, null);
    }

    public final void p(String groupId) {
        Intrinsics.h(groupId, "groupId");
        ip.a.C0766a.b(u(), gg.a.f61067a.a(), groupId, 0, 4, null).f(dg.d.f59034a.c()).subscribe(new b());
    }

    public final LiveData q() {
        return r();
    }

    public final LiveData s() {
        return m();
    }

    public final LiveData t() {
        return n();
    }

    public final void v(RoomItem roomItem) {
        Intrinsics.h(roomItem, "roomItem");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomDetailViewModel$insertRecentlyRoom$1(roomItem, this, null), 3, null);
    }

    public final void w(String groupId) {
        Intrinsics.h(groupId, "groupId");
        ip.a aVarU = u();
        String strA = gg.a.f61067a.a();
        String strJ = com.blankj.utilcode.util.o.j(new CheckInEntity(groupId));
        Intrinsics.g(strJ, "toJson(...)");
        aVarU.i(strA, l(strJ)).f(dg.d.f59034a.c()).subscribe(new c(groupId, this));
    }

    public final void x(String groupId) {
        Intrinsics.h(groupId, "groupId");
        ip.a aVarU = u();
        String strA = gg.a.f61067a.a();
        String strJ = com.blankj.utilcode.util.o.j(new CheckInEntity(groupId));
        Intrinsics.g(strJ, "toJson(...)");
        aVarU.k(strA, l(strJ)).f(dg.d.f59034a.c()).subscribe(new d(groupId, this));
    }
}
