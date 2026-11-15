package com.transsnet.downloader.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$string;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.moviedetailapi.bean.DownloadResolutionItem;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0013\u0010\u000eJ'\u0010\u0017\u001a\u00020\f2\u000e\u0010\u0015\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00142\u0006\u0010\u0016\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\t¢\u0006\u0004\b\u001e\u0010\u0012J\u0015\u0010 \u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\t¢\u0006\u0004\b \u0010\u0012J#\u0010%\u001a\u00020\f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!2\u0006\u0010$\u001a\u00020\t¢\u0006\u0004\b%\u0010&J#\u0010)\u001a\u00020\f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020'0!2\u0006\u0010(\u001a\u00020\t¢\u0006\u0004\b)\u0010&J'\u0010,\u001a\u00020\f2\u0018\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\f0*¢\u0006\u0004\b,\u0010-J'\u0010.\u001a\u00020\f2\u0018\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\f0*¢\u0006\u0004\b.\u0010-J\u001b\u00100\u001a\u00020\f2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\f0/¢\u0006\u0004\b0\u00101J\u001b\u00102\u001a\u00020\f2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\f0/¢\u0006\u0004\b2\u00101J\u0017\u00105\u001a\u00020\f2\b\u00104\u001a\u0004\u0018\u000103¢\u0006\u0004\b5\u00106R\u0014\u00109\u001a\u0002038\u0002X\u0082D¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010@\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR*\u0010G\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\f\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR*\u0010I\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\f\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010FR\u001e\u0010L\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u001e\u0010N\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010KR\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010?R\u0016\u0010R\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010?R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010\u0010\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010?R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010V¨\u0006W"}, d2 = {"Lcom/transsnet/downloader/widget/DownloadResolutionTabView;", "Lcom/noober/background/view/BLConstraintLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "n", "()V", TtmlNode.TAG_P, "curSeason", "t", "(I)V", "l", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", RequestParameters.POSITION, "o", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "seasons", "setSeasons", "season", "setSeason", "", "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;", "data", "resolutionPosition", "setResolutionContentData", "(Ljava/util/List;I)V", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "audioPosition", "setAudioContentData", "Lkotlin/Function2;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setResolutionItemClickListener", "(Lkotlin/jvm/functions/Function2;)V", "setAudioItemClickListener", "Lkotlin/Function0;", "setSeasonClickListener", "(Lkotlin/jvm/functions/Function0;)V", "setAudioClickListener", "", "name", "updateAudioTrack", "(Ljava/lang/String;)V", "a", "Ljava/lang/String;", "TAG", "Lbx/y0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lbx/y0;", "viewBinding", "c", "I", "dp16", "Lcom/transsnet/downloader/adapter/r;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsnet/downloader/adapter/r;", "resolutionTabAdapter", "e", "Lkotlin/jvm/functions/Function2;", "resolutionItemClickListener", "f", "audioItemClickListener", "g", "Lkotlin/jvm/functions/Function0;", "audioClickListener", "h", "seasonClickListener", "i", "curResPosition", "j", "curAudioPosition", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/moviedetailapi/bean/Subject;", "m", "Ljava/lang/Integer;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"ViewConstructor"})
@SourceDebugExtension
public final class DownloadResolutionTabView extends BLConstraintLayout {

    private final String TAG;

    private final bx.y0 viewBinding;

    private final int dp16;

    private com.transsnet.downloader.adapter.r resolutionTabAdapter;

    private Function2 resolutionItemClickListener;

    private Function2 audioItemClickListener;

    private Function0 audioClickListener;

    private Function0 seasonClickListener;

    private int curResPosition;

    private int curAudioPosition;

    private Subject subject;

    private int curSeason;

    private Integer seasons;

    public static final class a implements im.a {

        final BaseQuickAdapter f57922b;

        final int f57923c;

        a(BaseQuickAdapter baseQuickAdapter, int i10) {
            this.f57922b = baseQuickAdapter;
            this.f57923c = i10;
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
            DownloadResolutionTabView downloadResolutionTabView = DownloadResolutionTabView.this;
            BaseQuickAdapter baseQuickAdapter = this.f57922b;
            Intrinsics.e(baseQuickAdapter);
            downloadResolutionTabView.o(baseQuickAdapter, this.f57923c);
        }

        @Override
        public void f(MemberCheckResult memberCheckResult) {
            im.a.C0761a.a(this, memberCheckResult);
        }

