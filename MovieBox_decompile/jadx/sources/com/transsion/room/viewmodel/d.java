package com.transsion.room.viewmodel;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import com.transsion.moviedetailapi.bean.RoomNet;
import com.transsion.room.bean.CheckNameBean;
import com.transsion.room.bean.CreateRoomRequestEntity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class d {

    public static final a f49849d = new a(null);

    private final Lazy f49850a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.m();
        }
    });

    private final Lazy f49851b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.f();
        }
    });

    private final Lazy f49852c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.n();
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
            d.this.h().q(null);
            wf.a.C0922a.f(wf.a.f74274a, "RoomModel", "onFailure message.." + str2, false, 4, null);
        }

        @Override
        public void c(CheckNameBean checkNameBean) {
            d.this.h().q(checkNameBean);
            wf.a.C0922a.f(wf.a.f74274a, "RoomModel", "onSuccess groupId.." + (checkNameBean != null ? checkNameBean.getGroupId() : null), false, 4, null);
        }
    }

    public static final class c extends dg.a {
        c() {
        }

        @Override
        public void a(String str, String str2) {
            d.this.k().q(null);
            wf.a.C0922a.f(wf.a.f74274a, "RoomModel", "onFailure message.." + str2, false, 4, null);
        }

        @Override
        public void c(RoomNet roomNet) {
            d.this.k().q(roomNet);
            wf.a.C0922a.f(wf.a.f74274a, "RoomModel", "onSuccess groupId.." + (roomNet != null ? roomNet.getGroupId() : null), false, 4, null);
        }
    }

    public static final class C0626d extends dg.a {
        C0626d() {
        }

        @Override
        public void a(String str, String str2) {
            d.this.k().q(null);
            wf.a.C0922a.f(wf.a.f74274a, "RoomModel", "onFailure message.." + str2, false, 4, null);
        }

        @Override
        public void c(RoomNet roomNet) {
            d.this.k().q(new RoomNet("update"));
            wf.a.C0922a.f(wf.a.f74274a, "RoomModel", "onSuccess groupId.." + (roomNet != null ? roomNet.getGroupId() : null), false, 4, null);
        }
    }

    public static final b0 f() {
        return new b0();
    }

    private final RequestBody i(String str) {
        return RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json"));
    }

    public final b0 k() {
        return (b0) this.f49850a.getValue();
    }

    private final ip.a l() {
        return (ip.a) this.f49852c.getValue();
    }

    public static final b0 m() {
        return new b0();
    }

    public static final ip.a n() {
        return (ip.a) kg.c.f63982e.a().h(ip.a.class);
    }

    public final void e(String name) {
        Intrinsics.h(name, "name");
        l().e(gg.a.f61067a.a(), name).f(dg.d.f59034a.c()).subscribe(new b());
    }

    public final void g(String name, String avator, String desc, String str) {
        Intrinsics.h(name, "name");
        Intrinsics.h(avator, "avator");
        Intrinsics.h(desc, "desc");
        CreateRoomRequestEntity createRoomRequestEntity = new CreateRoomRequestEntity("", name, avator, desc, str);
        ip.a aVarL = l();
        String strA = gg.a.f61067a.a();
        String strJ = com.blankj.utilcode.util.o.j(createRoomRequestEntity);
        Intrinsics.g(strJ, "toJson(...)");
        aVarL.g(strA, i(strJ)).f(dg.d.f59034a.c()).subscribe(new c());
    }

    public final b0 h() {
        return (b0) this.f49851b.getValue();
    }

    public final LiveData j() {
        return k();
    }

    public final void o(String groupId, String name, String avator, String desc, String str) {
        Intrinsics.h(groupId, "groupId");
        Intrinsics.h(name, "name");
        Intrinsics.h(avator, "avator");
        Intrinsics.h(desc, "desc");
        CreateRoomRequestEntity createRoomRequestEntity = new CreateRoomRequestEntity(groupId, name, avator, desc, str);
        ip.a aVarL = l();
        String strA = gg.a.f61067a.a();
        String strJ = com.blankj.utilcode.util.o.j(createRoomRequestEntity);
        Intrinsics.g(strJ, "toJson(...)");
        aVarL.b(strA, i(strJ)).f(dg.d.f59034a.c()).subscribe(new C0626d());
    }
}
