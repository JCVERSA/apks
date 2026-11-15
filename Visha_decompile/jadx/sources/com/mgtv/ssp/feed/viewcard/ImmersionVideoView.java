package com.mgtv.ssp.feed.viewcard;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Html;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.util.k;
import com.hunantv.imgo.util.y;
import com.mgtv.ssp.R;
import com.mgtv.ssp.activity.SspCommonWebActivity;
import com.mgtv.ssp.adapter.BaseVideoAdapter;
import com.mgtv.ssp.auth.EntranceInfo;
import com.mgtv.ssp.auth.b;
import com.mgtv.ssp.bean.VideoBean;
import com.mgtv.ssp.bean.VideoInfoBean;
import com.mgtv.ssp.bean.config.SspSdkConfig;
import com.mgtv.ssp.c;
import com.mgtv.ssp.feed.control.ImmersionVideoController;
import com.mgtv.ssp.fragment.BaseListFragment;
import com.mgtv.ssp.immersion.ui.ImmersionAdapter;
import com.mgtv.ssp.immersion.ui.ViewPagerLayoutManager;
import com.mgtv.ssp.net.FeedBaseHttpParamas;
import com.mgtv.ssp.play.MediaInfo;
import com.mgtv.ssp.play.PlayerCore;
import com.mgtv.ssp.play.playsdk.PlayListener;
import com.mgtv.ssp.play.playsdk.PlayerVideoInfo;
import com.mgtv.ssp.viewcard.BaseVideoListView;
import com.mgtv.ssp.viewcard.BaseView;
import com.mgtv.ssp.widget.ImmerCoverView;
import com.mgtv.ssp.widget.LoadMoreRecycleView;
import com.mgtv.ssp.widget.VideoLoadingView;
import com.mgtv.task.http.HttpParams;
import java.io.PrintStream;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

public class ImmersionVideoView extends BaseVideoListView {
    public static int a = 100088;
    private Handler G;
    private boolean H;
    private boolean I;
    private VideoLoadingView J;
    private String b;

    public static class a extends Handler {
        WeakReference<ImmersionVideoView> a;

        public a(Looper looper, ImmersionVideoView immersionVideoView) {
            super(looper);
            this.a = new WeakReference<>(immersionVideoView);
        }

        @Override
        public void handleMessage(Message message) {
            ImmersionVideoView immersionVideoView;
            super.handleMessage(message);
            WeakReference<ImmersionVideoView> weakReference = this.a;
            if (weakReference == null || weakReference.get() == null || message.what != PlayerCore.START_PLAY || (immersionVideoView = this.a.get()) == null) {
                return;
            }
            immersionVideoView.w();
        }
    }

    public ImmersionVideoView(@NonNull Context context) {
        this(context, null);
    }

    @Override
    public void destroy() {
        super.destroy();
        RecyclerView.Adapter adapter = this.h;
        if (adapter instanceof BaseVideoAdapter) {
            ((BaseVideoAdapter) adapter).b();
        }
        f();
    }

    @Override
    public int getLayoutResId() {
        return R.layout.immer_list_view;
    }

    @Override
    public String getModType() {
        return "immersion";
    }

    @Override
    public String getRetryUrl() {
        return com.hunantv.imgo.net.a.l() + "/api/feed/immersion";
    }

    @Override
    public String getUrl() {
        return com.mgtv.ssp.net.a.a(4);
    }

    @Override
    public boolean onBackPress() {
        return false;
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
        PlayerCore playerCore = this.p;
        if (playerCore != null) {
            playerCore.backToFront();
        }
        RecyclerView.Adapter adapter = this.h;
        if (adapter instanceof BaseVideoAdapter) {
            ((BaseVideoAdapter) adapter).b(true);
        }
        resume();
    }

    @Override
    public void onViewConfigChanged(Configuration configuration) {
    }

    @Override
    public void pause() {
        PrintStream printStream = System.out;
        printStream.println("ImmersionVideoFragment pause = " + this.p);
        if (this.p != null) {
            printStream.println("ImmersionVideoFragment onActivityStop");
            this.p.onActivityStop();
        }
    }

