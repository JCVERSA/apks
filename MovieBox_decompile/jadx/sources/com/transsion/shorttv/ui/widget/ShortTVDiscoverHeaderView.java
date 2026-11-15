package com.transsion.shorttv.ui.widget;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.NpaLinearLayoutManager;
import com.transsion.shorttv.bean.AppointSubject;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.PlayListItem;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.activity.ShortTvListActivity;
import com.transsion.shorttv.ui.adapter.ShortTVHeaderViewAdapter;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010B1\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0011B;\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0013¢\u0006\u0004\b\u001f\u0010\u0015J\u000f\u0010 \u001a\u00020\u0013H\u0014¢\u0006\u0004\b \u0010\u0015J\u000f\u0010!\u001a\u00020\u0013H\u0014¢\u0006\u0004\b!\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010&R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010*\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010(R\u0014\u0010+\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010&R\u0014\u0010.\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109¨\u0006;"}, d2 = {"Lcom/transsion/shorttv/ui/widget/ShortTVDiscoverHeaderView;", "Landroid/widget/LinearLayout;", "", "pageName", "Lcom/transsion/shorttv/bean/OperateItem;", WebConstants.FIELD_ITEM, "", "tabId", "", "isTablet", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;Landroid/util/AttributeSet;I)V", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;)V", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/OperateItem;IZLandroid/content/Context;Landroid/util/AttributeSet;)V", "", "c", "()V", "f", "Lcom/transsion/shorttv/bean/Subject;", "subject", "g", "(Lcom/transsion/shorttv/bean/Subject;)V", "getItemOptType", "()Ljava/lang/String;", "updateData", "(Lcom/transsion/shorttv/bean/OperateItem;)V", "clearExposureCache", "onDetachedFromWindow", "onAttachedToWindow", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/shorttv/bean/OperateItem;", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "e", "isRTL", "dp8", "Lqr/h0;", "Lqr/h0;", "viewBinding", "Lcom/transsion/shorttv/ui/adapter/ShortTVHeaderViewAdapter;", "h", "Lcom/transsion/shorttv/ui/adapter/ShortTVHeaderViewAdapter;", "headerAdapter", "Lbr/b;", "i", "Lbr/b;", "exposureHelper", "Lwr/a;", "j", "Lwr/a;", "recReport", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTVDiscoverHeaderView extends LinearLayout {

    private final String pageName;

    private final OperateItem item;

    private final int tabId;

    private final boolean isTablet;

    private final boolean isRTL;

    private final int dp8;

    private final qr.h0 viewBinding;

    private ShortTVHeaderViewAdapter headerAdapter;

    private br.b exposureHelper;

    private final wr.a recReport;

    public static final class a implements br.a {
        a() {
        }

        @Override
        public void a(int i10, long j10, View view) {
        }
    }

    public static final class b extends RecyclerView.l {
        b() {
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            if (adapter != null) {
                if (childAdapterPosition == 0) {
                    if (ShortTVDiscoverHeaderView.this.isRTL) {
                        outRect.right = ShortTVDiscoverHeaderView.this.dp8 * 2;
                        return;
                    } else {
                        outRect.left = ShortTVDiscoverHeaderView.this.dp8 * 2;
                        return;
                    }
                }
                if (childAdapterPosition == adapter.getItemCount() - 1) {
                    outRect.right = ShortTVDiscoverHeaderView.this.dp8;
                    outRect.left = ShortTVDiscoverHeaderView.this.dp8;
                } else if (ShortTVDiscoverHeaderView.this.isRTL) {
                    outRect.right = ShortTVDiscoverHeaderView.this.dp8;
                } else {
                    outRect.left = ShortTVDiscoverHeaderView.this.dp8;
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTVDiscoverHeaderView(String pageName, OperateItem item, int i10, boolean z10, Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
        this.pageName = pageName;
        this.item = item;
        this.tabId = i10;
        this.isTablet = z10;
        this.isRTL = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        this.dp8 = com.blankj.utilcode.util.a0.a(8.0f);
        this.recReport = new wr.a();
        View.inflate(context, R$layout.short_tv_layout_discover_header, this);
        qr.h0 h0VarA = qr.h0.a(this);
        Intrinsics.g(h0VarA, "bind(...)");
        this.viewBinding = h0VarA;
        setOrientation(1);
        c();
        f();
    }

    private final void c() {
        this.exposureHelper = new br.b(0.6f, new a(), false, 4, null);
        this.viewBinding.f70033d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTVDiscoverHeaderView.d(this.f51562a, view);
            }
        });
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = new ShortTVHeaderViewAdapter(this.exposureHelper);
        shortTVHeaderViewAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTVDiscoverHeaderView.e(this.f51566a, baseQuickAdapter, view, i10);
            }
        });
        this.headerAdapter = shortTVHeaderViewAdapter;
        RecyclerView recyclerView = this.viewBinding.f70031b;
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new b());
        recyclerView.setAdapter(this.headerAdapter);
        br.b bVar = this.exposureHelper;
        Intrinsics.e(bVar);
        recyclerView.addOnScrollListener(bVar);
        AppCompatTextView tvViewAll = this.viewBinding.f70033d;
        Intrinsics.g(tvViewAll, "tvViewAll");
        cr.b.c(tvViewAll);
    }

    public static final void d(ShortTVDiscoverHeaderView shortTVDiscoverHeaderView, View view) {
        wf.a.C0922a.g(wf.a.f74274a, "Click view all", false, 2, null);
        String deepLink = shortTVDiscoverHeaderView.item.getDeepLink();
        if (deepLink == null) {
            PlayListItem playListData = shortTVDiscoverHeaderView.item.getPlayListData();
            deepLink = playListData != null ? playListData.getDeepLink() : null;
        }
        if (deepLink != null) {
            hr.c.f(deepLink, null, 1, null);
        }
    }

    public static final void e(ShortTVDiscoverHeaderView shortTVDiscoverHeaderView, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVDiscoverHeaderView.recReport.c("minitv_explore", subject, i10, shortTVDiscoverHeaderView.getItemOptType());
            shortTVDiscoverHeaderView.g(subject);
        }
    }

    private final void f() {
        this.viewBinding.f70032c.setText(this.item.getTitle());
        updateData(this.item);
    }

    private final void g(Subject subject) {
        Context context = getContext();
        if (context != null) {
            String itemOptType = getItemOptType();
            if (Intrinsics.c(itemOptType, "new_release") || Intrinsics.c(itemOptType, "playlist")) {
                rr.a.f71324a.a((FragmentActivity) context, "minitv_explore", subject.getOps(), (64 & 8) != 0 ? null : "download_subject", (64 & 16) != 0 ? false : false, (64 & 32) != 0 ? null : subject, (64 & 64) != 0 ? null : null, (64 & 128) != 0 ? Boolean.FALSE : null);
                return;
            }
            String subjectId = subject.getSubjectId();
            if (subjectId != null) {
                ShortTvListActivity.INSTANCE.a(context, subjectId, (28 & 4) != 0 ? null : null, (28 & 8) != 0 ? 0L : 0L, (28 & 16) != 0 ? false : false, (28 & 32) != 0 ? null : subject.getOps());
            }
        }
    }

    private final String getItemOptType() {
        return "playlist";
    }

    public final void clearExposureCache() {
        br.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String title = this.item.getTitle();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("2---onAttachedToWindow title:");
        sb2.append(title);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        br.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        String title = this.item.getTitle();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onDetachedFromWindow title:");
        sb2.append(title);
    }

    public final void updateData(OperateItem item) {
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter;
        Intrinsics.h(item, "item");
        List<AppointSubject> subjects = item.getSubjects();
        if (subjects != null && (shortTVHeaderViewAdapter = this.headerAdapter) != null) {
            shortTVHeaderViewAdapter.n1(subjects);
        }
        this.viewBinding.f70032c.setText(item.getTitle());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVDiscoverHeaderView(String pageName, OperateItem item, int i10, boolean z10, Context context) {
        this(pageName, item, i10, z10, context, null);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVDiscoverHeaderView(String pageName, OperateItem item, int i10, boolean z10, Context context, AttributeSet attributeSet) {
        this(pageName, item, i10, z10, context, attributeSet, 0);
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(context, "context");
    }
}
