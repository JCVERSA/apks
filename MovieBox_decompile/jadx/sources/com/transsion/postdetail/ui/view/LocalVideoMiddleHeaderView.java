package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.viewmodel.LocalVideoDetailViewModel;
import com.transsion.push.PushConstants;
import com.transsion.wrapperad.view.cardpage.NativeCardPageAdHelper;
import com.transsion.wrapperad.view.cardpage.NativeCardPageView;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB#\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fJ\u0017\u0010\u000f\u001a\n \u000e*\u0004\u0018\u00010\r0\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0016\u0010\u0013J\u001f\u0010\u001a\u001a\u00020\u00112\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0018H\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\nH\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\u00112\b\u0010$\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b%\u0010!J)\u0010*\u001a\u00020\u00112\b\u0010$\u001a\u0004\u0018\u00010\u00182\b\u0010'\u001a\u0004\u0018\u00010&2\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+J#\u0010.\u001a\u00020\u00112\u0014\u0010-\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\u00110,¢\u0006\u0004\b.\u0010/J\u001b\u00101\u001a\u00020\u00112\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u001100¢\u0006\u0004\b1\u00102J\u0017\u00104\u001a\u0004\u0018\u00010\u00182\u0006\u00103\u001a\u00020\r¢\u0006\u0004\b4\u00105J\r\u00106\u001a\u00020\u0011¢\u0006\u0004\b6\u0010\u0013J\u000f\u00107\u001a\u00020\u0011H\u0016¢\u0006\u0004\b7\u0010\u0013J\r\u00108\u001a\u00020\u0011¢\u0006\u0004\b8\u0010\u0013R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010?\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u001b\u0010E\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR&\u0010L\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\u0011\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u001e\u0010O\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010R\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010T\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010>R\u001b\u0010Y\u001a\u00020U8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010B\u001a\u0004\bW\u0010XR\u0018\u0010]\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u001a\u0010a\u001a\u00020\n8\u0006X\u0086D¢\u0006\f\n\u0004\b^\u0010>\u001a\u0004\b_\u0010`R\u001a\u0010d\u001a\u00020\n8\u0006X\u0086D¢\u0006\f\n\u0004\bb\u0010>\u001a\u0004\bc\u0010`R\u001a\u0010g\u001a\u00020\n8\u0006X\u0086D¢\u0006\f\n\u0004\be\u0010>\u001a\u0004\bf\u0010`¨\u0006h"}, d2 = {"Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lim/f;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "kotlin.jvm.PlatformType", "getClassTag", "()Ljava/lang/String;", "", "z", "()V", CampaignEx.JSON_KEY_AD_R, "y", "w", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "list", "H", "(Ljava/util/List;)V", "bean", RequestParameters.POSITION, "E", "(Lcom/transsion/baselib/db/download/DownloadBean;I)V", "F", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "G", "(I)V", "downloadBean", "updateDownloadBean", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;", "nativeSlideshowView", "Landroidx/lifecycle/LifecycleCoroutineScope;", "scope", "init", "(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Landroidx/lifecycle/LifecycleCoroutineScope;)V", "Lkotlin/Function1;", "callback", "setItemClickCallback", "(Lkotlin/jvm/functions/Function1;)V", "Lkotlin/Function0;", "setAllListClickCallback", "(Lkotlin/jvm/functions/Function0;)V", "resourceId", "getDownloadBean", "(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;", PushConstants.PROVIDER_FIELD_DESTROY, "onMemberStateChange", "destroyAdHelper", "Lwn/x;", "a", "Lwn/x;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "scrollOffset", "Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;", "c", "Lkotlin/Lazy;", "getViewModel", "()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;", "viewModel", "Lcom/transsion/postdetail/ui/adapter/c;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/ui/adapter/c;", "seriesAdapter", "e", "Lkotlin/jvm/functions/Function1;", "itemClickCallback", "f", "Lkotlin/jvm/functions/Function0;", "showAllCallback", "g", "Lcom/transsion/baselib/db/download/DownloadBean;", "mDownloadBean", "h", "refreshTime", "Landroid/os/Handler;", "i", "getMHandler", "()Landroid/os/Handler;", "mHandler", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;", "j", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;", "adHelper", CampaignEx.JSON_KEY_AD_K, "getMaxStep", "()I", "maxStep", "l", "getStep", "step", "m", "getDefault", "default", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LocalVideoMiddleHeaderView extends ConstraintLayout implements im.f {

    private final wn.x viewBinding;

    private final int scrollOffset;

    private final Lazy viewModel;

    private com.transsion.postdetail.ui.adapter.c seriesAdapter;

    private Function1 itemClickCallback;

    private Function0 showAllCallback;

    private DownloadBean mDownloadBean;

    private int refreshTime;

    private final Lazy mHandler;

    private NativeCardPageAdHelper adHelper;

    private final int maxStep;

    private final int step;

    private final int default;

    public static final class a extends DiffUtil.e {
        a() {
        }

        @Override
        public boolean areContentsTheSame(DownloadBean oldItem, DownloadBean newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getResourceId(), newItem.getResourceId()) && oldItem.getStatus() == newItem.getStatus() && oldItem.getProgress() == newItem.getProgress() && Intrinsics.c(oldItem.getUpdateTimeStamp(), newItem.getUpdateTimeStamp());
        }

        @Override
        public boolean areItemsTheSame(DownloadBean oldItem, DownloadBean newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getResourceId(), newItem.getResourceId());
        }
    }

    public static final class b extends RecyclerView.l {

        final int f47867a;

        b(int i10) {
            this.f47867a = i10;
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
                    if (uf.c.f()) {
                        outRect.right = 0;
                        outRect.left = this.f47867a;
                        return;
                    } else {
                        outRect.left = 0;
                        outRect.right = this.f47867a;
                        return;
                    }
                }
                if (childAdapterPosition != adapter.getItemCount() - 1) {
                    int i10 = this.f47867a;
                    outRect.right = i10;
                    outRect.left = i10;
                } else if (uf.c.f()) {
                    int i11 = this.f47867a;
                    outRect.right = i11;
                    outRect.left = i11 * 3;
                } else {
                    int i12 = this.f47867a;
                    outRect.left = i12;
                    outRect.right = i12 * 3;
                }
            }
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47868a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47868a = function;
        }

        @Override
        public final Function a() {
            return this.f47868a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f47868a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LocalVideoMiddleHeaderView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    public static final Unit A(LocalVideoMiddleHeaderView localVideoMiddleHeaderView, List list) {
        localVideoMiddleHeaderView.H(list);
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            AppCompatTextView tvEpTitle = localVideoMiddleHeaderView.viewBinding.f74648i;
            Intrinsics.g(tvEpTitle, "tvEpTitle");
            uf.c.g(tvEpTitle);
            RecyclerView recyclerViewEp = localVideoMiddleHeaderView.viewBinding.f74647h;
            Intrinsics.g(recyclerViewEp, "recyclerViewEp");
            uf.c.g(recyclerViewEp);
            AppCompatTextView innerTvName = localVideoMiddleHeaderView.viewBinding.f74643d;
            Intrinsics.g(innerTvName, "innerTvName");
            uf.c.g(innerTvName);
            AppCompatTextView innerTvInfo = localVideoMiddleHeaderView.viewBinding.f74642c;
            Intrinsics.g(innerTvInfo, "innerTvInfo");
            uf.c.g(innerTvInfo);
            AppCompatImageView innerIcon = localVideoMiddleHeaderView.viewBinding.f74641b;
            Intrinsics.g(innerIcon, "innerIcon");
            uf.c.g(innerIcon);
            return Unit.f64096a;
        }
        DownloadBean downloadBean = localVideoMiddleHeaderView.mDownloadBean;
        String uploadBy = downloadBean != null ? downloadBean.getUploadBy() : null;
        if (uploadBy == null || uploadBy.length() == 0) {
            AppCompatTextView innerTvName2 = localVideoMiddleHeaderView.viewBinding.f74643d;
            Intrinsics.g(innerTvName2, "innerTvName");
            uf.c.g(innerTvName2);
            AppCompatTextView innerTvInfo2 = localVideoMiddleHeaderView.viewBinding.f74642c;
            Intrinsics.g(innerTvInfo2, "innerTvInfo");
            uf.c.g(innerTvInfo2);
        } else {
            AppCompatTextView innerTvName3 = localVideoMiddleHeaderView.viewBinding.f74643d;
            Intrinsics.g(innerTvName3, "innerTvName");
            uf.c.k(innerTvName3);
            AppCompatTextView innerTvInfo3 = localVideoMiddleHeaderView.viewBinding.f74642c;
            Intrinsics.g(innerTvInfo3, "innerTvInfo");
            uf.c.k(innerTvInfo3);
            AppCompatTextView appCompatTextView = localVideoMiddleHeaderView.viewBinding.f74643d;
            DownloadBean downloadBean2 = localVideoMiddleHeaderView.mDownloadBean;
            appCompatTextView.setText(downloadBean2 != null ? downloadBean2.getUploadBy() : null);
        }
        AppCompatImageView innerIcon2 = localVideoMiddleHeaderView.viewBinding.f74641b;
        Intrinsics.g(innerIcon2, "innerIcon");
        uf.c.k(innerIcon2);
        AppCompatTextView tvEpTitle2 = localVideoMiddleHeaderView.viewBinding.f74648i;
        Intrinsics.g(tvEpTitle2, "tvEpTitle");
        uf.c.k(tvEpTitle2);
        RecyclerView recyclerViewEp2 = localVideoMiddleHeaderView.viewBinding.f74647h;
        Intrinsics.g(recyclerViewEp2, "recyclerViewEp");
        uf.c.k(recyclerViewEp2);
        if (list.size() > 3) {
            BLTextView tvMore = localVideoMiddleHeaderView.viewBinding.f74649j;
            Intrinsics.g(tvMore, "tvMore");
            uf.c.k(tvMore);
        }
        return Unit.f64096a;
    }

    public static final Unit B(LocalVideoMiddleHeaderView localVideoMiddleHeaderView, DownloadBean downloadBean) {
        com.transsion.postdetail.ui.adapter.c cVar;
        List<Object> data;
        List<Object> data2;
        int size = 0;
        if (downloadBean != null) {
            downloadBean.setPlaying(false);
        }
        com.transsion.postdetail.ui.adapter.c cVar2 = localVideoMiddleHeaderView.seriesAdapter;
        int i10 = -1;
        if (cVar2 != null && (data2 = cVar2.getData()) != null) {
            Iterator<Object> it = data2.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), downloadBean != null ? downloadBean.getResourceId() : null)) {
                    i10 = i11;
                    break;
                }
                i11++;
            }
        }
        if (i10 >= 0) {
            com.transsion.postdetail.ui.adapter.c cVar3 = localVideoMiddleHeaderView.seriesAdapter;
            if (cVar3 != null && (data = cVar3.getData()) != null) {
                size = data.size();
            }
            if (i10 < size && (cVar = localVideoMiddleHeaderView.seriesAdapter) != null) {
                cVar.notifyItemChanged(i10, Boolean.FALSE);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit C(LocalVideoMiddleHeaderView localVideoMiddleHeaderView, DownloadBean downloadBean) {
        com.transsion.postdetail.ui.adapter.c cVar;
        List<Object> data;
        List<Object> data2;
        if (downloadBean != null) {
            downloadBean.setPlaying(true);
        }
        com.transsion.postdetail.ui.adapter.c cVar2 = localVideoMiddleHeaderView.seriesAdapter;
        int i10 = -1;
        int size = 0;
        if (cVar2 != null && (data2 = cVar2.getData()) != null) {
            Iterator<Object> it = data2.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), downloadBean != null ? downloadBean.getResourceId() : null)) {
                    i10 = i11;
                    break;
                }
                i11++;
            }
        }
        if (i10 >= 0) {
            com.transsion.postdetail.ui.adapter.c cVar3 = localVideoMiddleHeaderView.seriesAdapter;
            if (cVar3 != null && (data = cVar3.getData()) != null) {
                size = data.size();
            }
            if (i10 < size && (cVar = localVideoMiddleHeaderView.seriesAdapter) != null) {
                cVar.notifyItemChanged(i10, Boolean.TRUE);
            }
        }
        Intrinsics.e(downloadBean);
        localVideoMiddleHeaderView.F(downloadBean);
        return Unit.f64096a;
    }

    public static final Handler D() {
        return new Handler(Looper.getMainLooper());
    }

    private final void E(DownloadBean bean, int position) {
        Function1 function1 = this.itemClickCallback;
        if (function1 != null) {
            function1.invoke(bean);
        }
    }

    private final void F(DownloadBean bean) {
        List<Object> data;
        List<Object> data2;
        com.transsion.postdetail.ui.adapter.c cVar = this.seriesAdapter;
        int i10 = -1;
        int size = 0;
        if (cVar != null && (data2 = cVar.getData()) != null) {
            Iterator<Object> it = data2.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), bean.getResourceId())) {
                    i10 = i11;
                    break;
                }
                i11++;
            }
        }
        if (i10 > 0) {
            com.transsion.postdetail.ui.adapter.c cVar2 = this.seriesAdapter;
            if (cVar2 != null && (data = cVar2.getData()) != null) {
                size = data.size();
            }
            if (i10 < size) {
                G(i10);
            }
        }
    }

    private final void G(int position) {
        if (position < 0) {
            return;
        }
        try {
            this.viewBinding.f74647h.scrollToPosition(position);
            RecyclerView.m layoutManager = this.viewBinding.f74647h.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                int i10 = this.scrollOffset;
                if (i10 <= 0) {
                    i10 = 0;
                }
                linearLayoutManager.scrollToPositionWithOffset(position, i10);
            }
        } catch (Throwable unused) {
        }
    }

    private final void H(List list) {
        com.transsion.postdetail.ui.adapter.c cVar = this.seriesAdapter;
        if (cVar != null) {
            cVar.n1(list);
        }
        DownloadBean downloadBean = this.mDownloadBean;
        if (downloadBean != null) {
            F(downloadBean);
        }
    }

    public static final LocalVideoDetailViewModel I(LocalVideoMiddleHeaderView localVideoMiddleHeaderView) {
        Context context = localVideoMiddleHeaderView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (LocalVideoDetailViewModel) new androidx.p009lifecycle.v0((FragmentActivity) context, new androidx.lifecycle.v0.d()).a(LocalVideoDetailViewModel.class);
    }

    private final String getClassTag() {
        return LocalVideoMiddleHeaderView.class.getSimpleName();
    }

    private final Handler getMHandler() {
        return (Handler) this.mHandler.getValue();
    }

    private final LocalVideoDetailViewModel getViewModel() {
        return (LocalVideoDetailViewModel) this.viewModel.getValue();
    }

    private final void r() {
        this.viewBinding.f74649j.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LocalVideoMiddleHeaderView.v(this.f48048a, view);
            }
        });
        this.viewBinding.f74645f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LocalVideoMiddleHeaderView.s(this.f47974a, view);
            }
        });
        this.viewBinding.f74646g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LocalVideoMiddleHeaderView.t(this.f47976a, view);
            }
        });
        this.viewBinding.f74641b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LocalVideoMiddleHeaderView.u(this.f47977a, view);
            }
        });
    }

    public static final void s(LocalVideoMiddleHeaderView localVideoMiddleHeaderView, View view) {
        Navigator navigatorC = TheRouter.c("/movie/detail");
        DownloadBean downloadBean = localVideoMiddleHeaderView.mDownloadBean;
        Navigator navigatorF = navigatorC.F("subject_type", downloadBean != null ? downloadBean.getSubjectType() : SubjectType.MOVIE.getValue());
        DownloadBean downloadBean2 = localVideoMiddleHeaderView.mDownloadBean;
        Navigator.x(navigatorF.K("id", downloadBean2 != null ? downloadBean2.getSubjectId() : null).z("autoPlay", true), localVideoMiddleHeaderView.getContext(), null, 2, null);
    }

    public static final void t(LocalVideoMiddleHeaderView localVideoMiddleHeaderView, View view) {
        String sourceUrl;
        DownloadBean downloadBean = localVideoMiddleHeaderView.mDownloadBean;
        if (downloadBean != null) {
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
            Context context = localVideoMiddleHeaderView.getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            FragmentActivity fragmentActivity = (FragmentActivity) context;
            Subject subject = (Subject) localVideoMiddleHeaderView.getViewModel().g().f();
            Subject subjectA = subject == null ? dn.a.a(downloadBean) : subject;
            DownloadBean downloadBean2 = localVideoMiddleHeaderView.mDownloadBean;
            String ops = downloadBean2 != null ? downloadBean2.getOps() : null;
            DownloadBean downloadBean3 = localVideoMiddleHeaderView.mDownloadBean;
            if (downloadBean3 == null || (sourceUrl = downloadBean3.getSourceUrl()) == null) {
                sourceUrl = "";
            }
            String str = sourceUrl;
            DownloadBean downloadBean4 = (DownloadBean) localVideoMiddleHeaderView.getViewModel().e().f();
            DownloadManagerApi.N(downloadManagerApiA, fragmentActivity, subjectA, "local_video_detail_middle", null, ops, str, null, null, null, false, downloadBean4 != null ? downloadBean4.getSe() : 0, false, 968, null);
        }
    }

    public static final void u(LocalVideoMiddleHeaderView localVideoMiddleHeaderView, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY");
        DownloadBean downloadBean = localVideoMiddleHeaderView.mDownloadBean;
        Navigator.x(navigatorK.K("subject_id", downloadBean != null ? downloadBean.getSubjectId() : null), localVideoMiddleHeaderView.getContext(), null, 2, null);
    }

    public static final void v(LocalVideoMiddleHeaderView localVideoMiddleHeaderView, View view) {
        Function0 function0 = localVideoMiddleHeaderView.showAllCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void w() {
        com.transsion.postdetail.ui.adapter.c cVar = new com.transsion.postdetail.ui.adapter.c(new ArrayList(), false, 2, null);
        cVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                LocalVideoMiddleHeaderView.x(this.f47979a, baseQuickAdapter, view, i10);
            }
        });
        cVar.R0(new a());
        this.seriesAdapter = cVar;
        RecyclerView recyclerView = this.viewBinding.f74647h;
        int iB = lj.a.b(4);
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.setAdapter(this.seriesAdapter);
        recyclerView.addItemDecoration(new b(iB));
    }

    public static final void x(LocalVideoMiddleHeaderView localVideoMiddleHeaderView, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L) || adapter.getData().isEmpty()) {
            return;
        }
        Object obj = adapter.getData().get(i10);
        Intrinsics.f(obj, "null cannot be cast to non-null type com.transsion.baselib.db.download.DownloadBean");
        localVideoMiddleHeaderView.E((DownloadBean) obj, i10);
    }

    private final void y() {
        String cover;
        String thumbnail;
        setPadding(0, 0, 0, lj.a.b(16));
        DownloadBean downloadBean = this.mDownloadBean;
        if (downloadBean == null || !downloadBean.isInnerSubjectRes()) {
            BLLinearLayout llDetail = this.viewBinding.f74645f;
            Intrinsics.g(llDetail, "llDetail");
            uf.c.g(llDetail);
            BLLinearLayout llDownload = this.viewBinding.f74646g;
            Intrinsics.g(llDownload, "llDownload");
            uf.c.g(llDownload);
        } else {
            DownloadBean downloadBean2 = this.mDownloadBean;
            if (downloadBean2 != null && (cover = downloadBean2.getCover()) != null && !Intrinsics.c(this.viewBinding.f74644e.getTag(), cover)) {
                this.viewBinding.f74644e.setTag(cover);
                ni.f.a aVar = ni.f.f67269a;
                Context context = getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarG = aVar.m(context).g(cover);
                DownloadBean downloadBean3 = this.mDownloadBean;
                if (downloadBean3 == null || (thumbnail = downloadBean3.getThumbnail()) == null) {
                    thumbnail = "";
                }
                ni.f.b bVarL = bVarG.l(thumbnail);
                ShapeableImageView ivCover = this.viewBinding.f74644e;
                Intrinsics.g(ivCover, "ivCover");
                bVarL.d(ivCover);
            }
        }
        DownloadBean downloadBean4 = this.mDownloadBean;
        if (downloadBean4 == null || !downloadBean4.isSeries()) {
            AppCompatTextView tvEpTitle = this.viewBinding.f74648i;
            Intrinsics.g(tvEpTitle, "tvEpTitle");
            uf.c.g(tvEpTitle);
            RecyclerView recyclerViewEp = this.viewBinding.f74647h;
            Intrinsics.g(recyclerViewEp, "recyclerViewEp");
            uf.c.g(recyclerViewEp);
            AppCompatTextView innerTvName = this.viewBinding.f74643d;
            Intrinsics.g(innerTvName, "innerTvName");
            uf.c.g(innerTvName);
            AppCompatTextView innerTvInfo = this.viewBinding.f74642c;
            Intrinsics.g(innerTvInfo, "innerTvInfo");
            uf.c.g(innerTvInfo);
            AppCompatImageView innerIcon = this.viewBinding.f74641b;
            Intrinsics.g(innerIcon, "innerIcon");
            uf.c.g(innerIcon);
        }
        w();
    }

    private final void z() {
        androidx.p009lifecycle.b0 b0VarI = getViewModel().i();
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        b0VarI.j((FragmentActivity) context, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoMiddleHeaderView.A(this.f48042a, (List) obj);
            }
        }));
        androidx.p009lifecycle.b0 b0VarF = getViewModel().f();
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        b0VarF.j((FragmentActivity) context2, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoMiddleHeaderView.B(this.f48044a, (DownloadBean) obj);
            }
        }));
        androidx.p009lifecycle.b0 b0VarE = getViewModel().e();
        Context context3 = getContext();
        Intrinsics.f(context3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        b0VarE.j((FragmentActivity) context3, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoMiddleHeaderView.C(this.f48046a, (DownloadBean) obj);
            }
        }));
    }

    public final void destroy() {
        getMHandler().removeCallbacksAndMessages(null);
        destroyAdHelper();
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.v(this);
        }
    }

    public final void destroyAdHelper() {
        NativeCardPageAdHelper nativeCardPageAdHelper = this.adHelper;
        if (nativeCardPageAdHelper != null) {
            nativeCardPageAdHelper.x();
        }
        this.adHelper = null;
    }

    public final int getDefault() {
        return this.default;
    }

    public final DownloadBean getDownloadBean(String resourceId) {
        List<Object> data;
        Intrinsics.h(resourceId, "resourceId");
        com.transsion.postdetail.ui.adapter.c cVar = this.seriesAdapter;
        Object obj = null;
        if (cVar == null || (data = cVar.getData()) == null) {
            return null;
        }
        for (Object obj2 : data) {
            if (Intrinsics.c(((DownloadBean) obj2).getResourceId(), resourceId)) {
                obj = obj2;
                break;
            }
        }
        return (DownloadBean) obj;
    }

    public final int getMaxStep() {
        return this.maxStep;
    }

    public final int getStep() {
        return this.step;
    }

    public final void init(DownloadBean downloadBean, NativeCardPageView nativeSlideshowView, LifecycleCoroutineScope scope) {
        NativeCardPageAdHelper nativeCardPageAdHelperG;
        Intrinsics.h(scope, "scope");
        this.mDownloadBean = downloadBean;
        NativeCardPageAdHelper nativeCardPageAdHelper = new NativeCardPageAdHelper(scope);
        this.adHelper = nativeCardPageAdHelper;
        if (nativeSlideshowView != null && (nativeCardPageAdHelperG = nativeCardPageAdHelper.G("MediaPlayerMidDescScene")) != null) {
            com.transsion.ad.strategy.c cVar = com.transsion.ad.strategy.c.f41178a;
            DownloadBean downloadBean2 = this.mDownloadBean;
            NativeCardPageAdHelper nativeCardPageAdHelperF = nativeCardPageAdHelperG.F(cVar.a(downloadBean2 != null ? downloadBean2.getGenre() : null));
            if (nativeCardPageAdHelperF != null) {
                nativeCardPageAdHelperF.u(nativeSlideshowView);
            }
        }
        y();
        z();
        r();
    }

    @Override
    public void onMemberStateChange() {
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar == null || !bVar.e()) {
            return;
        }
        destroyAdHelper();
    }

    public final void setAllListClickCallback(Function0<Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.showAllCallback = callback;
    }

    public final void setItemClickCallback(Function1<? super DownloadBean, Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.itemClickCallback = callback;
    }

    public final void updateDownloadBean(DownloadBean downloadBean) {
        this.mDownloadBean = downloadBean;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LocalVideoMiddleHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalVideoMiddleHeaderView(Context context, AttributeSet attributeSet, int i10) {
        JsonElement jsonElement;
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.scrollOffset = (com.blankj.utilcode.util.y.e() / 2) - com.blankj.utilcode.util.a0.a(80.0f);
        this.viewModel = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoMiddleHeaderView.I(this.f48036a);
            }
        });
        int asInt = 15;
        this.refreshTime = 15;
        this.mHandler = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoMiddleHeaderView.D();
            }
        });
        View.inflate(getContext(), R$layout.layout_local_video_middle_header, this);
        wn.x xVarA = wn.x.a(this);
        Intrinsics.g(xVarA, "bind(...)");
        this.viewBinding = xVarA;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("MediaPlayerMidDescScene");
        if (jsonObjectB != null && (jsonElement = jsonObjectB.get("refreshTime")) != null) {
            asInt = jsonElement.getAsInt();
        }
        this.refreshTime = asInt;
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.D(this);
        }
        this.maxStep = 128;
        this.step = 2;
        this.default = 1;
    }
}
