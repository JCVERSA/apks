package com.mgtv.ssp.feed.viewcard;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.log.e;
import com.hunantv.imgo.net.a;
import com.hunantv.imgo.util.ThreadManager;
import com.hunantv.imgo.util.k;
import com.hunantv.imgo.util.t;
import com.hunantv.imgo.util.y;
import com.mgmi.ssp.NativeExpressADView;
import com.mgtv.ssp.R;
import com.mgtv.ssp.activity.SspCommonWebActivity;
import com.mgtv.ssp.adapter.AdHolder;
import com.mgtv.ssp.adapter.BaseHolder;
import com.mgtv.ssp.adapter.BaseVideoAdapter;
import com.mgtv.ssp.adapter.listener.OnItemChildClickListener;
import com.mgtv.ssp.auth.EntranceInfo;
import com.mgtv.ssp.auth.b;
import com.mgtv.ssp.bean.VideoBean;
import com.mgtv.ssp.bean.VideoInfoBean;
import com.mgtv.ssp.bean.config.SspSdkConfig;
import com.mgtv.ssp.c;
import com.mgtv.ssp.control.GestureVideoController;
import com.mgtv.ssp.d;
import com.mgtv.ssp.feed.adapter.FeedRecyclerViewAdapter;
import com.mgtv.ssp.feed.control.FeedVideoController;
import com.mgtv.ssp.fragment.BaseListFragment;
import com.mgtv.ssp.net.FeedBaseHttpParamas;
import com.mgtv.ssp.play.MediaInfo;
import com.mgtv.ssp.play.PlayErrorView;
import com.mgtv.ssp.play.PlayerCore;
import com.mgtv.ssp.play.playsdk.PlayListener;
import com.mgtv.ssp.play.playsdk.PlayerVideoInfo;
import com.mgtv.ssp.viewcard.BaseVideoListView;
import com.mgtv.ssp.viewcard.BaseView;
import com.mgtv.ssp.widget.FeedVodBottomControlView;
import com.mgtv.ssp.widget.GestureView;
import com.mgtv.ssp.widget.LoadMoreRecycleView;
import com.mgtv.ssp.widget.VideoLoadingView;
import com.mgtv.task.http.HttpParams;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.utils.f;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FeedVideoView extends BaseVideoListView implements OnItemChildClickListener {
    private String G;
    private boolean H;
    private VideoLoadingView I;
    private View J;
    private FeedVodBottomControlView K;
    private boolean L;
    private MediaInfo M;
    private boolean N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private int R;
    private boolean S;
    private View T;
    private int U;
    private boolean V;
    private MyRecycleScrollTopScroller W;
    LinearLayoutManager a;
    private boolean aa;
    private VideoLoadingView ab;
    LinearLayout b;

    public FeedVideoView(@NonNull Context context) {
        this(context, null);
    }

    private void setVideoLoadingText(VideoInfoBean videoInfoBean) {
        VideoLoadingView videoLoadingView;
        SspSdkConfig sspSdkConfigE = b.a().e();
        if (sspSdkConfigE == null || sspSdkConfigE.getShowLoading() != 1 || (videoLoadingView = this.ab) == null) {
            return;
        }
        videoLoadingView.show(sspSdkConfigE.getLoadingTitle(), videoInfoBean.getTitle());
    }

    @Override
    public void destroy() {
        super.destroy();
        RecyclerView.Adapter adapter = this.h;
        if (adapter instanceof BaseVideoAdapter) {
            ((BaseVideoAdapter) adapter).b();
        }
    }

    @Override
    public int getLayoutResId() {
        return R.layout.feed_list_view;
    }

    @Override
    public String getModType() {
        return "card";
    }

    @Override
    public String getRetryUrl() {
        return a.l() + "/api/feed/card";
    }

    @Override
    public String getUrl() {
        return com.mgtv.ssp.net.a.a(3);
    }

    @Override
    public boolean onBackPress() {
        if (!this.c) {
            return false;
        }
        this.c = false;
        VideoSDKReport.a().y();
        com.hunantv.imgo.util.b.f(false);
        l();
        return true;
    }

    @Override
    public void onItemChildClick(Object obj) {
    }

    @Override
    public void onPause() {
        super.onPause();
        PlayerCore playerCore = this.p;
        if (playerCore != null) {
            playerCore.gotoBackground();
        }
        pause();
    }

    @Override
    public void onResume() {
        super.onResume();
        h();
        if (this.c) {
            ThreadManager.post(new Runnable() {
                @Override
                public void run() {
                    if (((BaseVideoListView) FeedVideoView.this).h instanceof BaseVideoAdapter) {
                        ((BaseVideoAdapter) ((BaseVideoListView) FeedVideoView.this).h).b(true);
                    }
                }
            }, 500);
        } else {
            RecyclerView.Adapter adapter = this.h;
            if (adapter instanceof BaseVideoAdapter) {
                ((BaseVideoAdapter) adapter).b(true);
            }
        }
        try {
            if (this.c) {
                this.x.setRequestedOrientation(0);
                t.a(this.x, true);
            }
        } catch (Throwable unused) {
        }
        resume();
    }

    @Override
    public void onRetryItemChildClick() {
    }

    @Override
    public void onViewConfigChanged(Configuration configuration) {
        RecyclerView.Adapter adapter = this.h;
        if (adapter instanceof BaseVideoAdapter) {
            ((BaseVideoAdapter) adapter).c(this.c);
        }
    }

    @Override
    public void pause() {
        PlayerCore playerCore = this.p;
        if (playerCore != null) {
            playerCore.onActivityStop();
        }
    }

    @Override
    public void resume() {
        if (this.p != null && v() && getRealVisible()) {
            if (this.p.getIsPausedByUser()) {
                this.p.onActivityStart(false);
            } else {
                PlayErrorView playErrorView = this.l;
                this.p.onActivityStart(playErrorView == null || playErrorView.getView() == null || this.l.getView().getVisibility() != 0 || !this.l.getView().isAttachedToWindow());
            }
        }
    }

    @Override
    public void start() {
        List<VideoBean> list;
        this.F = true;
        if (v() || (list = this.d) == null || list.size() == 0) {
            return;
        }
        a(0, true, false);
    }

    public FeedVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void A() {
        ThreadManager.post(new Runnable() {
            @Override
            public void run() {
                if (FeedVideoView.this.V) {
                    FeedVideoView.this.V = false;
                    if (((BaseVideoListView) FeedVideoView.this).h instanceof BaseVideoAdapter) {
                        ((BaseVideoAdapter) ((BaseVideoListView) FeedVideoView.this).h).i(((BaseVideoListView) FeedVideoView.this).n);
                        return;
                    }
                    return;
                }
                if (FeedVideoView.this.aa) {
                    FeedVideoView.this.aa = false;
                    if (((BaseVideoListView) FeedVideoView.this).p == null || ((BaseVideoListView) FeedVideoView.this).p.isPlaying()) {
                        return;
                    }
                    System.out.println("eeee scrollToPosition pos <= firstItem  mWrapper.play() 22 " + ((BaseVideoListView) FeedVideoView.this).n);
                    ((BaseVideoListView) FeedVideoView.this).p.play();
                }
            }
        }, 500);
    }

    public void w() {
        if (this.p == null) {
            return;
        }
        x();
        if (this.p.isFullScreen()) {
            this.p.switchFullScreen(false);
        }
    }

    public void x() {
        PlayerCore playerCore = this.p;
        if (playerCore == null) {
            return;
        }
        y.a(playerCore.getDisplayView());
        this.p.stop();
        this.p.setPlayState(0);
    }

    private void y() {
        Activity activity;
        if (this.R != -999 || (activity = this.x) == null || activity.isFinishing() || this.x.isDestroyed()) {
            return;
        }
        try {
            this.R = this.x.getWindow().getDecorView().getSystemUiVisibility();
        } catch (Throwable unused) {
        }
    }

    public void z() {
        if (this.c) {
            this.K.onPlayerStateChanged(11);
            VideoSDKReport.a().y();
            l();
        } else {
            this.K.onPlayerStateChanged(10);
            VideoSDKReport.a().z();
            k();
        }
    }

    @Override
    public void g() {
        RecyclerView.Adapter adapter = this.h;
        if (adapter instanceof BaseVideoAdapter) {
            ((BaseVideoAdapter) adapter).b(false);
        }
        pause();
    }

    public void h() {
        PlayerCore playerCore = this.p;
        if (playerCore != null) {
            playerCore.backToFront();
        }
    }

    @Override
    public void i() {
        VideoLoadingView videoLoadingView = this.I;
        if (videoLoadingView != null) {
            videoLoadingView.setVisibility(8);
        }
    }

    @Override
    public void j() {
        VideoLoadingView videoLoadingView = this.I;
        if (videoLoadingView != null) {
            videoLoadingView.setVisibility(0);
            SspSdkConfig sspSdkConfigE = b.a().e();
            if (sspSdkConfigE == null || sspSdkConfigE.getShowLoading() != 1) {
                return;
            }
            this.I.show(sspSdkConfigE.getLoadingTitle(), "");
        }
    }

    @Override
    public void k() {
        PlayerCore playerCore = this.p;
        if (playerCore == null || this.x == null) {
            return;
        }
        this.c = true;
        this.P = true;
        playerCore.setScreenStatusValue(true);
        com.hunantv.imgo.util.b.f(true);
        View viewFindViewByPosition = this.i.findViewByPosition(this.n);
        this.T = viewFindViewByPosition;
        if (viewFindViewByPosition == null || viewFindViewByPosition.getTag() == null || !(viewFindViewByPosition.getTag() instanceof FeedRecyclerViewAdapter.VideoHolder)) {
            return;
        }
        this.K.onPlayerStateChanged(11);
        this.x.setRequestedOrientation(0);
        FeedRecyclerViewAdapter.VideoHolder videoHolder = (FeedRecyclerViewAdapter.VideoHolder) viewFindViewByPosition.getTag();
        System.out.println("eeee  toLandScreen   mCurPos " + this.n + " parent " + videoHolder.a + " /n VideoHolder itemView " + viewFindViewByPosition);
        f.a(videoHolder.a, this.p.getDisplayView());
        FeedVodBottomControlView feedVodBottomControlView = this.K;
        int i = videoHolder.e;
        feedVodBottomControlView.a(i, true, b(i));
        t.a(this.x, true);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        ViewGroup viewGroup = (ViewGroup) this.x.findViewById(android.R.id.content);
        LinearLayout linearLayout = this.b;
        if (linearLayout == null) {
            LinearLayout linearLayout2 = new LinearLayout(this.x);
            this.b = linearLayout2;
            linearLayout2.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                }
            });
            this.b.setBackgroundColor(-16777216);
        } else if (linearLayout.getParent() != null) {
            f.a(viewGroup, this.b);
        }
        f.a(viewGroup, this.b, layoutParams);
        f.a(viewGroup, this.p.getDisplayView(), layoutParams);
        if (this.p.getDisplayView() != null) {
            this.p.getDisplayView().setBackgroundColor(-16777216);
        }
        b(true);
    }

    @Override
    public void l() {
        PlayerCore playerCore = this.p;
        if (playerCore == null || this.x == null) {
            return;
        }
        this.c = false;
        final boolean zIsPlaying = playerCore.isPlaying();
        this.K.onPlayerStateChanged(10);
        this.x.setRequestedOrientation(1);
        ViewGroup viewGroup = (ViewGroup) this.x.findViewById(android.R.id.content);
        f.a(viewGroup, this.b);
        t.a(this.x, false);
        View viewFindViewByPosition = this.i.findViewByPosition(this.n);
        if (viewFindViewByPosition == null) {
            viewFindViewByPosition = this.T;
        }
        this.p.setScreenStatusValue(false);
        b(false);
        if (viewFindViewByPosition == null || viewFindViewByPosition.getTag() == null || !(viewFindViewByPosition.getTag() instanceof FeedRecyclerViewAdapter.VideoHolder)) {
            if (viewFindViewByPosition == null || viewFindViewByPosition.getTag() == null || !(viewFindViewByPosition.getTag() instanceof AdHolder)) {
                return;
            }
            AdHolder adHolder = (AdHolder) viewFindViewByPosition.getTag();
            HashMap<Integer, NativeExpressADView> mapD = ((BaseVideoAdapter) this.h).d();
            if (adHolder.b != null && mapD != null && mapD.containsKey(Integer.valueOf(this.n))) {
                if (mapD.get(Integer.valueOf(this.n)) != null) {
                    NativeExpressADView nativeExpressADView = mapD.get(Integer.valueOf(this.n));
                    if (nativeExpressADView != null) {
                        f.a(viewGroup, nativeExpressADView.getView());
                        adHolder.b.removeAllViews();
                        ((BaseVideoAdapter) this.h).a(this.n, false);
                        View view = nativeExpressADView.getView();
                        f.a((ViewGroup) view.getParent(), view);
                        adHolder.b.addView(view);
                        this.V = true;
                        ThreadManager.post(new Runnable() {
                            @Override
                            public void run() {
                                FeedVideoView feedVideoView = FeedVideoView.this;
                                feedVideoView.d(((BaseVideoListView) feedVideoView).n, false, true);
                            }
                        }, 100);
                        return;
                    }
                    ((BaseVideoAdapter) this.h).a(((FeedRecyclerViewAdapter) this.h).a(this.n), this.n, adHolder);
                } else {
                    ((BaseVideoAdapter) this.h).a(((FeedRecyclerViewAdapter) this.h).a(this.n), this.n, adHolder);
                }
            }
            try {
                x();
                RecyclerView.Adapter adapter = this.h;
                if (adapter instanceof BaseVideoAdapter) {
                    if (this.Q) {
                        this.Q = false;
                        adapter.notifyDataSetChanged();
                    } else {
                        ((BaseVideoAdapter) adapter).b(this.n + 1, false);
                    }
                    ((BaseVideoAdapter) this.h).i(this.n);
                }
                e.b(this.G, "在播放广告item ", true);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        f.a(viewGroup, this.p.getDisplayView());
        FeedRecyclerViewAdapter.VideoHolder videoHolder = (FeedRecyclerViewAdapter.VideoHolder) viewFindViewByPosition.getTag();
        PrintStream printStream = System.out;
        printStream.println("eeee  toPortrait   mCurPos " + this.n + " parent " + videoHolder.a + " /n VideoHolder itemView " + viewFindViewByPosition);
        FeedVodBottomControlView feedVodBottomControlView = this.K;
        int i = videoHolder.e;
        feedVodBottomControlView.a(i, false, b(i));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        f.a(videoHolder.a, this.p.getDisplayView(), layoutParams);
        if (this.p.getDisplayView() != null) {
            this.p.getDisplayView().setBackgroundColor(-16777216);
        }
        this.p.setScreenStatus(new PlayerCore.ScreenStatusFetcher() {
            @Override
            public int isFull() {
                return ((BaseVideoListView) FeedVideoView.this).c ? 1 : 0;
            }
        });
        if (this.Q) {
            this.Q = false;
            printStream.println("eeee  toPortrait   notifyDataSetChanged  isAdShowed " + this.n + " parent " + videoHolder.a + " /n VideoHolder itemView " + viewFindViewByPosition);
            ((BaseVideoAdapter) this.h).c(false);
        } else {
            printStream.println("eeee  toPortrait   noticeLoadScreenChanged   " + this.n + " parent " + videoHolder.a + " /n VideoHolder itemView " + viewFindViewByPosition);
            ((BaseVideoAdapter) this.h).b(this.n + 1, false);
        }
        this.aa = zIsPlaying;
        if (!this.N) {
            ThreadManager.post(new Runnable() {
                @Override
                public void run() {
                    if (!zIsPlaying) {
                        ((BaseVideoListView) FeedVideoView.this).p.pause();
                    } else {
                        if (((BaseVideoListView) FeedVideoView.this).p.isPlaying()) {
                            return;
                        }
                        ((BaseVideoListView) FeedVideoView.this).p.play();
                    }
                }
            });
        } else {
            this.N = false;
            ThreadManager.post(new Runnable() {
                @Override
                public void run() {
                    FeedVideoView feedVideoView = FeedVideoView.this;
                    feedVideoView.d(((BaseVideoListView) feedVideoView).n, false, true);
                }
            }, 100);
        }
    }

    @Override
    public void m() {
        if (!this.c) {
            super.m();
            return;
        }
        int i = BaseVideoListView.s;
        this.U = i;
        this.L = true;
        b(i, false, false);
    }

    @Override
    public void onItemChildClick(int i) {
        System.out.println("onitemchildclick " + this.p.getPlayerStatus());
        PlayerCore playerCore = this.p;
        if (playerCore == null || this.n != i || playerCore.getPlayerStatus() <= 0 || this.p.getPlayerStatus() > 9) {
            this.L = true;
            this.S = true;
            a(i, true, false);
            PlayerCore playerCore2 = this.p;
            if (playerCore2 != null) {
                playerCore2.setPlayClicked(true);
            }
        }
    }

    public FeedVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.G = "FeedFragment";
        this.R = -999;
        this.U = -1;
        this.a = new LinearLayoutManager(getContext()) {
            @Override
            public boolean canScrollVertically() {
                return true;
            }
        };
        this.ab = null;
    }

    @Override
    public RecyclerView.Adapter b() {
        return new FeedRecyclerViewAdapter(this.d);
    }

    @Override
    public LinearLayoutManager c() {
        if (this.a == null) {
            this.a = new LinearLayoutManager(getContext()) {
                @Override
                public boolean canScrollVertically() {
                    return true;
                }
            };
        }
        return this.a;
    }

    @Override
    public HttpParams d() {
        return com.mgtv.ssp.net.a.a(new FeedBaseHttpParamas());
    }

    @Override
    public void e() {
        super.e();
        if (this.g == null) {
            return;
        }
        y();
        this.J = findViewById(R.id.lay_feed_card);
        this.I = (VideoLoadingView) findViewById(R.id.loading);
        this.m = (TextView) findViewById(R.id.tv_error);
        f();
        u();
        o();
        ((FeedRecyclerViewAdapter) this.h).a(new com.mgtv.ssp.adapter.listener.a() {
            @Override
            public void a(VideoInfoBean videoInfoBean) {
                FeedVideoView.this.t();
                k.a(FeedVideoView.this.x, videoInfoBean.getIntactSchema(), videoInfoBean.getMgDownloadH5(), videoInfoBean.getSchemaHint(), "v_card", FeedVideoView.this.M != null ? FeedVideoView.this.M.videoId : "", "card");
            }

            @Override
            public void b(VideoInfoBean videoInfoBean) {
                if (FeedVideoView.this.x != null) {
                    Intent intent = new Intent(FeedVideoView.this.x, (Class<?>) SspCommonWebActivity.class);
                    intent.putExtra("webUrl", videoInfoBean.getReportH5());
                    com.hunantv.imgo.util.a.a(FeedVideoView.this.x, intent);
                }
            }
        });
        ((FeedRecyclerViewAdapter) this.h).a(this);
        this.g.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() {
            @Override
            public void onChildViewAttachedToWindow(@NonNull View view) {
            }

            @Override
            public void onChildViewDetachedFromWindow(@NonNull View view) {
                View childAt;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.player_container);
                if (frameLayout == null || (childAt = frameLayout.getChildAt(0)) == null || ((BaseVideoListView) FeedVideoView.this).p == null || childAt != ((BaseVideoListView) FeedVideoView.this).p.getDisplayView()) {
                    return;
                }
                FeedVideoView.this.w();
            }
        });
        ((FeedRecyclerViewAdapter) this.h).a(new BaseVideoAdapter.b() {
            @Override
            public void a(int i) {
                FeedVideoView.this.U = i + 1;
                if (((BaseVideoListView) FeedVideoView.this).c) {
                    FeedVideoView.this.N = true;
                    FeedVideoView feedVideoView = FeedVideoView.this;
                    feedVideoView.d(feedVideoView.U, true, false);
                } else {
                    boolean zK = ((BaseVideoListView) FeedVideoView.this).h instanceof BaseVideoAdapter ? ((FeedRecyclerViewAdapter) ((BaseVideoListView) FeedVideoView.this).h).k(i) : false;
                    FeedVideoView feedVideoView2 = FeedVideoView.this;
                    feedVideoView2.a(feedVideoView2.U >= ((BaseVideoListView) FeedVideoView.this).d.size() ? ((BaseVideoListView) FeedVideoView.this).d.size() - 1 : FeedVideoView.this.U, zK, !zK);
                }
                FeedVideoView.this.O = false;
            }

            @Override
            public void b(int i) {
                FeedVideoView.this.O = true;
                FeedVideoView.this.x();
            }
        });
        this.g.addOnScrollListener(new RecyclerView.OnScrollListener() {
            boolean a;

            private void a(RecyclerView recyclerView) {
                if (recyclerView == null) {
                    return;
                }
                int childCount = recyclerView.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = recyclerView.getChildAt(i);
                    if (childAt != null && (childAt.getTag() instanceof BaseHolder)) {
                        BaseHolder baseHolder = (BaseHolder) childAt.getTag();
                        Rect rect = new Rect();
                        baseHolder.f.getLocalVisibleRect(rect);
                        int height = baseHolder.f.getHeight();
                        if (rect.top == 0 && height != 0 && rect.bottom == height && this.a) {
                            FeedVideoView.this.S = true;
                            FeedVideoView.this.a(baseHolder.e, false, false);
                            return;
                        }
                    }
                }
            }

            @Override
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                if (((BaseVideoListView) FeedVideoView.this).h != null && (((BaseVideoListView) FeedVideoView.this).h instanceof BaseVideoAdapter)) {
                    ((BaseVideoAdapter) ((BaseVideoListView) FeedVideoView.this).h).a(recyclerView, i);
                }
                if (i == 1) {
                    this.a = true;
                }
                if (!((BaseVideoListView) FeedVideoView.this).c) {
                    System.out.println("eeee onScrollStateChanged 22  mCurPos = " + ((BaseVideoListView) FeedVideoView.this).n + " ; " + (true ^ FeedVideoView.this.L));
                    if (i == 0) {
                        a(recyclerView);
                        this.a = false;
                        return;
                    }
                    return;
                }
                if (FeedVideoView.this.U == -1) {
                    FeedVideoView feedVideoView = FeedVideoView.this;
                    feedVideoView.U = ((BaseVideoListView) feedVideoView).n;
                }
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("eeee onScrollStateChanged 22  mCurPos = ");
                sb.append(((BaseVideoListView) FeedVideoView.this).n);
                sb.append("; ");
                sb.append(FeedVideoView.this.U);
                sb.append(" ; ");
                sb.append(!FeedVideoView.this.L);
                printStream.println(sb.toString());
                FeedVideoView feedVideoView2 = FeedVideoView.this;
                if (!feedVideoView2.c(feedVideoView2.U, true, false)) {
                    ThreadManager.post(new Runnable() {
                        @Override
                        public void run() {
                            if (((BaseVideoListView) FeedVideoView.this).c) {
                                FeedVideoView feedVideoView3 = FeedVideoView.this;
                                feedVideoView3.b(feedVideoView3.U, false, false);
                            }
                        }
                    }, 500);
                } else if (((BaseVideoListView) FeedVideoView.this).c) {
                    FeedVideoView feedVideoView3 = FeedVideoView.this;
                    feedVideoView3.b(feedVideoView3.U, false, false);
                }
            }
        });
        setmAutoCallback(new BaseListFragment.a() {
            @Override
            public void a() {
                ((BaseVideoListView) FeedVideoView.this).g.post(new Runnable() {
                    @Override
                    public void run() {
                        if (((BaseView) FeedVideoView.this).F && !FeedVideoView.this.v() && FeedVideoView.this.getRealVisible()) {
                            System.out.println("eeee  startPlay 22  success = " + ((BaseVideoListView) FeedVideoView.this).n);
                            FeedVideoView.this.a(0, true, false);
                        }
                    }
                });
            }
        });
        ((FeedRecyclerViewAdapter) this.h).a(new BaseVideoAdapter.a() {
            @Override
            public void a(int i) {
                FeedVideoView.this.onBackPress();
            }

            @Override
            public void b(int i) {
                FeedVideoView.this.z();
            }

            @Override
            public boolean a() {
                return ((BaseVideoListView) FeedVideoView.this).c;
            }

            @Override
            public void a(final int i, final View view) {
                if (((BaseVideoListView) FeedVideoView.this).c) {
                    ThreadManager.post(new Runnable() {
                        @Override
                        public void run() {
                            f.a((ViewGroup) FeedVideoView.this.x.findViewById(android.R.id.content), view);
                            FeedVideoView.this.L = true;
                            FeedVideoView.this.U = i + 1;
                            FeedVideoView feedVideoView = FeedVideoView.this;
                            feedVideoView.b(feedVideoView.U, false, false);
                        }
                    }, 200);
                }
            }
        });
        Activity activity = this.x;
        if (activity != null) {
            activity.setRequestedOrientation(1);
        }
        this.W = new MyRecycleScrollTopScroller(this.x);
    }

    public void f() {
        PlayerCore playerCore = new PlayerCore();
        this.p = playerCore;
        playerCore.setViewRendType("");
        this.q = new FeedVideoController(this.x);
        this.p.setFrom(getModType());
        this.p.setRequestPauseAd(false);
        this.p.init(this.x);
        FeedVodBottomControlView feedVodBottomControlView = new FeedVodBottomControlView(this.x);
        this.K = feedVodBottomControlView;
        feedVodBottomControlView.setViewCallback(new FeedVodBottomControlView.a() {
            @Override
            public void a() {
                FeedVideoView feedVideoView = FeedVideoView.this;
                if (feedVideoView.x != null) {
                    feedVideoView.z();
                }
            }

            @Override
            public void b(int i) {
                VideoBean videoBeanA;
                VideoInfoBean video;
                FeedVideoView feedVideoView = FeedVideoView.this;
                if (feedVideoView.x == null || !(((BaseVideoListView) feedVideoView).h instanceof FeedRecyclerViewAdapter) || (videoBeanA = ((FeedRecyclerViewAdapter) ((BaseVideoListView) FeedVideoView.this).h).a(i)) == null || videoBeanA.getVideo() == null || (video = videoBeanA.getVideo()) == null) {
                    return;
                }
                Intent intent = new Intent(FeedVideoView.this.x, (Class<?>) SspCommonWebActivity.class);
                intent.putExtra("webUrl", video.getReportH5());
                com.hunantv.imgo.util.a.a(FeedVideoView.this.x, intent);
            }

            @Override
            public void c(int i) {
                FeedVideoView.this.onBackPress();
            }

            @Override
            public void a(int i) {
                VideoBean videoBeanA;
                VideoInfoBean video;
                FeedVideoView.this.t();
                String str = FeedVideoView.this.M != null ? FeedVideoView.this.M.videoId : "";
                if (!(((BaseVideoListView) FeedVideoView.this).h instanceof FeedRecyclerViewAdapter) || (videoBeanA = ((FeedRecyclerViewAdapter) ((BaseVideoListView) FeedVideoView.this).h).a(i)) == null || videoBeanA.getVideo() == null || (video = videoBeanA.getVideo()) == null) {
                    return;
                }
                k.a(FeedVideoView.this.x, video.getIntactSchema(), video.getMgDownloadH5(), video.getSchemaHint(), "v_card", str, "card");
            }
        });
        this.q.addControlComponent(this.K);
        this.q.addControlComponent(new GestureView(getContext()));
        SspSdkConfig sspSdkConfigE = b.a().e();
        if (sspSdkConfigE != null && sspSdkConfigE.getShowLoading() == 1) {
            VideoLoadingView videoLoadingView = new VideoLoadingView(getContext());
            this.ab = videoLoadingView;
            this.q.addControlComponent(videoLoadingView);
        }
        this.p.setVideoController(this.q);
        this.p.setOnVideoCompleteListener(new PlayListener.OnVideoCompleteListener() {
            @Override
            public void onVideoComplete() {
                if (((BaseVideoListView) FeedVideoView.this).p != null) {
                    PlayerVideoInfo currentVideoInfo = ((BaseVideoListView) FeedVideoView.this).p.getCurrentVideoInfo();
                    if (currentVideoInfo != null && currentVideoInfo.isPreview()) {
                        if (((BaseVideoListView) FeedVideoView.this).l != null) {
                            ((BaseVideoListView) FeedVideoView.this).q.removeControlComponent(((BaseVideoListView) FeedVideoView.this).l);
                        }
                        FeedVideoView.this.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP, "");
                        ((BaseVideoListView) FeedVideoView.this).l.setAuthData(((BaseVideoListView) FeedVideoView.this).p.getAuthData());
                        ((BaseVideoListView) FeedVideoView.this).l.rendUi(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP);
                        ((BaseVideoListView) FeedVideoView.this).q.addControlComponent(new FrameLayout.LayoutParams(-1, -1), ((BaseVideoListView) FeedVideoView.this).l, false);
                        ((BaseVideoListView) FeedVideoView.this).p.setPlayState(16);
                        return;
                    }
                    FeedVideoView.this.U = BaseVideoListView.s + 1;
                    if (!((BaseVideoListView) FeedVideoView.this).c) {
                        FeedVideoView feedVideoView = FeedVideoView.this;
                        feedVideoView.a(feedVideoView.U, true, false);
                    } else {
                        FeedVideoView.this.N = true;
                        FeedVideoView feedVideoView2 = FeedVideoView.this;
                        feedVideoView2.d(feedVideoView2.U, true, false);
                    }
                }
            }
        });
        this.p.setAdControlListener(new d() {
            @Override
            public void a(boolean z) {
            }

            @Override
            public void b() {
                if (((BaseVideoListView) FeedVideoView.this).c) {
                    return;
                }
                FeedVideoView.this.k();
                VideoSDKReport.a().z();
            }

            @Override
            public void c() {
            }

            @Override
            public void a() {
                if (((BaseVideoListView) FeedVideoView.this).c) {
                    FeedVideoView.this.l();
                    VideoSDKReport.a().y();
                }
            }
        });
        this.p.setSourcePrepareListener(new c() {
            @Override
            public void a(boolean z, String str, String str2) {
                if (z) {
                    FeedVideoView.this.p();
                }
            }
        });
    }

    private void b(boolean z) {
        int iA;
        GestureVideoController gestureVideoController = this.q;
        if (gestureVideoController != null) {
            if (z) {
                gestureVideoController.setLockButtonVisibility(0);
                iA = t.a(getContext(), 40.0f);
            } else {
                gestureVideoController.setLockButtonVisibility(8);
                iA = 0;
            }
            this.q.setPadding(iA, 0, iA, 0);
        }
    }

    public void d(int i, boolean z, boolean z2) {
        int iFindFirstVisibleItemPosition = this.i.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = this.i.findLastVisibleItemPosition();
        System.out.println("eeee scrollToPosition pos = " + i + " firstItem = " + iFindFirstVisibleItemPosition + " lastItem = " + iFindLastVisibleItemPosition);
        if (i <= iFindFirstVisibleItemPosition) {
            c(i);
            A();
            return;
        }
        if (i > iFindLastVisibleItemPosition) {
            if (z) {
                this.g.smoothScrollToPosition(i);
                return;
            } else {
                c(i);
                return;
            }
        }
        int i2 = i - iFindFirstVisibleItemPosition;
        if (this.g.getChildAt(i2) != null) {
            int top = this.g.getChildAt(i2).getTop() - (t.a(getContext(), 40.0f) * 2);
            if (z) {
                this.g.smoothScrollBy(0, top);
                return;
            }
            c(i);
            if (top <= 0) {
                A();
            }
        }
    }

    private void a(RecyclerView recyclerView, int i) {
        System.out.println("eeee smoothMoveToPosition position = " + i);
        int childLayoutPosition = recyclerView.getChildLayoutPosition(recyclerView.getChildAt(0));
        int childLayoutPosition2 = recyclerView.getChildLayoutPosition(recyclerView.getChildAt(recyclerView.getChildCount() - 1));
        if (i < childLayoutPosition) {
            recyclerView.smoothScrollToPosition(i);
            return;
        }
        if (i <= childLayoutPosition2) {
            int i2 = i - childLayoutPosition;
            if (i2 < 0 || i2 >= recyclerView.getChildCount()) {
                return;
            }
            recyclerView.smoothScrollBy(0, recyclerView.getChildAt(i2).getTop());
            return;
        }
        recyclerView.smoothScrollToPosition(i);
        this.H = true;
    }

    public boolean c(int i, boolean z, boolean z2) {
        ViewGroup viewGroup;
        int iFindFirstVisibleItemPosition = this.i.findFirstVisibleItemPosition();
        if (i != -1 && i >= iFindFirstVisibleItemPosition) {
            iFindFirstVisibleItemPosition = i;
        }
        int iFindLastVisibleItemPosition = this.i.findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition > iFindLastVisibleItemPosition) {
            return false;
        }
        while (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
            if (iFindFirstVisibleItemPosition != -1 && iFindFirstVisibleItemPosition < this.d.size() && (viewGroup = (ViewGroup) this.i.findViewByPosition(iFindFirstVisibleItemPosition)) != null) {
                Rect rect = new Rect();
                viewGroup.getLocalVisibleRect(rect);
                int height = viewGroup.getHeight();
                if (rect.top == 0 && rect.bottom == height) {
                    this.T = viewGroup;
                    if (viewGroup.findViewById(R.id.player_container) != null && iFindFirstVisibleItemPosition == i) {
                        return true;
                    }
                }
            }
            iFindFirstVisibleItemPosition++;
        }
        return true;
    }

    public void b(int i, boolean z, boolean z2) {
        FeedRecyclerViewAdapter.VideoHolder videoHolder;
        NativeExpressADView nativeExpressADView;
        if (this.p == null) {
            return;
        }
        if (this.n != i || this.L) {
            this.L = false;
            if (i == this.d.size() || i > this.d.size()) {
                return;
            }
            super.a(i, z, z2);
            View viewFindViewByPosition = this.i.findViewByPosition(i);
            if (viewFindViewByPosition == null) {
                return;
            }
            this.n = i;
            BaseVideoListView.s = i;
            RecyclerView.Adapter adapter = this.h;
            if (adapter instanceof BaseVideoAdapter) {
                ((BaseVideoAdapter) adapter).b(i);
            }
            if (viewFindViewByPosition.getTag() != null && (viewFindViewByPosition.getTag() instanceof FeedRecyclerViewAdapter.VideoHolder)) {
                HashMap<Integer, NativeExpressADView> mapD = ((BaseVideoAdapter) this.h).d();
                if (mapD != null && mapD.containsKey(Integer.valueOf(this.n - 1)) && mapD.get(Integer.valueOf(this.n - 1)) != null && (nativeExpressADView = mapD.get(Integer.valueOf(this.n - 1))) != null) {
                    ((ViewGroup) this.x.findViewById(android.R.id.content)).removeView(nativeExpressADView.getView());
                    this.Q = true;
                }
                videoHolder = (FeedRecyclerViewAdapter.VideoHolder) viewFindViewByPosition.getTag();
                f.a(videoHolder.a, this.p.getDisplayView());
                FeedVodBottomControlView feedVodBottomControlView = this.K;
                int i2 = videoHolder.e;
                feedVodBottomControlView.a(i2, true, b(i2));
                t.a(this.x, true);
                f.a((ViewGroup) this.x.findViewById(android.R.id.content), this.p.getDisplayView(), new FrameLayout.LayoutParams(-1, -1));
                this.p.getDisplayView().setBackgroundColor(-16777216);
                RecyclerView.Adapter adapter2 = this.h;
                if (adapter2 instanceof BaseVideoAdapter) {
                    ((BaseVideoAdapter) adapter2).c();
                }
                this.T = viewFindViewByPosition;
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("eeee startPlayInLandScreen VideoHolder ");
                sb.append(this.n);
                sb.append("; ");
                sb.append(i);
                sb.append(" ; ");
                sb.append(!this.L);
                printStream.println(sb.toString());
            } else {
                if (viewFindViewByPosition.getTag() != null && (viewFindViewByPosition.getTag() instanceof AdHolder)) {
                    AdHolder adHolder = (AdHolder) viewFindViewByPosition.getTag();
                    PrintStream printStream2 = System.out;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("eeee startPlayInLandScreen AdHolder ");
                    sb2.append(this.n);
                    sb2.append("; ");
                    sb2.append(i);
                    sb2.append(" ; ");
                    sb2.append(!this.L);
                    printStream2.println(sb2.toString());
                    HashMap<Integer, NativeExpressADView> mapD2 = ((BaseVideoAdapter) this.h).d();
                    if (mapD2.containsKey(Integer.valueOf(this.n))) {
                        if (mapD2.get(Integer.valueOf(this.n)) != null) {
                            NativeExpressADView nativeExpressADView2 = mapD2.get(Integer.valueOf(this.n));
                            if (nativeExpressADView2 != null && nativeExpressADView2.isVideoType()) {
                                this.T = viewFindViewByPosition;
                                ViewGroup viewGroup = (ViewGroup) this.x.findViewById(android.R.id.content);
                                FrameLayout frameLayout = adHolder.b;
                                if (frameLayout != null) {
                                    frameLayout.removeAllViews();
                                }
                                View view = nativeExpressADView2.getView();
                                f.a(viewGroup, this.p.getDisplayView());
                                if (this.p.getDisplayView() != null) {
                                    this.p.getDisplayView().setBackgroundColor(0);
                                }
                                ((BaseVideoAdapter) this.h).a(this.n, true);
                                f.a(viewGroup, view, new FrameLayout.LayoutParams(-1, -1));
                                this.Q = true;
                                try {
                                    x();
                                    RecyclerView.Adapter adapter3 = this.h;
                                    if (adapter3 instanceof BaseVideoAdapter) {
                                        ((BaseVideoAdapter) adapter3).i(i);
                                    }
                                    e.b(this.G, "在播放广告item ", true);
                                    return;
                                } catch (Exception e) {
                                    e.printStackTrace();
                                    return;
                                }
                            }
                            int i3 = this.n + 1;
                            this.U = i3;
                            d(i3, false, false);
                            return;
                        }
                        int i4 = this.n + 1;
                        this.U = i4;
                        d(i4, false, false);
                        return;
                    }
                    int i5 = this.n + 1;
                    this.U = i5;
                    d(i5, false, false);
                    return;
                }
                videoHolder = null;
            }
            if (videoHolder == null) {
                this.o = null;
                return;
            }
            VideoBean videoBean = this.d.get(i);
            VideoInfoBean video = videoBean.getVideo();
            if (videoBean.getVideo() == null) {
                if (videoBean.getAd() != null) {
                    try {
                        a(i + 1, z, false);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                this.o = null;
                return;
            }
            MediaInfo mediaInfo = new MediaInfo(com.hunantv.imgo.util.b.l("card"));
            this.M = mediaInfo;
            mediaInfo.videoId = videoBean.getVideo().getPreviewVcode();
            EntranceInfo entranceInfo = this.k;
            String token = entranceInfo != null ? entranceInfo.getToken() : "";
            this.p.stop();
            this.p.setScreenStatus(new PlayerCore.ScreenStatusFetcher() {
                @Override
                public int isFull() {
                    return ((BaseVideoListView) FeedVideoView.this).c ? 1 : 0;
                }
            });
            this.p.prepare(this.x, this.M, token);
            this.p.setLob(video.getFdParams());
            this.p.setPosition(i + "");
            this.p.setCurPlayIndex((this.t + 1) + "");
            this.o = videoBean.getVideo();
            setVideoLoadingText(video);
            this.K.setTitle(video.getTitle());
        }
    }

    @Override
    public LoadMoreRecycleView a() {
        return (LoadMoreRecycleView) findViewById(R.id.list_rv);
    }

    private void c(int i) {
        MyRecycleScrollTopScroller myRecycleScrollTopScroller;
        if (i >= 0 && (myRecycleScrollTopScroller = this.W) != null) {
            try {
                myRecycleScrollTopScroller.setTargetPosition(i);
                this.i.startSmoothScroll(this.W);
            } catch (Throwable th) {
                System.out.println("eeee scrollViewTo e " + th.getMessage());
            }
        }
    }

    @Override
    public void a(int i, boolean z, boolean z2) {
        final FeedRecyclerViewAdapter.VideoHolder videoHolder;
        if (this.p == null) {
            return;
        }
        if (this.n != i || this.L) {
            this.L = false;
            if (i == this.d.size() || i > this.d.size()) {
                return;
            }
            super.a(i, z, z2);
            this.n = i;
            RecyclerView.Adapter adapter = this.h;
            if (adapter instanceof BaseVideoAdapter) {
                ((BaseVideoAdapter) adapter).b(i);
            }
            BaseVideoListView.s = this.n;
            View viewFindViewByPosition = this.i.findViewByPosition(i);
            if (viewFindViewByPosition == null) {
                return;
            }
            Rect rect = new Rect();
            viewFindViewByPosition.getLocalVisibleRect(rect);
            int height = viewFindViewByPosition.getHeight();
            if (rect.top == 0 && rect.bottom == height) {
                this.T = viewFindViewByPosition;
            }
            if (viewFindViewByPosition.getTag() != null && (viewFindViewByPosition.getTag() instanceof FeedRecyclerViewAdapter.VideoHolder)) {
                videoHolder = (FeedRecyclerViewAdapter.VideoHolder) viewFindViewByPosition.getTag();
                RecyclerView.Adapter adapter2 = this.h;
                if (adapter2 instanceof BaseVideoAdapter) {
                    ((BaseVideoAdapter) adapter2).c();
                }
            } else {
                if (viewFindViewByPosition.getTag() != null && (viewFindViewByPosition.getTag() instanceof AdHolder)) {
                    try {
                        RecyclerView.Adapter adapter3 = this.h;
                        if (adapter3 instanceof BaseVideoAdapter ? ((BaseVideoAdapter) adapter3).j(i) : false) {
                            try {
                                a(i + 1, z, false);
                                return;
                            } catch (Exception e) {
                                e.printStackTrace();
                                return;
                            }
                        }
                        x();
                        if (this.h instanceof BaseVideoAdapter) {
                            System.out.println("eeee  startPlay   mCurPos " + this.n + " resumeAd parent ");
                            ((BaseVideoAdapter) this.h).i(i);
                        }
                        e.b(this.G, "在播放广告item ", true);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                videoHolder = null;
            }
            if (videoHolder == null) {
                this.o = null;
                return;
            }
            VideoBean videoBean = this.d.get(i);
            VideoInfoBean video = videoBean.getVideo();
            if (videoBean.getVideo() == null) {
                if (videoBean.getAd() != null) {
                    try {
                        a(i + 1, z, false);
                        return;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                return;
            }
            MediaInfo mediaInfo = new MediaInfo(com.hunantv.imgo.util.b.l("card"));
            this.M = mediaInfo;
            mediaInfo.videoId = videoBean.getVideo().getPreviewVcode();
            EntranceInfo entranceInfo = this.k;
            String token = entranceInfo != null ? entranceInfo.getToken() : "";
            if (!a(viewFindViewByPosition)) {
                x();
                return;
            }
            if (com.hunantv.imgo.util.b.ad()) {
                this.p.setMute(com.hunantv.imgo.util.b.ad());
            }
            this.p.stop();
            this.p.prepare(this.x, this.M, token);
            this.p.setLob(video.getFdParams());
            this.p.setPosition(i + "");
            this.p.setCurPlayIndex((this.t + 1) + "");
            this.o = videoBean.getVideo();
            setVideoLoadingText(video);
            this.K.setTitle(video.getTitle());
            if (this.c) {
                this.K.onPlayerStateChanged(11);
            } else {
                this.K.onPlayerStateChanged(10);
            }
            this.p.setOnVideoPreparedListener(new PlayListener.OnVideoPreparedListener() {
                @Override
                public void onVideoPrepared() {
                    PlayerVideoInfo currentVideoInfo = ((BaseVideoListView) FeedVideoView.this).p.getCurrentVideoInfo();
                    if (currentVideoInfo != null) {
                        Map<Integer, Long> map = currentVideoInfo.mDefinitionSizeMap;
                        int currentResolution = ((BaseVideoListView) FeedVideoView.this).p.getCurrentResolution();
                        if (map == null) {
                            return;
                        }
                        try {
                            videoHolder.j.setText(Html.fromHtml("<font color='#FF4500'>" + ((int) ((map.get(Integer.valueOf(currentResolution)).longValue() / 1024) / 1024)) + "</font>M" + FeedVideoView.this.getContext().getString(R.string.liuliang)));
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                }
            });
            y.a(this.p.getDisplayView());
            this.q.addControlComponent(videoHolder.g, true);
            videoHolder.g.setAutoPlayClickListener(new com.mgtv.ssp.immersion.a.a() {
                @Override
                public void a() {
                    if (((BaseVideoListView) FeedVideoView.this).p != null) {
                        ((BaseVideoListView) FeedVideoView.this).p.setAutoPlayClicked(true);
                    }
                }
            });
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            videoHolder.a.addView(this.p.getDisplayView(), 0, layoutParams);
            if (z) {
                if (i != -1) {
                    a(this.g, i);
                    return;
                } else {
                    a(this.g, i + 1);
                    return;
                }
            }
            if (z2 && a(viewFindViewByPosition.getBottom())) {
                a(this.g, i);
            }
        }
    }

    private boolean a(int i) {
        View view = this.J;
        return view == null || i >= view.getBottom();
    }

    @Override
    public void a(boolean z) {
        PlayerCore playerCore = this.p;
        if (playerCore != null) {
            playerCore.onVisibilityChanged(z);
            if (z && this.p.isInterruptBeforeAd()) {
                this.L = true;
                a(this.n, true, false);
            }
            if (v()) {
                if (z) {
                    resume();
                } else {
                    pause();
                }
            } else if (z) {
                a(0, true, false);
            }
            RecyclerView.Adapter adapter = this.h;
            if (adapter instanceof BaseVideoAdapter) {
                ((BaseVideoAdapter) adapter).b(z);
            }
        }
    }

    private boolean b(int i) {
        VideoBean videoBean;
        VideoInfoBean video;
        List<VideoBean> list = this.d;
        if (list == null || i >= list.size() || (videoBean = this.d.get(i)) == null || (video = videoBean.getVideo()) == null) {
            return false;
        }
        return !TextUtils.isEmpty(video.getIntactVcode());
    }
}
