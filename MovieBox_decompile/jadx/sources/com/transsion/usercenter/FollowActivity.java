package com.transsion.usercenter;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.activity.BaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0015\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/transsion/usercenter/FollowActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/b;", "<init>", "()V", "", "i0", "l0", "p0", "n0", "", "", "g0", "()Ljava/util/List;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "h0", "()Lxu/b;", "", "isTranslucent", "()Z", "", "a", "I", "followType", "Lcom/transsion/usercenter/g;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/usercenter/g;", "followAdapter", "c", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FollowActivity extends BaseActivity<xu.b> {

    private int followType = 1;

    private g followAdapter;

    private final List g0() {
        return CollectionsKt.q("A", "B", "C", "D", "E");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void i0() {
        this.followAdapter = new g(this.followType);
        RecyclerView recyclerView = ((xu.b) getMViewBinding()).f75499b;
        g gVar = this.followAdapter;
        g gVar2 = null;
        if (gVar == null) {
            Intrinsics.y("followAdapter");
            gVar = null;
        }
        recyclerView.setAdapter(gVar);
        ((xu.b) getMViewBinding()).f75499b.setLayoutManager(new LinearLayoutManager(this));
        g gVar3 = this.followAdapter;
        if (gVar3 == null) {
            Intrinsics.y("followAdapter");
            gVar3 = null;
        }
        gVar3.l(R$id.btnFollow);
        g gVar4 = this.followAdapter;
        if (gVar4 == null) {
            Intrinsics.y("followAdapter");
        } else {
            gVar2 = gVar4;
        }
        gVar2.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                FollowActivity.j0(baseQuickAdapter, view, i10);
            }
        });
        ((xu.b) getMViewBinding()).f75500c.setOnRefreshListener(new SwipeRefreshLayout.j() {
            @Override
            public final void a() {
                FollowActivity.k0(this.f54596a);
            }
        });
        l0();
        ((xu.b) getMViewBinding()).f75500c.setRefreshing(true);
        n0();
    }

    public static final void j0(BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        com.tn.lib.widget.toast.core.h.f40484a.a("点击了第" + i10 + "个");
    }

    public static final void k0(FollowActivity followActivity) {
        followActivity.n0();
    }

    private final void l0() {
        g gVar = this.followAdapter;
        g gVar2 = null;
        if (gVar == null) {
            Intrinsics.y("followAdapter");
            gVar = null;
        }
        gVar.h0().z(true);
        g gVar3 = this.followAdapter;
        if (gVar3 == null) {
            Intrinsics.y("followAdapter");
            gVar3 = null;
        }
        gVar3.h0().y(true);
        g gVar4 = this.followAdapter;
        if (gVar4 == null) {
            Intrinsics.y("followAdapter");
            gVar4 = null;
        }
        gVar4.h0().B(true);
        g gVar5 = this.followAdapter;
        if (gVar5 == null) {
            Intrinsics.y("followAdapter");
            gVar5 = null;
        }
        gVar5.h0().A(false);
        g gVar6 = this.followAdapter;
        if (gVar6 == null) {
            Intrinsics.y("followAdapter");
            gVar6 = null;
        }
        gVar6.h0().r();
        g gVar7 = this.followAdapter;
        if (gVar7 == null) {
            Intrinsics.y("followAdapter");
            gVar7 = null;
        }
        gVar7.h0().E(1);
        g gVar8 = this.followAdapter;
        if (gVar8 == null) {
            Intrinsics.y("followAdapter");
        } else {
            gVar2 = gVar8;
        }
        gVar2.h0().D(new r6.f() {
            @Override
            public final void a() {
                FollowActivity.m0(this.f54598a);
            }
        });
    }

    public static final void m0(FollowActivity followActivity) {
        followActivity.p0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void n0() {
        ((xu.b) getMViewBinding()).getRoot().postDelayed(new Runnable() {
            @Override
            public final void run() {
                FollowActivity.o0(this.f54597a);
            }
        }, 2000L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void o0(FollowActivity followActivity) {
        ((xu.b) followActivity.getMViewBinding()).f75500c.setRefreshing(false);
        g gVar = followActivity.followAdapter;
        if (gVar == null) {
            Intrinsics.y("followAdapter");
            gVar = null;
        }
        gVar.n1(followActivity.g0());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void p0() {
        g gVar = this.followAdapter;
        g gVar2 = null;
        if (gVar == null) {
            Intrinsics.y("followAdapter");
            gVar = null;
        }
        if (gVar.getData().size() <= 20) {
            ((xu.b) getMViewBinding()).getRoot().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    FollowActivity.q0(this.f54646a);
                }
            }, 2000L);
            return;
        }
        g gVar3 = this.followAdapter;
        if (gVar3 == null) {
            Intrinsics.y("followAdapter");
        } else {
            gVar2 = gVar3;
        }
        gVar2.h0().t(false);
    }

    public static final void q0(FollowActivity followActivity) {
        g gVar = followActivity.followAdapter;
        g gVar2 = null;
        if (gVar == null) {
            Intrinsics.y("followAdapter");
            gVar = null;
        }
        gVar.q(followActivity.g0());
        g gVar3 = followActivity.followAdapter;
        if (gVar3 == null) {
            Intrinsics.y("followAdapter");
        } else {
            gVar2 = gVar3;
        }
        gVar2.h0().s();
    }

    @Override
    public xu.b getViewBinding() {
        xu.b bVarC = xu.b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.followType = getIntent().getIntExtra("follow_type_key", 1);
        LinearLayoutCompat root = ((xu.b) getMViewBinding()).getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.e(root);
        TitleLayout titleLayout = ((xu.b) getMViewBinding()).f75501d;
        titleLayout.goneRightViewLayout();
        if (this.followType == 1) {
            String string = getString(R$string.user_center_follow_following);
            Intrinsics.g(string, "getString(...)");
            titleLayout.setTitleText(string);
        } else {
            String string2 = getString(R$string.user_center_follow_followers);
            Intrinsics.g(string2, "getString(...)");
            titleLayout.setTitleText(string2);
        }
        i0();
    }
}
