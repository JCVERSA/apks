package com.transsion.baseui.music;

import android.R;
import android.app.Activity;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.g0;
import com.google.android.material.card.MaterialCardView;
import com.transsion.baseui.activity.BaseMusicFloatActivity;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import on.a0;

public final class MusicFloatManager implements com.transsion.player.orplayer.e {

    public static final a f42282h = new a(null);

    public static final int f42283i = 8;

    private static final Lazy f42284j = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MusicFloatManager.c();
        }
    });

    private MediaItem f42286b;

    private String f42287c;

    private com.transsion.player.orplayer.f f42289e;

    private final Map f42291g;

    private boolean f42285a = true;

    private CopyOnWriteArrayList f42288d = new CopyOnWriteArrayList();

    private List f42290f = new ArrayList();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final MusicFloatManager a() {
            return (MusicFloatManager) MusicFloatManager.f42284j.getValue();
        }

        public final MusicFloatManager b() {
            return a();
        }

        private a() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.baseui.music.MusicFloatManager$onPlayerRelease$1", f = "MusicFloatManager.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final gn.e $mediaSource;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(gn.e eVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$mediaSource = eVar;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MusicFloatManager.this.new AnonymousClass1(this.$mediaSource, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            MediaItem mediaItemH;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            com.transsion.player.mediasession.i iVar = com.transsion.player.mediasession.i.f46432a;
            String strP = MusicFloatManager.this.p();
            gn.e eVar = this.$mediaSource;
            iVar.a(strP + " --> onPlayerRelease() --> subjectId = " + ((eVar == null || (mediaItemH = eVar.h()) == null) ? null : mediaItemH.getSubjectId()));
            com.transsion.player.orplayer.f fVar = MusicFloatManager.this.f42289e;
            if (fVar != null) {
                fVar.removePlayerListener(MusicFloatManager.this);
            }
            MusicFloatManager.this.f42289e = null;
            CopyOnWriteArrayList copyOnWriteArrayList = MusicFloatManager.this.f42288d;
            gn.e eVar2 = this.$mediaSource;
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.e) it.next()).onPlayerRelease(eVar2);
            }
            MusicFloatManager.this.B(null);
            MusicFloatManager.this.C(null);
            MusicReport.f42301a.c();
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public MusicFloatManager() {
        g0.f9280i.a().getLifecycle().a(com.transsion.baseui.music.a.f42307a);
        MusicReport.f42301a.c();
        this.f42291g = new LinkedHashMap();
    }

    public static final MusicFloatManager c() {
        return new MusicFloatManager();
    }

    private final void j(long j10, long j11, int i10, int i11, gn.e eVar) {
        MediaItem mediaItemH;
        MediaItem mediaItemH2;
        MediaItem mediaItemH3;
        MediaItem mediaItemH4;
        MediaItem mediaItemH5;
        MediaItem mediaItemH6;
        MediaItem mediaItemH7;
        MediaItem mediaItemH8;
        MediaItem mediaItemH9;
        MediaItem mediaItemH10;
        MediaItem mediaItemH11;
        MediaItem mediaItemH12;
        MediaItem mediaItemH13;
        boolean zC = false;
        if ((eVar == null || (mediaItemH13 = eVar.h()) == null) ? false : Intrinsics.c(mediaItemH13.isMusic(), Boolean.FALSE)) {
            return;
        }
        n nVar = (n) this.f42291g.get((eVar == null || (mediaItemH12 = eVar.h()) == null) ? null : mediaItemH12.getMediaId());
        if (!TextUtils.equals((eVar == null || (mediaItemH11 = eVar.h()) == null) ? null : mediaItemH11.getPageName(), "music_float")) {
            if (!((eVar == null || (mediaItemH10 = eVar.h()) == null) ? false : Intrinsics.c(mediaItemH10.getInBackground(), Boolean.TRUE))) {
                if (nVar != null) {
                    MusicReport.f42301a.d(nVar);
                    this.f42291g.put((eVar == null || (mediaItemH9 = eVar.h()) == null) ? null : mediaItemH9.getMediaId(), null);
                    return;
                }
                return;
            }
        }
        if (nVar == null) {
            nVar = new n((eVar == null || (mediaItemH8 = eVar.h()) == null) ? null : mediaItemH8.getMediaId(), (eVar == null || (mediaItemH7 = eVar.h()) == null) ? null : mediaItemH7.getOps(), (eVar == null || (mediaItemH6 = eVar.h()) == null) ? null : mediaItemH6.getSubjectId(), 0L, 0L, j11, 0L, 0L, i10, i11);
        }
        long jG = j10 - nVar.g();
        if (!(1 <= jG && jG < 2000)) {
            jG = 0;
        }
        if (eVar != null && (mediaItemH5 = eVar.h()) != null) {
            zC = Intrinsics.c(mediaItemH5.getInBackground(), Boolean.TRUE);
        }
        if (zC) {
            nVar.m(nVar.c() + jG);
        } else {
            nVar.l(nVar.b() + jG);
        }
        nVar.n((eVar == null || (mediaItemH4 = eVar.h()) == null) ? null : mediaItemH4.getOps());
        nVar.r(j11);
        nVar.s(i10);
        nVar.k(i11);
        nVar.q((eVar == null || (mediaItemH3 = eVar.h()) == null) ? null : mediaItemH3.getSubjectId());
        nVar.p(j10);
        nVar.o(nVar.f() + jG);
        this.f42291g.put((eVar == null || (mediaItemH2 = eVar.h()) == null) ? null : mediaItemH2.getMediaId(), nVar);
        if (nVar.f() > 10000) {
            MusicReport.f42301a.d(nVar);
            this.f42291g.put((eVar == null || (mediaItemH = eVar.h()) == null) ? null : mediaItemH.getMediaId(), null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean m(MusicFloatManager musicFloatManager, Ref.ObjectRef objectRef, View view, MotionEvent motionEvent) {
        View view2 = (View) objectRef.element;
        Intrinsics.e(motionEvent);
        if (!musicFloatManager.y(view2, motionEvent)) {
            ((MusicFloatView) objectRef.element).setExpand(false);
        }
        return false;
    }

    private final FrameLayout o(AppCompatActivity appCompatActivity) {
        Object objM453constructorimpl;
        Window window;
        View decorView;
        try {
            Result.Companion companion = Result.INSTANCE;
            FrameLayout frameLayout = (appCompatActivity == null || (window = appCompatActivity.getWindow()) == null || (decorView = window.getDecorView()) == null) ? null : (FrameLayout) decorView.findViewById(R.id.content);
            if (!(frameLayout instanceof FrameLayout)) {
                frameLayout = null;
            }
            objM453constructorimpl = Result.m453constructorimpl(frameLayout);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        return (FrameLayout) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
    }

    public final String p() {
        String simpleName = MusicFloatManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final boolean y(View view, MotionEvent motionEvent) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i10 = iArr[0];
        if (rawX <= i10 || rawX >= i10 + view.getWidth()) {
            return false;
        }
        int i11 = iArr[1];
        return rawY > ((float) i11) && rawY < ((float) (i11 + view.getHeight()));
    }

    public final void A(boolean z10) {
        this.f42285a = z10;
    }

    public final void B(MediaItem mediaItem) {
        com.transsion.player.mediasession.i.f46432a.a(p() + " --> setMediaItem() --> musicFloatBean = " + mediaItem);
        if (!(mediaItem != null ? Intrinsics.c(mediaItem.isMusic(), Boolean.TRUE) : false)) {
            mediaItem = null;
        }
        this.f42286b = mediaItem;
    }

    public final void C(String str) {
        this.f42287c = str;
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    public final void i(Activity activity, MotionEvent event) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(event, "event");
        MusicFloatView musicFloatView = (MusicFloatView) activity.findViewById(activity.hashCode());
        if (musicFloatView != null && musicFloatView.getVisibility() == 0 && this.f42285a && !y(musicFloatView, event)) {
            musicFloatView.setExpand(false);
        }
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    public final void k(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        if (this.f42288d.contains(listener)) {
            return;
        }
        this.f42288d.add(listener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, android.view.View] */
    /* JADX WARN: Type inference failed for: r0v6, types: [T, android.view.View, com.transsion.baseui.music.MusicFloatView] */
    public final void l(AppCompatActivity appCompatActivity, int i10) {
        if (appCompatActivity == null) {
            com.transsion.player.mediasession.i.f46432a.a(p() + " --> attach() --> activity == null");
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = appCompatActivity.findViewById(appCompatActivity.hashCode());
        if (q() == null) {
            MusicFloatView musicFloatView = (MusicFloatView) objectRef.element;
            if (musicFloatView != null) {
                musicFloatView.setVisibility(8);
                return;
            }
            return;
        }
        MusicFloatView musicFloatView2 = (MusicFloatView) objectRef.element;
        if (musicFloatView2 != null) {
            musicFloatView2.setVisibility(0);
        }
        if (objectRef.element == 0) {
            ?? musicFloatView3 = new MusicFloatView(appCompatActivity);
            objectRef.element = musicFloatView3;
            musicFloatView3.setId(appCompatActivity.hashCode());
            FrameLayout frameLayoutO = o(appCompatActivity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            if (frameLayoutO != null) {
                frameLayoutO.setOnTouchListener(new View.OnTouchListener() {
                    @Override
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        return MusicFloatManager.m(this.f42308a, objectRef, view, motionEvent);
                    }
                });
            }
            layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
            layoutParams.bottomMargin = lj.a.b(Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
            if (frameLayoutO != null) {
                frameLayoutO.addView((View) objectRef.element, layoutParams);
            }
        }
        ((MusicFloatView) objectRef.element).refresh();
    }

    public final void n() {
        com.transsion.player.orplayer.f fVarS = s();
        if (fVarS != null) {
            fVarS.stop();
        }
        if (fVarS != null) {
            fVarS.release();
        }
        f42282h.b().B(null);
        com.transsion.player.mediasession.h.f46423a.p();
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
    public void onCompletion(gn.e eVar) {
        com.transsion.player.orplayer.e.a.e(this, eVar);
        MediaItem mediaItem = this.f42286b;
        if (mediaItem != null) {
            mediaItem.setState(MediaItem.MUSIC_FLOAT_STATE_COMPLETION);
        }
        Iterator it = this.f42288d.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onCompletion(eVar);
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
    public void onPlayError(PlayError errorInfo, gn.e eVar) {
        MediaItem mediaItemH;
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.e.a.q(this, errorInfo, eVar);
        com.transsion.player.mediasession.i.f46432a.a(p() + " --> onPlayError() --> subjectId = " + ((eVar == null || (mediaItemH = eVar.h()) == null) ? null : mediaItemH.getSubjectId()));
        MediaItem mediaItem = this.f42286b;
        if (mediaItem != null) {
            mediaItem.setState("error");
        }
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        com.transsion.player.orplayer.e.a.t(this, eVar);
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new AnonymousClass1(eVar, null), 3, null);
    }

    @Override
    public void onPlayerReset() {
        com.transsion.player.orplayer.e.a.v(this);
        com.transsion.player.mediasession.i.f46432a.a(p() + " --> onPlayerReset()");
    }

    @Override
    public void onPrepare(gn.e eVar) {
        com.transsion.player.orplayer.e.a.w(this, eVar);
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.y(this, j10, eVar);
        Iterator it = this.f42288d.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onProgress(j10, eVar);
        }
        com.transsion.player.orplayer.f fVarS = s();
        long duration = fVarS != null ? fVarS.getDuration() : 0L;
        com.transsion.player.orplayer.f fVarS2 = s();
        Pair bitrate = fVarS2 != null ? fVarS2.getBitrate() : null;
        j(j10, duration, bitrate != null ? ((Number) bitrate.getFirst()).intValue() : 0, bitrate != null ? ((Number) bitrate.getSecond()).intValue() : 0, eVar);
        MediaItem mediaItemQ = q();
        if (mediaItemQ != null) {
            mediaItemQ.setPosition(Long.valueOf(j10));
        }
        MediaItem mediaItemQ2 = q();
        if (mediaItemQ2 != null) {
            mediaItemQ2.setState(MediaItem.MUSIC_FLOAT_STATE_PLAY);
        }
        MediaItem mediaItemQ3 = q();
        if (mediaItemQ3 != null) {
            mediaItemQ3.setDuration(Long.valueOf(duration));
        }
    }

    @Override
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.e.a.A(this);
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e.a.B(this);
        com.transsion.player.mediasession.i.f46432a.a(p() + " --> onSetDataSource()");
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
        MediaItem mediaItemH;
        com.transsion.player.orplayer.e.a.F(this, eVar);
        com.transsion.player.mediasession.i.f46432a.a(p() + " --> onVideoPause() --> subjectId = " + ((eVar == null || (mediaItemH = eVar.h()) == null) ? null : mediaItemH.getSubjectId()));
        MediaItem mediaItem = this.f42286b;
        if (mediaItem != null) {
            mediaItem.setState("pause");
        }
        Iterator it = this.f42288d.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onVideoPause(eVar);
        }
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        MediaItem mediaItemH;
        com.transsion.player.orplayer.e.a.I(this, eVar);
        com.transsion.player.mediasession.i.f46432a.a(p() + " --> onVideoStart() --> subjectId = " + ((eVar == null || (mediaItemH = eVar.h()) == null) ? null : mediaItemH.getSubjectId()));
        MediaItem mediaItem = this.f42286b;
        if (mediaItem != null) {
            mediaItem.setState(MediaItem.MUSIC_FLOAT_STATE_PLAY);
        }
        Iterator it = this.f42288d.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onVideoStart(eVar);
        }
    }

    public final MediaItem q() {
        return this.f42286b;
    }

    public final String r() {
        return this.f42287c;
    }

    public final com.transsion.player.orplayer.f s() {
        if (this.f42289e == null) {
            a0 a0Var = new a0();
            a0Var.addPlayerListener(this);
            this.f42289e = a0Var;
        }
        return this.f42289e;
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }

    public final String t(String str) {
        return str + "_" + o.f42328a.a(6);
    }

    public final void u() {
        f42282h.b().B(null);
        com.transsion.player.mediasession.h.f46423a.p();
        List<Activity> listA = com.blankj.utilcode.util.a.a();
        if (listA != null) {
            for (Activity activity : listA) {
                BaseMusicFloatActivity baseMusicFloatActivity = activity instanceof BaseMusicFloatActivity ? (BaseMusicFloatActivity) activity : null;
                if (baseMusicFloatActivity != null) {
                    MusicFloatView musicFloatView = (MusicFloatView) baseMusicFloatActivity.findViewById(baseMusicFloatActivity.hashCode());
                    if (musicFloatView != null) {
                        musicFloatView.setVisibility(8);
                    }
                    baseMusicFloatActivity.onCloseMusicFloating();
                }
            }
        }
    }

    public final boolean v() {
        return this.f42285a;
    }

    public final List w() {
        return this.f42290f;
    }

    public final boolean x(AppCompatActivity appCompatActivity) {
        MusicFloatView musicFloatView = appCompatActivity != null ? (MusicFloatView) appCompatActivity.findViewById(appCompatActivity.hashCode()) : null;
        return musicFloatView != null && musicFloatView.getVisibility() == 0;
    }

    public final void z(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        if (this.f42288d.contains(listener)) {
            this.f42288d.remove(listener);
        }
    }
}
