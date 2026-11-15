package com.transsion.postdetail.control;

import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.transsion.baselib.report.k;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.player.orplayer.e;
import com.transsion.player.orplayer.f;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.ui.adapter.d;
import com.transsion.postdetail.ui.view.ImmVideoItemView;
import com.transsion.postdetail.util.t;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsnet.downloader.manager.DownloadEsHelper;
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
import yg.l;

public abstract class VideoPagerChangeControl extends gr.a implements r, k.a {

    public static final a f46822o = new a(null);

    private final Fragment f46823a;

    private boolean f46824b;

    private final d f46825c;

    private final f f46826d;

    private final ORPlayerView f46827e;

    private PagerLayoutManager f46828f;

    private String f46829g;

    private final int f46830h;

    private final long f46831i;

    private int f46832j;

    private boolean f46833k;

    private boolean f46834l;

    private View f46835m;

    private boolean f46836n;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public class b {

        public static final int[] f46837a;

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
            f46837a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.control.VideoPagerChangeControl$onStateChanged$1", f = "VideoPagerChangeControl.kt", l = {}, m = "invokeSuspend")
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

    public VideoPagerChangeControl(Fragment fragment, boolean z10, d dVar, f fVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager, String str) {
        Intrinsics.h(fragment, "fragment");
        this.f46823a = fragment;
        this.f46824b = z10;
        this.f46825c = dVar;
        this.f46826d = fVar;
        this.f46827e = oRPlayerView;
        this.f46828f = pagerLayoutManager;
        this.f46829g = str;
        this.f46830h = 3;
        this.f46831i = 3000L;
        this.f46833k = true;
        fragment.getLifecycle().a(this);
        i();
    }

    private final void g() {
        t6.f fVarH0;
        d dVar = this.f46825c;
        if (((dVar == null || (fVarH0 = dVar.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail && l.f76264a.e()) {
            wf.a.C0922a.f(wf.a.f74274a, "ImmVideoPlayer", "current is fail, try load more", false, 4, null);
            this.f46825c.h0().w();
        }
    }

    private final void i() {
        k.f42210a.g(this);
    }

    private final void j(int i10) {
        PostSubjectItem postSubjectItem;
        d dVar = this.f46825c;
        if (dVar == null || (postSubjectItem = (PostSubjectItem) dVar.f0(i10 + this.f46830h)) == null) {
            return;
        }
        Media media = postSubjectItem.getMedia();
        Video videoA = t.a(media != null ? media.getVideo() : null);
        if (videoA == null) {
            return;
        }
        p(postSubjectItem, videoA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void m(int i10, View view) {
        ORPlayerView oRPlayerView;
        this.f46835m = view;
        wf.a.C0922a.f(wf.a.f74274a, "ImmVideoPlayer", "on page select position = " + i10, false, 4, null);
        f fVar = this.f46826d;
        if (fVar != null) {
            fVar.reset();
        }
        if (i10 >= 0) {
            d dVar = this.f46825c;
            if ((dVar != null ? dVar.getItemCount() : 0) > i10 && (view instanceof ImmVideoItemView)) {
                ImmVideoItemView immVideoItemView = (ImmVideoItemView) view;
                immVideoItemView.setPosition(Integer.valueOf(i10));
                f fVar2 = this.f46826d;
                if (fVar2 != null && (oRPlayerView = this.f46827e) != null) {
                    immVideoItemView.setPlayer(fVar2, oRPlayerView);
                }
                PagerLayoutManager pagerLayoutManager = this.f46828f;
                if (pagerLayoutManager != null) {
                    immVideoItemView.setPagerLayoutManager(pagerLayoutManager);
                }
                f fVar3 = this.f46826d;
                if (fVar3 != null) {
                    fVar3.setPlayerListener((e) view);
                }
                d dVar2 = this.f46825c;
                PostSubjectItem postSubjectItem = dVar2 != null ? (PostSubjectItem) dVar2.getItem(i10) : null;
                ORPlayerView oRPlayerView2 = this.f46827e;
                ViewParent parent = oRPlayerView2 != null ? oRPlayerView2.getParent() : null;
                if (parent instanceof FrameLayout) {
                    ((FrameLayout) parent).removeView(this.f46827e);
                }
                immVideoItemView.getPlayerContainer().addView(this.f46827e, new FrameLayout.LayoutParams(-1, -1));
                if (this.f46824b) {
                    this.f46824b = false;
                    immVideoItemView.showCommentDialog();
                }
                immVideoItemView.videoStartPrepare(this.f46829g);
                q(immVideoItemView, postSubjectItem);
                o(i10);
            }
        }
    }

    private final void o(int i10) {
        int i11 = this.f46830h;
        if (i11 > 0 && this.f46825c != null) {
            boolean z10 = false;
            if (1 <= i11) {
                int i12 = 1;
                while (true) {
                    int i13 = i10 + i12;
                    if (i13 >= 0 && this.f46825c.getItemCount() > i13) {
                        PostSubjectItem postSubjectItem = (PostSubjectItem) this.f46825c.f0(i13);
                        if (postSubjectItem != null && !postSubjectItem.getBuiltIn()) {
                            Media media = postSubjectItem.getMedia();
                            Video videoA = t.a(media != null ? media.getVideo() : null);
                            if (videoA != null) {
                                wf.a.C0922a.v(wf.a.f74274a, "ImmVideoPlayer", "try preload position = " + i13 + ", duration = " + videoA.getDuration() + ", url = " + videoA.getUrl(), false, 4, null);
                                p(postSubjectItem, videoA);
                            } else if (i13 == (this.f46830h + i10) - 1) {
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
                j(i10);
            }
        }
    }

    private final void p(PostSubjectItem postSubjectItem, Video video) {
        FirstFrame firstFrame;
        String url;
        String url2 = video.getUrl();
        if (url2 != null) {
            ORPlayerPreloadManager.f46433i.a().j(url2, this.f46831i);
        }
        Media media = postSubjectItem.getMedia();
        if (media == null || (firstFrame = media.getFirstFrame()) == null || (url = firstFrame.getUrl()) == null) {
            return;
        }
        ni.f.a aVar = ni.f.f67269a;
        sm.b.a aVar2 = sm.b.f72338e;
        ni.f.a.j(aVar, ni.f.a.e(aVar, url, aVar2.a(), false, true, 4, null), url, aVar2.a(), null, 8, null);
    }

    @Override
    public void d(View view) {
        PagerLayoutManager pagerLayoutManager = this.f46828f;
        if (pagerLayoutManager != null) {
            int iFindFirstVisibleItemPosition = pagerLayoutManager.findFirstVisibleItemPosition();
            wf.a.C0922a.v(wf.a.f74274a, "ImmVideoPlayer", "onInitComplete, position = " + iFindFirstVisibleItemPosition + ", ----- currentPosition = " + this.f46832j, false, 4, null);
            if (this.f46832j == iFindFirstVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition != -1) {
                this.f46832j = iFindFirstVisibleItemPosition;
            }
            m(this.f46832j, view);
        }
    }

    @Override
    public void e(boolean z10, int i10, View view) {
        wf.a.C0922a.v(wf.a.f74274a, "ImmVideoPlayer", "onPageRelease, position = " + i10 + ", ----- currentPosition = " + this.f46832j, false, 4, null);
        if (i10 == this.f46832j) {
            f fVar = this.f46826d;
            if (fVar != null) {
                fVar.stop();
            }
            f fVar2 = this.f46826d;
            if (fVar2 != null) {
                fVar2.reset();
            }
            ORPlayerView oRPlayerView = this.f46827e;
            ViewParent parent = oRPlayerView != null ? oRPlayerView.getParent() : null;
            if (parent instanceof FrameLayout) {
                ((FrameLayout) parent).removeView(this.f46827e);
            }
        }
    }

    @Override
    public void f(int i10, boolean z10, View view) {
        g();
        wf.a.C0922a.f(wf.a.f74274a, "ImmVideoPlayer", "onPageSelected, position = " + i10 + ", ----- currentPosition = " + this.f46832j, false, 4, null);
        if (this.f46832j != i10 || this.f46834l) {
            this.f46834l = false;
            this.f46832j = i10;
            ImmVideoHelper.a aVar = ImmVideoHelper.f46840h;
            if (aVar.a().n()) {
                aVar.a().t();
            }
            m(i10, view);
        }
    }

    public final int h() {
        return this.f46832j;
    }

    public final void k() {
        if (this.f46833k) {
            this.f46833k = false;
            o(this.f46832j);
        }
    }

    public final void l(boolean z10) {
        this.f46836n = z10;
        if (z10) {
            View view = this.f46835m;
            ImmVideoItemView immVideoItemView = view instanceof ImmVideoItemView ? (ImmVideoItemView) view : null;
            if (immVideoItemView != null) {
                immVideoItemView.app2Background();
            }
        }
    }

    public final void n() {
        this.f46834l = true;
    }

    @Override
    public void onBackgroundStatusChange(boolean z10) {
        if (z10 && !this.f46836n) {
            View view = this.f46835m;
            ImmVideoItemView immVideoItemView = view instanceof ImmVideoItemView ? (ImmVideoItemView) view : null;
            if (immVideoItemView != null) {
                immVideoItemView.app2Background();
            }
        }
    }

    @Override
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        int i10 = b.f46837a[event.ordinal()];
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
            this.f46835m = null;
            this.f46823a.getLifecycle().d(this);
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass1(null), 3, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a7  */
    protected final void q(ImmVideoItemView view, PostSubjectItem postSubjectItem) {
        String url;
        String url2;
        String str;
        boolean z10;
        Subject subject;
        Media media;
        Intrinsics.h(view, "view");
        Video videoA = t.a((postSubjectItem == null || (media = postSubjectItem.getMedia()) == null) ? null : media.getVideo());
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "ImmVideoPlayer", "play url=" + (videoA != null ? videoA.getUrl() : null) + "  width:" + (videoA != null ? videoA.getWidth() : null) + ",height:" + (videoA != null ? videoA.getHeight() : null) + ", duration: " + (videoA != null ? videoA.getDuration() : null) + ", builtIn = " + (postSubjectItem != null ? Boolean.valueOf(postSubjectItem.getBuiltIn()) : null), false, 4, null);
        f fVar = this.f46826d;
        if (fVar != null) {
            if (postSubjectItem == null || (subject = postSubjectItem.getSubject()) == null) {
                z10 = false;
            } else {
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            fVar.setLooping(!z10);
        }
        if (postSubjectItem == null || !postSubjectItem.getBuiltIn()) {
            if (videoA == null || (url = videoA.getUrl()) == null) {
                return;
            }
            f fVar2 = this.f46826d;
            if (fVar2 != null) {
                fVar2.setDataSource(new gn.e(url, url, 0, null, null, 28, null));
            }
            f fVar3 = this.f46826d;
            if (fVar3 != null) {
                fVar3.prepare();
            }
            view.setVideoUrl(url);
            ORPlayerPreloadManager.f46433i.a().g(url);
            return;
        }
        if (videoA == null || (url2 = videoA.getUrl()) == null) {
            return;
        }
        if (StringsKt.W(url2, "main/", false, 2, null)) {
            String absolutePath = DownloadEsHelper.f57201m.a().g().getAbsolutePath();
            String title = postSubjectItem.getTitle();
            if (title == null) {
                Subject subject2 = postSubjectItem.getSubject();
                String title2 = subject2 != null ? subject2.getTitle() : null;
                title = title2 == null ? "" : title2;
            }
            String str2 = absolutePath + "/" + (title + ".mp4");
            videoA.setUrl(str2);
            str = str2;
        } else {
            str = url2;
        }
        wf.a.C0922a.f(c0922a, "ImmVideoPlayer", "play url= " + str, false, 4, null);
        f fVar4 = this.f46826d;
        if (fVar4 != null) {
            fVar4.setDataSource(new gn.e(str, str, 0, null, null, 28, null));
        }
        f fVar5 = this.f46826d;
        if (fVar5 != null) {
            fVar5.prepare();
        }
        view.setVideoUrl(url2);
    }
}
