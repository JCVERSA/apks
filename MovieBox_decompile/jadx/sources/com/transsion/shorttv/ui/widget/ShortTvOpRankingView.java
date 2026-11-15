package com.transsion.shorttv.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.TnTextView;
import com.transsion.shorttv.bean.AppointSubject;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.RankingData;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.adapter.ShortTvOpRankingAdapter;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000U\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\b*\u0001.\u0018\u0000 42\u00020\u0001:\u0001\u001eBA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010B1\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0011B;\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J1\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102¨\u00065"}, d2 = {"Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "pageName", "Lcom/transsion/shorttv/bean/OperateItem;", WebConstants.FIELD_ITEM, "", "tabId", "", "isTablet", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;Landroid/util/AttributeSet;I)V", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;)V", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;Landroid/util/AttributeSet;)V", "isHorizontal", "", CampaignEx.JSON_KEY_AD_R, "(Lcom/transsion/shorttv/bean/OperateItem;Z)V", "Lcom/transsion/shorttv/bean/Subject;", RequestParameters.POSITION, "operateItem", "s", "(Lcom/transsion/shorttv/bean/Subject;ILcom/transsion/shorttv/bean/OperateItem;Z)V", "updateData", "(Lcom/transsion/shorttv/bean/OperateItem;)V", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/shorttv/bean/OperateItem;", "c", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "Lqr/o0;", "e", "Lqr/o0;", "viewBinding", "Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;", "f", "Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;", "mAdapter", "com/transsion/shorttv/ui/widget/ShortTvOpRankingView$b", "g", "Lkotlin/Lazy;", "getCustomRecycledViewPool", "()Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView$b;", "customRecycledViewPool", "Companion", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvOpRankingView extends ConstraintLayout {
    public static final int MAX_COUNT = 30;
    public static final int VIEW_TYPE_MORE = 100;

    private final String pageName;

    private final OperateItem item;

    private final int tabId;

    private final boolean isTablet;

    private final qr.o0 viewBinding;

    private ShortTvOpRankingAdapter mAdapter;

    private final Lazy customRecycledViewPool;

    public static final class b extends RecyclerView.s {
        b() {
            m(100, 1);
            m(0, 16);
        }

        @Override
        public void k(RecyclerView.a0 a0Var) {
            super.k(a0Var);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvOpRankingView(String pageName, OperateItem item, int i10, boolean z10, Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
        this.pageName = pageName;
        this.item = item;
        this.tabId = i10;
        this.isTablet = z10;
        this.customRecycledViewPool = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvOpRankingView.q();
            }
        });
        View.inflate(context, R$layout.short_tv_op_ranking, this);
        qr.o0 o0VarA = qr.o0.a(this);
        Intrinsics.g(o0VarA, "bind(...)");
        this.viewBinding = o0VarA;
        RankingData rankingData = item.getRankingData();
        final boolean z11 = rankingData != null && rankingData.getRankingHorizontal();
        TnTextView mainOperationMovieRankTitle = o0VarA.f70125d;
        Intrinsics.g(mainOperationMovieRankTitle, "mainOperationMovieRankTitle");
        mainOperationMovieRankTitle.setText(item.getTitle());
        TnTextView mainOperationMovieMoreText = o0VarA.f70123b;
        Intrinsics.g(mainOperationMovieMoreText, "mainOperationMovieMoreText");
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            cr.b.c(mainOperationMovieMoreText);
        } else {
            cr.b.e(mainOperationMovieMoreText);
            mainOperationMovieRankTitle.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTvOpRankingView.n(this.f51600a, z11, view);
                }
            });
            mainOperationMovieMoreText.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTvOpRankingView.o(this.f51603a, z11, view);
                }
            });
        }
        RecyclerView mainOperationMovieRankRecycler = o0VarA.f70124c;
        Intrinsics.g(mainOperationMovieRankRecycler, "mainOperationMovieRankRecycler");
        final ShortTvOpRankingAdapter shortTvOpRankingAdapter = new ShortTvOpRankingAdapter(0, i10, pageName, z11, z10, 1, null);
        this.mAdapter = shortTvOpRankingAdapter;
        mainOperationMovieRankRecycler.setAdapter(shortTvOpRankingAdapter);
        mainOperationMovieRankRecycler.setLayoutManager(new LinearLayoutManager(context, 0, false));
        if (!Intrinsics.c(mainOperationMovieRankRecycler.getRecycledViewPool(), getCustomRecycledViewPool())) {
            mainOperationMovieRankRecycler.setRecycledViewPool(getCustomRecycledViewPool());
        }
        if (mainOperationMovieRankRecycler.getItemDecorationCount() == 0) {
            mainOperationMovieRankRecycler.addItemDecoration(new com.transsion.shorttv.base.widget.m(8.0f, 0.0f, 12.0f, 2, null));
        }
        List<AppointSubject> subjects = item.getSubjects();
        subjects = subjects == null ? new ArrayList<>() : subjects;
        shortTvOpRankingAdapter.n1(subjects.size() > 30 ? subjects.subList(0, 31) : subjects);
        shortTvOpRankingAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                ShortTvOpRankingView.p(this.f51606a, shortTvOpRankingAdapter, z11, baseQuickAdapter, view, i12);
            }
        });
        HashMap map = new HashMap();
        map.put("event_type", z11 ? "browse_rank_horiz_more" : "browse_rank_more");
        String deepLink2 = item.getDeepLink();
        map.put("deepLink", deepLink2 == null ? "" : deepLink2);
        String title = item.getTitle();
        map.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
        map.put("tabId", String.valueOf(i10));
        com.transsion.shorttv.utils.i.a(item, map);
        map.put("opt_type", item.getType() + "_RANK_MORE");
        qi.h.f69682a.o(pageName, map);
        ShortTvOpRankingAdapter shortTvOpRankingAdapter2 = this.mAdapter;
        if (shortTvOpRankingAdapter2 != null) {
            shortTvOpRankingAdapter2.D1(item);
        }
    }

    private final b getCustomRecycledViewPool() {
        return (b) this.customRecycledViewPool.getValue();
    }

    public static final void n(ShortTvOpRankingView shortTvOpRankingView, boolean z10, View view) {
        shortTvOpRankingView.r(shortTvOpRankingView.item, z10);
    }

    public static final void o(ShortTvOpRankingView shortTvOpRankingView, boolean z10, View view) {
        shortTvOpRankingView.r(shortTvOpRankingView.item, z10);
    }

    public static final void p(ShortTvOpRankingView shortTvOpRankingView, ShortTvOpRankingAdapter shortTvOpRankingAdapter, boolean z10, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        List<AppointSubject> subjects;
        AppointSubject appointSubject;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        List<AppointSubject> subjects2 = shortTvOpRankingView.item.getSubjects();
        if (i10 >= (subjects2 != null ? subjects2.size() : 0) || (subjects = shortTvOpRankingView.item.getSubjects()) == null || (appointSubject = subjects.get(i10)) == null) {
            return;
        }
        if (shortTvOpRankingAdapter.getItemViewType(i10) == 100) {
            shortTvOpRankingView.r(shortTvOpRankingView.item, z10);
        } else {
            shortTvOpRankingView.s(appointSubject, i10, shortTvOpRankingView.item, z10);
        }
    }

    public static final b q() {
        return new b();
    }

    private final void r(OperateItem item, boolean isHorizontal) {
        HashMap map = new HashMap();
        map.put("event_type", isHorizontal ? "click_rank_horiz_more" : "click_rank_more");
        String deepLink = item.getDeepLink();
        if (deepLink == null) {
            deepLink = "";
        }
        map.put("deepLink", deepLink);
        String title = item.getTitle();
        map.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
        map.put("tabId", String.valueOf(this.tabId));
        com.transsion.shorttv.utils.i.a(item, map);
        map.put("opt_type", item.getType() + "_RANK_MORE");
        qi.h.f69682a.o(this.pageName, map);
    }

    private final void s(Subject item, int position, OperateItem operateItem, boolean isHorizontal) {
        Navigator.x(TheRouter.c(pr.a.f69252a.b()).K("id", item.getSubjectId()).K("ops", item.getOps()), getContext(), null, 2, null);
        HashMap map = new HashMap();
        map.put("event_type", isHorizontal ? "click_rank_horiz_item" : "click_rank_item");
        map.put("sequence", String.valueOf(position));
        map.put("tabId", String.valueOf(this.tabId));
        String ops = item.getOps();
        if (ops != null) {
            map.put("ops", ops);
        }
        if (operateItem != null) {
            com.transsion.shorttv.utils.i.a(operateItem, map);
        }
        com.transsion.shorttv.utils.i.c(item, map);
        or.b.f67950a.a();
        qi.h.f69682a.o(this.pageName, map);
    }

    public static final void t(ShortTvOpRankingView shortTvOpRankingView, OperateItem operateItem, boolean z10, View view) {
        shortTvOpRankingView.r(operateItem, z10);
    }

    public static final void u(ShortTvOpRankingView shortTvOpRankingView, OperateItem operateItem, boolean z10, View view) {
        shortTvOpRankingView.r(operateItem, z10);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    public final void updateData(final OperateItem item) {
        final boolean z10;
        Intrinsics.h(item, "item");
        ShortTvOpRankingAdapter shortTvOpRankingAdapter = this.mAdapter;
        if (shortTvOpRankingAdapter != null) {
            shortTvOpRankingAdapter.D1(item);
        }
        RankingData rankingData = item.getRankingData();
        if (rankingData != null) {
            z10 = rankingData.getRankingHorizontal();
        }
        TnTextView mainOperationMovieRankTitle = this.viewBinding.f70125d;
        Intrinsics.g(mainOperationMovieRankTitle, "mainOperationMovieRankTitle");
        mainOperationMovieRankTitle.setText(item.getTitle());
        TnTextView mainOperationMovieMoreText = this.viewBinding.f70123b;
        Intrinsics.g(mainOperationMovieMoreText, "mainOperationMovieMoreText");
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            cr.b.c(mainOperationMovieMoreText);
        } else {
            cr.b.e(mainOperationMovieMoreText);
            mainOperationMovieRankTitle.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTvOpRankingView.t(this.f51615a, item, z10, view);
                }
            });
            mainOperationMovieMoreText.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTvOpRankingView.u(this.f51619a, item, z10, view);
                }
            });
        }
        List<AppointSubject> subjects = item.getSubjects();
        if (subjects == null) {
            subjects = new ArrayList<>();
        }
        if (subjects.size() > 30) {
            subjects = subjects.subList(0, 31);
        }
        ShortTvOpRankingAdapter shortTvOpRankingAdapter2 = this.mAdapter;
        if (shortTvOpRankingAdapter2 != null) {
            shortTvOpRankingAdapter2.n1(subjects);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvOpRankingView(String pageName, OperateItem item, int i10, boolean z10, Context context) {
        this(pageName, item, i10, z10, context, null);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvOpRankingView(String pageName, OperateItem item, int i10, boolean z10, Context context, AttributeSet attributeSet) {
        this(pageName, item, i10, z10, context, attributeSet, 0);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
    }
}
