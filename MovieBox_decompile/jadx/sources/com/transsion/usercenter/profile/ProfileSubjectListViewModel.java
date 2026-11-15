package com.transsion.usercenter.profile;

import android.app.Application;
import android.os.Bundle;
import androidx.p009lifecycle.u0;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.AbsSubjectListViewModel;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.p006enum.PostListSource;
import com.transsion.moviedetailapi.p006enum.ProfileSubSource;
import com.transsnet.flow.event.sync.event.PublishEvent;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class ProfileSubjectListViewModel extends AbsSubjectListViewModel {

    private int f54947k;

    private String f54948l;

    private final Lazy f54949m;

    private final Lazy f54950n;

    private int f54951o;

    private String f54952p;

    static final class a implements yx.h {

        final String f54954b;

        a(String str) {
            this.f54954b = str;
        }

        @Override
        public final io.reactivex.rxjava3.core.m apply(Integer it) {
            Intrinsics.h(it, "it");
            if (ProfileSubjectListViewModel.this.f54947k == 0) {
                return ProfileSubjectListViewModel.this.b0() ? com.transsion.usercenter.profile.b.a.d(ProfileSubjectListViewModel.this.a0(), this.f54954b, ProfileSubjectListViewModel.this.f54952p, ProfileSubjectListViewModel.this.Z(), null, null, 24, null) : com.transsion.usercenter.profile.b.a.f(ProfileSubjectListViewModel.this.a0(), this.f54954b, ProfileSubjectListViewModel.this.f54952p, ProfileSubjectListViewModel.this.Z(), null, null, 24, null);
            }
            return com.transsion.usercenter.profile.b.a.b(ProfileSubjectListViewModel.this.a0(), this.f54954b, ProfileSubjectListViewModel.this.f54952p, ProfileSubjectListViewModel.this.Z(), null, 8, null);
        }
    }

    public static final class b extends dg.a {
        b() {
        }

        @Override
        public void a(String str, String str2) {
            ProfileSubjectListViewModel.this.y().q(null);
        }

        @Override
        public void c(PostSubjectBean postSubjectBean) {
            String nextPage;
            Integer perPage;
            super.c(postSubjectBean);
            if (postSubjectBean != null) {
                ProfileSubjectListViewModel profileSubjectListViewModel = ProfileSubjectListViewModel.this;
                try {
                    Pager pager = postSubjectBean.getPager();
                    profileSubjectListViewModel.h0((pager == null || (perPage = pager.getPerPage()) == null) ? 10 : perPage.intValue());
                    Pager pager2 = postSubjectBean.getPager();
                    if (pager2 == null || (nextPage = pager2.getNextPage()) == null) {
                        nextPage = "";
                    }
                    profileSubjectListViewModel.f54952p = nextPage;
                } catch (Exception unused) {
                }
            }
            ProfileSubjectListViewModel.this.y().q(postSubjectBean);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileSubjectListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f54949m = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ProfileSubjectListViewModel.e0();
            }
        });
        this.f54950n = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ProfileSubjectListViewModel.f0();
            }
        });
        this.f54951o = 10;
        this.f54952p = "";
    }

    private final qx.a Y() {
        return (qx.a) this.f54949m.getValue();
    }

    public final com.transsion.usercenter.profile.b a0() {
        return (com.transsion.usercenter.profile.b) this.f54950n.getValue();
    }

    public final boolean b0() {
        UserInfo userInfoI;
        String str = this.f54948l;
        if (str != null && str.length() != 0) {
            String str2 = this.f54948l;
            qx.a aVarY = Y();
            if (!Intrinsics.c(str2, (aVarY == null || (userInfoI = aVarY.i()) == null) ? null : userInfoI.getUserId())) {
                return false;
            }
        }
        return true;
    }

    private final boolean c0() {
        qx.a aVarY;
        UserInfo userInfoI;
        UserInfo userInfoI2;
        String userId = this.f54948l;
        String userId2 = null;
        if (userId == null) {
            qx.a aVarY2 = Y();
            userId = (aVarY2 == null || (userInfoI2 = aVarY2.i()) == null) ? null : userInfoI2.getUserId();
            if (userId == null) {
                userId = "";
            }
        }
        if (userId.length() == 0) {
            return true;
        }
        qx.a aVarY3 = Y();
        if (aVarY3 != null && (userInfoI = aVarY3.i()) != null) {
            userId2 = userInfoI.getUserId();
        }
        return Intrinsics.c(userId, userId2) && ((aVarY = Y()) == null || !aVarY.a());
    }

    private final void d0(String str) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ProfileSubjectListViewModel$loadNewSubject$1(this, str, null), 3, null);
    }

    public static final qx.a e0() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final com.transsion.usercenter.profile.b f0() {
        return (com.transsion.usercenter.profile.b) kg.c.f63982e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public static final Unit g0(ProfileSubjectListViewModel profileSubjectListViewModel, PublishEvent it) {
        Intrinsics.h(it, "it");
        profileSubjectListViewModel.d0(it.getPostId());
        return Unit.f64096a;
    }

    @Override
    public PostListSource A() {
        return PostListSource.PROFILE;
    }

    @Override
    public ProfileSubSource B() {
        return this.f54947k == 0 ? ProfileSubSource.POSTS : ProfileSubSource.LIKES;
    }

    @Override
    public void E(boolean z10) {
        UserInfo userInfoI;
        String userId = this.f54948l;
        if (userId == null) {
            qx.a aVarY = Y();
            userId = (aVarY == null || (userInfoI = aVarY.i()) == null) ? null : userInfoI.getUserId();
            if (userId == null) {
                userId = "";
            }
        }
        if (c0() && this.f54947k == 0) {
            y().q(null);
        } else {
            io.reactivex.rxjava3.core.j.t(Integer.valueOf(this.f54947k)).n(new a(userId)).f(dg.d.f59034a.c()).subscribe(new b());
        }
    }

    @Override
    public void F(Bundle bundle) {
        this.f54947k = bundle != null ? bundle.getInt(EventConstants.KEY_SOURCE) : 0;
        this.f54948l = bundle != null ? bundle.getString("userId") : null;
        if (this.f54947k == 0 && b0() && !c0()) {
            kotlinx.coroutines.k.d(u0.a(this), null, null, new ProfileSubjectListViewModel$onCreate$$inlined$observeEvent$1(false, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ProfileSubjectListViewModel.g0(this.f55091a, (PublishEvent) obj);
                }
            }, null), 3, null);
        }
        this.f54952p = "0";
    }

    public int Z() {
        return this.f54951o;
    }

    public void h0(int i10) {
        this.f54951o = i10;
    }

    @Override
    public String w(int i10) {
        return this.f54947k == 0 ? "profiledetail_posts" : "profiledetail_likes";
    }
}
