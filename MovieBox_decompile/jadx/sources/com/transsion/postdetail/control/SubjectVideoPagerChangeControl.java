package com.transsion.postdetail.control;

import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.transsion.baselib.report.k;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.player.orplayer.e;
import com.transsion.player.orplayer.f;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.ui.adapter.i;
import com.transsion.postdetail.ui.view.ShortTvImmVideoItemView;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import qi.h;
import rm.d;
import yg.l;

public class SubjectVideoPagerChangeControl extends gr.a implements r, k.a {

    public static final a f46807n = new a(null);

    private final Fragment f46808a;

    private final i f46809b;

    private final f f46810c;

    private final ORPlayerView f46811d;

    private PagerLayoutManager f46812e;

    private final int f46813f;

    private final long f46814g;

    private int f46815h;

    private boolean f46816i;

    private boolean f46817j;

    private View f46818k;

    private final String f46819l;

    private boolean f46820m;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public class b {

        public static final int[] f46821a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f46821a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.control.SubjectVideoPagerChangeControl$onStateChanged$1", f = "SubjectVideoPagerChangeControl.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            ORPlayerPreloadManager.f46433i.a().c();
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public SubjectVideoPagerChangeControl(Fragment fragment, i iVar, f fVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(fragment, "fragment");
        this.f46808a = fragment;
        this.f46809b = iVar;
        this.f46810c = fVar;
        this.f46811d = oRPlayerView;
        this.f46812e = pagerLayoutManager;
        this.f46813f = 3;
        this.f46814g = 3000L;
        this.f46816i = true;
        fragment.getLifecycle().a(this);
        m();
        this.f46819l = h.f69682a.h();
    }

    private final void h() {
        t6.f fVarH0;
        i iVar = this.f46809b;
        if (((iVar == null || (fVarH0 = iVar.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail && l.f76264a.e()) {
            wf.a.C0922a.f(wf.a.f74274a, "ShortTvImmVideoPlayer", "current is fail, try load more", false, 4, null);
            this.f46809b.h0().w();
        }
    }

    private final Video l(Subject subject) {
        Media video;
        PreVideoAddress videoAddress;
        if (subject == null) {
            return null;
        }
        Trailer trailer = subject.getTrailer();
        if ((trailer != null ? trailer.getVideoAddress() : null) != null) {
            Trailer trailer2 = subject.getTrailer();
            if (trailer2 == null || (videoAddress = trailer2.getVideoAddress()) == null) {
                return null;
            }
            return d.a(videoAddress);
        }
        ShortTVItem shortTVFirstEp = subject.getShortTVFirstEp();
        if (shortTVFirstEp == null || (video = shortTVFirstEp.getVideo()) == null) {
            return null;
        }
        return video.getVideoAddress();
    }

    private final void m() {
        k.f42210a.g(this);
    }

    @Override
    public void d(View view) {
        PagerLayoutManager pagerLayoutManager = this.f46812e;
        if (pagerLayoutManager != null) {
            int iFindFirstVisibleItemPosition = pagerLayoutManager.findFirstVisibleItemPosition();
            wf.a.C0922a.v(wf.a.f74274a, "ShortTvImmVideoPlayer", "onInitComplete, position = " + iFindFirstVisibleItemPosition + ", ----- currentPosition = " + this.f46815h, false, 4, null);
            if (this.f46815h == iFindFirstVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition != -1) {
                this.f46815h = iFindFirstVisibleItemPosition;
            }
            q(this.f46815h, view);
        }
    }

    @Override
    public void e(boolean z10, int i10, View view) {
        wf.a.C0922a.v(wf.a.f74274a, "ShortTvImmVideoPlayer", "onPageRelease, position = " + i10 + ", ----- currentPosition = " + this.f46815h, false, 4, null);
        if (i10 == this.f46815h) {
            w();
            ORPlayerView oRPlayerView = this.f46811d;
            ViewParent parent = oRPlayerView != null ? oRPlayerView.getParent() : null;
            if (parent instanceof FrameLayout) {
                ((FrameLayout) parent).removeView(this.f46811d);
            }
        }
    }

    @Override
    public void f(int i10, boolean z10, View view) {
        h();
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvImmVideoPlayer", "onPageSelected, position = " + i10 + ", ----- currentPosition = " + this.f46815h, false, 4, null);
        if (this.f46815h != i10 || this.f46817j) {
            this.f46817j = false;
            this.f46815h = i10;
            ImmVideoHelper.a aVar = ImmVideoHelper.f46840h;
            if (aVar.a().n()) {
                aVar.a().t();
            }
            q(i10, view);
        }
    }

    public void g(List data) {
        Intrinsics.h(data, "data");
        i iVar = this.f46809b;
        if (iVar != null) {
            iVar.q(data);
        }
    }

    public final int i() {
        return this.f46815h;
    }

    protected final Fragment j() {
        return this.f46808a;
    }

    protected final f k() {
        return this.f46810c;
    }

    public void n(int i10) {
        Subject subject;
        Video videoL;
        i iVar = this.f46809b;
        if (iVar == null || (subject = (Subject) iVar.f0(i10 + this.f46813f)) == null || (videoL = l(subject)) == null) {
            return;
        }
        t(subject, videoL);
    }

    public final void o() {
        if (this.f46816i) {
            this.f46816i = false;
            s(this.f46815h);
        }
    }

    @Override
    public void onBackgroundStatusChange(boolean z10) {
        if (z10 && !this.f46820m) {
            View view = this.f46818k;
            ShortTvImmVideoItemView shortTvImmVideoItemView = view instanceof ShortTvImmVideoItemView ? (ShortTvImmVideoItemView) view : null;
            if (shortTvImmVideoItemView != null) {
                shortTvImmVideoItemView.app2Background();
            }
        }
    }

    @Override
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        int i10 = b.f46821a[event.ordinal()];
        if (i10 == 1) {
            ORPlayerPreloadManager.f46433i.a().h();
            return;
        }
        if (i10 == 2) {
            ORPlayerPreloadManager.f46433i.a().k();
        } else {
            if (i10 != 3) {
                return;
            }
            k.f42210a.t(this);
            this.f46818k = null;
            this.f46808a.getLifecycle().d(this);
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass1(null), 3, null);
        }
    }

    public final void p(boolean z10) {
        this.f46820m = z10;
        if (z10) {
            View view = this.f46818k;
            ShortTvImmVideoItemView shortTvImmVideoItemView = view instanceof ShortTvImmVideoItemView ? (ShortTvImmVideoItemView) view : null;
            if (shortTvImmVideoItemView != null) {
                shortTvImmVideoItemView.app2Background();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void q(int i10, View view) {
        RecyclerView recyclerView;
        ORPlayerView oRPlayerView;
        this.f46818k = view;
        wf.a.C0922a.f(wf.a.f74274a, "ImmVideoPlayer", "on page select position = " + i10, false, 4, null);
        u();
        if (i10 >= 0) {
            i iVar = this.f46809b;
            int height = 0;
            if ((iVar != null ? iVar.getItemCount() : 0) > i10 && (view instanceof ShortTvImmVideoItemView)) {
                ShortTvImmVideoItemView shortTvImmVideoItemView = (ShortTvImmVideoItemView) view;
                shortTvImmVideoItemView.setPosition(Integer.valueOf(i10));
                f fVar = this.f46810c;
                if (fVar != null && (oRPlayerView = this.f46811d) != null) {
                    shortTvImmVideoItemView.setPlayer(fVar, oRPlayerView);
                }
                PagerLayoutManager pagerLayoutManager = this.f46812e;
                if (pagerLayoutManager != null) {
                    shortTvImmVideoItemView.setPagerLayoutManager(pagerLayoutManager);
                }
                f fVar2 = this.f46810c;
                if (fVar2 != null) {
                    fVar2.setPlayerListener((e) view);
                }
                i iVar2 = this.f46809b;
                Subject subject = iVar2 != null ? (Subject) iVar2.getItem(i10) : null;
                ORPlayerView oRPlayerView2 = this.f46811d;
                ViewParent parent = oRPlayerView2 != null ? oRPlayerView2.getParent() : null;
                if (parent instanceof FrameLayout) {
                    ((FrameLayout) parent).removeView(this.f46811d);
                }
                ORPlayerView oRPlayerView3 = this.f46811d;
                Video videoL = l(subject);
                i iVar3 = this.f46809b;
                if (iVar3 != null && (recyclerView = iVar3.getRecyclerView()) != null) {
                    height = recyclerView.getHeight();
                }
                shortTvImmVideoItemView.addVideoView(oRPlayerView3, videoL, height);
                shortTvImmVideoItemView.videoStartPrepare(this.f46819l);
                x(shortTvImmVideoItemView, subject);
                s(i10);
            }
        }
    }

    public final void r() {
        this.f46817j = true;
    }

    public void s(int i10) {
        int i11 = this.f46813f;
        if (i11 > 0 && this.f46809b != null) {
            boolean z10 = false;
            if (1 <= i11) {
                int i12 = 1;
                while (true) {
                    int i13 = i10 + i12;
                    if (i13 >= 0 && this.f46809b.getItemCount() > i13) {
                        Subject subject = (Subject) this.f46809b.f0(i13);
                        if (subject != null && !subject.getBuiltIn()) {
                            Video videoL = l(subject);
                            if (videoL != null) {
                                wf.a.C0922a.v(wf.a.f74274a, "ShortTvImmVideoPlayer", "try preload position = " + i13 + ", duration = " + videoL.getDuration() + ", url = " + videoL.getUrl(), false, 4, null);
                                t(subject, videoL);
                            } else if (i13 == (this.f46813f + i10) - 1) {
                                z10 = true;
                            }
                        }
                        if (i12 == i11) {
                            break;
                        } else {
                            i12++;
                        }
                    } else {
                        break;
                    }
                }
            }
            if (z10) {
                n(i10);
            }
        }
    }

    public void t(Subject item, Video video) {
        Media video2;
        Cover cover;
        String url;
        Intrinsics.h(item, "item");
        Intrinsics.h(video, "video");
        String url2 = video.getUrl();
        if (url2 != null) {
            ORPlayerPreloadManager.f46433i.a().j(url2, this.f46814g);
        }
        ShortTVItem shortTVFirstEp = item.getShortTVFirstEp();
        if (shortTVFirstEp == null || (video2 = shortTVFirstEp.getVideo()) == null || (cover = video2.getCover()) == null || (url = cover.getUrl()) == null) {
            return;
        }
        ni.f.a aVar = ni.f.f67269a;
        sm.b.a aVar2 = sm.b.f72338e;
        ni.f.a.j(aVar, ni.f.a.e(aVar, url, aVar2.a(), false, true, 4, null), url, aVar2.a(), null, 8, null);
    }

    protected void u() {
        f fVar = this.f46810c;
        if (fVar != null) {
            fVar.reset();
        }
    }

    protected final void v(View view) {
        this.f46818k = view;
    }

    protected void w() {
        f fVar = this.f46810c;
        if (fVar != null) {
            fVar.stop();
        }
        f fVar2 = this.f46810c;
        if (fVar2 != null) {
            fVar2.reset();
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0095  */
    protected void x(ShortTvImmVideoItemView view, Subject subject) {
        String url;
        String url2;
        String str;
        boolean z10;
        Intrinsics.h(view, "view");
        Video videoL = l(subject);
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "ImmVideoPlayer", "play url=" + (videoL != null ? videoL.getUrl() : null) + "  width:" + (videoL != null ? videoL.getWidth() : null) + ",height:" + (videoL != null ? videoL.getHeight() : null) + ", duration: " + (videoL != null ? videoL.getDuration() : null) + ", builtIn = " + (subject != null ? Boolean.valueOf(subject.getBuiltIn()) : null), false, 4, null);
        f fVar = this.f46810c;
        if (fVar != null) {
            if (subject != null) {
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            fVar.setLooping(!z10);
        }
        if (subject == null || !subject.getBuiltIn()) {
            if (videoL == null || (url = videoL.getUrl()) == null) {
                return;
            }
            f fVar2 = this.f46810c;
            if (fVar2 != null) {
                fVar2.setDataSource(new gn.e(url, url, 0, null, null, 28, null));
            }
            f fVar3 = this.f46810c;
            if (fVar3 != null) {
                fVar3.prepare();
            }
            view.setVideoUrl(url);
            ORPlayerPreloadManager.f46433i.a().g(url);
            return;
        }
        if (videoL == null || (url2 = videoL.getUrl()) == null) {
            return;
        }
        if (StringsKt.W(url2, "main/", false, 2, null)) {
            String absolutePath = DownloadEsHelper.f57201m.a().g().getAbsolutePath();
            String title = subject.getTitle();
            if (title == null) {
                title = "";
            }
            String str2 = absolutePath + "/" + (title + ".mp4");
            videoL.setUrl(str2);
            str = str2;
        } else {
            str = url2;
        }
        wf.a.C0922a.f(c0922a, "ImmVideoPlayer", "play url= " + str, false, 4, null);
        f fVar4 = this.f46810c;
        if (fVar4 != null) {
            fVar4.setDataSource(new gn.e(str, str, 0, null, null, 28, null));
        }
        f fVar5 = this.f46810c;
        if (fVar5 != null) {
            fVar5.prepare();
        }
        view.setVideoUrl(url2);
    }
}
