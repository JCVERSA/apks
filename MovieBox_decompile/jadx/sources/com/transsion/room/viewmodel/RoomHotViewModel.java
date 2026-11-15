package com.transsion.room.viewmodel;

import android.app.Application;
import android.os.Bundle;
import androidx.p009lifecycle.u0;
import com.transsion.moviedetailapi.AbsSubjectListViewModel;
import com.transsion.moviedetailapi.PostRankType;
import com.transsion.moviedetailapi.p006enum.PostListSource;
import com.transsnet.flow.event.sync.event.PublishEvent;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class RoomHotViewModel extends AbsSubjectListViewModel {

    private int f49821k;

    private final Lazy f49822l;

    private String f49823m;

    private String f49824n;

    private final Lazy f49825o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomHotViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f49821k = 10;
        this.f49822l = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
            @Override
            public final Object invoke() {
                return RoomHotViewModel.d0();
            }
        });
        this.f49824n = "0";
        this.f49825o = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomHotViewModel.b0();
            }
        });
    }

    public final com.transsion.usercenter.profile.b X() {
        return (com.transsion.usercenter.profile.b) this.f49825o.getValue();
    }

    public final ip.a Z() {
        return (ip.a) this.f49822l.getValue();
    }

    private final void a0(String str) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomHotViewModel$loadNewSubject$1(this, str, null), 3, null);
    }

    public static final com.transsion.usercenter.profile.b b0() {
        return (com.transsion.usercenter.profile.b) kg.c.f63982e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public static final Unit c0(RoomHotViewModel roomHotViewModel, PublishEvent it) {
        Intrinsics.h(it, "it");
        roomHotViewModel.a0(it.getPostId());
        return Unit.f64096a;
    }

    public static final ip.a d0() {
        return (ip.a) kg.c.f63982e.a().h(ip.a.class);
    }

    @Override
    public PostListSource A() {
        return PostListSource.ROOM;
    }

    @Override
    public void E(boolean z10) {
        Y(this.f49823m, this.f49824n, W(), t().getValue(), z10);
    }

    @Override
    public void F(Bundle bundle) {
        if (bundle != null) {
            this.f49823m = bundle.getString("subject_id");
            Serializable serializable = bundle.getSerializable("rank_type");
            Intrinsics.f(serializable, "null cannot be cast to non-null type com.transsion.moviedetailapi.PostRankType");
            M((PostRankType) serializable);
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomHotViewModel$onCreate$$inlined$observeEvent$1(false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomHotViewModel.c0(this.f49856a, (PublishEvent) obj);
            }
        }, null), 3, null);
    }

    public int W() {
        return this.f49821k;
    }

    public final void Y(String str, String page, int i10, String sortType, boolean z10) {
        Intrinsics.h(page, "page");
        Intrinsics.h(sortType, "sortType");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomHotViewModel$getPostSubject$1(this, str, page, i10, sortType, z10, null), 3, null);
    }

    public void e0(int i10) {
        this.f49821k = i10;
    }

    @Override
    public String w(int i10) {
        return i10 == PostRankType.POST_RANK_TYPE_NEW.ordinal() ? "roomdetail_new" : "roomdetail_hot";
    }
}
