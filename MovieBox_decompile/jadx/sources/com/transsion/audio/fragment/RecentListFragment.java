package com.transsion.audio.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.c0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.audio.player.AudioPlayer;
import com.transsion.audio.viewmodel.HistoryListManager;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.player.orplayer.PlayError;
import com.transsion.web.api.WebConstants;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 >2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001-B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u001b\u0010\u000b\u001a\u00020\u0006*\u00020\b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u001f\u0010\u0011\u001a\u00020\u00062\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\u0005J\u0019\u0010\"\u001a\u00020\u00062\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b\"\u0010#J!\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020$2\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b&\u0010'J!\u0010*\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(2\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b*\u0010+J\u0019\u0010,\u001a\u00020\u00062\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b,\u0010#R\u0016\u0010/\u001a\u00020\b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b-\u0010.R\u001d\u00105\u001a\u0004\u0018\u0001008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006?"}, d2 = {"Lcom/transsion/audio/fragment/RecentListFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lki/b;", "Lcom/transsion/player/orplayer/e;", "<init>", "()V", "", "j0", "Lcom/transsion/audio/adapter/c;", "Lcom/transsion/baselib/db/audio/AudioBean;", WebConstants.FIELD_ITEM, "f0", "(Lcom/transsion/audio/adapter/c;Lcom/transsion/baselib/db/audio/AudioBean;)V", "h0", "loadData", "", "list", "l0", "(Ljava/util/List;)V", "Landroid/view/LayoutInflater;", "inflater", "g0", "(Landroid/view/LayoutInflater;)Lki/b;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "onResume", "onPause", "Lgn/e;", "mediaSource", "onPrepare", "(Lgn/e;)V", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLgn/e;)V", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "onCompletion", "a", "Lcom/transsion/audio/adapter/c;", "mAdapter", "Lep/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "getMAudioApi", "()Lep/a;", "mAudioApi", "", "c", "Ljava/lang/String;", "previousUrl", "Ljava/util/concurrent/atomic/AtomicBoolean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/concurrent/atomic/AtomicBoolean;", "mIsStop", "e", "Audio_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RecentListFragment extends BaseFragment<ki.b> implements com.transsion.player.orplayer.e {

    private com.transsion.audio.adapter.c mAdapter;

    private final Lazy mAudioApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RecentListFragment.mAudioApi_delegate$lambda$0();
        }
    });

    private String previousUrl = "";

    private AtomicBoolean mIsStop = new AtomicBoolean(false);

    public static final class b implements com.transsion.audio.adapter.c.a {

        final com.transsion.audio.adapter.c f41732b;

        b(com.transsion.audio.adapter.c cVar) {
            this.f41732b = cVar;
        }

        @Override
        public void a(AudioBean item) {
            Intrinsics.h(item, "item");
            RecentListFragment.this.f0(this.f41732b, item);
        }

        @Override
        public void b(AudioBean item) {
            Intrinsics.h(item, "item");
            if (!AudioPlayer.f41764i.a().y(item)) {
                Long readProcess = item.getReadProcess();
                long jLongValue = readProcess != null ? readProcess.longValue() : 0L;
                Long duration = item.getDuration();
                boolean z10 = jLongValue >= (duration != null ? duration.longValue() : -500L);
                if (item.getStatus() == 6 || z10) {
                    item.setReadProcess(0L);
                }
                RecentListFragment.this.mIsStop.set(false);
                item.setStatus(3);
                ep.a aVar = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
                if (aVar != null) {
                    aVar.d(item, false);
                }
            } else if (item.getStatus() == 3) {
                RecentListFragment.this.mIsStop.set(true);
                item.setStatus(4);
                ep.a aVar2 = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
                if (aVar2 != null) {
                    aVar2.stop();
                }
            } else {
                RecentListFragment.this.mIsStop.set(false);
                item.setStatus(3);
                ep.a aVar3 = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
                if (aVar3 != null) {
                    aVar3.prepare();
                }
            }
            RecentListFragment recentListFragment = RecentListFragment.this;
            Long readProcess2 = item.getReadProcess();
            recentListFragment.onProgress(readProcess2 != null ? readProcess2.longValue() : 0L, new gn.e(item.getAudioUrl(), item.getAudioUrl(), 0, null, null, 28, null));
        }
    }

    static final class c implements c0, FunctionAdapter {

        private final Function1 f41733a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f41733a = function;
        }

        @Override
        public final Function a() {
            return this.f41733a;
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
            this.f41733a.invoke(obj);
        }
    }

    public final void f0(com.transsion.audio.adapter.c cVar, AudioBean audioBean) {
        if (audioBean.getStatus() == 3) {
            AudioPlayer.f41764i.a().T();
        }
        com.transsion.audio.adapter.c cVar2 = this.mAdapter;
        if (cVar2 == null) {
            Intrinsics.y("mAdapter");
            cVar2 = null;
        }
        cVar2.notifyItemRemoved(cVar.g0(audioBean));
        cVar.getData().remove(audioBean);
        HistoryListManager.f41836e.b().o(audioBean);
    }

    private final ep.a getMAudioApi() {
        return (ep.a) this.mAudioApi.getValue();
    }

    private final void h0() {
        HistoryListManager.f41836e.b().p().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RecentListFragment.i0(this.f41757a, (List) obj);
            }
        }));
    }

    public static final Unit i0(RecentListFragment recentListFragment, List list) {
        recentListFragment.l0(list);
        return Unit.f64096a;
    }

    private final void j0() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        ViewGroup.LayoutParams layoutParams;
        Fragment parentFragment = getParentFragment();
        Intrinsics.f(parentFragment, "null cannot be cast to non-null type com.transsion.audio.fragment.AudioBottomSheetFragment");
        AudioBottomSheetFragment audioBottomSheetFragment = (AudioBottomSheetFragment) parentFragment;
        ki.b mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView3 = mViewBinding.f64002b) != null && (layoutParams = recyclerView3.getLayoutParams()) != null) {
            layoutParams.height = audioBottomSheetFragment.D0() - a0.a(48.0f);
        }
        ki.b mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f64002b) != null) {
            recyclerView2.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        com.transsion.audio.adapter.c cVar = new com.transsion.audio.adapter.c(new ArrayList());
        cVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                RecentListFragment.k0(baseQuickAdapter, view, i10);
            }
        });
        cVar.I1(new b(cVar));
        this.mAdapter = cVar;
        ki.b mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (recyclerView = mViewBinding3.f64002b) == null) {
            return;
        }
        com.transsion.audio.adapter.c cVar2 = this.mAdapter;
        if (cVar2 == null) {
            Intrinsics.y("mAdapter");
            cVar2 = null;
        }
        recyclerView.setAdapter(cVar2);
    }

    public static final void k0(BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        if (item instanceof AudioBean) {
            AudioBean audioBean = (AudioBean) item;
            if (TextUtils.isEmpty(audioBean.getPostId())) {
                fh.b.f60176a.e("This page is unavailable");
            } else {
                ij.k.p(TheRouter.c("/post/detail").K(WebConstants.PAGE_FROM, "audio_list").K("id", audioBean.getPostId()).K("media_type", MediaType.AUDIO.getValue()).z("video_load_more", true));
            }
        }
    }

    private final void l0(List list) {
        com.transsion.audio.adapter.c cVar = null;
        if (list == null || list.isEmpty()) {
            com.transsion.audio.adapter.c cVar2 = this.mAdapter;
            if (cVar2 == null) {
                Intrinsics.y("mAdapter");
                cVar2 = null;
            }
            t6.f.u(cVar2.h0(), false, 1, null);
            return;
        }
        com.transsion.audio.adapter.c cVar3 = this.mAdapter;
        if (cVar3 == null) {
            Intrinsics.y("mAdapter");
        } else {
            cVar = cVar3;
        }
        cVar.n1(list);
    }

    private final void loadData() {
        HistoryListManager.f41836e.b().r();
    }

    public static final ep.a mAudioApi_delegate$lambda$0() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public ki.b getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        ki.b bVarC = ki.b.c(inflater);
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        j0();
        h0();
    }

    @Override
    public void lazyLoadData() {
        loadData();
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
        com.transsion.audio.adapter.c cVar = this.mAdapter;
        if (cVar == null) {
            Intrinsics.y("mAdapter");
            cVar = null;
        }
        int i10 = 0;
        for (Object obj : cVar.getData()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            AudioBean audioBean = (AudioBean) obj;
            if (TextUtils.equals(mediaSource != null ? mediaSource.j() : null, audioBean.getAudioUrl())) {
                audioBean.setStatus(6);
                com.transsion.audio.adapter.c cVar2 = this.mAdapter;
                if (cVar2 == null) {
                    Intrinsics.y("mAdapter");
                    cVar2 = null;
                }
                cVar2.notifyItemChanged(i10, audioBean);
                this.previousUrl = mediaSource != null ? mediaSource.j() : null;
            }
            i10 = i11;
        }
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
        com.transsion.audio.adapter.c cVar = this.mAdapter;
        if (cVar == null) {
            Intrinsics.y("mAdapter");
            cVar = null;
        }
        int i10 = 0;
        for (Object obj : cVar.getData()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            AudioBean audioBean = (AudioBean) obj;
            if (audioBean.getStatus() == 3) {
                audioBean.setStatus(7);
                com.transsion.audio.adapter.c cVar2 = this.mAdapter;
                if (cVar2 == null) {
                    Intrinsics.y("mAdapter");
                    cVar2 = null;
                }
                cVar2.notifyItemChanged(i10, audioBean);
            }
            i10 = i11;
        }
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
        if (TextUtils.equals(this.previousUrl, mediaSource != null ? mediaSource.j() : null)) {
            return;
        }
        com.transsion.audio.adapter.c cVar = this.mAdapter;
        if (cVar == null) {
            Intrinsics.y("mAdapter");
            cVar = null;
        }
        int i10 = 0;
        for (Object obj : cVar.getData()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            AudioBean audioBean = (AudioBean) obj;
            if (TextUtils.equals(this.previousUrl, audioBean.getAudioUrl())) {
                audioBean.setStatus(4);
                com.transsion.audio.adapter.c cVar2 = this.mAdapter;
                if (cVar2 == null) {
                    Intrinsics.y("mAdapter");
                    cVar2 = null;
                }
                cVar2.notifyItemChanged(i10, audioBean);
                this.previousUrl = mediaSource != null ? mediaSource.j() : null;
            }
            i10 = i11;
        }
    }

    @Override
    public void onProgress(long progress, gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.y(this, progress, mediaSource);
        com.transsion.audio.adapter.c cVar = this.mAdapter;
        if (cVar == null) {
            Intrinsics.y("mAdapter");
            cVar = null;
        }
        int i10 = 0;
        for (Object obj : cVar.getData()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            AudioBean audioBean = (AudioBean) obj;
            if (TextUtils.isEmpty(this.previousUrl)) {
                this.previousUrl = mediaSource != null ? mediaSource.j() : null;
            }
            if (!TextUtils.equals(this.previousUrl, mediaSource != null ? mediaSource.j() : null) && TextUtils.equals(this.previousUrl, audioBean.getAudioUrl())) {
                audioBean.setStatus(4);
                com.transsion.audio.adapter.c cVar2 = this.mAdapter;
                if (cVar2 == null) {
                    Intrinsics.y("mAdapter");
                    cVar2 = null;
                }
                cVar2.notifyItemChanged(i10, audioBean);
                this.previousUrl = mediaSource != null ? mediaSource.j() : null;
            }
            if (TextUtils.equals(mediaSource != null ? mediaSource.j() : null, audioBean.getAudioUrl()) && !this.mIsStop.get()) {
                audioBean.setReadProcess(Long.valueOf(progress));
                audioBean.setStatus(3);
                com.transsion.audio.adapter.c cVar3 = this.mAdapter;
                if (cVar3 == null) {
                    Intrinsics.y("mAdapter");
                    cVar3 = null;
                }
                cVar3.notifyItemChanged(i10, audioBean);
            }
            i10 = i11;
        }
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
}
