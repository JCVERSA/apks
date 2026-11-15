package com.transsion.audio.fragment;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.audio.adapter.SubjectListAdapter;
import com.transsion.audio.viewmodel.HistoryListManager;
import com.transsion.audio.viewmodel.SubjectListViewModel;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.player.orplayer.PlayError;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.bean.DownloadListBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 q2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00019B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J)\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0016\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J!\u0010&\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b&\u0010'J!\u0010(\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b(\u0010'J\u000f\u0010)\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010\u0005J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u0005J\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\u0005J\u0019\u0010.\u001a\u00020\u00062\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b.\u0010/J!\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u0002002\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b2\u00103J!\u00106\u001a\u00020\u00062\u0006\u00105\u001a\u0002042\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b6\u00107J\u0019\u00108\u001a\u00020\u00062\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b8\u0010/R\u0018\u0010;\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010:R\u0018\u0010B\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010:R\u0018\u0010D\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010:R$\u0010L\u001a\u0004\u0018\u00010E8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\"\u0010S\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010NR\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010NR\u0016\u0010X\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010NR\u0016\u0010Z\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010NR\u001b\u0010`\u001a\u00020[8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_R\u001b\u0010e\u001a\u00020a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bb\u0010]\u001a\u0004\bc\u0010dR\u001d\u0010j\u001a\u0004\u0018\u00010f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bg\u0010]\u001a\u0004\bh\u0010iR\u0018\u0010l\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010:R\u0016\u0010p\u001a\u00020m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010o¨\u0006r"}, d2 = {"Lcom/transsion/audio/fragment/SubjectListFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lki/c;", "Lcom/transsion/player/orplayer/e;", "<init>", "()V", "", "loadMore", "u0", "", "", "page", "perPage", "E0", "(ZII)V", "Lcom/transsnet/downloader/bean/DownloadListBean;", "bean", "I0", "(Lcom/transsnet/downloader/bean/DownloadListBean;)V", "", "subjectId", "subjectType", "y0", "(Ljava/lang/String;I)V", "Lcom/transsion/moviedetailapi/DownloadItem;", "download", "Lcom/transsion/baselib/db/audio/AudioBean;", WebConstants.FIELD_ITEM, "H0", "(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsion/baselib/db/audio/AudioBean;)V", "Landroid/view/LayoutInflater;", "inflater", "x0", "(Landroid/view/LayoutInflater;)Lki/c;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "onResume", "onPause", "Lgn/e;", "mediaSource", "onPrepare", "(Lgn/e;)V", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLgn/e;)V", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "onCompletion", "a", "Ljava/lang/String;", "subjectCover", "Lcom/transsion/audio/adapter/SubjectListAdapter;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/audio/adapter/SubjectListAdapter;", "mAdapter", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "groupId", "e", "subjectTitle", "Lcom/transsion/audio/fragment/AudioBottomSheetFragment;", "f", "Lcom/transsion/audio/fragment/AudioBottomSheetFragment;", "getParent", "()Lcom/transsion/audio/fragment/AudioBottomSheetFragment;", "setParent", "(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)V", "parent", "g", "I", "getTotalEpisode", "()I", "setTotalEpisode", "(I)V", "totalEpisode", "h", "currentPage", "i", "j", "currentPageUp", CampaignEx.JSON_KEY_AD_K, "currentPageDown", "Lcom/transsion/audio/viewmodel/SubjectListViewModel;", "l", "Lkotlin/Lazy;", "w0", "()Lcom/transsion/audio/viewmodel/SubjectListViewModel;", "subjectListViewModel", "Lsi/a;", "m", "v0", "()Lsi/a;", "audioDao", "Lep/a;", "n", "getMAudioApi", "()Lep/a;", "mAudioApi", "o", "previousUrl", "Ljava/util/concurrent/atomic/AtomicBoolean;", TtmlNode.TAG_P, "Ljava/util/concurrent/atomic/AtomicBoolean;", "mIsStop", CampaignEx.JSON_KEY_AD_Q, "Audio_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectListFragment extends BaseFragment<ki.c> implements com.transsion.player.orplayer.e {

    public static final Companion INSTANCE = new Companion(null);

    private static final String f41735r = "SubjectListFragment";

    private SubjectListAdapter mAdapter;

    private AudioBottomSheetFragment parent;

    private int totalEpisode;

    private final Lazy subjectListViewModel;

    private final Lazy audioDao;

    private final Lazy mAudioApi;

    private String previousUrl;

    private AtomicBoolean mIsStop;

    private String subjectCover = "";

    private String subjectId = "";

    private String groupId = "";

    private String subjectTitle = "";

    private int currentPage = 1;

    private int perPage = 8;

    private int currentPageUp = 1;

    private int currentPageDown = 1;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return SubjectListFragment.f41735r;
        }

        public final SubjectListFragment b(String str) {
            SubjectListFragment subjectListFragment = new SubjectListFragment();
            Bundle bundle = new Bundle();
            bundle.putString("subjectId", str);
            subjectListFragment.setArguments(bundle);
            return subjectListFragment;
        }

        private Companion() {
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f41752a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f41752a = function;
        }

        @Override
        public final Function a() {
            return this.f41752a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f41752a.invoke(obj);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.fragment.SubjectListFragment$onCompletion$1", f = "SubjectListFragment.kt", l = {428}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final gn.e $mediaSource;
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final SubjectListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(gn.e eVar, SubjectListFragment subjectListFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$mediaSource = eVar;
            this.this$0 = subjectListFragment;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$mediaSource, this.this$0, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x005a  */
        /* JADX WARN: Code duplicated, block: B:21:0x0062  */
        /* JADX WARN: Code duplicated, block: B:24:0x006e  */
        /* JADX WARN: Code duplicated, block: B:30:0x008c  */
        /* JADX WARN: Code duplicated, block: B:32:0x008f  */
        /* JADX WARN: Code duplicated, block: B:33:0x0094  */
        /* JADX WARN: Code duplicated, block: B:36:0x009b  */
        /* JADX WARN: Code duplicated, block: B:38:0x009e  */
        /* JADX WARN: Code duplicated, block: B:41:0x00ae  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0086 -> B:29:0x0089). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:33:0x0094
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
                int r1 = r10.label
                r2 = 1
                r3 = 0
                if (r1 == 0) goto L2c
                if (r1 != r2) goto L24
                int r1 = r10.I$1
                int r4 = r10.I$0
                java.lang.Object r5 = r10.L$3
                com.transsion.moviedetailapi.DownloadItem r5 = (com.transsion.moviedetailapi.DownloadItem) r5
                java.lang.Object r6 = r10.L$2
                java.util.Iterator r6 = (java.util.Iterator) r6
                java.lang.Object r7 = r10.L$1
                com.transsion.audio.fragment.SubjectListFragment r7 = (com.transsion.audio.fragment.SubjectListFragment) r7
                java.lang.Object r8 = r10.L$0
                java.lang.String r8 = (java.lang.String) r8
                kotlin.ResultKt.b(r11)
                goto L89
            L24:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L2c:
                kotlin.ResultKt.b(r11)
                gn.e r11 = r10.$mediaSource
                if (r11 == 0) goto L38
                java.lang.String r11 = r11.j()
                goto L39
            L38:
                r11 = r3
            L39:
                com.transsion.audio.fragment.SubjectListFragment r1 = r10.this$0
                com.transsion.audio.adapter.SubjectListAdapter r1 = com.transsion.audio.fragment.SubjectListFragment.k0(r1)
                if (r1 == 0) goto Lb8
                java.util.List r1 = r1.getData()
                if (r1 == 0) goto Lb8
                java.lang.Iterable r1 = (java.lang.Iterable) r1
                com.transsion.audio.fragment.SubjectListFragment r4 = r10.this$0
                java.util.Iterator r1 = r1.iterator()
                r5 = 0
                r8 = r11
                r6 = r1
                r7 = r4
                r1 = r5
            L54:
                boolean r11 = r6.hasNext()
                if (r11 == 0) goto Lb6
                java.lang.Object r11 = r6.next()
                int r4 = r1 + 1
                if (r1 >= 0) goto L65
                kotlin.collections.CollectionsKt.u()
            L65:
                r5 = r11
                com.transsion.moviedetailapi.DownloadItem r5 = (com.transsion.moviedetailapi.DownloadItem) r5
                java.lang.String r11 = r5.getUrl()
                if (r11 == 0) goto L8c
                si.a r9 = com.transsion.audio.fragment.SubjectListFragment.i0(r7)
                if (r9 == 0) goto L8c
                r10.L$0 = r8
                r10.L$1 = r7
                r10.L$2 = r6
                r10.L$3 = r5
                r10.I$0 = r4
                r10.I$1 = r1
                r10.label = r2
                java.lang.Object r11 = r9.c(r11, r10)
                if (r11 != r0) goto L89
                return r0
            L89:
                com.transsion.baselib.db.audio.AudioBean r11 = (com.transsion.baselib.db.audio.AudioBean) r11
                goto L8d
            L8c:
                r11 = r3
            L8d:
                if (r11 == 0) goto L94
                java.lang.String r9 = r11.getAudioUrl()
                goto L95
            L94:
                r9 = r3
            L95:
                boolean r9 = android.text.TextUtils.equals(r8, r9)
                if (r9 == 0) goto Lb4
                r9 = 6
                if (r11 == 0) goto La1
                r11.setStatus(r9)
            La1:
                java.lang.Integer r11 = kotlin.coroutines.jvm.internal.Boxing.d(r9)
                r5.setStatus(r11)
                com.transsion.audio.adapter.SubjectListAdapter r11 = com.transsion.audio.fragment.SubjectListFragment.k0(r7)
                if (r11 == 0) goto Lb1
                r11.notifyItemChanged(r1, r5)
            Lb1:
                com.transsion.audio.fragment.SubjectListFragment.s0(r7, r8)
            Lb4:
                r1 = r4
                goto L54
            Lb6:
                kotlin.Unit r3 = kotlin.Unit.f64096a
            Lb8:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.audio.fragment.SubjectListFragment.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.fragment.SubjectListFragment$onPlayError$1", f = "SubjectListFragment.kt", l = {TTAdConstant.IMAGE_URL_CODE}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class C10441 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C10441(Continuation<? super C10441> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SubjectListFragment.this.new C10441(continuation);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x004b  */
        /* JADX WARN: Code duplicated, block: B:17:0x0053  */
        /* JADX WARN: Code duplicated, block: B:20:0x005f  */
        /* JADX WARN: Code duplicated, block: B:26:0x007b  */
        /* JADX WARN: Code duplicated, block: B:28:0x007e  */
        /* JADX WARN: Code duplicated, block: B:31:0x0087  */
        /* JADX WARN: Code duplicated, block: B:34:0x0091  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:25:0x0078). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:20:0x005f
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
                int r1 = r10.label
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L28
                if (r1 != r3) goto L20
                int r1 = r10.I$1
                int r4 = r10.I$0
                java.lang.Object r5 = r10.L$2
                com.transsion.moviedetailapi.DownloadItem r5 = (com.transsion.moviedetailapi.DownloadItem) r5
                java.lang.Object r6 = r10.L$1
                java.util.Iterator r6 = (java.util.Iterator) r6
                java.lang.Object r7 = r10.L$0
                com.transsion.audio.fragment.SubjectListFragment r7 = (com.transsion.audio.fragment.SubjectListFragment) r7
                kotlin.ResultKt.b(r11)
                goto L78
            L20:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L28:
                kotlin.ResultKt.b(r11)
                com.transsion.audio.fragment.SubjectListFragment r11 = com.transsion.audio.fragment.SubjectListFragment.this
                com.transsion.audio.adapter.SubjectListAdapter r11 = com.transsion.audio.fragment.SubjectListFragment.k0(r11)
                if (r11 == 0) goto L97
                java.util.List r11 = r11.getData()
                if (r11 == 0) goto L97
                java.lang.Iterable r11 = (java.lang.Iterable) r11
                com.transsion.audio.fragment.SubjectListFragment r1 = com.transsion.audio.fragment.SubjectListFragment.this
                java.util.Iterator r11 = r11.iterator()
                r4 = 0
                r6 = r11
                r7 = r1
            L44:
                r1 = r4
                boolean r11 = r6.hasNext()
                if (r11 == 0) goto L95
                java.lang.Object r11 = r6.next()
                int r4 = r1 + 1
                if (r1 >= 0) goto L56
                kotlin.collections.CollectionsKt.u()
            L56:
                r5 = r11
                com.transsion.moviedetailapi.DownloadItem r5 = (com.transsion.moviedetailapi.DownloadItem) r5
                java.lang.String r11 = r5.getUrl()
                if (r11 == 0) goto L7b
                si.a r8 = com.transsion.audio.fragment.SubjectListFragment.i0(r7)
                if (r8 == 0) goto L7b
                r10.L$0 = r7
                r10.L$1 = r6
                r10.L$2 = r5
                r10.I$0 = r4
                r10.I$1 = r1
                r10.label = r3
                java.lang.Object r11 = r8.c(r11, r10)
                if (r11 != r0) goto L78
                return r0
            L78:
                com.transsion.baselib.db.audio.AudioBean r11 = (com.transsion.baselib.db.audio.AudioBean) r11
                goto L7c
            L7b:
                r11 = r2
            L7c:
                if (r11 == 0) goto L44
                int r8 = r11.getStatus()
                r9 = 3
                if (r8 != r9) goto L44
                if (r11 == 0) goto L8b
                r8 = 7
                r11.setStatus(r8)
            L8b:
                com.transsion.audio.adapter.SubjectListAdapter r11 = com.transsion.audio.fragment.SubjectListFragment.k0(r7)
                if (r11 == 0) goto L44
                r11.notifyItemChanged(r1, r5)
                goto L44
            L95:
                kotlin.Unit r2 = kotlin.Unit.f64096a
            L97:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.audio.fragment.SubjectListFragment.C10441.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10441) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.fragment.SubjectListFragment$onPrepare$1", f = "SubjectListFragment.kt", l = {356}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class C10451 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final gn.e $mediaSource;
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final SubjectListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10451(gn.e eVar, SubjectListFragment subjectListFragment, Continuation<? super C10451> continuation) {
            super(2, continuation);
            this.$mediaSource = eVar;
            this.this$0 = subjectListFragment;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10451(this.$mediaSource, this.this$0, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x005e  */
        /* JADX WARN: Code duplicated, block: B:21:0x0066  */
        /* JADX WARN: Code duplicated, block: B:24:0x0071  */
        /* JADX WARN: Code duplicated, block: B:31:0x0099  */
        /* JADX WARN: Code duplicated, block: B:34:0x00a8  */
        /* JADX WARN: Code duplicated, block: B:35:0x00ad  */
        /* JADX WARN: Code duplicated, block: B:38:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:39:0x00bd  */
        /* JADX WARN: Code duplicated, block: B:42:0x00e8  */
        /* JADX WARN: Code duplicated, block: B:43:0x00ed  */
        /* JADX WARN: Code duplicated, block: B:46:0x00f4  */
        /* JADX WARN: Code duplicated, block: B:48:0x00f7  */
        /* JADX WARN: Code duplicated, block: B:51:0x0107  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x008c -> B:30:0x0091). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:38:0x00b8
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r19) {
            /*
                Method dump skipped, instruction units count: 278
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.audio.fragment.SubjectListFragment.C10451.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10451) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.fragment.SubjectListFragment$onProgress$1", f = "SubjectListFragment.kt", l = {378}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class C10461 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final gn.e $mediaSource;
        final long $progress;
        int I$0;
        int I$1;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final SubjectListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10461(gn.e eVar, SubjectListFragment subjectListFragment, long j10, Continuation<? super C10461> continuation) {
            super(2, continuation);
            this.$mediaSource = eVar;
            this.this$0 = subjectListFragment;
            this.$progress = j10;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10461(this.$mediaSource, this.this$0, this.$progress, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0063  */
        /* JADX WARN: Code duplicated, block: B:21:0x006b  */
        /* JADX WARN: Code duplicated, block: B:24:0x0076  */
        /* JADX WARN: Code duplicated, block: B:31:0x00a0  */
        /* JADX WARN: Code duplicated, block: B:34:0x00ab  */
        /* JADX WARN: Code duplicated, block: B:37:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:39:0x00be  */
        /* JADX WARN: Code duplicated, block: B:40:0x00c3  */
        /* JADX WARN: Code duplicated, block: B:43:0x00ca  */
        /* JADX WARN: Code duplicated, block: B:44:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:47:0x00f9  */
        /* JADX WARN: Code duplicated, block: B:49:0x00fc  */
        /* JADX WARN: Code duplicated, block: B:52:0x010c  */
        /* JADX WARN: Code duplicated, block: B:55:0x0114  */
        /* JADX WARN: Code duplicated, block: B:56:0x0119  */
        /* JADX WARN: Code duplicated, block: B:59:0x0120  */
        /* JADX WARN: Code duplicated, block: B:62:0x012c  */
        /* JADX WARN: Code duplicated, block: B:65:0x0136  */
        /* JADX WARN: Code duplicated, block: B:68:0x0146  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0093 -> B:30:0x0098). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:59:0x0120
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r23) {
            /*
                Method dump skipped, instruction units count: 336
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.audio.fragment.SubjectListFragment.C10461.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10461) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public SubjectListFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.subjectListViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(SubjectListViewModel.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.audioDao = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return SubjectListFragment.t0();
            }
        });
        this.mAudioApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return SubjectListFragment.G0();
            }
        });
        this.previousUrl = "";
        this.mIsStop = new AtomicBoolean(false);
    }

    public static final Unit A0(SubjectListFragment subjectListFragment, DownloadListBean downloadListBean) {
        subjectListFragment.I0(downloadListBean);
        return Unit.f64096a;
    }

    public static final void B0(SubjectListFragment subjectListFragment) {
        subjectListFragment.loadMore();
    }

    public static final void C0(BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        if (item instanceof DownloadItem) {
            DownloadItem downloadItem = (DownloadItem) item;
            if (TextUtils.isEmpty(downloadItem.getPostId())) {
                fh.b.f60176a.e("This page is unavailable");
            } else {
                ij.k.p(TheRouter.c("/post/detail").K(WebConstants.PAGE_FROM, "audio_list").K("id", downloadItem.getPostId()).K("media_type", MediaType.AUDIO.getValue()).z("video_load_more", true));
            }
        }
    }

    public static final void D0(SubjectListFragment subjectListFragment) {
        subjectListFragment.u0();
    }

    private final void E0(boolean loadMore, int page, int perPage) {
        w0().g(loadMore, this.subjectId, (48 & 4) != 0 ? "1" : String.valueOf(page), (48 & 8) != 0 ? 8 : perPage, (48 & 16) != 0 ? 1 : 0, (48 & 32) != 0 ? 8 : 0, (48 & 64) != 0 ? 0 : 0);
    }

    static void F0(SubjectListFragment subjectListFragment, boolean z10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i11 = 8;
        }
        subjectListFragment.E0(z10, i10, i11);
    }

    public static final ep.a G0() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    public final void H0(DownloadItem download, AudioBean item) {
        List<Object> data;
        SubjectListAdapter subjectListAdapter;
        SubjectListAdapter subjectListAdapter2 = this.mAdapter;
        if (subjectListAdapter2 != null && (data = subjectListAdapter2.getData()) != null) {
            int i10 = 0;
            for (Object obj : data) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                if (Intrinsics.c(download, (DownloadItem) obj) && (subjectListAdapter = this.mAdapter) != null) {
                    subjectListAdapter.notifyItemChanged(i10, download);
                }
                i10 = i11;
            }
        }
        Long readProcess = item.getReadProcess();
        long jLongValue = readProcess != null ? readProcess.longValue() : 0L;
        String url = download.getUrl();
        String url2 = download.getUrl();
        if (url2 == null) {
            url2 = "";
        }
        onProgress(jLongValue, new gn.e(url, url2, 0, null, null, 28, null));
    }

    private final void I0(final DownloadListBean bean) {
        String url;
        t6.f fVarH0;
        List<Object> listL;
        SwipeRefreshLayout swipeRefreshLayout;
        ki.c mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        RecyclerView recyclerView;
        SubjectListAdapter subjectListAdapter;
        t6.f fVarH1;
        t6.f fVarH2;
        SubjectListAdapter subjectListAdapter2;
        t6.f fVarH3;
        String nextPage;
        List<Object> data;
        AppCompatTextView appCompatTextView;
        LinearLayoutCompat linearLayoutCompat;
        Cover cover;
        if (bean == null || (cover = bean.getCover()) == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        ki.c mViewBinding2 = getMViewBinding();
        ShapeableImageView shapeableImageView = mViewBinding2 != null ? mViewBinding2.f64005c : null;
        Context context = getContext();
        if (context != null && !TextUtils.isEmpty(url) && shapeableImageView != null) {
            ni.f.f67269a.m(context).g(url).d(shapeableImageView);
        }
        ki.c mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (linearLayoutCompat = mViewBinding3.f64006d) != null) {
            linearLayoutCompat.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SubjectListFragment.J0(this.f41762a, bean, view);
                }
            });
        }
        ki.c mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatTextView = mViewBinding4.f64009g) != null) {
            appCompatTextView.setText(bean != null ? bean.getSubjectTitle() : null);
        }
        List<DownloadItem> items = bean != null ? bean.getItems() : null;
        if (items == null || items.isEmpty()) {
            SubjectListAdapter subjectListAdapter3 = this.mAdapter;
            if (subjectListAdapter3 == null || (fVarH0 = subjectListAdapter3.h0()) == null) {
                return;
            }
            t6.f.u(fVarH0, false, 1, null);
            return;
        }
        SubjectListAdapter subjectListAdapter4 = this.mAdapter;
        if (subjectListAdapter4 != null && (data = subjectListAdapter4.getData()) != null && data.isEmpty()) {
            SubjectListAdapter subjectListAdapter5 = this.mAdapter;
            if (subjectListAdapter5 != null) {
                subjectListAdapter5.n1(items);
                return;
            }
            return;
        }
        SubjectListAdapter subjectListAdapter6 = this.mAdapter;
        if (subjectListAdapter6 == null || (listL = subjectListAdapter6.getData()) == null) {
            listL = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : items) {
            if (!listL.contains((DownloadItem) obj)) {
                arrayList.add(obj);
            }
        }
        if (bean.getLoadMore()) {
            SubjectListAdapter subjectListAdapter7 = this.mAdapter;
            if (subjectListAdapter7 != null) {
                subjectListAdapter7.q(arrayList);
            }
            Pager pager = bean.getPager();
            this.currentPageUp = (pager == null || (nextPage = pager.getNextPage()) == null) ? 1 : Integer.parseInt(nextPage);
            SubjectListAdapter subjectListAdapter8 = this.mAdapter;
            if (subjectListAdapter8 != null && (fVarH2 = subjectListAdapter8.h0()) != null && fVarH2.r() && (subjectListAdapter2 = this.mAdapter) != null && (fVarH3 = subjectListAdapter2.h0()) != null) {
                fVarH3.s();
            }
        } else {
            SubjectListAdapter subjectListAdapter9 = this.mAdapter;
            if (subjectListAdapter9 != null) {
                subjectListAdapter9.o(0, arrayList);
            }
            ki.c mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (recyclerView = mViewBinding5.f64007e) != null) {
                recyclerView.scrollToPosition(arrayList.size() - 1);
            }
            ki.c mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (swipeRefreshLayout = mViewBinding6.f64008f) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f64008f) != null) {
                swipeRefreshLayout2.setRefreshing(false);
            }
            this.currentPageDown--;
        }
        Pager pager2 = bean.getPager();
        if (!(pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) || (subjectListAdapter = this.mAdapter) == null || (fVarH1 = subjectListAdapter.h0()) == null) {
            return;
        }
        t6.f.u(fVarH1, false, 1, null);
    }

    public static final void J0(SubjectListFragment subjectListFragment, DownloadListBean downloadListBean, View view) {
        subjectListFragment.y0(subjectListFragment.subjectId, downloadListBean != null ? downloadListBean.getSubjectType() : SubjectType.MOVIE.getValue());
    }

    private final ep.a getMAudioApi() {
        return (ep.a) this.mAudioApi.getValue();
    }

    private final void loadMore() {
        F0(this, true, this.currentPageUp, 0, 4, null);
    }

    public static final si.a t0() {
        Application applicationA = Utils.a();
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Intrinsics.e(applicationA);
        return companion.b(applicationA).n1();
    }

    private final void u0() {
        if (this.currentPage < 1) {
            return;
        }
        F0(this, false, this.currentPageDown, 0, 4, null);
    }

    public final si.a v0() {
        return (si.a) this.audioDao.getValue();
    }

    private final SubjectListViewModel w0() {
        return (SubjectListViewModel) this.subjectListViewModel.getValue();
    }

    private final void y0(String subjectId, int subjectType) {
        ij.k.p(TheRouter.c("/movie/detail").F("subject_type", subjectType).K("id", subjectId));
    }

    public static final Unit z0(SubjectListFragment subjectListFragment, DownloadListBean downloadListBean) {
        SubjectListAdapter subjectListAdapter;
        t6.f fVarH0;
        ki.c mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout;
        if (downloadListBean != null) {
            Integer totalEpisode = downloadListBean.getTotalEpisode();
            subjectListFragment.totalEpisode = totalEpisode != null ? totalEpisode.intValue() : 0;
            Cover cover = downloadListBean.getCover();
            subjectListFragment.subjectCover = cover != null ? cover.getUrl() : null;
            subjectListFragment.groupId = downloadListBean.getGroupId();
            subjectListFragment.subjectTitle = downloadListBean.getSubjectTitle();
            subjectListFragment.I0(downloadListBean);
            Integer position = downloadListBean.getPosition();
            int iIntValue = position != null ? (position.intValue() / subjectListFragment.perPage) + 1 : 1;
            subjectListFragment.currentPage = iIntValue;
            subjectListFragment.currentPageDown = iIntValue - 1;
            subjectListFragment.currentPageUp = iIntValue + 1;
            if (iIntValue < 1 && (mViewBinding = subjectListFragment.getMViewBinding()) != null && (swipeRefreshLayout = mViewBinding.f64008f) != null) {
                swipeRefreshLayout.setEnabled(false);
            }
            Pager pager = downloadListBean.getPager();
            if ((pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.FALSE) : false) && (subjectListAdapter = subjectListFragment.mAdapter) != null && (fVarH0 = subjectListAdapter.h0()) != null) {
                t6.f.u(fVarH0, false, 1, null);
            }
        }
        return Unit.f64096a;
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        HistoryListManager.f41836e.b().v().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectListFragment.z0(this.f41760a, (DownloadListBean) obj);
            }
        }));
        w0().f().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectListFragment.A0(this.f41761a, (DownloadListBean) obj);
            }
        }));
        Bundle arguments = getArguments();
        this.subjectId = arguments != null ? arguments.getString("subjectId") : null;
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout;
        RecyclerView recyclerView2;
        SwipeRefreshLayout swipeRefreshLayout2;
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.h(view, "view");
        Fragment parentFragment = getParentFragment();
        Intrinsics.f(parentFragment, "null cannot be cast to non-null type com.transsion.audio.fragment.AudioBottomSheetFragment");
        this.parent = (AudioBottomSheetFragment) parentFragment;
        ki.c mViewBinding = getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout2 = mViewBinding.f64008f) != null && (layoutParams = swipeRefreshLayout2.getLayoutParams()) != null) {
            AudioBottomSheetFragment audioBottomSheetFragment = this.parent;
            layoutParams.height = audioBottomSheetFragment != null ? audioBottomSheetFragment.D0() - a0.a(104.0f) : 0;
        }
        ki.c mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f64007e) != null) {
            recyclerView2.setLayoutManager(new NpaLinearLayoutManager(getContext()));
        }
        SubjectListAdapter subjectListAdapter = new SubjectListAdapter(new ArrayList());
        subjectListAdapter.h0().z(true);
        subjectListAdapter.h0().D(new r6.f() {
            @Override
            public final void a() {
                SubjectListFragment.B0(this.f41758a);
            }
        });
        subjectListAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i10) {
                SubjectListFragment.C0(baseQuickAdapter, view2, i10);
            }
        });
        subjectListAdapter.J1(new SubjectListAdapter.a() {
            @Override
            public void a(DownloadItem download) {
                Intrinsics.h(download, "download");
                kotlinx.coroutines.j.b(null, new SubjectListFragment$initView$1$3$onPlayItem$1(download, this.f41753a, null), 1, null);
            }
        });
        this.mAdapter = subjectListAdapter;
        ki.c mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (swipeRefreshLayout = mViewBinding3.f64008f) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    SubjectListFragment.D0(this.f41759a);
                }
            });
        }
        ki.c mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (recyclerView = mViewBinding4.f64007e) == null) {
            return;
        }
        recyclerView.setAdapter(this.mAdapter);
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.e(this, mediaSource);
        kotlinx.coroutines.j.b(null, new AnonymousClass1(mediaSource, this, null), 1, null);
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        com.transsion.player.orplayer.e.a.i(this, eVar);
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        com.transsion.player.orplayer.e.a.k(this, eVar);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        com.transsion.player.orplayer.e.a.o(this);
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    @Override
    public void onPause() {
        super.onPause();
        ep.a mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.removePlayerListener(this);
        }
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.e.a.q(this, errorInfo, mediaSource);
        fh.b.f60176a.e(String.valueOf(errorInfo.getErrorMessage()));
        kotlinx.coroutines.j.b(null, new C10441(null), 1, null);
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        com.transsion.player.orplayer.e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        com.transsion.player.orplayer.e.a.v(this);
    }

    @Override
    public void onPrepare(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.w(this, mediaSource);
        wf.a.C0922a.f(wf.a.f74274a, f41735r, "onPrepare  " + (!TextUtils.equals(this.previousUrl, mediaSource != null ? mediaSource.j() : null)) + "  previousUrl " + this.previousUrl + " url " + (mediaSource != null ? mediaSource.j() : null), false, 4, null);
        kotlinx.coroutines.j.b(null, new C10451(mediaSource, this, null), 1, null);
    }

    @Override
    public void onProgress(long progress, gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.y(this, progress, mediaSource);
        kotlinx.coroutines.j.b(null, new C10461(mediaSource, this, progress, null), 1, null);
    }

    @Override
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.e.a.A(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        ep.a mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.addPlayerListener(this);
        }
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e.a.B(this);
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.C(this, i10);
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        com.transsion.player.orplayer.e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.E(this, i10);
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        com.transsion.player.orplayer.e.a.F(this, eVar);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        com.transsion.player.orplayer.e.a.I(this, eVar);
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }

    @Override
    public ki.c getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        ki.c cVarC = ki.c.c(inflater);
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }
}