    @Override
    public void resume() {
        if (this.p != null && v() && getRealVisible()) {
            if (this.p.getIsPausedByUser()) {
                this.p.onActivityStart(false);
            } else {
                this.p.onActivityStart(true);
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
        a(0, false, false);
    }

    public ImmersionVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void h() {
        if (this.p.isPlaying()) {
            this.p.pause();
        }
    }

    public void w() {
        this.J.setVisibility(8);
        this.H = true;
        List<VideoBean> list = this.d;
        if (list == null || list.size() == 0 || this.I || !this.F || v() || !getRealVisible()) {
            return;
        }
        a(0, false, false);
    }

    private void x() {
        this.J.setVisibility(0);
        SspSdkConfig sspSdkConfigE = b.a().e();
        if (sspSdkConfigE != null && sspSdkConfigE.getShowLoading() == 1) {
            this.J.show(sspSdkConfigE.getLoadingTitle(), "");
        }
        if (sspSdkConfigE != null && sspSdkConfigE.getShowLoading() == 0) {
            w();
        } else if (sspSdkConfigE == null || sspSdkConfigE.getLoadingTime() <= 0) {
            w();
        } else {
            this.G.sendEmptyMessageDelayed(a, sspSdkConfigE.getLoadingTime());
        }
    }

    @Override
    public RecyclerView.Adapter b() {
        ImmersionAdapter immersionAdapter = new ImmersionAdapter(this.d);
        immersionAdapter.a(this.g);
        return immersionAdapter;
    }

    @Override
    public LinearLayoutManager c() {
        return new ViewPagerLayoutManager(getContext(), 1);
    }

    @Override
    public HttpParams d() {
        return com.mgtv.ssp.net.a.a(new FeedBaseHttpParamas());
    }

    @Override
    public void e() {
        this.G = new a(Looper.getMainLooper(), this);
        super.e();
        this.J = (VideoLoadingView) findViewById(R.id.loading);
        this.m = (TextView) findViewById(R.id.tv_error);
        PlayerCore playerCore = new PlayerCore();
        this.p = playerCore;
        playerCore.setFrom(getModType());
        this.p.setRequestPauseAd(false);
        this.p.init(this.x);
        ImmersionVideoController immersionVideoController = new ImmersionVideoController(this.x);
        this.q = immersionVideoController;
        this.p.setVideoController(immersionVideoController);
        ((ViewPagerLayoutManager) this.i).a(new com.mgtv.ssp.immersion.a.b() {
            @Override
            public void a(int i) {
            }

            @Override
            public void a() {
                if (!ImmersionVideoView.this.H || ((BaseVideoListView) ImmersionVideoView.this).d == null || ((BaseVideoListView) ImmersionVideoView.this).d.size() == 0 || !((BaseView) ImmersionVideoView.this).F || ImmersionVideoView.this.v() || !ImmersionVideoView.this.getRealVisible()) {
                    return;
                }
                ImmersionVideoView.this.I = true;
                ImmersionVideoView.this.a(0, false, false);
            }

            @Override
            public void a(boolean z, int i) {
                ImmersionVideoView.this.h();
            }

            @Override
            public void a(int i, boolean z) {
                if (((BaseVideoListView) ImmersionVideoView.this).n == i) {
                    if (((BaseVideoListView) ImmersionVideoView.this).p.getPlayerStatus() == 9 || ((BaseVideoListView) ImmersionVideoView.this).p.getPlayerStatus() == 4) {
                        ((BaseVideoListView) ImmersionVideoView.this).p.play();
                        return;
                    }
                    return;
                }
                if (((BaseVideoListView) ImmersionVideoView.this).h instanceof BaseVideoAdapter) {
                    ((BaseVideoAdapter) ((BaseVideoListView) ImmersionVideoView.this).h).b(i);
                }
                ImmersionVideoView.this.a(i, false, false);
            }
        });
        u();
        ((ImmersionAdapter) this.h).a(new BaseVideoAdapter.b() {
            @Override
            public void a(int i) {
                LoadMoreRecycleView loadMoreRecycleView = ((BaseVideoListView) ImmersionVideoView.this).g;
                int size = i + 1;
                if (size >= ((BaseVideoListView) ImmersionVideoView.this).d.size()) {
                    size = ((BaseVideoListView) ImmersionVideoView.this).d.size() - 1;
                }
                loadMoreRecycleView.smoothScrollToPosition(size);
            }

            @Override
            public void b(int i) {
            }
        });
        setmAutoCallback(new BaseListFragment.a() {
            @Override
            public void a() {
                ((BaseVideoListView) ImmersionVideoView.this).g.post(new Runnable() {
                    @Override
                    public void run() {
                        if (((BaseView) ImmersionVideoView.this).F && !ImmersionVideoView.this.v() && ImmersionVideoView.this.getRealVisible()) {
                            ImmersionVideoView.this.a(0, true, false);
                        }
                    }
                });
            }
        });
        o();
    }

    public void f() {
        Handler handler = this.G;
        if (handler != null) {
            handler.removeMessages(a);
        }
    }

    @Override
    public void g() {
        pause();
    }

    @Override
    public void j() {
        x();
    }

    @Override
    public void m() {
        VideoBean videoBean = this.d.get(this.n);
        MediaInfo mediaInfo = new MediaInfo(com.hunantv.imgo.util.b.l("immersion"));
        mediaInfo.videoId = videoBean.getVideo().getPreviewVcode();
        EntranceInfo entranceInfo = this.k;
        this.p.prepare(this.x, mediaInfo, entranceInfo != null ? entranceInfo.getToken() : "");
        this.q.addControlComponent(((ImmersionAdapter.VideoHolder) this.g.getChildAt(0).getTag()).c, true);
    }

    public ImmersionVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = "ImmersionVideoView";
    }

    @Override
    public LoadMoreRecycleView a() {
        return (LoadMoreRecycleView) findViewById(R.id.rv);
    }

    @Override
    public void a(final int i, boolean z, boolean z2) {
        List<VideoBean> list;
        if (this.n == i || (list = this.d) == null || list.size() == 0) {
            return;
        }
        this.p.stop();
        VideoBean videoBean = this.d.get(i);
        this.n = i;
        if (videoBean == null) {
            this.o = null;
            y.a(this.p.getDisplayView());
            return;
        }
        if (videoBean.getType() != 1) {
            if (videoBean.getType() == 2) {
                RecyclerView.Adapter adapter = this.h;
                if (adapter instanceof BaseVideoAdapter) {
                    ((BaseVideoAdapter) adapter).i(i);
                }
            }
            this.o = null;
            y.a(this.p.getDisplayView());
            return;
        }
        View viewFindViewByPosition = this.i.findViewByPosition(i);
        if (viewFindViewByPosition == null) {
            return;
        }
        final ImmersionAdapter.VideoHolder videoHolder = (viewFindViewByPosition.getTag() == null || !(viewFindViewByPosition.getTag() instanceof ImmersionAdapter.VideoHolder)) ? null : (ImmersionAdapter.VideoHolder) viewFindViewByPosition.getTag();
        if (videoHolder == null) {
            this.o = null;
            y.a(this.p.getDisplayView());
            return;
        }
        if (videoBean.getVideo() == null) {
            this.o = null;
            return;
        }
        super.a(i, z, z2);
        MediaInfo mediaInfo = new MediaInfo(com.hunantv.imgo.util.b.l("immersion"));
        mediaInfo.videoId = videoBean.getVideo().getPreviewVcode();
        EntranceInfo entranceInfo = this.k;
        String token = entranceInfo != null ? entranceInfo.getToken() : "";
        this.o = videoBean.getVideo();
        this.p.prepare(this.x, mediaInfo, token);
        this.p.setLob(videoBean.getVideo().getFdParams());
        this.p.setPosition(i + "");
        this.p.setCurPlayIndex((this.t + 1) + "");
        this.f = videoBean.getVideo().getPreviewVcode();
        this.p.setOnVideoStartPlayingListener(new PlayListener.OnVideoStartPlayingListener() {
            @Override
            public void onVideoStartPlaying(boolean z3) {
                ImmerCoverView immerCoverView;
                if (!z3 || (immerCoverView = videoHolder.c) == null) {
                    return;
                }
                immerCoverView.a();
            }
        });
        this.p.setSourcePrepareListener(new c() {
            @Override
            public void a(boolean z3, String str, String str2) {
                if (z3) {
                    ImmersionVideoView.this.p();
                }
            }
        });
        this.p.setOnVideoPreparedListener(new PlayListener.OnVideoPreparedListener() {
            @Override
            public void onVideoPrepared() {
                PlayerVideoInfo currentVideoInfo = ((BaseVideoListView) ImmersionVideoView.this).p.getCurrentVideoInfo();
                if (currentVideoInfo != null) {
                    Map<Integer, Long> map = currentVideoInfo.mDefinitionSizeMap;
                    int currentResolution = ((BaseVideoListView) ImmersionVideoView.this).p.getCurrentResolution();
                    if (map == null) {
                        return;
                    }
                    try {
                        videoHolder.k.setText(Html.fromHtml("<font color='#FF4500'>" + ((int) ((map.get(Integer.valueOf(currentResolution)).longValue() / 1024) / 1024)) + "</font>M" + ImmersionVideoView.this.getContext().getString(R.string.liuliang)));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        y.a(this.p.getDisplayView());
        ((ImmersionVideoController) this.q).a();
        this.q.addControlComponent(videoHolder.c, true);
        videoHolder.c.setAutoPlayClickListener(new com.mgtv.ssp.immersion.a.a() {
            @Override
            public void a() {
                ((BaseVideoListView) ImmersionVideoView.this).p.setAutoPlayClicked(true);
            }
        });
        videoHolder.c.setOnItemClickListener(new com.mgtv.ssp.adapter.listener.a() {
            @Override
            public void a(VideoInfoBean videoInfoBean) {
                ImmersionVideoView.this.t();
                if (videoInfoBean == null) {
                    return;
                }
                k.a(ImmersionVideoView.this.x, videoInfoBean.getIntactSchema(), videoInfoBean.getMgDownloadH5(), videoInfoBean.getSchemaHint(), "v_immerse", videoInfoBean.getPreviewVcode(), "immerse");
            }

            @Override
            public void b(VideoInfoBean videoInfoBean) {
                if (ImmersionVideoView.this.x != null) {
                    Intent intent = new Intent(ImmersionVideoView.this.x, (Class<?>) SspCommonWebActivity.class);
                    intent.putExtra("webUrl", videoInfoBean.getReportH5() + "");
                    com.hunantv.imgo.util.a.a(ImmersionVideoView.this.x, intent);
                }
            }
        });
        videoHolder.g.addView(this.p.getDisplayView(), 0);
        this.p.setOnVideoCompleteListener(new PlayListener.OnVideoCompleteListener() {
            @Override
            public void onVideoComplete() {
                PlayerVideoInfo currentVideoInfo = ((BaseVideoListView) ImmersionVideoView.this).p.getCurrentVideoInfo();
                if (currentVideoInfo == null || !currentVideoInfo.isPreview()) {
                    ((BaseVideoListView) ImmersionVideoView.this).g.smoothScrollToPosition(i + 1 >= ((BaseVideoListView) ImmersionVideoView.this).d.size() ? ((BaseVideoListView) ImmersionVideoView.this).d.size() - 1 : i + 1);
                    return;
                }
                if (((BaseVideoListView) ImmersionVideoView.this).l != null) {
                    ((BaseVideoListView) ImmersionVideoView.this).q.removeControlComponent(((BaseVideoListView) ImmersionVideoView.this).l);
                }
                ImmersionVideoView.this.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP, "");
                ((BaseVideoListView) ImmersionVideoView.this).l.setAuthData(((BaseVideoListView) ImmersionVideoView.this).p.getAuthData());
                ((BaseVideoListView) ImmersionVideoView.this).l.rendUi(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP, "-1");
                ((BaseVideoListView) ImmersionVideoView.this).q.addControlComponent(((BaseVideoListView) ImmersionVideoView.this).l, false);
                ((BaseVideoListView) ImmersionVideoView.this).p.setPlayState(16);
            }
        });
        this.p.setOnAdStartPlayingListener(new PlayListener.OnAdStartPlayingListener() {
            @Override
            public void onAdStartPlaying() {
                ImmerCoverView immerCoverView = videoHolder.c;
                if (immerCoverView != null) {
                    immerCoverView.a();
                }
            }
        });
    }

    @Override
    public void a(boolean z) {
        PlayerCore playerCore = this.p;
        if (playerCore != null) {
            playerCore.onVisibilityChanged(z);
            if (z && this.p.isInterruptBeforeAd()) {
                a(0, true, false);
            }
            if (!v()) {
                if (z) {
                    a(0, true, false);
                }
            } else if (z) {
                resume();
            } else {
                pause();
            }
        }
    }
}
