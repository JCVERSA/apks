package com.transsion.moviedetail.viewmodel;

import android.app.Application;
import android.os.Bundle;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.moviedetailapi.AbsSubjectListViewModel;
import com.transsion.moviedetailapi.PostRankType;
import com.transsion.moviedetailapi.p006enum.PostListSource;
import com.transsion.moviedetailapi.p006enum.ProfileSubSource;
import com.transsnet.flow.event.sync.event.PublishEvent;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class HotViewModel extends AbsSubjectListViewModel {

    private final Lazy f45694k;

    private String f45695l;

    private String f45696m;

    private String f45697n;

    private int f45698o;

    private final b0 f45699p;

    private final Lazy f45700q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HotViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45694k = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
            @Override
            public final Object invoke() {
                return HotViewModel.j0();
            }
        });
        this.f45697n = "0";
        this.f45699p = new b0();
        this.f45700q = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return HotViewModel.h0();
            }
        });
    }

    public final com.transsion.usercenter.profile.b Y() {
        return (com.transsion.usercenter.profile.b) this.f45700q.getValue();
    }

    private final void a0(String str, String str2, int i10, String str3, boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new HotViewModel$getPostSubject$1(this, str, str2, i10, str3, z10, null), 3, null);
    }

    public static void c0(HotViewModel hotViewModel, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "1";
        }
        if ((i11 & 2) != 0) {
            i10 = 3;
        }
        hotViewModel.b0(str, i10);
    }

    public final om.a e0() {
        return (om.a) this.f45694k.getValue();
    }

    private final void g0(String str) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new HotViewModel$loadNewSubject$1(this, str, null), 3, null);
    }

    public static final com.transsion.usercenter.profile.b h0() {
        return (com.transsion.usercenter.profile.b) kg.c.f63982e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public static final Unit i0(HotViewModel hotViewModel, PublishEvent it) {
        Intrinsics.h(it, "it");
        hotViewModel.g0(it.getPostId());
        return Unit.f64096a;
    }

    public static final om.a j0() {
        return (om.a) kg.c.f63982e.a().h(om.a.class);
    }

    @Override
    public PostListSource A() {
        return PostListSource.SUBJECT;
    }

    @Override
    public ProfileSubSource B() {
        return ProfileSubSource.COMMENTS;
    }

    @Override
    public void E(boolean z10) {
        a0(this.f45695l, this.f45697n, X(), t().getValue(), z10);
    }

    @Override
    public void F(Bundle bundle) {
        if (bundle != null) {
            this.f45695l = bundle.getString("subject_id");
            this.f45696m = bundle.getString("ops");
            Serializable serializable = bundle.getSerializable("rank_type");
            Intrinsics.f(serializable, "null cannot be cast to non-null type com.transsion.moviedetailapi.PostRankType");
            M((PostRankType) serializable);
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new HotViewModel$onCreate$$inlined$observeEvent$1(false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HotViewModel.i0(this.f45724a, (PublishEvent) obj);
            }
        }, null), 3, null);
    }

    public int X() {
        return this.f45698o;
    }

    public final String Z() {
        return this.f45696m;
    }

    public final void b0(String page, int i10) {
        Intrinsics.h(page, "page");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new HotViewModel$getRecommendRooms$1(this, page, i10, null), 3, null);
    }

    public final b0 d0() {
        return this.f45699p;
    }

    public final String f0() {
        return this.f45695l;
    }

    public void k0(int i10) {
        this.f45698o = i10;
    }

    @Override
    public String w(int i10) {
        return i10 == PostRankType.POST_RANK_TYPE_NEW.ordinal() ? "subjectdetail_new" : "subjectdetail_hot";
    }
}
