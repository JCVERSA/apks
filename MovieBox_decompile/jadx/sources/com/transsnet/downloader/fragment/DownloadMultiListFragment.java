package com.transsnet.downloader.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.DefaultView;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.transsnet.downloader.widget.DownloadResLoadMoreView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0016\u0018\u0000 \u009a\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u009b\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\b2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0017\u0010\u0004J'\u0010\u001b\u001a\u00020\b2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00052\u0006\u0010\u001a\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\bH\u0002¢\u0006\u0004\b \u0010\u0004J\u0017\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\bH\u0002¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\bH\u0002¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\rH\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\bH\u0002¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020+H\u0002¢\u0006\u0004\b.\u0010-J\u000f\u0010/\u001a\u00020\bH\u0016¢\u0006\u0004\b/\u0010\u0004J\u0019\u00102\u001a\u00020\b2\b\u00101\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\b2\u00103J\u0017\u00106\u001a\u00020\u00022\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00109\u001a\u000208H\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\rH\u0016¢\u0006\u0004\b;\u0010)J\u000f\u0010<\u001a\u00020\rH\u0016¢\u0006\u0004\b<\u0010)J\u000f\u0010=\u001a\u00020\bH\u0016¢\u0006\u0004\b=\u0010\u0004J\u000f\u0010>\u001a\u00020\bH\u0016¢\u0006\u0004\b>\u0010\u0004J\u000f\u0010?\u001a\u00020\bH\u0016¢\u0006\u0004\b?\u0010\u0004J\u0017\u0010A\u001a\u00020\b2\u0006\u0010@\u001a\u00020\rH\u0016¢\u0006\u0004\bA\u0010\u0014J\u000f\u0010B\u001a\u00020\bH\u0016¢\u0006\u0004\bB\u0010\u0004J\u0015\u0010E\u001a\u00020\b2\u0006\u0010D\u001a\u00020C¢\u0006\u0004\bE\u0010FJ\r\u0010G\u001a\u00020\r¢\u0006\u0004\bG\u0010)J\u0015\u0010I\u001a\u00020\b2\u0006\u0010H\u001a\u00020\r¢\u0006\u0004\bI\u0010\u0014J\r\u0010J\u001a\u00020\r¢\u0006\u0004\bJ\u0010)R\u0018\u0010N\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010Q\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010S\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010PR\u0016\u0010V\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010Y\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0016\u0010[\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010XR\u0016\u0010]\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010UR\u0016\u0010_\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010PR\u0016\u0010a\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010PR\u0016\u0010c\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010PR\"\u0010g\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bd\u0010U\u001a\u0004\be\u0010)\"\u0004\bf\u0010\u0014R\u0018\u0010k\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0018\u0010o\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010q\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010XR\u0018\u0010s\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010XR\u0018\u0010u\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010XR\u0016\u0010w\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010PR\u0016\u0010y\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010PR\u0016\u0010{\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010PR\u0016\u0010}\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010PR\u0016\u0010\u007f\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010PR\u0018\u0010\u0081\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010PR&\u0010\u0085\u0001\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0082\u0001\u0010U\u001a\u0005\b\u0083\u0001\u0010)\"\u0005\b\u0084\u0001\u0010\u0014R\u0019\u0010\u0088\u0001\u001a\u00030\u0086\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bP\u0010\u0087\u0001R\u0018\u0010\u0089\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010PR\u0018\u0010\u008d\u0001\u001a\u00030\u008a\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R0\u0010\u0096\u0001\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001\"\u0005\b\u0095\u0001\u0010\nR\u0016\u0010\u0099\u0001\u001a\u0004\u0018\u00010+8F¢\u0006\b\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001¨\u0006\u009c\u0001"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;", "Lbx/z;", "<init>", "()V", "", "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;", "seasons", "", "U0", "(Ljava/util/List;)V", "Lcom/transsnet/downloader/bean/DownloadListBean;", "bean", "", "a1", "(Lcom/transsnet/downloader/bean/DownloadListBean;)Z", "initView", "k1", "isSelected", "m1", "(Z)V", "n1", "loadData", "showNotNetError", "Lcom/transsion/baselib/db/download/DownloadBean;", "list", "hasMore", "t1", "(Ljava/util/List;Z)V", "targetItem", "s1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "showEmpty", "Landroid/content/Context;", "context", "Landroid/view/View;", "getEmptyView", "(Landroid/content/Context;)Landroid/view/View;", "startLoading", "hideLoading", "h1", "()Z", "o1", "", "X0", "()I", "W0", "initViewData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Z0", "(Landroid/view/LayoutInflater;)Lbx/z;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isAudioShowNoNetworkLayout", "isMonitorNetworkState", "initViewModel", "initListener", "retryLoadData", "hidden", "onHiddenChanged", "onDestroy", "Lzw/c;", "control", "q1", "(Lzw/c;)V", "b1", "selectAll", "l1", "j1", "Lcom/transsnet/downloader/adapter/g;", "l", "Lcom/transsnet/downloader/adapter/g;", "mAdapter", "m", "I", "resolution", "n", "resolutionTabPosition", "o", "Z", "isShowLoading", TtmlNode.TAG_P, "Ljava/lang/String;", "pageFrom", CampaignEx.JSON_KEY_AD_Q, "lastPageFrom", CampaignEx.JSON_KEY_AD_R, "showPremiumIfNeed", "s", "curSeason", "t", "targetSeason", TmcStartParams.KEY_URL_SHORT, "epIndex", "v", "getHasMoreSeasons", "setHasMoreSeasons", "hasMoreSeasons", "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", "w", "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", "currentViewModel", "Lcom/transsion/moviedetailapi/bean/Subject;", "x", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "y", "groupId", "z", "ops", "A", "targetResourceId", "B", "startPosition", "C", "endPosition", "D", "totalPosition", "E", "curTotalPosition", "F", "startEpisode", "G", "endEpisode", "H", "i1", "setSelectAll", "isSelectAll", "", "J", "localTotalSize", "unableSize", "Lkotlinx/coroutines/n0;", "K", "Lkotlinx/coroutines/n0;", "downloadCoroutineScope", "L", "Lzw/c;", "tabControl", "M", "Ljava/util/List;", "getSeasonsList", "()Ljava/util/List;", "p1", "seasonsList", "Y0", "()Ljava/lang/Integer;", "maxResolution", "N", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class DownloadMultiListFragment extends DownloadReDetectorBaseFragment<bx.z> {

    public static final Companion INSTANCE = new Companion(null);

    private String targetResourceId;

    private boolean isSelectAll;

    private long localTotalSize;

    private int unableSize;

    private zw.c tabControl;

    private List seasonsList;

    private com.transsnet.downloader.adapter.g mAdapter;

    private int resolution;

    private int resolutionTabPosition;

    private boolean showPremiumIfNeed;

    private int curSeason;

    private int targetSeason;

    private int epIndex;

    private boolean hasMoreSeasons;

    private DownloadResourcesDetectorViewModel currentViewModel;

    private Subject subject;

    private String groupId;

    private String ops;

    private boolean isShowLoading = true;

    private String pageFrom = "";

    private String lastPageFrom = "";

    private int startPosition = 1;

    private int endPosition = 1;

    private int totalPosition = 1;

    private int curTotalPosition = 1;

    private int startEpisode = 1;

    private int endEpisode = 1;

    private final kotlinx.coroutines.n0 downloadCoroutineScope = kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b());

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadMultiListFragment a(String str, String str2, Subject subject, String str3, String str4, String str5, Integer num, int i10, boolean z10, boolean z11, int i11, int i12, int i13) {
            DownloadMultiListFragment downloadMultiListFragment = new DownloadMultiListFragment();
            downloadMultiListFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_page_from", str), TuplesKt.a("extra_last_page_from", str2), TuplesKt.a("extra_subject", subject), TuplesKt.a("extra_group_id", str3), TuplesKt.a("extra_ops", str4), TuplesKt.a("extra_target_resource_id", str5), TuplesKt.a("extra_resolution", num), TuplesKt.a("extra_show_premium_if_need", Boolean.valueOf(z10)), TuplesKt.a("extra_resolution_position", Integer.valueOf(i10)), TuplesKt.a("extra_ep_index", Integer.valueOf(i13)), TuplesKt.a("extra_resolution_is_show_loading", Boolean.valueOf(z11)), TuplesKt.a("extra_season", Integer.valueOf(i11)), TuplesKt.a("extra_series_position", Integer.valueOf(i12))));
            return downloadMultiListFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends DiffUtil.e {
        b() {
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
            return Intrinsics.c(oldItem.getUrl(), newItem.getUrl());
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56624a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56624a = function;
        }

        @Override
        public final Function a() {
            return this.f56624a;
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
            this.f56624a.invoke(obj);
        }
    }

    private final void U0(List seasons) {
        this.hasMoreSeasons = (seasons != null ? seasons.size() : 0) > 1;
        if (seasons != null) {
            Pair pairA = DownloadUtil.f57680a.A(seasons, this.curSeason, this.resolution);
            this.totalPosition = ((Number) pairA.getFirst()).intValue();
            this.startPosition = ((Number) pairA.getSecond()).intValue();
            this.endPosition = X0();
            this.startEpisode = ((Number) pairA.getSecond()).intValue();
            this.endEpisode = W0();
            wf.a.C0922a c0922a = wf.a.f74274a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            wf.a.C0922a.r(c0922a, tag, new String[]{"initViewModel,season:" + this.curSeason + ", epIndex:" + this.epIndex + ", resolution:" + this.resolution + " start:" + this.startPosition + ", end:" + this.endPosition + ", total:" + this.totalPosition + ", startEp:" + this.startEpisode + ", endEp:" + this.endEpisode}, false, 4, null);
        }
    }

    public static final void V0(DownloadMultiListFragment downloadMultiListFragment, DefaultView defaultView, View view) {
        downloadMultiListFragment.startLoading();
        downloadMultiListFragment.loadData();
        defaultView.setVisibility(8);
    }

    private final int W0() {
        return RangesKt.h(this.startEpisode + 19, RangesKt.h(this.curTotalPosition, this.totalPosition));
    }

    private final int X0() {
        return RangesKt.h(this.startPosition + 19, this.totalPosition);
    }

    private final boolean a1(DownloadListBean bean) {
        this.startPosition = this.endPosition + 1;
        int iX0 = X0();
        this.endPosition = iX0;
        return this.startPosition < iX0;
    }

    public static final Unit c1(DownloadMultiListFragment downloadMultiListFragment, long j10, boolean z10) {
        downloadMultiListFragment.o1();
        downloadMultiListFragment.k1();
        return Unit.f64096a;
    }

    public static final boolean d1(DownloadMultiListFragment downloadMultiListFragment) {
        return downloadMultiListFragment.hasMoreSeasons;
    }

    public static final void e1(DownloadMultiListFragment downloadMultiListFragment, final com.transsnet.downloader.adapter.g gVar) {
        if (yg.l.f76264a.e()) {
            downloadMultiListFragment.loadData();
        } else {
            fh.b.f60176a.d(R$string.no_network_toast);
            gVar.getRecyclerView().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    DownloadMultiListFragment.f1(gVar);
                }
            }, 500L);
        }
    }

    public static final void f1(com.transsnet.downloader.adapter.g gVar) {
        gVar.h0().v();
    }

    public static final Unit g1(DownloadMultiListFragment downloadMultiListFragment, DownloadListBean downloadListBean) {
        String title;
        t6.f fVarH0;
        t6.f fVarH1;
        com.transsnet.downloader.adapter.g gVar;
        t6.f fVarH2;
        List<Object> data;
        downloadMultiListFragment.hideLoading();
        if (downloadListBean == null) {
            com.transsnet.downloader.adapter.g gVar2 = downloadMultiListFragment.mAdapter;
            if (gVar2 == null || (data = gVar2.getData()) == null || data.size() != 0) {
                com.transsnet.downloader.adapter.g gVar3 = downloadMultiListFragment.mAdapter;
                if (gVar3 != null && (fVarH1 = gVar3.h0()) != null && fVarH1.r() && (gVar = downloadMultiListFragment.mAdapter) != null && (fVarH2 = gVar.h0()) != null) {
                    fVarH2.v();
                }
                com.transsnet.downloader.adapter.g gVar4 = downloadMultiListFragment.mAdapter;
                if (gVar4 != null && (fVarH0 = gVar4.h0()) != null) {
                    t6.f.u(fVarH0, false, 1, null);
                }
            } else if (yg.l.f76264a.e()) {
                downloadMultiListFragment.showEmpty();
            }
            return Unit.f64096a;
        }
        boolean zA1 = downloadMultiListFragment.a1(downloadListBean);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = downloadMultiListFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        List<DownloadItem> items = downloadListBean.getItems();
        Integer numValueOf = items != null ? Integer.valueOf(items.size()) : null;
        wf.a.C0922a.r(c0922a, tag, new String[]{"get data from  net, size: " + numValueOf + ",hasMore:" + zA1 + ",start:" + downloadMultiListFragment.startPosition + ",end:" + downloadMultiListFragment.endPosition + ", startEp:" + downloadMultiListFragment.startEpisode + ",endEp:" + downloadMultiListFragment.endEpisode}, false, 4, null);
        DownloadUtil downloadUtil = DownloadUtil.f57680a;
        Subject subject = downloadMultiListFragment.subject;
        String str = downloadMultiListFragment.groupId;
        String str2 = downloadMultiListFragment.pageFrom;
        String str3 = downloadMultiListFragment.lastPageFrom;
        String str4 = downloadMultiListFragment.ops;
        if (subject == null || (title = subject.getTitle()) == null) {
            title = "";
        }
        downloadMultiListFragment.t1(downloadUtil.x(downloadListBean, subject, (128 & 4) != 0 ? null : str, (128 & 8) != 0 ? null : str2, (128 & 16) != 0 ? null : str3, (128 & 32) != 0 ? null : str4, (128 & 64) != 0 ? null : title, (128 & 128) != 0 ? null : null), zA1);
        return Unit.f64096a;
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context);
        defaultView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        defaultView.setGravity(17);
        defaultView.setDefaultImageViewVisibility(0);
        defaultView.setDefaultImage(R$mipmap.ic_no_content);
        String string = context.getString(R$string.no_content);
        Intrinsics.g(string, "getString(...)");
        defaultView.setDescText(string);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_IMAGE_DESC_BTN);
        defaultView.setBtnVisibility(0);
        String string2 = context.getString(com.transsion.baseui.R$string.retry_text);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setBtnText(string2);
        defaultView.setBtnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadMultiListFragment.V0(this.f57076a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    private final boolean h1() {
        t6.f fVarH0;
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        return (gVar == null || (fVarH0 = gVar.h0()) == null || !fVarH0.r()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void hideLoading() {
        LinearLayout linearLayout;
        bx.z zVar = (bx.z) getMViewBinding();
        if (zVar != null && (linearLayout = zVar.f16320b) != null) {
            uf.c.g(linearLayout);
        }
        zw.c cVar = this.tabControl;
        if (cVar != null) {
            cVar.x(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        LinearLayout linearLayout;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        bx.z zVar = (bx.z) getMViewBinding();
        if (zVar != null && (recyclerView2 = zVar.f16322d) != null) {
            recyclerView2.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        int i10 = this.curSeason;
        ArrayList arrayList = new ArrayList();
        String str = this.pageFrom;
        Subject subject = this.subject;
        String subjectId = subject != null ? subject.getSubjectId() : null;
        Subject subject2 = this.subject;
        final com.transsnet.downloader.adapter.g gVar = new com.transsnet.downloader.adapter.g(i10, arrayList, str, subjectId, subject2 != null ? subject2.getSubjectType() : null, Boolean.valueOf(this.showPremiumIfNeed), new Function0() {
            @Override
            public final Object invoke() {
                return Boolean.valueOf(DownloadMultiListFragment.d1(this.f57025a));
            }
        });
        if (this.subject == null) {
            gVar.h0().z(false);
            gVar.h0().y(false);
        } else {
            gVar.h0().C(new DownloadResLoadMoreView());
            gVar.h0().z(true);
            gVar.h0().y(true);
            gVar.h0().E(2);
            gVar.h0().D(new r6.f() {
                @Override
                public final void a() {
                    DownloadMultiListFragment.e1(this.f57035a, gVar);
                }
            });
        }
        gVar.R0(new b());
        this.mAdapter = gVar;
        bx.z zVar2 = (bx.z) getMViewBinding();
        if (zVar2 != null && (recyclerView = zVar2.f16322d) != null) {
            recyclerView.setAdapter(this.mAdapter);
        }
        com.transsnet.downloader.adapter.g gVar2 = this.mAdapter;
        if (gVar2 != null) {
            gVar2.O1(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return DownloadMultiListFragment.c1(this.f57048a, ((Long) obj).longValue(), ((Boolean) obj2).booleanValue());
                }
            });
        }
        bx.z zVar3 = (bx.z) getMViewBinding();
        if (zVar3 == null || (linearLayout = zVar3.f16320b) == null) {
            return;
        }
        uf.c.k(linearLayout);
    }

    private final void k1() {
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG1;
        zw.c cVar;
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        if (gVar == null || (copyOnWriteArrayListG1 = gVar.G1()) == null || (cVar = this.tabControl) == null) {
            return;
        }
        int i10 = this.resolutionTabPosition;
        int size = copyOnWriteArrayListG1.size() + this.unableSize;
        com.transsnet.downloader.adapter.g gVar2 = this.mAdapter;
        Intrinsics.e(gVar2);
        cVar.m(i10, copyOnWriteArrayListG1, size == gVar2.getData().size());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void loadData() {
        LinearLayout linearLayout;
        if (!yg.l.f76264a.e()) {
            showNotNetError();
            return;
        }
        bx.z zVar = (bx.z) getMViewBinding();
        if (zVar != null && (linearLayout = zVar.f16321c) != null) {
            linearLayout.setVisibility(8);
        }
        int i10 = this.endPosition;
        int i11 = this.startPosition;
        if (i10 < i11) {
            this.endPosition = i11 + 1;
        }
        DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModel = this.currentViewModel;
        if (downloadResourcesDetectorViewModel != null) {
            Subject subject = this.subject;
            String subjectId = subject != null ? subject.getSubjectId() : null;
            Subject subject2 = this.subject;
            downloadResourcesDetectorViewModel.j(subjectId, (920 & 2) != 0 ? "" : subject2 != null ? subject2.getTitle() : null, (920 & 4) != 0 ? 0 : 1, (920 & 8) != 0 ? "1" : null, (920 & 16) != 0 ? 20 : 0, (920 & 32) != 0 ? 1 : this.startPosition, (920 & 64) != 0 ? 1 : this.endPosition, (920 & 128) != 0 ? 1 : 0, (920 & 256) != 0 ? 1 : 0, (920 & 512) == 0 ? 0 : 1, (920 & 1024) != 0 ? com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", 0) : this.resolution);
        }
    }

    private final void m1(boolean isSelected) {
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG1;
        List<Object> data;
        zw.c cVar = this.tabControl;
        if (cVar != null) {
            cVar.U(true);
        }
        ArrayList arrayList = new ArrayList();
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        if (gVar != null && (data = gVar.getData()) != null) {
            arrayList.addAll(data);
        }
        com.transsnet.downloader.adapter.g gVar2 = this.mAdapter;
        if (gVar2 != null && (copyOnWriteArrayListG1 = gVar2.G1()) != null) {
            copyOnWriteArrayListG1.clear();
        }
        kotlinx.coroutines.k.d(this.downloadCoroutineScope, null, null, new DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1(arrayList, this, isSelected, arrayList.size(), null), 3, null);
    }

    private final void n1(boolean isSelected) {
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG1;
        List<Object> data;
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG2;
        List<Object> data2;
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG3;
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG4;
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        if (gVar != null && (copyOnWriteArrayListG4 = gVar.G1()) != null) {
            copyOnWriteArrayListG4.clear();
        }
        com.transsnet.downloader.adapter.g gVar2 = this.mAdapter;
        long j10 = 0;
        if (gVar2 != null && (data2 = gVar2.getData()) != null) {
            Iterator<T> it = data2.iterator();
            long jLongValue = 0;
            while (it.hasNext()) {
                DownloadBean downloadBean = (DownloadBean) it.next();
                downloadBean.setCheck(isSelected);
                if (this.isSelectAll && !downloadBean.isUnable()) {
                    Long size = downloadBean.getSize();
                    jLongValue += size != null ? size.longValue() : 0L;
                    com.transsnet.downloader.adapter.g gVar3 = this.mAdapter;
                    if (gVar3 != null && (copyOnWriteArrayListG3 = gVar3.G1()) != null) {
                        copyOnWriteArrayListG3.add(downloadBean);
                    }
                }
            }
            j10 = jLongValue;
        }
        com.transsnet.downloader.adapter.g gVar4 = this.mAdapter;
        if (gVar4 != null) {
            gVar4.notifyDataSetChanged();
        }
        this.localTotalSize = j10;
        zw.c cVar = this.tabControl;
        if (cVar != null) {
            cVar.y(this.resolutionTabPosition, Long.valueOf(j10));
        }
        com.transsnet.downloader.adapter.g gVar5 = this.mAdapter;
        if (gVar5 == null || (copyOnWriteArrayListG1 = gVar5.G1()) == null) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        com.transsnet.downloader.adapter.g gVar6 = this.mAdapter;
        Integer numValueOf = null;
        Integer numValueOf2 = (gVar6 == null || (copyOnWriteArrayListG2 = gVar6.G1()) == null) ? null : Integer.valueOf(copyOnWriteArrayListG2.size());
        int i10 = this.unableSize;
        com.transsnet.downloader.adapter.g gVar7 = this.mAdapter;
        if (gVar7 != null && (data = gVar7.getData()) != null) {
            numValueOf = Integer.valueOf(data.size());
        }
        wf.a.C0922a.v(c0922a, tag, "selectAllWithSizeLessThan30,checkedSize = " + numValueOf2 + ",unableSize = " + i10 + ", dataSize = " + numValueOf, false, 4, null);
        o1();
        zw.c cVar2 = this.tabControl;
        if (cVar2 != null) {
            int i11 = this.resolutionTabPosition;
            int size2 = copyOnWriteArrayListG1.size() + this.unableSize;
            com.transsnet.downloader.adapter.g gVar8 = this.mAdapter;
            Intrinsics.e(gVar8);
            cVar2.m(i11, copyOnWriteArrayListG1, size2 == gVar8.getData().size());
        }
    }

    public final void o1() {
        androidx.p009lifecycle.b0 b0VarA;
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG1;
        ArrayList arrayList = new ArrayList();
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        if (gVar != null && (copyOnWriteArrayListG1 = gVar.G1()) != null) {
            for (DownloadBean downloadBean : copyOnWriteArrayListG1) {
                if (!downloadBean.isUnable()) {
                    arrayList.add(downloadBean.getEpName());
                }
            }
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "setCheckItem, size:" + arrayList.size(), false, 4, null);
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel == null || (b0VarA = viewModel.A()) == null) {
            return;
        }
        b0VarA.q(arrayList);
    }

    public static final void r1(DownloadMultiListFragment downloadMultiListFragment, View view) {
        if (yg.l.f76264a.e()) {
            downloadMultiListFragment.startLoading();
            downloadMultiListFragment.loadData();
        }
    }

    private final void s1(DownloadBean targetItem) {
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG1;
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        if (gVar == null || (copyOnWriteArrayListG1 = gVar.G1()) == null) {
            return;
        }
        copyOnWriteArrayListG1.add(targetItem);
        o1();
        zw.c cVar = this.tabControl;
        if (cVar != null) {
            int i10 = this.resolutionTabPosition;
            int size = copyOnWriteArrayListG1.size() + this.unableSize;
            com.transsnet.downloader.adapter.g gVar2 = this.mAdapter;
            Intrinsics.e(gVar2);
            cVar.m(i10, copyOnWriteArrayListG1, size == gVar2.getData().size());
        }
    }

    private final void showEmpty() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        View emptyView = getEmptyView(contextRequireContext);
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        if (gVar != null) {
            gVar.Y0(emptyView);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void showNotNetError() {
        AppCompatTextView appCompatTextView;
        LinearLayout linearLayout;
        hideLoading();
        bx.z zVar = (bx.z) getMViewBinding();
        if (zVar != null && (linearLayout = zVar.f16321c) != null) {
            linearLayout.setVisibility(0);
        }
        bx.z zVar2 = (bx.z) getMViewBinding();
        if (zVar2 == null || (appCompatTextView = zVar2.f16325g) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadMultiListFragment.r1(this.f57058a, view);
            }
        });
    }

    private final void startLoading() {
        zw.c cVar = this.tabControl;
        if (cVar != null) {
            cVar.x(true);
        }
    }

    private final void t1(List list, boolean hasMore) {
        t6.f fVarH0;
        boolean z10;
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG1;
        com.transsnet.downloader.adapter.g gVar;
        t6.f fVarH1;
        t6.f fVarH2;
        com.transsnet.downloader.adapter.g gVar2;
        t6.f fVarH3;
        HashMap mapG;
        List<Object> data;
        DownloadResourcesDetectorViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarA;
        List list2;
        androidx.p009lifecycle.b0 b0VarA2;
        androidx.p009lifecycle.b0 b0VarA3;
        List list3;
        Integer numV;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "updateList , TabPosition:" + this.resolutionTabPosition + ", size:" + (list != null ? Integer.valueOf(list.size()) : null) + ", hasMore:" + hasMore, false, 4, null);
        List list4 = list;
        if (list4 == null || list4.isEmpty()) {
            com.transsnet.downloader.adapter.g gVar3 = this.mAdapter;
            if (gVar3 == null || (fVarH0 = gVar3.h0()) == null) {
                return;
            }
            t6.f.u(fVarH0, false, 1, null);
            return;
        }
        ArrayList<DownloadBean> arrayList = new ArrayList();
        Iterator it = list.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            DownloadBean downloadBean = (DownloadBean) it.next();
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            String resourceId = downloadBean.getResourceId();
            if (resourceId == null) {
                resourceId = downloadBean.getUrl();
            }
            DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
            if (this.isSelectAll) {
                if (downloadBeanQ != null) {
                    downloadBeanQ.setCheck(true);
                }
                downloadBean.setCheck(true);
                long j10 = this.localTotalSize;
                Long size = downloadBean.getSize();
                this.localTotalSize = j10 + (size != null ? size.longValue() : 0L);
            }
            String str = this.targetResourceId;
            int iIntValue = (str == null || (numV = StringsKt.v(str)) == null) ? -2 : numV.intValue();
            DownloadBean downloadBean2 = downloadBeanQ == null ? downloadBean : downloadBeanQ;
            if (downloadBean2.isSeries() ? Intrinsics.c(downloadBean2.getResourceId(), this.targetResourceId) || (downloadBean2.getEp() == iIntValue && iIntValue > 0 && downloadBean2.getSe() == this.targetSeason) : !z11 && downloadBean2.getResolution() == com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", 360)) {
                s1(downloadBean);
                downloadBean2.setCheck(true);
                z11 = true;
            }
            downloadBean2.setUploadBy(downloadBean.getUploadBy());
            int i10 = this.resolution;
            if (i10 > 0) {
                downloadBean2.setResolution(i10);
            }
            arrayList.add(downloadBean2);
            if (downloadBeanQ != null && downloadBeanQ.isUnable()) {
                this.unableSize++;
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                String tag2 = getTAG();
                Intrinsics.g(tag2, "<get-TAG>(...)");
                wf.a.C0922a.v(c0922a2, tag2, "tabPosition = " + this.resolutionTabPosition + ", unableSize plus = " + this.unableSize, false, 4, null);
            }
        }
        DownloadBean downloadBean3 = (DownloadBean) CollectionsKt.k0(arrayList);
        if (downloadBean3 != null && !downloadBean3.isSeries() && !z11) {
            s1(downloadBean3);
            downloadBean3.setCheck(true);
        }
        wf.a.C0922a c0922a3 = wf.a.f74274a;
        String tag3 = getTAG();
        Intrinsics.g(tag3, "<get-TAG>(...)");
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        Integer numValueOf = (viewModel2 == null || (b0VarA3 = viewModel2.A()) == null || (list3 = (List) b0VarA3.f()) == null) ? null : Integer.valueOf(list3.size());
        wf.a.C0922a.f(c0922a3, tag3, "--updateList, size:" + numValueOf + "， newList size:" + arrayList.size(), false, 4, null);
        DownloadResourcesDetectorViewModel viewModel3 = getViewModel();
        List list5 = (viewModel3 == null || (b0VarA2 = viewModel3.A()) == null) ? null : (List) b0VarA2.f();
        if (list5 == null || list5.isEmpty()) {
            z10 = false;
        } else {
            z10 = false;
            for (DownloadBean downloadBean4 : arrayList) {
                if (downloadBean4.isSeries() && (viewModel = getViewModel()) != null && (b0VarA = viewModel.A()) != null && (list2 = (List) b0VarA.f()) != null) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (Intrinsics.c(downloadBean4.getEpName(), (String) it2.next())) {
                            downloadBean4.setCheck(true);
                            com.transsnet.downloader.adapter.g gVar4 = this.mAdapter;
                            if (gVar4 != null) {
                                gVar4.D1(downloadBean4, true);
                            }
                            z10 = true;
                        }
                    }
                }
            }
        }
        com.transsnet.downloader.adapter.g gVar5 = this.mAdapter;
        if (gVar5 != null) {
            gVar5.q(arrayList);
        }
        com.transsnet.downloader.adapter.g gVar6 = this.mAdapter;
        if (gVar6 != null && (data = gVar6.getData()) != null) {
            int i11 = 0;
            for (Object obj : data) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                DownloadBean downloadBean5 = (DownloadBean) obj;
                downloadBean5.setIndex(i11);
                downloadBean5.setResourcePosition(i12);
                i11 = i12;
            }
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            mapG.put("size", String.valueOf(arrayList.size()));
        }
        com.transsnet.downloader.adapter.g gVar7 = this.mAdapter;
        if (gVar7 != null && (fVarH2 = gVar7.h0()) != null && fVarH2.r() && (gVar2 = this.mAdapter) != null && (fVarH3 = gVar2.h0()) != null) {
            fVarH3.s();
        }
        if (!hasMore && (gVar = this.mAdapter) != null && (fVarH1 = gVar.h0()) != null) {
            t6.f.u(fVarH1, false, 1, null);
        }
        if (this.isSelectAll) {
            com.transsnet.downloader.adapter.g gVar8 = this.mAdapter;
            if (gVar8 != null && (copyOnWriteArrayListG1 = gVar8.G1()) != null) {
                copyOnWriteArrayListG1.addAll(arrayList);
            }
            zw.c cVar = this.tabControl;
            if (cVar != null) {
                cVar.y(this.resolutionTabPosition, Long.valueOf(this.localTotalSize));
            }
        }
        if (z10) {
            k1();
        }
    }

    public final Integer Y0() {
        List<Object> data;
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        if (gVar != null && (data = gVar.getData()) != null) {
            Iterator<T> it = data.iterator();
            if (!it.hasNext()) {
                throw new NoSuchElementException();
            }
            Object next = it.next();
            if (it.hasNext()) {
                int resolution = ((DownloadBean) next).getResolution();
                do {
                    Object next2 = it.next();
                    int resolution2 = ((DownloadBean) next2).getResolution();
                    if (resolution < resolution2) {
                        next = next2;
                        resolution = resolution2;
                    }
                } while (it.hasNext());
            }
            DownloadBean downloadBean = (DownloadBean) next;
            if (downloadBean != null) {
                return Integer.valueOf(downloadBean.getResolution());
            }
        }
        return null;
    }

    @Override
    public bx.z getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.z zVarC = bx.z.c(inflater);
        Intrinsics.g(zVarC, "inflate(...)");
        return zVarC;
    }

    public final boolean b1() {
        List<Object> data;
        Integer requireMemberType;
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        boolean z10 = bVar != null ? bVar.z() : false;
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        if (gVar != null && (data = gVar.getData()) != null) {
            Iterator<T> it = data.iterator();
            while (it.hasNext()) {
                DownloadBean downloadBean = (DownloadBean) it.next();
                if (z10 && (requireMemberType = downloadBean.getRequireMemberType()) != null && requireMemberType.intValue() == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    public final boolean getIsSelectAll() {
        return this.isSelectAll;
    }

    @Override
    public void initListener() {
    }

    @Override
    public void initViewData() {
        initView();
    }

    @Override
    public void initViewModel() {
        if (this.isShowLoading) {
            startLoading();
        }
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModel = (DownloadResourcesDetectorViewModel) new androidx.p009lifecycle.v0(parentFragment).a(DownloadResourcesDetectorViewModel.class);
            ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) downloadResourcesDetectorViewModel.y().f();
            if (resourcesSeasonList != null) {
                U0(resourcesSeasonList.getSeasons());
            }
            E0(downloadResourcesDetectorViewModel);
        } else {
            U0(this.seasonsList);
        }
        DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModel2 = (DownloadResourcesDetectorViewModel) new androidx.p009lifecycle.v0(this).a(DownloadResourcesDetectorViewModel.class);
        downloadResourcesDetectorViewModel2.s().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadMultiListFragment.g1(this.f57017a, (DownloadListBean) obj);
            }
        }));
        this.currentViewModel = downloadResourcesDetectorViewModel2;
        loadData();
        zw.c cVar = this.tabControl;
        if (cVar != null) {
            cVar.m(this.resolutionTabPosition, new ArrayList(), false);
        }
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public boolean isMonitorNetworkState() {
        return true;
    }

    public final boolean j1() {
        List<Object> data;
        int i10 = this.unableSize;
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        return i10 < ((gVar == null || (data = gVar.getData()) == null) ? 0 : data.size()) && !h1();
    }

    public final void l1(boolean selectAll) {
        List<Object> data;
        List<Object> data2;
        int i10 = this.unableSize;
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        int size = 0;
        if (i10 >= ((gVar == null || (data2 = gVar.getData()) == null) ? 0 : data2.size())) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "selectAll click, selectAll = " + selectAll + " ", false, 4, null);
        this.isSelectAll = selectAll;
        com.transsnet.downloader.adapter.g gVar2 = this.mAdapter;
        if (gVar2 != null && (data = gVar2.getData()) != null) {
            size = data.size();
        }
        if (size > 30) {
            m1(selectAll);
        } else {
            n1(selectAll);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        String string3;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        HashMap mapG5;
        String string4;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.resolution = arguments != null ? arguments.getInt("extra_resolution") : 0;
        Bundle arguments2 = getArguments();
        this.resolutionTabPosition = arguments2 != null ? arguments2.getInt("extra_resolution_position") : 0;
        Bundle arguments3 = getArguments();
        this.isShowLoading = arguments3 != null ? arguments3.getBoolean("extra_resolution_is_show_loading") : true;
        Bundle arguments4 = getArguments();
        String str = "";
        if (arguments4 == null || (string = arguments4.getString("extra_page_from")) == null) {
            string = "";
        }
        this.pageFrom = string;
        Bundle arguments5 = getArguments();
        if (arguments5 == null || (string2 = arguments5.getString("extra_last_page_from")) == null) {
            string2 = "";
        }
        this.lastPageFrom = string2;
        Bundle arguments6 = getArguments();
        this.subject = (Subject) (arguments6 != null ? arguments6.getSerializable("extra_subject") : null);
        Bundle arguments7 = getArguments();
        if (arguments7 == null || (string3 = arguments7.getString("extra_ops")) == null) {
            string3 = "";
        }
        this.ops = string3;
        Bundle arguments8 = getArguments();
        if (arguments8 != null && (string4 = arguments8.getString("extra_target_resource_id")) != null) {
            str = string4;
        }
        this.targetResourceId = str;
        Bundle arguments9 = getArguments();
        this.showPremiumIfNeed = arguments9 != null ? arguments9.getBoolean("extra_show_premium_if_need") : false;
        Bundle arguments10 = getArguments();
        this.curSeason = arguments10 != null ? arguments10.getInt("extra_season") : 0;
        Bundle arguments11 = getArguments();
        this.targetSeason = arguments11 != null ? arguments11.getInt("extra_series_position") : 0;
        Bundle arguments12 = getArguments();
        int i10 = arguments12 != null ? arguments12.getInt("extra_ep_index") : 0;
        this.epIndex = i10;
        this.curTotalPosition = (i10 + 1) * 50;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG5 = logViewConfig.g()) != null) {
            mapG5.put(WebConstants.PAGE_FROM, this.pageFrom);
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG4 = logViewConfig2.g()) != null) {
            mapG4.put("last_page_from", this.lastPageFrom);
        }
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
            Subject subject = this.subject;
            mapG3.put("subject_id", subject != null ? subject.getSubjectId() : null);
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
            mapG2.put("ops", this.ops);
        }
        qi.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 == null || (mapG = logViewConfig5.g()) == null) {
            return;
        }
        mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "2");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.tabControl = null;
        kotlinx.coroutines.o0.d(this.downloadCoroutineScope, null, 1, null);
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG1;
        List<Object> data;
        CopyOnWriteArrayList<DownloadBean> copyOnWriteArrayListG2;
        com.transsnet.downloader.adapter.g gVar;
        List<Object> data2;
        boolean z10;
        androidx.p009lifecycle.b0 b0VarA;
        androidx.p009lifecycle.b0 b0VarA2;
        androidx.p009lifecycle.b0 b0VarA3;
        List list;
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        Integer numValueOf = null;
        wf.a.C0922a.f(c0922a, tag, "--onHiddenChanged, size:" + ((viewModel == null || (b0VarA3 = viewModel.A()) == null || (list = (List) b0VarA3.f()) == null) ? null : Integer.valueOf(list.size())), false, 4, null);
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        List list2 = (viewModel2 == null || (b0VarA2 = viewModel2.A()) == null) ? null : (List) b0VarA2.f();
        if (list2 != null && !list2.isEmpty() && (gVar = this.mAdapter) != null && (data2 = gVar.getData()) != null) {
            Iterator<T> it = data2.iterator();
            while (it.hasNext()) {
                DownloadBean downloadBean = (DownloadBean) it.next();
                DownloadResourcesDetectorViewModel viewModel3 = getViewModel();
                List list3 = (viewModel3 == null || (b0VarA = viewModel3.A()) == null) ? null : (List) b0VarA.f();
                Intrinsics.e(list3);
                Iterator it2 = list3.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z10 = false;
                        break;
                    } else if (Intrinsics.c(downloadBean.getEpName(), (String) it2.next())) {
                        z10 = true;
                        break;
                    }
                }
                downloadBean.setCheck(z10);
                com.transsnet.downloader.adapter.g gVar2 = this.mAdapter;
                if (gVar2 != null) {
                    gVar2.D1(downloadBean, z10);
                }
            }
        }
        com.transsnet.downloader.adapter.g gVar3 = this.mAdapter;
        if (gVar3 != null) {
            gVar3.notifyDataSetChanged();
        }
        k1();
        com.transsnet.downloader.adapter.g gVar4 = this.mAdapter;
        if (gVar4 == null || (copyOnWriteArrayListG1 = gVar4.G1()) == null) {
            return;
        }
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        String tag2 = getTAG();
        Intrinsics.g(tag2, "<get-TAG>(...)");
        int i10 = this.resolutionTabPosition;
        com.transsnet.downloader.adapter.g gVar5 = this.mAdapter;
        Integer numValueOf2 = (gVar5 == null || (copyOnWriteArrayListG2 = gVar5.G1()) == null) ? null : Integer.valueOf(copyOnWriteArrayListG2.size());
        int i11 = this.unableSize;
        com.transsnet.downloader.adapter.g gVar6 = this.mAdapter;
        if (gVar6 != null && (data = gVar6.getData()) != null) {
            numValueOf = Integer.valueOf(data.size());
        }
        wf.a.C0922a.v(c0922a2, tag2, "onHiddenChanged, resolutionTabPosition = " + i10 + ",checkedSize = " + numValueOf2 + ",unableSize = " + i11 + ", dataSize = " + numValueOf, false, 4, null);
        zw.c cVar = this.tabControl;
        if (cVar != null) {
            int i12 = this.resolutionTabPosition;
            int size = copyOnWriteArrayListG1.size() + this.unableSize;
            com.transsnet.downloader.adapter.g gVar7 = this.mAdapter;
            Intrinsics.e(gVar7);
            cVar.m(i12, copyOnWriteArrayListG1, size == gVar7.getData().size());
        }
    }

    public final void p1(List list) {
        this.seasonsList = list;
    }

    public final void q1(zw.c control) {
        Intrinsics.h(control, "control");
        this.tabControl = control;
    }

    @Override
    public void retryLoadData() {
        List<Object> data;
        com.transsnet.downloader.adapter.g gVar = this.mAdapter;
        if (gVar == null || (data = gVar.getData()) == null || data.size() != 0) {
            return;
        }
        startLoading();
        loadData();
    }
}
