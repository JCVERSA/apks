package com.transsion.usercenter.profile;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.u0;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.usercenter.profile.bean.ProfileEntranceInfo;
import com.transsion.usercenter.profile.bean.ProfileInfo;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class ProfileViewModel extends androidx.p009lifecycle.b {

    private final Lazy f54956b;

    private final Lazy f54957c;

    private final androidx.p009lifecycle.b0 f54958d;

    private final androidx.p009lifecycle.b0 f54959e;

    private final androidx.p009lifecycle.b0 f54960f;

    private io.reactivex.rxjava3.disposables.c f54961g;

    public static final class a extends dg.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("fetchEntrance: error:");
            sb2.append(str2);
            ProfileViewModel.this.l().q(null);
        }

        @Override
        public void c(ProfileEntranceInfo profileEntranceInfo) {
            super.c(profileEntranceInfo);
            ProfileViewModel.this.l().q(profileEntranceInfo);
        }
    }

    static final class b implements yx.h {

        final String f54963a;

        final ProfileViewModel f54964b;

        b(String str, ProfileViewModel profileViewModel) {
            this.f54963a = str;
            this.f54964b = profileViewModel;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x002d  */
        @Override
        public final io.reactivex.rxjava3.core.m apply(Throwable it) {
            String string;
            UserInfo userInfoI;
            Intrinsics.h(it, "it");
            String str = this.f54963a;
            if (str == null || str.length() == 0) {
                string = e0.f54991a.b().getString("PROFILE_JSON", null);
                if (string != null && string.length() != 0) {
                    try {
                        ProfileInfo profileInfo = (ProfileInfo) com.blankj.utilcode.util.o.d(string, ProfileInfo.class);
                        BaseDto baseDto = new BaseDto();
                        baseDto.setCode("0");
                        baseDto.setData(profileInfo);
                        return io.reactivex.rxjava3.core.j.t(baseDto);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            } else {
                String str2 = this.f54963a;
                qx.a aVarN = this.f54964b.n();
                if (Intrinsics.c(str2, (aVarN == null || (userInfoI = aVarN.i()) == null) ? null : userInfoI.getUserId())) {
                    string = e0.f54991a.b().getString("PROFILE_JSON", null);
                    if (string != null) {
                        ProfileInfo profileInfo2 = (ProfileInfo) com.blankj.utilcode.util.o.d(string, ProfileInfo.class);
                        BaseDto baseDto2 = new BaseDto();
                        baseDto2.setCode("0");
                        baseDto2.setData(profileInfo2);
                        return io.reactivex.rxjava3.core.j.t(baseDto2);
                    }
                }
            }
            return io.reactivex.rxjava3.core.j.l(it);
        }
    }

    static final class c implements yx.f {

        public static final c f54965a = new c();

        c() {
        }

        @Override
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
            ProfileInfo profileInfo = (ProfileInfo) it.getData();
            if (profileInfo != null) {
                e0.f54991a.b().putString("PROFILE_JSON", com.blankj.utilcode.util.o.j(profileInfo));
            }
        }
    }

    public static final class d extends dg.a {
        d() {
        }

        @Override
        public void a(String str, String str2) {
            ProfileViewModel.this.f54958d.q(null);
        }

        @Override
        public void c(ProfileInfo profileInfo) {
            super.c(profileInfo);
            ProfileViewModel.this.f54958d.q(profileInfo);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d10) {
            Intrinsics.h(d10, "d");
            super.onSubscribe(d10);
            ProfileViewModel.this.f54961g = d10;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f54956b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ProfileViewModel.q();
            }
        });
        this.f54957c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ProfileViewModel.r();
            }
        });
        this.f54958d = new androidx.p009lifecycle.b0();
        this.f54959e = new androidx.p009lifecycle.b0();
        this.f54960f = new androidx.p009lifecycle.b0();
    }

    public final qx.a n() {
        return (qx.a) this.f54956b.getValue();
    }

    private final com.transsion.usercenter.profile.b o() {
        return (com.transsion.usercenter.profile.b) this.f54957c.getValue();
    }

    public static final qx.a q() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final com.transsion.usercenter.profile.b r() {
        return (com.transsion.usercenter.profile.b) kg.c.f63982e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public final void i() {
        com.transsion.usercenter.profile.b.a.g(o(), null, 1, null).v(ey.a.c()).f(dg.d.f59034a.c()).subscribe(new a());
    }

    public final void j() {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ProfileViewModel$fetchLatestDownloadList$1(this, null), 3, null);
    }

    public final void k(String str) {
        io.reactivex.rxjava3.disposables.c cVar;
        io.reactivex.rxjava3.disposables.c cVar2 = this.f54961g;
        if (cVar2 != null && !cVar2.isDisposed() && (cVar = this.f54961g) != null) {
            cVar.dispose();
        }
        com.transsion.usercenter.profile.b.a.h(o(), str == null ? "" : str, null, 2, null).v(ey.a.c()).x(new b(str, this)).h(c.f54965a).f(dg.d.f59034a.c()).subscribe(new d());
    }

    public final androidx.p009lifecycle.b0 l() {
        return this.f54960f;
    }

    public final LiveData m() {
        return this.f54959e;
    }

    public final LiveData p() {
        return this.f54958d;
    }
}
