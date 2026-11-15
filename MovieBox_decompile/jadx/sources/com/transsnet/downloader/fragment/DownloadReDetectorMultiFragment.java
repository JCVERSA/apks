package com.transsnet.downloader.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLFrameLayout;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.push.PushConstants;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.manager.StartDownloadHelper;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u008b\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u008c\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\r\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b\r\u0010\fJ\u001f\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001fH\u0002¢\u0006\u0004\b!\u0010\"JQ\u0010+\u001a\u00020\u00062\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010%\u001a\u00020#2\b\u0010&\u001a\u0004\u0018\u00010#2\b\u0010'\u001a\u0004\u0018\u00010#2\b\u0010(\u001a\u0004\u0018\u00010#2\b\u0010)\u001a\u0004\u0018\u00010#2\u0006\u0010*\u001a\u00020#H\u0002¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0006H\u0002¢\u0006\u0004\b-\u0010\u0005J\u000f\u0010.\u001a\u00020\u0010H\u0002¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0006H\u0016¢\u0006\u0004\b0\u0010\u0005J\u0019\u00103\u001a\u00020\u00062\b\u00102\u001a\u0004\u0018\u000101H\u0016¢\u0006\u0004\b3\u00104J\u0017\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0016¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020#H\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020;H\u0016¢\u0006\u0004\b>\u0010=J\u000f\u0010?\u001a\u00020\u0006H\u0016¢\u0006\u0004\b?\u0010\u0005J\u000f\u0010@\u001a\u00020\u0006H\u0016¢\u0006\u0004\b@\u0010\u0005J\u000f\u0010A\u001a\u00020\u0006H\u0016¢\u0006\u0004\bA\u0010\u0005J\u000f\u0010B\u001a\u00020\u0006H\u0016¢\u0006\u0004\bB\u0010\u0005J\u000f\u0010C\u001a\u00020\u0006H\u0016¢\u0006\u0004\bC\u0010\u0005J-\u0010G\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00102\f\u0010E\u001a\b\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010F\u001a\u00020;H\u0016¢\u0006\u0004\bG\u0010HJ!\u0010K\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00102\b\u0010J\u001a\u0004\u0018\u00010IH\u0016¢\u0006\u0004\bK\u0010LJ\u0017\u0010N\u001a\u00020\u00062\u0006\u0010M\u001a\u00020;H\u0016¢\u0006\u0004\bN\u0010OJ\u0017\u0010P\u001a\u00020\u00062\u0006\u0010M\u001a\u00020;H\u0016¢\u0006\u0004\bP\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0016\u0010%\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010UR\u0016\u0010W\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010UR\u0018\u0010[\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0018\u0010]\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010UR\u0018\u0010(\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010UR\u0018\u0010`\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010UR\u0018\u0010b\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010UR\u0016\u0010e\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0016\u0010h\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0016\u0010j\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010UR\u0014\u0010n\u001a\u00020k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010mR\u0016\u0010p\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010oR\u0016\u0010q\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010oR\u0018\u0010u\u001a\u0004\u0018\u00010r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR(\u0010y\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u001f0v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\"\u0010{\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020;0v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010xR$\u0010}\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010I0v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010xR\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0018\u0010\u0082\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010oR\u0018\u0010\u0084\u0001\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010dR!\u0010\u008a\u0001\u001a\u00030\u0085\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0086\u0001\u0010\u0087\u0001\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001¨\u0006\u008d\u0001"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;", "Lbx/b0;", "Lzw/c;", "<init>", "()V", "", "initView", "", "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;", "data", "p1", "(Ljava/util/List;)V", "V0", "Lcom/google/android/material/tabs/TabLayout;", "tabView", "", TtmlNode.RIGHT, "s1", "(Lcom/google/android/material/tabs/TabLayout;I)V", "Lcom/transsnet/downloader/bean/DownloadListBean;", "listBean", "m1", "(Lcom/transsnet/downloader/bean/DownloadListBean;)V", "o1", "n1", "k1", "j1", "Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;", "Z0", "()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "X0", "()Ljava/util/List;", "", "pageName", "pageFrom", "subjectId", "postId", "ops", "resourceId", "taskId", "Y0", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "W0", "a1", "()I", "initViewData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "c1", "(Landroid/view/LayoutInflater;)Lbx/b0;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewModel", "initListener", "retryLoadData", "x0", "onDestroy", RequestParameters.POSITION, "selectedList", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, "m", "(ILjava/util/List;Z)V", "", "size", "y", "(ILjava/lang/Long;)V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "x", "(Z)V", "U", "Lcom/transsnet/downloader/adapter/l;", "l", "Lcom/transsnet/downloader/adapter/l;", "mAdapter", "Ljava/lang/String;", "n", "lastPageFrom", "Lcom/transsion/moviedetailapi/bean/Subject;", "o", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", TtmlNode.TAG_P, "groupId", CampaignEx.JSON_KEY_AD_Q, CampaignEx.JSON_KEY_AD_R, "targetResourceId", "s", "moduleName", "t", "Z", "isSelectAll", TmcStartParams.KEY_URL_SHORT, "J", "localTotalSize", "v", "formatSize", "Lkotlinx/coroutines/n0;", "w", "Lkotlinx/coroutines/n0;", "downloadCoroutineScope", "I", "targetSeason", "curSeason", "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", "z", "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", "groupMainViewModel", "", "A", "Ljava/util/Map;", "checkedList", "B", "allCheckMap", "C", "sizeMap", "D", "Ljava/lang/Integer;", "currentResolution", "E", "resolution", "F", "showPremiumIfNeed", "Lcom/transsnet/downloader/manager/StartDownloadHelper;", "G", "Lkotlin/Lazy;", "b1", "()Lcom/transsnet/downloader/manager/StartDownloadHelper;", "startDownloadHelper", "H", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadReDetectorMultiFragment extends DownloadReDetectorBaseFragment<bx.b0> implements zw.c {

    public static final Companion INSTANCE = new Companion(null);

    private Integer currentResolution;

    private int resolution;

    private boolean showPremiumIfNeed;

    private com.transsnet.downloader.adapter.l mAdapter;

    private Subject subject;

    private String groupId;

    private String ops;

    private String targetResourceId;

    private String moduleName;

    private boolean isSelectAll;

    private long localTotalSize;

    private int targetSeason;

    private DownloadResourcesDetectorViewModel groupMainViewModel;

    private String pageFrom = "";

    private String lastPageFrom = "";

    private String formatSize = "";

    private final kotlinx.coroutines.n0 downloadCoroutineScope = kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b());

    private int curSeason = 1;

    private Map checkedList = new LinkedHashMap();

    private Map allCheckMap = new LinkedHashMap();

    private Map sizeMap = new LinkedHashMap();

    private final Lazy startDownloadHelper = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadReDetectorMultiFragment.r1();
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadReDetectorMultiFragment a(String str, String str2, Subject subject, String str3, String str4, String str5, String str6, int i10) {
            DownloadReDetectorMultiFragment downloadReDetectorMultiFragment = new DownloadReDetectorMultiFragment();
            downloadReDetectorMultiFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_page_from", str), TuplesKt.a("extra_last_page_from", str2), TuplesKt.a("extra_subject", subject), TuplesKt.a("extra_group_id", str3), TuplesKt.a("extra_ops", str4), TuplesKt.a("extra_target_resource_id", str5), TuplesKt.a("extra_module_name", str6), TuplesKt.a("extra_season", Integer.valueOf(i10))));
            return downloadReDetectorMultiFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements wj.g {
        b() {
        }

        public static final Unit c(DownloadReDetectorMultiFragment downloadReDetectorMultiFragment) {
            downloadReDetectorMultiFragment.k1();
            return Unit.f64096a;
        }

        @Override
        public void a(boolean z10) {
            wj.g.a.a(this, z10);
        }

        @Override
        public void onFail() {
            wj.h.f74282a.a(DownloadReDetectorMultiFragment.this.getClassTag() + " --> interception() --> onFail() --> 失败了");
        }

        @Override
        public void onSuccess() {
            FragmentActivity activity = DownloadReDetectorMultiFragment.this.getActivity();
            if (activity != null) {
                final DownloadReDetectorMultiFragment downloadReDetectorMultiFragment = DownloadReDetectorMultiFragment.this;
                Subject subject = downloadReDetectorMultiFragment.subject;
                if (subject != null) {
                    com.transsnet.downloader.manager.f.f57260a.a().j(activity, subject, new Function0() {
                        @Override
                        public final Object invoke() {
                            return DownloadReDetectorMultiFragment.b.c(downloadReDetectorMultiFragment);
                        }
                    });
                }
            }
        }
    }

    public static final class c implements im.a {
        c() {
        }

        @Override
        public void a(MemberCheckResult memberCheckResult) {
            im.a.C0761a.f(this, memberCheckResult);
        }

        @Override
        public void b(MemberCheckResult memberCheckResult) {
            im.a.C0761a.d(this, memberCheckResult);
        }

        @Override
        public void c(MemberCheckResult memberCheckResult) {
            im.a.C0761a.g(this, memberCheckResult);
        }

        @Override
        public void d(MemberCheckResult memberCheckResult) {
            im.a.C0761a.e(this, memberCheckResult);
        }

        @Override
        public void e() {
            im.a.C0761a.c(this);
            DownloadReDetectorMultiFragment.this.n1();
        }

        @Override
        public void f(MemberCheckResult memberCheckResult) {
            im.a.C0761a.a(this, memberCheckResult);
        }

        @Override
        public void onFail(String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
            im.a.C0761a.b(this, errorMsg);
            wf.a.C0922a.f(wf.a.f74274a, "co_mem", "DownloadReDetectorGroupMainFragment --> onSelectAllClickIfNeed() --> 剧集全选 --> " + errorMsg, false, 4, null);
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56754a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56754a = function;
        }

        @Override
        public final Function a() {
            return this.f56754a;
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
            this.f56754a.invoke(obj);
        }
    }

    public static final class e implements TabLayout.OnTabSelectedListener {
        e() {
        }

        @Override
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override
        public void onTabSelected(TabLayout.Tab tab) {
            DownloadReDetectorMultiFragment.this.W0();
        }

        @Override
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void V0(List data) {
        bx.b0 b0Var = (bx.b0) getMViewBinding();
        if (b0Var != null) {
            TabLayout subjectTab = b0Var.f15942m;
            Intrinsics.g(subjectTab, "subjectTab");
            subjectTab.setVisibility(data.size() > 1 ? 0 : 8);
            p1(data);
            int i10 = 0;
            int i11 = 0;
            for (Object obj : data) {
                int i12 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                if (((ResourcesSeason) obj).getSe() == this.targetSeason) {
                    i11 = i10;
                }
                i10 = i12;
            }
            TabLayout subjectTab2 = b0Var.f15942m;
            Intrinsics.g(subjectTab2, "subjectTab");
            s1(subjectTab2, lj.a.b(12));
            if (b0Var.f15952w.isFakeDragging()) {
                return;
            }
            b0Var.f15952w.setCurrentItem(i11, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void W0() {
        AppCompatImageView appCompatImageView;
        bx.b0 b0Var = (bx.b0) getMViewBinding();
        if (b0Var == null || (appCompatImageView = b0Var.f15936g) == null) {
            return;
        }
        Boolean bool = (Boolean) this.allCheckMap.get(Integer.valueOf(a1()));
        appCompatImageView.setSelected(bool != null ? bool.booleanValue() : false);
    }

    private final List X0() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.checkedList.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.addAll((Collection) ((Map.Entry) it.next()).getValue());
        }
        return arrayList;
    }

    private final void Y0(String pageName, String pageFrom, String subjectId, String postId, String ops, String resourceId, String taskId) {
        HashMap map = new HashMap();
        map.put(WebConstants.PAGE_FROM, pageFrom);
        map.put("subject_id", subjectId);
        map.put("post_id", postId);
        map.put("ops", ops);
        map.put("resource_id", resourceId);
        map.put("task_id", taskId);
        map.put("module_name", this.moduleName);
        qi.h hVar = qi.h.f69682a;
        if (pageName == null) {
            pageName = "download_click";
        }
        hVar.q(pageName, "download_click", map);
        Bundle bundle = new Bundle();
        bundle.putString("resource_id", resourceId);
        bundle.putString("subject_id", subjectId);
        com.transsion.baselib.report.e.f42196a.l("download_click", bundle, getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final DownloadMultiListFragment Z0() {
        ViewPager2 viewPager2;
        bx.b0 b0Var = (bx.b0) getMViewBinding();
        int iE = RangesKt.e((b0Var == null || (viewPager2 = b0Var.f15952w) == null) ? 0 : viewPager2.getCurrentItem(), 0);
        com.transsnet.downloader.adapter.l lVar = this.mAdapter;
        if (lVar != null) {
            return lVar.g(iE);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int a1() {
        TabLayout tabLayout;
        bx.b0 b0Var = (bx.b0) getMViewBinding();
        if (b0Var == null || (tabLayout = b0Var.f15942m) == null) {
            return 0;
        }
        return tabLayout.getSelectedTabPosition();
    }

    private final StartDownloadHelper b1() {
        return (StartDownloadHelper) this.startDownloadHelper.getValue();
    }

    public static final void d1(DownloadReDetectorMultiFragment downloadReDetectorMultiFragment, View view) {
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return;
        }
        List listX0 = downloadReDetectorMultiFragment.X0();
        if (listX0.isEmpty()) {
            fh.b.f60176a.d(com.transsnet.downloader.R$string.download_unselected_tips);
            return;
        }
        DownloadBean downloadBean = (DownloadBean) CollectionsKt.k0(listX0);
        if (downloadBean != null) {
            com.transsion.baselib.report.launch.b.f42221a.b().putInt("download_last_resolution", downloadBean.getResolution());
        }
        wj.f fVar = (wj.f) TheRouter.d(wj.f.class, new Object[0]);
        if (fVar != null) {
            Integer num = downloadReDetectorMultiFragment.currentResolution;
            DownloadBean downloadBean2 = (DownloadBean) CollectionsKt.k0(listX0);
            fVar.e(num, downloadBean2 != null ? downloadBean2.getGenre() : null, downloadReDetectorMultiFragment.new b(), MemberSceneType.SCENE_HDDL);
        }
    }

    public static final void e1(DownloadReDetectorMultiFragment downloadReDetectorMultiFragment, View view) {
        downloadReDetectorMultiFragment.m0();
    }

    public static final void f1(DownloadReDetectorMultiFragment downloadReDetectorMultiFragment, View view) {
        downloadReDetectorMultiFragment.o1();
    }

    public static final void g1(DownloadReDetectorMultiFragment downloadReDetectorMultiFragment, View view) {
        downloadReDetectorMultiFragment.o1();
    }

    public static final Unit h1(DownloadReDetectorMultiFragment downloadReDetectorMultiFragment, int i10, ResourcesSeasonList resourcesSeasonList) {
        List<ResourcesSeason> seasons;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = downloadReDetectorMultiFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "获取当前季跟分辨率的信息,resolution:" + i10 + ", curSeason:" + downloadReDetectorMultiFragment.curSeason, false, 4, null);
        Subject subject = downloadReDetectorMultiFragment.subject;
        if (subject != null) {
            subject.setSubjectType(resourcesSeasonList != null ? resourcesSeasonList.getSubjectType() : null);
        }
        if (resourcesSeasonList != null && (seasons = resourcesSeasonList.getSeasons()) != null) {
            downloadReDetectorMultiFragment.V0(seasons);
        }
        return Unit.f64096a;
    }

    public static final Unit i1(DownloadReDetectorMultiFragment downloadReDetectorMultiFragment, DownloadListBean downloadListBean) {
        downloadReDetectorMultiFragment.m1(downloadListBean);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        LinearLayoutCompat linearLayoutCompat;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        ImageView imageView;
        CoordinatorLayout coordinatorLayout;
        ViewGroup.LayoutParams layoutParams;
        bx.b0 b0Var = (bx.b0) getMViewBinding();
        if (b0Var != null && (coordinatorLayout = b0Var.f15932c) != null && (layoutParams = coordinatorLayout.getLayoutParams()) != null) {
            layoutParams.height = q0();
        }
        bx.b0 b0Var2 = (bx.b0) getMViewBinding();
        if (b0Var2 != null && (imageView = b0Var2.f15937h) != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorMultiFragment.e1(this.f56962a, view);
                }
            });
        }
        bx.b0 b0Var3 = (bx.b0) getMViewBinding();
        if (b0Var3 != null && (appCompatTextView = b0Var3.f15946q) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorMultiFragment.f1(this.f56973a, view);
                }
            });
        }
        bx.b0 b0Var4 = (bx.b0) getMViewBinding();
        if (b0Var4 != null && (appCompatImageView = b0Var4.f15936g) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadReDetectorMultiFragment.g1(this.f56983a, view);
                }
            });
        }
        bx.b0 b0Var5 = (bx.b0) getMViewBinding();
        if (b0Var5 == null || (linearLayoutCompat = b0Var5.f15931b) == null) {
            return;
        }
        linearLayoutCompat.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadReDetectorMultiFragment.d1(this.f56993a, view);
            }
        });
    }

    private final void j1() {
        androidx.p009lifecycle.b0 b0VarP;
        androidx.p009lifecycle.b0 b0VarI;
        List listX0 = X0();
        if (listX0.isEmpty()) {
            return;
        }
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarI = viewModel.i()) != null) {
            b0VarI.q(new com.transsnet.downloader.viewmodel.b(listX0.size(), this.formatSize, (DownloadBean) listX0.get(0), false));
        }
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 == null || (b0VarP = viewModel2.p()) == null) {
            return;
        }
        b0VarP.q(3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void k1() {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        View view;
        FrameLayout frameLayout;
        if (u0(this.localTotalSize)) {
            return;
        }
        bx.b0 b0Var = (bx.b0) getMViewBinding();
        if (b0Var != null && (frameLayout = b0Var.f15934e) != null && frameLayout.getVisibility() == 0) {
            wf.a.f74274a.p("download", new String[]{"DownloadReDetectorGroupMainFragment --> onDownload() --> 当前正在全选中"}, true);
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "onDownload ", false, 4, null);
        bx.b0 b0Var2 = (bx.b0) getMViewBinding();
        if (b0Var2 != null && (view = b0Var2.f15950u) != null) {
            uf.c.k(view);
        }
        bx.b0 b0Var3 = (bx.b0) getMViewBinding();
        if (b0Var3 != null && (appCompatImageView = b0Var3.f15935f) != null) {
            uf.c.g(appCompatImageView);
        }
        bx.b0 b0Var4 = (bx.b0) getMViewBinding();
        if (b0Var4 != null && (appCompatTextView = b0Var4.f15943n) != null) {
            uf.c.g(appCompatTextView);
        }
        bx.b0 b0Var5 = (bx.b0) getMViewBinding();
        if (b0Var5 != null && (progressBar2 = b0Var5.f15940k) != null) {
            uf.c.k(progressBar2);
        }
        List listX0 = X0();
        int i10 = 0;
        for (Object obj : listX0) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            DownloadBean downloadBean = (DownloadBean) obj;
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            downloadBean.setTaskId(string);
            Y0(this.pageFrom, this.lastPageFrom, downloadBean.getSubjectId(), downloadBean.getPostId(), this.ops, downloadBean.getResourceId(), string);
            wf.a.f74274a.p("download", new String[]{"剧集多资源，下载点击，开始下载: subjectId = " + downloadBean.getSubjectId() + ",resourceId = " + downloadBean.getResourceId() + ", name = " + downloadBean.getTotalTitleName()}, true);
            i10 = i11;
        }
        p0().C(listX0);
        b1().f(listX0);
        kotlinx.coroutines.k.d(this.downloadCoroutineScope, null, null, new DownloadReDetectorMultiFragment$onDownload$2(listX0, this, null), 3, null);
        long size = ((long) ((listX0.size() / 20) * 100)) + 300;
        bx.b0 b0Var6 = (bx.b0) getMViewBinding();
        if (b0Var6 == null || (progressBar = b0Var6.f15940k) == null) {
            return;
        }
        progressBar.postDelayed(new Runnable() {
            @Override
            public final void run() {
                DownloadReDetectorMultiFragment.l1(this.f57003a);
            }
        }, size);
    }

    public static final void l1(DownloadReDetectorMultiFragment downloadReDetectorMultiFragment) {
        downloadReDetectorMultiFragment.j1();
    }

    private final void m1(DownloadListBean listBean) {
        if (listBean == null || listBean.getResolutionList() == null) {
            return;
        }
        this.showPremiumIfNeed = true;
        Integer resolution = listBean.getResolution();
        int iIntValue = resolution != null ? resolution.intValue() : 0;
        this.resolution = iIntValue;
        com.transsnet.downloader.adapter.l lVar = this.mAdapter;
        if (lVar != null) {
            lVar.m(Integer.valueOf(iIntValue));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void n1() {
        bx.b0 b0Var;
        AppCompatImageView appCompatImageView;
        DownloadMultiListFragment downloadMultiListFragmentZ0 = Z0();
        if ((downloadMultiListFragmentZ0 != null && !downloadMultiListFragmentZ0.j1()) || (b0Var = (bx.b0) getMViewBinding()) == null || (appCompatImageView = b0Var.f15936g) == null) {
            return;
        }
        appCompatImageView.setSelected(!appCompatImageView.isSelected());
        this.isSelectAll = appCompatImageView.isSelected();
        DownloadMultiListFragment downloadMultiListFragmentZ1 = Z0();
        if (downloadMultiListFragmentZ1 != null) {
            downloadMultiListFragmentZ1.l1(this.isSelectAll);
        }
    }

    private final void o1() {
        DownloadMultiListFragment downloadMultiListFragmentZ0;
        if (this.isSelectAll || (downloadMultiListFragmentZ0 = Z0()) == null || !downloadMultiListFragmentZ0.b1()) {
            n1();
            return;
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            DownloadMultiListFragment downloadMultiListFragmentZ1 = Z0();
            bVar.g(downloadMultiListFragmentZ1 != null ? downloadMultiListFragmentZ1.Y0() : null, new c());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void p1(List data) {
        bx.b0 b0Var = (bx.b0) getMViewBinding();
        if (b0Var != null) {
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            com.transsnet.downloader.adapter.l lVar = new com.transsnet.downloader.adapter.l(fragmentActivityRequireActivity, this);
            lVar.k(this.ops);
            lVar.o(this.subject);
            lVar.i(this.groupId);
            lVar.l(this.pageFrom);
            lVar.j(this.lastPageFrom);
            lVar.n(this.showPremiumIfNeed);
            lVar.p(this.targetResourceId);
            lVar.q(this.targetSeason);
            lVar.setData(data);
            this.mAdapter = lVar;
            b0Var.f15952w.setAdapter(lVar);
            new TabLayoutMediator(b0Var.f15942m, b0Var.f15952w, new TabLayoutMediator.TabConfigurationStrategy() {
                @Override
                public final void onConfigureTab(TabLayout.Tab tab, int i10) {
                    DownloadReDetectorMultiFragment.q1(this.f57011a, tab, i10);
                }
            }).attach();
            b0Var.f15942m.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new e());
        }
    }

    public static final void q1(DownloadReDetectorMultiFragment downloadReDetectorMultiFragment, TabLayout.Tab tab, int i10) {
        ResourcesSeason resourcesSeasonH;
        Intrinsics.h(tab, "tab");
        com.transsnet.downloader.adapter.l lVar = downloadReDetectorMultiFragment.mAdapter;
        tab.setText("Unit " + ((lVar == null || (resourcesSeasonH = lVar.h(i10)) == null) ? null : Integer.valueOf(resourcesSeasonH.getSe())));
    }

    public static final StartDownloadHelper r1() {
        return new StartDownloadHelper();
    }

    private final void s1(TabLayout tabView, int right) {
        int iB = lj.a.b(28);
        int tabCount = tabView.getTabCount();
        for (int i10 = 0; i10 < tabCount; i10++) {
            if (tabView.getTabAt(i10) == null) {
                return;
            }
            View childAt = tabView.getChildAt(0);
            Intrinsics.f(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt2 = ((ViewGroup) childAt).getChildAt(i10);
            Intrinsics.g(childAt2, "getChildAt(...)");
            ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMargins(0, 0, right, 0);
            marginLayoutParams.height = iB;
        }
        tabView.requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void U(boolean show) {
        FrameLayout frameLayout;
        bx.b0 b0Var = (bx.b0) getMViewBinding();
        if (b0Var == null || (frameLayout = b0Var.f15934e) == null) {
            return;
        }
        frameLayout.setVisibility(show ? 0 : 8);
    }

    @Override
    public bx.b0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.b0 b0VarC = bx.b0.c(inflater);
        Intrinsics.g(b0VarC, "inflate(...)");
        return b0VarC;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
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
        String subjectId;
        DownloadResourcesDetectorViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarY;
        final int i10 = com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", 0);
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null && (b0VarY = viewModel2.y()) != null) {
            b0VarY.j(this, new d(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return DownloadReDetectorMultiFragment.h1(this.f56938a, i10, (ResourcesSeasonList) obj);
                }
            }));
        }
        DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModel = (DownloadResourcesDetectorViewModel) new androidx.p009lifecycle.v0(this).a(DownloadResourcesDetectorViewModel.class);
        downloadResourcesDetectorViewModel.s().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadReDetectorMultiFragment.i1(this.f56950a, (DownloadListBean) obj);
            }
        }));
        this.groupMainViewModel = downloadResourcesDetectorViewModel;
        Subject subject = this.subject;
        if (subject != null && (subjectId = subject.getSubjectId()) != null && (viewModel = getViewModel()) != null) {
            viewModel.u(subjectId);
        }
        DownloadResourcesDetectorViewModel viewModel3 = getViewModel();
        if (viewModel3 != null) {
            viewModel3.v();
        }
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override
    public void m(int position, List selectedList, boolean all) {
        Intrinsics.h(selectedList, "selectedList");
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        this.checkedList.put(Integer.valueOf(position), selectedList);
        this.allCheckMap.put(Integer.valueOf(position), Boolean.valueOf(all));
        wf.a.C0922a.f(wf.a.f74274a, "zxb_log", "DownloadReDetectorGroupMainFragment --> onSelectData() --> selectedList.size = " + this.checkedList.size(), false, 4, null);
        Iterator it = selectedList.iterator();
        long jLongValue = 0L;
        while (it.hasNext()) {
            DownloadBean downloadBean = (DownloadBean) it.next();
            if (!downloadBean.isUnable()) {
                Long size = downloadBean.getSize();
                jLongValue += size != null ? size.longValue() : 0L;
            }
        }
        y(position, Long.valueOf(jLongValue));
        W0();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        String string3;
        String string4;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        HashMap mapG5;
        String string5;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("extra_page_from")) == null) {
            string = "";
        }
        this.pageFrom = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("extra_last_page_from")) == null) {
            string2 = "";
        }
        this.lastPageFrom = string2;
        Bundle arguments3 = getArguments();
        this.subject = (Subject) (arguments3 != null ? arguments3.getSerializable("extra_subject") : null);
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (string3 = arguments4.getString("extra_ops")) == null) {
            string3 = "";
        }
        this.ops = string3;
        Bundle arguments5 = getArguments();
        if (arguments5 == null || (string4 = arguments5.getString("extra_target_resource_id")) == null) {
            string4 = "";
        }
        this.targetResourceId = string4;
        Bundle arguments6 = getArguments();
        if (arguments6 != null && (string5 = arguments6.getString("extra_module_name")) != null) {
            str = string5;
        }
        this.moduleName = str;
        Bundle arguments7 = getArguments();
        this.targetSeason = arguments7 != null ? arguments7.getInt("extra_season") : 0;
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
        DownloadListManager.a aVar = DownloadListManager.f57771m;
        aVar.a().Y(null);
        try {
            aVar.a().A().clear();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        super.onDestroy();
    }

    @Override
    public void retryLoadData() {
        loadDefaultData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void x(boolean show) {
        BLFrameLayout bLFrameLayout;
        bx.b0 b0Var = (bx.b0) getMViewBinding();
        if (b0Var == null || (bLFrameLayout = b0Var.f15933d) == null) {
            return;
        }
        bLFrameLayout.setVisibility(show ? 0 : 8);
    }

    @Override
    public void x0() {
        super.x0();
        if (G0()) {
            F0();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void y(int position, Long size) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        this.sizeMap.put(Integer.valueOf(position), size);
        Iterator it = this.sizeMap.entrySet().iterator();
        long jLongValue = 0;
        while (it.hasNext()) {
            Long l10 = (Long) ((Map.Entry) it.next()).getValue();
            jLongValue += l10 != null ? l10.longValue() : 0L;
        }
        if (jLongValue <= 0) {
            bx.b0 b0Var = (bx.b0) getMViewBinding();
            if (b0Var == null || (appCompatTextView2 = b0Var.f15943n) == null) {
                return;
            }
            appCompatTextView2.setText(getString(com.transsnet.downloader.R$string.str_download));
            return;
        }
        bx.b0 b0Var2 = (bx.b0) getMViewBinding();
        if (b0Var2 == null || (appCompatTextView = b0Var2.f15943n) == null) {
            return;
        }
        appCompatTextView.setText(getString(com.transsnet.downloader.R$string.str_download) + " · " + zg.b.a(jLongValue, 1));
    }
}