        @Override
        public void onFail(String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
            im.a.C0761a.b(this, errorMsg);
            wf.a.C0922a.f(wf.a.f74274a, "co_mem", "DownloadResolutionTabView --> initRvAndAdapter() --> 剧集选择分辨率 -->  " + errorMsg, false, 4, null);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadResolutionTabView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    private final void l() {
        com.transsnet.downloader.adapter.r rVar = new com.transsnet.downloader.adapter.r();
        rVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                DownloadResolutionTabView.m(this.f58010a, baseQuickAdapter, view, i10);
            }
        });
        this.resolutionTabAdapter = rVar;
        RecyclerView recyclerView = this.viewBinding.f16315h;
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 4));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.a(lj.a.b(8), 0, 0, 0));
        }
        recyclerView.setAdapter(this.resolutionTabAdapter);
    }

    public static final void m(DownloadResolutionTabView downloadResolutionTabView, BaseQuickAdapter adapter, View view, int i10) {
        im.b bVar;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (i10 == downloadResolutionTabView.curResPosition) {
            return;
        }
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_tips);
            return;
        }
        Object objF0 = adapter.f0(i10);
        DownloadResolutionItem downloadResolutionItem = objF0 instanceof DownloadResolutionItem ? (DownloadResolutionItem) objF0 : null;
        if (downloadResolutionItem == null || (bVar = (im.b) TheRouter.d(im.b.class, new Object[0])) == null) {
            return;
        }
        bVar.g(Integer.valueOf(downloadResolutionItem.getResolution()), downloadResolutionTabView.new a(adapter, i10));
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0013  */
    private final void n() {
        ConstraintLayout.b bVar;
        if (getLayoutParams() != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            bVar = (ConstraintLayout.b) layoutParams;
            if (bVar == null) {
                bVar = new ConstraintLayout.b(-1, -2);
            }
        } else {
            bVar = new ConstraintLayout.b(-1, -2);
        }
        bVar.setMarginStart(this.dp16);
        bVar.setMarginEnd(this.dp16);
        setLayoutParams(bVar);
        l();
        p();
    }

    public final void o(BaseQuickAdapter adapter, int position) {
        Function2 function2;
        try {
            Object objF0 = adapter.f0(this.curResPosition);
            DownloadResolutionItem downloadResolutionItem = objF0 instanceof DownloadResolutionItem ? (DownloadResolutionItem) objF0 : null;
            if (downloadResolutionItem != null) {
                downloadResolutionItem.setSelected(false);
            }
            adapter.notifyItemChanged(this.curResPosition, Boolean.FALSE);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        Object objF1 = adapter.f0(position);
        DownloadResolutionItem downloadResolutionItem2 = objF1 instanceof DownloadResolutionItem ? (DownloadResolutionItem) objF1 : null;
        if (downloadResolutionItem2 != null) {
            downloadResolutionItem2.setSelected(true);
        }
        adapter.notifyItemChanged(position, Boolean.TRUE);
        this.curResPosition = position;
        if (downloadResolutionItem2 == null || (function2 = this.resolutionItemClickListener) == null) {
            return;
        }
        function2.invoke(Integer.valueOf(position), downloadResolutionItem2);
    }

    private final void p() {
        this.viewBinding.f16309b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadResolutionTabView.q(this.f58004a, view);
            }
        });
        this.viewBinding.f16316i.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadResolutionTabView.r(this.f58006a, view);
            }
        });
        this.viewBinding.f16313f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadResolutionTabView.s(this.f58008a, view);
            }
        });
    }

    public static final void q(DownloadResolutionTabView downloadResolutionTabView, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_DETAIL");
        Subject subject = downloadResolutionTabView.subject;
        Navigator.x(navigatorK.K("subject_id", subject != null ? subject.getSubjectId() : null), downloadResolutionTabView.getContext(), null, 2, null);
    }

    public static final void r(DownloadResolutionTabView downloadResolutionTabView, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "DownloadDialog", "innerTvTitle click then switch audio track", false, 4, null);
        Function0 function0 = downloadResolutionTabView.audioClickListener;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public static final void s(DownloadResolutionTabView downloadResolutionTabView, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "DownloadDialog", "Switch seasons", false, 4, null);
        com.blankj.utilcode.util.a.b();
        Function0 function0 = downloadResolutionTabView.seasonClickListener;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void t(int curSeason) {
        this.curSeason = curSeason;
        Subject subject = this.subject;
        if (subject != null && subject.isTvType()) {
            BLTextView bLTextView = this.viewBinding.f16313f;
            Context context = getContext();
            bLTextView.setText(context != null ? context.getString(com.transsnet.downloader.R$string.download_video_detail_season_index, sm.f.a(curSeason)) : null);
            return;
        }
        Subject subject2 = this.subject;
        if (subject2 == null || !subject2.isEduType()) {
            BLTextView ivSeasons = this.viewBinding.f16313f;
            Intrinsics.g(ivSeasons, "ivSeasons");
            uf.c.g(ivSeasons);
        } else {
            BLTextView bLTextView2 = this.viewBinding.f16313f;
            Context context2 = getContext();
            bLTextView2.setText(context2 != null ? context2.getString(com.transsnet.downloader.R$string.download_video_detail_unit_index, sm.f.a(curSeason)) : null);
        }
    }

    public final void setAudioClickListener(Function0<Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.audioClickListener = listener;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0041  */
    public final void setAudioContentData(List<DubsInfo> data, int audioPosition) {
        boolean z10;
        Intrinsics.h(data, "data");
        wf.a.C0922a.f(wf.a.f74274a, "DownloadDialog", "setAudioContentData size:" + data.size(), false, 4, null);
        this.curAudioPosition = audioPosition;
        BLTextView tvLanguage = this.viewBinding.f16316i;
        Intrinsics.g(tvLanguage, "tvLanguage");
        if (!data.isEmpty()) {
            z10 = data.size() > 1;
        }
        tvLanguage.setVisibility(z10 ? 0 : 8);
        if (audioPosition < 0 || audioPosition >= data.size()) {
            return;
        }
        this.viewBinding.f16316i.setText(data.get(audioPosition).getLanName());
    }

    public final void setAudioItemClickListener(Function2<? super Integer, ? super DubsInfo, Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.audioItemClickListener = listener;
    }

    public final void setResolutionContentData(List<DownloadResolutionItem> data, int resolutionPosition) {
        Intrinsics.h(data, "data");
        RecyclerView qualityRecyclerView = this.viewBinding.f16315h;
        Intrinsics.g(qualityRecyclerView, "qualityRecyclerView");
        uf.c.k(qualityRecyclerView);
        View vLine = this.viewBinding.f16318k;
        Intrinsics.g(vLine, "vLine");
        uf.c.k(vLine);
        this.curResPosition = resolutionPosition;
        com.transsnet.downloader.adapter.r rVar = this.resolutionTabAdapter;
        if (rVar != null) {
            List<DownloadResolutionItem> list = data;
            rVar.n1(list);
            if (list.isEmpty()) {
                return;
            }
            o(rVar, resolutionPosition);
        }
    }

    public final void setResolutionItemClickListener(Function2<? super Integer, ? super DownloadResolutionItem, Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.resolutionItemClickListener = listener;
    }

    public final void setSeason(int season) {
        t(season);
    }

    public final void setSeasonClickListener(Function0<Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.seasonClickListener = listener;
    }

    public final void setSeasons(int seasons) {
        this.seasons = Integer.valueOf(seasons);
        if (seasons <= 1) {
            BLTextView ivSeasons = this.viewBinding.f16313f;
            Intrinsics.g(ivSeasons, "ivSeasons");
            uf.c.g(ivSeasons);
        } else {
            BLTextView ivSeasons2 = this.viewBinding.f16313f;
            Intrinsics.g(ivSeasons2, "ivSeasons");
            uf.c.k(ivSeasons2);
        }
    }

    public final void setSubject(Subject subject) {
        ResourceDetectors resourceDetectors;
        Intrinsics.h(subject, "subject");
        this.subject = subject;
        List<ResourceDetectors> resourceDetectors2 = subject.getResourceDetectors();
        if (resourceDetectors2 == null || (resourceDetectors = (ResourceDetectors) CollectionsKt.k0(resourceDetectors2)) == null) {
            return;
        }
        this.viewBinding.f16311d.setText(resourceDetectors.getUploadBy());
    }

    public final void updateAudioTrack(String name) {
        this.viewBinding.f16316i.setText(name);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadResolutionTabView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadResolutionTabView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.TAG = "DownloadResolutionTabView";
        this.dp16 = com.blankj.utilcode.util.a0.a(16.0f);
        this.curResPosition = -1;
        this.curAudioPosition = -1;
        this.curSeason = 1;
        View.inflate(context, R$layout.layout_download_re_resolution_tab, this);
        bx.y0 y0VarA = bx.y0.a(this);
        Intrinsics.g(y0VarA, "bind(...)");
        this.viewBinding = y0VarA;
        n();
    }
}
