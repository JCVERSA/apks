package ho;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.y;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.baselib.report.k;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.video.PostFeedVideoView;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import on.e0;
import wn.b0;
import yg.l;

public final class e extends RecyclerView.r implements a, com.transsion.player.orplayer.e, k.a {

    private final Context f61436a;

    private final Fragment f61437b;

    private final RecyclerView f61438c;

    private final com.transsion.postdetail.ui.adapter.f f61439d;

    private final String f61440e;

    private final String f61441f;

    private final boolean f61442g;

    private Boolean f61443h;

    private final int f61444i;

    private final int f61445j;

    private com.transsion.player.orplayer.f f61446k;

    private PostFeedVideoView f61447l;

    private com.transsion.postdetail.layer.b f61448m;

    private int f61449n;

    private String f61450o;

    private int f61451p;

    private long f61452q;

    private boolean f61453r;

    private b0 f61454s;

    private int f61455t;

    private float f61456u;

    public e(Context context, Fragment fragment, RecyclerView recyclerView, com.transsion.postdetail.ui.adapter.f fVar, String pageName, String subpageName, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(subpageName, "subpageName");
        this.f61436a = context;
        this.f61437b = fragment;
        this.f61438c = recyclerView;
        this.f61439d = fVar;
        this.f61440e = pageName;
        this.f61441f = subpageName;
        this.f61442g = z10;
        this.f61444i = lj.a.b(82);
        this.f61445j = lj.a.b(56);
        this.f61449n = -1;
        this.f61451p = y.a();
        this.f61453r = true;
        this.f61456u = 1.0f;
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(this);
        }
        k.f42210a.g(this);
        o();
        if (recyclerView != null) {
            recyclerView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    e.g(this.f61433a);
                }
            }, 500L);
        }
    }

    public static final void g(e eVar) {
        eVar.h();
    }

    private final void h() {
        PostSubjectItem postSubjectItem;
        List<Object> data;
        RecyclerView recyclerView = this.f61438c;
        RecyclerView.m layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null || !l.f76264a.e()) {
            return;
        }
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        IntProgression intProgressionO = this.f61455t > 0 ? RangesKt.o(iFindLastVisibleItemPosition, iFindFirstVisibleItemPosition) : new IntRange(iFindFirstVisibleItemPosition, iFindLastVisibleItemPosition);
        int first = intProgressionO.getFirst();
        int last = intProgressionO.getLast();
        int step = intProgressionO.getStep();
        if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
            return;
        }
        while (true) {
            View viewFindViewByPosition = linearLayoutManager.findViewByPosition(first);
            if (viewFindViewByPosition != null) {
                Rect rect = new Rect();
                viewFindViewByPosition.getGlobalVisibleRect(rect);
                int height = viewFindViewByPosition.getHeight();
                int iE = RangesKt.e(rect.bottom - (height / 2), rect.top);
                int i10 = (this.f61451p - this.f61444i) / 2;
                int iB = i10 - lj.a.b(200);
                int iB2 = lj.a.b(250) + i10;
                com.transsion.postdetail.ui.adapter.f fVar = this.f61439d;
                if (first >= ((fVar == null || (data = fVar.getData()) == null) ? 0 : data.size())) {
                    return;
                }
                com.transsion.postdetail.ui.adapter.f fVar2 = this.f61439d;
                if (fVar2 != null && (postSubjectItem = (PostSubjectItem) fVar2.getItem(first)) != null) {
                    if (Intrinsics.c(this.f61450o, postSubjectItem.getPostId())) {
                        wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "triggerVideoPlay position:" + first + " same ~ return", false, 4, null);
                        return;
                    }
                    if (postSubjectItem.isVideo()) {
                        View viewP0 = this.f61439d.p0(first, R$id.layout_content_video);
                        FrameLayout frameLayout = viewP0 instanceof FrameLayout ? (FrameLayout) viewP0 : null;
                        if (frameLayout == null) {
                            wf.a.C0922a.l(wf.a.f74274a, "PostFeedVideo", "triggerVideoPlay itemVideoContainer is null", false, 4, null);
                        } else {
                            wf.a.C0922a.r(wf.a.f74274a, "PostFeedVideo", new String[]{StringsKt.n("\n                checkActiveItemPosition position:" + first + ",  \n                    top:" + rect.top + ", bottom:" + rect.bottom + "\n                    screenCenterTop：" + iB + "   screenCenterBottom：" + iB2 + "\n                    itemHeight:" + height + " viewCenter:" + iE + ", screenCenter:" + i10 + "\n            ")}, false, 4, null);
                            if (Math.abs(i10 - iE) < lj.a.b(Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE)) {
                                p(first, postSubjectItem, frameLayout);
                                return;
                            }
                        }
                    }
                }
            }
            if (first == last) {
                return;
            } else {
                first += step;
            }
        }
    }

    private final void i(RecyclerView recyclerView) {
        int iFindFirstVisibleItemPosition;
        int iFindLastVisibleItemPosition;
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null || (iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition()) > (iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition())) {
            return;
        }
        while (true) {
            View viewFindViewByPosition = linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
            if (viewFindViewByPosition != null) {
                Rect rect = new Rect();
                viewFindViewByPosition.getGlobalVisibleRect(rect);
                if (rect.bottom - rect.top <= viewFindViewByPosition.getHeight() * 0.5f) {
                    m(iFindFirstVisibleItemPosition);
                }
            }
            if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                return;
            } else {
                iFindFirstVisibleItemPosition++;
            }
        }
    }

    private final void j(Context context) {
        if (this.f61446k == null) {
            PostFeedVideoView postFeedVideoView = new PostFeedVideoView(context);
            postFeedVideoView.updateMute(this.f61453r);
            postFeedVideoView.setMuteClickCallback(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return e.k(this.f61434a, ((Boolean) obj).booleanValue());
                }
            });
            postFeedVideoView.setRemovePlayerCallback(new Function0() {
                @Override
                public final Object invoke() {
                    return e.l(this.f61435a);
                }
            });
            this.f61447l = postFeedVideoView;
            com.transsion.player.orplayer.f fVarM = e0.f67859a.m();
            wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "createPlayer----", false, 4, null);
            fVarM.addPlayerListener(this);
            PostFeedVideoView postFeedVideoView2 = this.f61447l;
            fVarM.setSurfaceView(postFeedVideoView2 != null ? postFeedVideoView2.getSurfaceView() : null);
            fVarM.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
            this.f61446k = fVarM;
        }
        if (this.f61448m == null) {
            com.transsion.postdetail.layer.b bVar = new com.transsion.postdetail.layer.b();
            com.transsion.player.orplayer.f fVar = this.f61446k;
            Intrinsics.e(fVar);
            bVar.v(fVar);
            bVar.u(this.f61440e);
            bVar.z(this.f61441f);
            this.f61448m = bVar;
        }
    }

    public static final Unit k(e eVar, boolean z10) {
        wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "volume click isMute:" + z10, false, 4, null);
        eVar.f61453r = z10;
        com.transsion.player.orplayer.f fVar = eVar.f61446k;
        if (fVar != null) {
            fVar.setVolume(z10 ? 0.0f : eVar.f61456u);
        }
        return Unit.f64096a;
    }

    public static final Unit l(e eVar) {
        eVar.n();
        return Unit.f64096a;
    }

    private final void m(int i10) {
        List<Object> data;
        try {
            Result.Companion companion = Result.INSTANCE;
            PostFeedVideoView postFeedVideoView = this.f61447l;
            if ((postFeedVideoView != null ? postFeedVideoView.getParent() : null) != null && this.f61449n == i10) {
                com.transsion.postdetail.ui.adapter.f fVar = this.f61439d;
                if (i10 >= ((fVar == null || (data = fVar.getData()) == null) ? 0 : data.size())) {
                    return;
                }
                com.transsion.postdetail.ui.adapter.f fVar2 = this.f61439d;
                PostSubjectItem postSubjectItem = fVar2 != null ? (PostSubjectItem) fVar2.getItem(i10) : null;
                if (postSubjectItem != null && postSubjectItem.isVideo()) {
                    wf.a.C0922a c0922a = wf.a.f74274a;
                    Group group = postSubjectItem.getGroup();
                    String name = group != null ? group.getName() : null;
                    wf.a.C0922a.f(c0922a, "PostFeedVideo", "position：" + i10 + " --已隐藏超过50%, 移除播放器, " + name + ", " + postSubjectItem.getContent(), false, 4, null);
                    n();
                }
                Result.m453constructorimpl(Unit.f64096a);
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void n() {
        AppCompatImageView appCompatImageView;
        BLTextView bLTextView;
        ShapeableImageView shapeableImageView;
        com.transsion.postdetail.layer.b bVar = this.f61448m;
        if (bVar != null) {
            com.transsion.postdetail.layer.b.e(bVar, false, 1, null);
        }
        b0 b0Var = this.f61454s;
        if (b0Var != null && (shapeableImageView = b0Var.f74323d) != null) {
            uf.c.k(shapeableImageView);
        }
        b0 b0Var2 = this.f61454s;
        if (b0Var2 != null && (bLTextView = b0Var2.f74325f) != null) {
            uf.c.k(bLTextView);
        }
        b0 b0Var3 = this.f61454s;
        if (b0Var3 != null && (appCompatImageView = b0Var3.f74324e) != null) {
            uf.c.k(appCompatImageView);
        }
        this.f61454s = null;
        PostFeedVideoView postFeedVideoView = this.f61447l;
        ViewParent parent = postFeedVideoView != null ? postFeedVideoView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.f61447l);
        }
        com.transsion.player.orplayer.f fVar = this.f61446k;
        if (fVar != null) {
            fVar.stop();
        }
        com.transsion.player.orplayer.f fVar2 = this.f61446k;
        if (fVar2 != null) {
            fVar2.reset();
        }
        com.transsion.player.orplayer.f fVar3 = this.f61446k;
        if (fVar3 != null) {
            fVar3.clearScreen();
        }
        this.f61449n = -1;
        this.f61450o = null;
        io.d.f62274a.a();
    }

    private final void o() {
        Boolean boolM1;
        Boolean boolValueOf;
        boolean zBooleanValue = true;
        if (!Intrinsics.c(this.f61443h, Boolean.TRUE)) {
            ConfigBean configBeanC = cm.f.f17019c.a().c("sa_post_video_auto_play", true);
            String value = configBeanC != null ? configBeanC.getValue() : null;
            if (value == null || value.length() == 0) {
                boolValueOf = Boolean.FALSE;
            } else {
                Boolean boolM2 = StringsKt.m1(value);
                boolValueOf = Boolean.valueOf(boolM2 != null ? boolM2.booleanValue() : false);
            }
            this.f61443h = boolValueOf;
        }
        ConfigBean configBeanC2 = cm.f.f17019c.a().c("room_home_video_play_mute", true);
        String value2 = configBeanC2 != null ? configBeanC2.getValue() : null;
        if (value2 != null && value2.length() != 0 && (boolM1 = StringsKt.m1(value2)) != null) {
            zBooleanValue = boolM1.booleanValue();
        }
        this.f61453r = zBooleanValue;
        wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "----------------initConfig, isOpen:" + this.f61443h + "+------+isVideoMute:" + zBooleanValue, false, 4, null);
    }

    private final void p(int i10, PostSubjectItem postSubjectItem, FrameLayout frameLayout) {
        List<Video> video;
        AppCompatImageView appCompatImageView;
        FrameLayout frameLayout2;
        wf.a.C0922a c0922a = wf.a.f74274a;
        Group group = postSubjectItem.getGroup();
        Object obj = null;
        String name = group != null ? group.getName() : null;
        wf.a.C0922a.r(c0922a, "PostFeedVideo", new String[]{"-------> triggerVideoPlay 播放视频:" + i10 + ", roomName:" + name + ", " + postSubjectItem.getContent()}, false, 4, null);
        n();
        j(this.f61436a);
        b0 b0VarA = b0.a(frameLayout);
        this.f61454s = b0VarA;
        if (b0VarA != null && (frameLayout2 = b0VarA.f74321b) != null) {
            frameLayout2.addView(this.f61447l);
        }
        b0 b0Var = this.f61454s;
        if (b0Var != null && (appCompatImageView = b0Var.f74324e) != null) {
            uf.c.g(appCompatImageView);
        }
        this.f61449n = i10;
        this.f61450o = postSubjectItem.getPostId();
        com.transsion.postdetail.layer.b bVar = this.f61448m;
        if (bVar != null) {
            bVar.g();
        }
        com.transsion.postdetail.layer.b bVar2 = this.f61448m;
        if (bVar2 != null) {
            bVar2.a(0, 0);
        }
        com.transsion.postdetail.layer.b bVar3 = this.f61448m;
        if (bVar3 != null) {
            bVar3.x(postSubjectItem.getPostId(), postSubjectItem);
        }
        Media media = postSubjectItem.getMedia();
        if (media == null || (video = media.getVideo()) == null) {
            return;
        }
        for (Object obj2 : video) {
            String url = ((Video) obj2).getUrl();
            if (!(url == null || url.length() == 0)) {
                obj = obj2;
                break;
            }
        }
        Video video2 = (Video) obj;
        if (video2 != null) {
            Integer duration = video2.getDuration();
            if (duration != null) {
                int iIntValue = duration.intValue();
                PostFeedVideoView postFeedVideoView = this.f61447l;
                if (postFeedVideoView != null) {
                    postFeedVideoView.setDurationTime(((long) iIntValue) * 1000);
                }
            }
            wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "triggerVideoPlay updateMute:" + this.f61453r, false, 4, null);
            PostFeedVideoView postFeedVideoView2 = this.f61447l;
            if (postFeedVideoView2 != null) {
                postFeedVideoView2.updateMute(this.f61453r);
            }
            String url2 = video2.getUrl();
            if (url2 != null) {
                com.transsion.postdetail.layer.b bVar4 = this.f61448m;
                if (bVar4 != null) {
                    bVar4.A(url2);
                }
                com.transsion.player.orplayer.f fVar = this.f61446k;
                if (fVar != null) {
                    fVar.setDataSource(new gn.e(url2, url2, 0, null, null, 28, null));
                }
                com.transsion.player.orplayer.f fVar2 = this.f61446k;
                if (fVar2 != null) {
                    fVar2.prepare();
                }
            }
        }
    }

    @Override
    public void a() {
        wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "onSetFirstData--checkActiveItemPosition", false, 4, null);
        h();
    }

    @Override
    public void b() {
        com.transsion.player.orplayer.f fVar;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "PostFeedVideo", "onPagePause--", false, 4, null);
        com.transsion.player.orplayer.f fVar2 = this.f61446k;
        if (fVar2 != null) {
            fVar2.pause();
        }
        String str = this.f61450o;
        if (str == null || (fVar = this.f61446k) == null) {
            return;
        }
        long currentPosition = fVar.getCurrentPosition();
        if (currentPosition > 0) {
            wf.a.C0922a.v(c0922a, "PostFeedVideo", "==feedvideo savePlayProgress:" + currentPosition, false, 4, null);
            io.d.f62274a.c(str, currentPosition);
        }
    }

    @Override
    public void c() {
        Long lB;
        o();
        String str = this.f61450o;
        if (str != null && (lB = io.d.f62274a.b(str)) != null) {
            long jLongValue = lB.longValue();
            if (jLongValue > 0) {
                wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "==onPageResume seekTo:" + jLongValue, false, 4, null);
                com.transsion.player.orplayer.f fVar = this.f61446k;
                if (fVar != null) {
                    fVar.seekTo(jLongValue);
                }
            }
        }
        wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "onPageResume play", false, 4, null);
        com.transsion.player.orplayer.f fVar2 = this.f61446k;
        if (fVar2 != null) {
            fVar2.play();
        }
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
    }

    @Override
    public void onBackgroundStatusChange(boolean z10) {
        com.transsion.postdetail.layer.b bVar;
        if (z10 && (bVar = this.f61448m) != null) {
            bVar.d(true);
        }
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e eVar) {
        com.transsion.player.orplayer.e.a.e(this, eVar);
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
        com.transsion.postdetail.layer.b bVar = this.f61448m;
        if (bVar != null) {
            bVar.h();
        }
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        com.transsion.postdetail.layer.b bVar = this.f61448m;
        if (bVar != null) {
            bVar.i();
        }
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
    public void onPageDestroy() {
        wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "onPageDestroy", false, 4, null);
        RecyclerView recyclerView = this.f61438c;
        if (recyclerView != null) {
            recyclerView.removeOnScrollListener(this);
        }
        com.transsion.player.orplayer.f fVar = this.f61446k;
        if (fVar != null) {
            fVar.removePlayerListener(this);
        }
        com.transsion.player.orplayer.f fVar2 = this.f61446k;
        if (fVar2 != null) {
            fVar2.stop();
        }
        com.transsion.player.orplayer.f fVar3 = this.f61446k;
        if (fVar3 != null) {
            fVar3.reset();
        }
        com.transsion.player.orplayer.f fVar4 = this.f61446k;
        if (fVar4 != null) {
            fVar4.release();
        }
        this.f61446k = null;
        PostFeedVideoView postFeedVideoView = this.f61447l;
        ViewParent parent = postFeedVideoView != null ? postFeedVideoView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.f61447l);
        }
        this.f61447l = null;
        io.d.f62274a.a();
        k.f42210a.t(this);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.postdetail.layer.b bVar = this.f61448m;
        if (bVar != null) {
            bVar.k(errorInfo);
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
    public void onPrepare(gn.e eVar) {
        Float volume;
        wf.a.C0922a.v(wf.a.f74274a, "PostFeedVideo", "----------onPrepare Position:" + this.f61449n + "， isVideoMute：" + this.f61453r, false, 4, null);
        com.transsion.player.orplayer.f fVar = this.f61446k;
        if (fVar != null) {
            fVar.setLooping(true);
        }
        com.transsion.player.orplayer.f fVar2 = this.f61446k;
        if (fVar2 != null) {
            fVar2.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
        }
        PostFeedVideoView postFeedVideoView = this.f61447l;
        if (postFeedVideoView != null) {
            com.transsion.player.orplayer.f fVar3 = this.f61446k;
            postFeedVideoView.setProgressMax(fVar3 != null ? (int) fVar3.getDuration() : 100);
        }
        if (!this.f61437b.isResumed() || this.f61437b.isHidden()) {
            com.transsion.player.orplayer.f fVar4 = this.f61446k;
            if (fVar4 != null) {
                fVar4.pause();
            }
        } else {
            com.transsion.player.orplayer.f fVar5 = this.f61446k;
            if (fVar5 != null) {
                fVar5.play();
            }
        }
        if (!this.f61453r) {
            com.transsion.player.orplayer.f fVar6 = this.f61446k;
            this.f61456u = (fVar6 == null || (volume = fVar6.getVolume()) == null) ? 1.0f : volume.floatValue();
        }
        com.transsion.player.orplayer.f fVar7 = this.f61446k;
        if (fVar7 != null) {
            fVar7.setVolume(this.f61453r ? 0.0f : 1.0f);
        }
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        PostFeedVideoView postFeedVideoView = this.f61447l;
        if (postFeedVideoView != null) {
            postFeedVideoView.setProgress((int) j10);
        }
        com.transsion.postdetail.layer.b bVar = this.f61448m;
        if (bVar != null) {
            bVar.l(j10);
        }
    }

    @Override
    public void onRenderFirstFrame() {
        BLTextView bLTextView;
        ShapeableImageView shapeableImageView;
        wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "-----onRenderFirstFrame Position:" + this.f61449n, false, 4, null);
        com.transsion.postdetail.layer.b bVar = this.f61448m;
        if (bVar != null) {
            bVar.m();
        }
        PostFeedVideoView postFeedVideoView = this.f61447l;
        if (postFeedVideoView != null) {
            postFeedVideoView.setProgress(0);
        }
        b0 b0Var = this.f61454s;
        if (b0Var != null && (shapeableImageView = b0Var.f74323d) != null) {
            uf.c.g(shapeableImageView);
        }
        b0 b0Var2 = this.f61454s;
        if (b0Var2 == null || (bLTextView = b0Var2.f74325f) == null) {
            return;
        }
        uf.c.g(bLTextView);
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, i10);
        if (Intrinsics.c(this.f61443h, Boolean.TRUE) && i10 == 0) {
            h();
        }
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i10, i11);
        if (Intrinsics.c(this.f61443h, Boolean.TRUE)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f61452q < 100) {
                return;
            }
            this.f61452q = jCurrentTimeMillis;
            i(recyclerView);
            this.f61455t = i11;
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
        com.transsion.postdetail.layer.b bVar = this.f61448m;
        if (bVar != null) {
            bVar.n();
        }
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        wf.a.C0922a.f(wf.a.f74274a, "PostFeedVideo", "-----onVideoStart Position:" + this.f61449n, false, 4, null);
        com.transsion.postdetail.layer.b bVar = this.f61448m;
        if (bVar != null) {
            bVar.o();
        }
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }
}
