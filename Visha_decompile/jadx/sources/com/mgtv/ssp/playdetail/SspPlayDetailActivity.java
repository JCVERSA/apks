package com.mgtv.ssp.playdetail;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.hunantv.imgo.data.ErrorData;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.log.e;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.util.ThreadManager;
import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.k;
import com.hunantv.imgo.util.p;
import com.hunantv.imgo.util.t;
import com.hunantv.imgo.util.v;
import com.mgtv.ssp.R;
import com.mgtv.ssp.activity.SspCommonWebActivity;
import com.mgtv.ssp.adapter.listener.OnItemChildClickListener;
import com.mgtv.ssp.bean.ContentListEntity;
import com.mgtv.ssp.bean.VideoBean;
import com.mgtv.ssp.bean.VideoDetailInfoBean;
import com.mgtv.ssp.bean.VideoDetailInfoEntity;
import com.mgtv.ssp.bean.VideoInfoBean;
import com.mgtv.ssp.bean.config.SspSdkConfig;
import com.mgtv.ssp.bean.config.SspSpaceConfig;
import com.mgtv.ssp.c;
import com.mgtv.ssp.d;
import com.mgtv.ssp.f;
import com.mgtv.ssp.feed.control.StandardVideoController;
import com.mgtv.ssp.net.ContentSdkBaseImgoHttpParams;
import com.mgtv.ssp.net.a;
import com.mgtv.ssp.play.MediaInfo;
import com.mgtv.ssp.play.PlayErrorView;
import com.mgtv.ssp.play.PlayerCore;
import com.mgtv.ssp.play.playsdk.PlayListener;
import com.mgtv.ssp.play.playsdk.PlayerVideoInfo;
import com.mgtv.ssp.widget.FeedVodBottomControlView;
import com.mgtv.ssp.widget.LoadMoreRecycleView;
import com.mgtv.ssp.widget.VideoLoadingView;
import com.mgtv.task.g;
import com.mgtv.task.h;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.m;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;

public class SspPlayDetailActivity extends AppCompatActivity {
    private ProgressBar A;
    private StandardVideoController B;
    private FeedVodBottomControlView D;
    private PlayErrorView E;
    private PlayerCore F;
    private SspPlayDetailAdapter G;
    private LinearLayoutManager H;
    private h I;
    private m J;
    private HttpParams K;
    private String L;
    private String M;
    public VideoDetailInfoBean a;
    private boolean b;
    private boolean c;
    private int g;
    private int h;
    private int i;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private MediaInfo q;
    private String r;
    private List<f> t;
    private ImageView u;
    private TextView v;
    private FrameLayout w;
    private LoadMoreRecycleView x;
    private TextView y;
    private View z;
    private boolean d = true;
    private boolean e = false;
    private boolean f = false;
    private boolean j = false;
    private List<VideoBean> s = new ArrayList();
    private VideoLoadingView C = null;

    @Override
    public void onBackPressed() {
        StandardVideoController standardVideoController = this.B;
        if (standardVideoController != null && standardVideoController.isLocked()) {
            this.B.show();
            Toast.makeText(this, R.string.mgplayer_lock_tip, 0).show();
        } else {
            if (l()) {
                return;
            }
            PlayerCore playerCore = this.F;
            if (playerCore != null) {
                playerCore.stop();
            }
            super.onBackPressed();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        t();
        s();
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_ssp_play_detail);
        this.L = getResources().getString(R.string.mgplayer_error_message);
        this.M = getResources().getString(R.string.no_network);
        this.w = (FrameLayout) findViewById(R.id.lay_detail_player);
        LoadMoreRecycleView loadMoreRecycleView = (LoadMoreRecycleView) findViewById(R.id.rv_play_detail);
        this.x = loadMoreRecycleView;
        loadMoreRecycleView.a(new LoadMoreRecycleView.c() {
            @Override
            public void a() {
                SspPlayDetailActivity.this.e();
            }
        });
        SspPlayDetailAdapter sspPlayDetailAdapter = new SspPlayDetailAdapter(this);
        this.G = sspPlayDetailAdapter;
        LoadMoreRecycleView loadMoreRecycleView2 = this.x;
        if (loadMoreRecycleView2 != null) {
            loadMoreRecycleView2.setAdapter(sspPlayDetailAdapter);
        }
        TextView textView = (TextView) findViewById(R.id.tv_bottom_open);
        this.v = textView;
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                SspPlayDetailActivity.this.u();
            }
        });
        View viewFindViewById = findViewById(R.id.lay_detail_error);
        this.z = viewFindViewById;
        this.y = (TextView) viewFindViewById.findViewById(R.id.textView_empty);
        this.z.findViewById(R.id.tv_error_retry).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                SspPlayDetailActivity.this.c();
            }
        });
        ImageView imageView = (ImageView) findViewById(R.id.iv_p_top_back);
        this.u = imageView;
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                SspPlayDetailActivity.this.onBackPressed();
            }
        });
        this.A = (ProgressBar) findViewById(R.id.detail_progressBar);
        b();
        o();
        if (p.b()) {
            c();
        } else {
            a(this.M);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        h hVar = this.I;
        if (hVar != null) {
            hVar.a((g) null);
        }
        if (this.a != null) {
            VideoSDKReport.a().w();
        }
        this.J = null;
        PlayerCore playerCore = this.F;
        if (playerCore != null) {
            playerCore.release();
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        PlayerCore playerCore = this.F;
        if (playerCore != null) {
            playerCore.gotoBackground();
            this.F.pause();
        }
    }

    @Override
    public void onResume() {
        PlayErrorView playErrorView;
        super.onResume();
        boolean z = this.j;
        if (z) {
            t.a(this, z);
        }
        PlayerCore playerCore = this.F;
        if (playerCore != null) {
            playerCore.backToFront();
        }
        boolean z2 = false;
        if (this.F.getIsPausedByUser()) {
            this.F.onActivityStart(false);
            return;
        }
        if (!this.c && ((playErrorView = this.E) == null || playErrorView.getView() == null || this.E.getView().getVisibility() != 0 || !this.E.getView().isAttachedToWindow())) {
            z2 = true;
        }
        this.F.onActivityStart(z2);
    }

    public void m() {
        MediaInfo mediaInfo = new MediaInfo();
        this.q = mediaInfo;
        mediaInfo.videoId = this.n;
        mediaInfo.contentId = this.m;
        PlayerCore playerCore = this.F;
        if (playerCore != null) {
            playerCore.stop();
            if (!TextUtils.isEmpty(this.r)) {
                VideoSDKReport.a().b(this.r);
                this.F.setLob(this.r);
            }
            this.F.prepare(this, this.q, this.l);
            this.F.setPlayClicked(true);
        }
    }

    public void n() {
        PlayerCore playerCore = this.F;
        if (playerCore != null) {
            playerCore.setBookmark(0);
            this.F.prepare(this, this.q, this.l);
        }
    }

    private void o() {
        this.p = b.n();
        this.k = getIntent().getStringExtra(TtmlNode.ATTR_ID);
        this.l = getIntent().getStringExtra("token");
        String stringExtra = getIntent().getStringExtra("contentId");
        this.m = stringExtra;
        b.a(stringExtra, "detail");
        ArrayList arrayList = new ArrayList();
        this.t = arrayList;
        this.G.a(arrayList);
        this.G.a(new OnItemChildClickListener() {
            @Override
            public void onItemChildClick(int i) {
            }

            @Override
            public void onRetryItemChildClick() {
                SspPlayDetailActivity.this.d();
            }

            @Override
            public void onItemChildClick(Object obj) {
                f fVar;
                VideoBean videoBean;
                if (!(obj instanceof f) || (videoBean = (fVar = (f) obj).c) == null || videoBean.getVideo() == null) {
                    return;
                }
                SspPlayDetailActivity.this.k = fVar.c.getVideo().getVcode();
                if (SspPlayDetailActivity.this.E != null && SspPlayDetailActivity.this.B != null) {
                    SspPlayDetailActivity.this.B.removeControlComponent(SspPlayDetailActivity.this.E);
                }
                if (!TextUtils.isEmpty(fVar.c.getVideo().getFdParams())) {
                    SspPlayDetailActivity.this.r = fVar.c.getVideo().getFdParams();
                    VideoSDKReport.a().b(SspPlayDetailActivity.this.r);
                }
                SspPlayDetailActivity.this.i = 1;
                SspPlayDetailActivity.this.f = true;
                SspPlayDetailActivity.this.c();
                VideoSDKReport.a().x();
            }
        });
        a();
        this.I = new h(ThreadManager.getNetWorkExecutorService(), false);
        this.J = new m(this, this.I, null);
        this.K = a.a(new ContentSdkBaseImgoHttpParams());
    }

    private void p() {
        this.B = new StandardVideoController(this);
        q();
        SspSdkConfig sspSdkConfigE = com.mgtv.ssp.auth.b.a().e();
        if (sspSdkConfigE != null && sspSdkConfigE.getShowLoading() == 1) {
            VideoLoadingView videoLoadingView = new VideoLoadingView(this);
            this.C = videoLoadingView;
            videoLoadingView.a(sspSdkConfigE.getLoadingTitle());
            this.B.addControlComponent(this.C);
        }
        this.F.setSupportChangeOrientation(true);
        this.F.setVideoController(this.B);
    }

    private void q() {
        FeedVodBottomControlView feedVodBottomControlView = new FeedVodBottomControlView(this);
        this.D = feedVodBottomControlView;
        feedVodBottomControlView.setScene(2);
        this.D.setViewCallback(new FeedVodBottomControlView.a() {
            @Override
            public void a() {
                if (SspPlayDetailActivity.this.F != null) {
                    if (SspPlayDetailActivity.this.F.isFullScreen()) {
                        SspPlayDetailActivity.this.F.switchFullScreenV2(false);
                        VideoSDKReport.a().y();
                    } else {
                        SspPlayDetailActivity.this.F.switchFullScreenV2(true);
                        VideoSDKReport.a().z();
                    }
                }
            }

            @Override
            public void b(int i) {
                if (SspPlayDetailActivity.this.a != null) {
                    Intent intent = new Intent(SspPlayDetailActivity.this, (Class<?>) SspCommonWebActivity.class);
                    intent.putExtra("webUrl", SspPlayDetailActivity.this.a.getReportH5());
                    com.hunantv.imgo.util.a.a(SspPlayDetailActivity.this, intent);
                }
            }

            @Override
            public void c(int i) {
                SspPlayDetailActivity.this.onBackPressed();
            }

            @Override
            public void a(int i) {
                SspPlayDetailActivity.this.u();
            }
        });
        this.B.addControlComponent(this.D);
    }

    public void r() {
        List<VideoBean> list;
        VideoInfoBean video;
        if (this.H == null || (list = this.s) == null || list.isEmpty()) {
            return;
        }
        int iFindFirstVisibleItemPosition = this.H.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = this.H.findLastVisibleItemPosition();
        int size = this.s.size();
        if (iFindFirstVisibleItemPosition < 0 || iFindLastVisibleItemPosition < 0) {
            return;
        }
        while (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
            if (this.H.findViewByPosition(iFindFirstVisibleItemPosition) != null) {
                if (iFindFirstVisibleItemPosition >= size) {
                    return;
                }
                VideoBean videoBean = this.s.get(iFindFirstVisibleItemPosition);
                if (videoBean != null && (video = videoBean.getVideo()) != null && !video.hasExposed()) {
                    e.b("lyzzzzzzzzzz", "曝光:ContentEvent.SHOW:" + video.getFdParams() + ",position：" + iFindFirstVisibleItemPosition, true);
                    VideoSDKReport.a().a(iFindFirstVisibleItemPosition, video.getVcode(), video.getFdParams(), j());
                    video.setExposed();
                }
            }
            iFindFirstVisibleItemPosition++;
        }
    }

    public void s() {
        PlayErrorView playErrorView = this.E;
        if (playErrorView != null) {
            this.B.removeControlComponent(playErrorView);
            this.B.addControlComponent(this.E, false);
            this.F.setPlayState(16);
        }
    }

    private void t() {
        int iA = t.a((Context) this);
        this.h = (iA * 9) / 16;
        this.g = iA;
        System.out.println(" sss  mWidth " + this.g + " mHeight " + this.h);
    }

    public void u() {
        VideoSDKReport.a().x();
        VideoDetailInfoBean videoDetailInfoBean = this.a;
        if (videoDetailInfoBean != null) {
            k.a(this, videoDetailInfoBean.getSchema(), this.a.getMgDownloadH5(), this.a.getSchemaHint(), "v_playDetail", this.n, "detail");
        }
    }

    public boolean v() {
        VideoDetailInfoBean videoDetailInfoBean = this.a;
        if (videoDetailInfoBean != null) {
            return (TextUtils.isEmpty(videoDetailInfoBean.getSchemaV2()) && TextUtils.isEmpty(this.a.getMgDownloadH5())) ? false : true;
        }
        return false;
    }

    public void w() {
        com.mgtv.thirdsdk.playcore.utils.f.a(this.z, 8);
    }

    public void f() {
        HttpParams httpParams = this.K;
        if (httpParams == null) {
            return;
        }
        httpParams.put("uuid", this.p);
        this.K.put("pageSize", (Number) 10);
        this.K.put("pageNum", Integer.valueOf(this.i));
        this.K.put("spaceId", b.l("detail"));
        if (!TextUtils.isEmpty(this.n)) {
            this.K.put("vcode", this.n);
        }
        this.K.put("mid", b.W());
        this.K.put("allowRc", Integer.valueOf(b.ab() ? 1 : 0));
        this.J.a(true).b(10000).a(com.hunantv.imgo.net.b.x(), this.K, new ImgoHttpCallBack<ContentListEntity>() {
            @Override
            public void b(ContentListEntity contentListEntity) {
            }

            @Override
            public void a(ContentListEntity contentListEntity) {
                SspPlayDetailActivity.this.a(contentListEntity);
                SspPlayDetailActivity.this.b = true;
            }

            @Override
            public void a(ContentListEntity contentListEntity, int i, int i2, String str, Throwable th) {
                if (SspPlayDetailActivity.this.i == 1 && !SspPlayDetailActivity.this.b) {
                    ErrorData errorData = new ErrorData();
                    errorData.setUrl(com.hunantv.imgo.net.b.x());
                    errorData.setCode(i2 + "");
                    errorData.setParam(SspPlayDetailActivity.this.K != null ? SspPlayDetailActivity.this.K.buildParameter() : "");
                    errorData.setMsg(str);
                    SspPlayDetailActivity.this.a("ppv", false, errorData);
                }
                if (SspPlayDetailActivity.this.i == 1) {
                    SspPlayDetailActivity.this.b = true;
                    if (SspPlayDetailActivity.this.t.size() != 0) {
                        if (SspPlayDetailActivity.this.t.size() == 3) {
                            f fVar = (f) SspPlayDetailActivity.this.t.get(2);
                            if (fVar == null) {
                                fVar = new f(SspPlayDetailAdapter.a);
                            }
                            if (p.b()) {
                                fVar.f = SspPlayDetailActivity.this.L;
                            } else {
                                fVar.f = SspPlayDetailActivity.this.M;
                            }
                            SspPlayDetailActivity.this.G.a(true);
                            SspPlayDetailActivity.this.G.notifyDataSetChanged();
                            return;
                        }
                        return;
                    }
                    System.out.println("bindVideoInfo resetList mInfoList.size() == 0 ");
                    f fVar2 = new f(SspPlayDetailAdapter.b, new VideoDetailInfoBean());
                    fVar2.e = true;
                    f fVar3 = new f(SspPlayDetailAdapter.c);
                    f fVar4 = new f(SspPlayDetailAdapter.a);
                    if (p.b()) {
                        fVar4.f = SspPlayDetailActivity.this.L;
                    } else {
                        fVar4.f = SspPlayDetailActivity.this.M;
                    }
                    SspPlayDetailActivity.this.t.add(fVar2);
                    SspPlayDetailActivity.this.t.add(fVar3);
                    SspPlayDetailActivity.this.t.add(fVar4);
                    SspPlayDetailActivity.this.G.a(true);
                    SspPlayDetailActivity.this.G.notifyDataSetChanged();
                }
            }
        });
    }

    public void g() {
        com.mgtv.thirdsdk.playcore.utils.f.a(this.A, 8);
    }

    public void h() {
        com.mgtv.thirdsdk.playcore.utils.f.a(this.A, 0);
    }

    public void i() {
        LoadMoreRecycleView loadMoreRecycleView = this.x;
        if (loadMoreRecycleView != null) {
            loadMoreRecycleView.a(false);
        }
    }

    public String j() {
        return "detail";
    }

    public boolean k() {
        PlayerCore playerCore = this.F;
        if (playerCore != null) {
            return playerCore.isFullScreen();
        }
        return false;
    }

    public boolean l() {
        if (!this.F.isFullScreen()) {
            return false;
        }
        VideoSDKReport.a().y();
        this.F.switchFullScreenV2(false);
        return true;
    }

    public void b() {
        if (this.H == null) {
            this.H = new LinearLayoutManager(this) {
                @Override
                public boolean canScrollVertically() {
                    return true;
                }
            };
        }
        LoadMoreRecycleView loadMoreRecycleView = this.x;
        if (loadMoreRecycleView != null) {
            loadMoreRecycleView.setLayoutManager(this.H);
        }
    }

    public void c() {
        ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParamsA = a.a(new ContentSdkBaseImgoHttpParams());
        contentSdkBaseImgoHttpParamsA.put("spaceId", b.l("detail"));
        if (!TextUtils.isEmpty(this.k)) {
            contentSdkBaseImgoHttpParamsA.put("vcode", this.k);
        }
        if (!TextUtils.isEmpty(b.W())) {
            contentSdkBaseImgoHttpParamsA.put("mid", b.W());
        }
        if (this.d) {
            h();
        }
        new m(this).a(true).b(10000).a(com.hunantv.imgo.net.b.y(), contentSdkBaseImgoHttpParamsA, new ImgoHttpCallBack<VideoDetailInfoEntity>() {
            @Override
            public void b(VideoDetailInfoEntity videoDetailInfoEntity) {
            }

            @Override
            public void a(VideoDetailInfoEntity videoDetailInfoEntity) {
                VideoDetailInfoEntity.Data data;
                SspSpaceConfig sspSpaceConfig;
                String str;
                VideoDetailInfoEntity.Data data2;
                SspPlayDetailActivity.this.g();
                PrintStream printStream = System.out;
                printStream.println("bindVideoInfo success ");
                boolean z = (videoDetailInfoEntity == null || (data2 = videoDetailInfoEntity.data) == null || data2.video == null) ? false : true;
                if (videoDetailInfoEntity != null && (data = videoDetailInfoEntity.data) != null && (sspSpaceConfig = data.spaceCfg) != null && (str = sspSpaceConfig.adspaceId) != null) {
                    SspPlayDetailActivity.this.o = str;
                    com.hunantv.imgo.b.e.c().a(videoDetailInfoEntity.data.spaceCfg.autoPlay == 1);
                }
                if (!z) {
                    if (SspPlayDetailActivity.this.t == null || SspPlayDetailActivity.this.t.size() == 0) {
                        SspPlayDetailActivity sspPlayDetailActivity = SspPlayDetailActivity.this;
                        sspPlayDetailActivity.a(sspPlayDetailActivity.getResources().getString(R.string.page_empty));
                        return;
                    }
                    return;
                }
                VideoDetailInfoBean videoDetailInfoBean = videoDetailInfoEntity.data.video;
                SspPlayDetailActivity sspPlayDetailActivity2 = SspPlayDetailActivity.this;
                sspPlayDetailActivity2.a = videoDetailInfoBean;
                if (sspPlayDetailActivity2.v()) {
                    com.mgtv.thirdsdk.playcore.utils.f.a(SspPlayDetailActivity.this.v, 0);
                } else {
                    com.mgtv.thirdsdk.playcore.utils.f.a(SspPlayDetailActivity.this.v, 8);
                }
                if (SspPlayDetailActivity.this.D != null) {
                    SspPlayDetailActivity.this.D.setTopUiVisible(SspPlayDetailActivity.this.k());
                }
                SspPlayDetailActivity.this.n = videoDetailInfoBean.getVcode();
                if (TextUtils.isEmpty(SspPlayDetailActivity.this.n)) {
                    return;
                }
                if (!TextUtils.isEmpty(videoDetailInfoBean.getFdParams())) {
                    SspPlayDetailActivity.this.r = videoDetailInfoBean.getFdParams();
                    VideoSDKReport.a().b(SspPlayDetailActivity.this.r);
                }
                SspPlayDetailActivity.this.m();
                if (SspPlayDetailActivity.this.t.size() > 1) {
                    f fVar = (f) SspPlayDetailActivity.this.t.get(0);
                    if (fVar != null) {
                        if (fVar.b != SspPlayDetailAdapter.b) {
                            SspPlayDetailActivity.this.t.add(0, new f(SspPlayDetailAdapter.b, videoDetailInfoBean));
                        } else {
                            SspPlayDetailActivity.this.t.remove(0);
                            SspPlayDetailActivity.this.t.add(0, new f(SspPlayDetailAdapter.b, videoDetailInfoBean));
                        }
                    }
                    f fVar2 = (f) SspPlayDetailActivity.this.t.get(1);
                    if (fVar2 != null && fVar2.b != SspPlayDetailAdapter.c) {
                        SspPlayDetailActivity.this.t.add(1, new f(SspPlayDetailAdapter.c));
                    }
                    if (SspPlayDetailActivity.this.G != null) {
                        SspPlayDetailActivity.this.G.notifyDataSetChanged();
                    }
                } else if (SspPlayDetailActivity.this.t.size() == 0) {
                    printStream.println("bindVideoInfo mInfoList.size() == 0 detailInfoBean " + videoDetailInfoBean.getActors());
                    SspPlayDetailActivity.this.t.add(new f(SspPlayDetailAdapter.b, videoDetailInfoBean));
                    SspPlayDetailActivity.this.t.add(new f(SspPlayDetailAdapter.c));
                    SspPlayDetailActivity.this.t.add(new f(SspPlayDetailAdapter.a));
                    SspPlayDetailActivity.this.G.notifyDataSetChanged();
                }
                SspPlayDetailActivity.this.a("ppv", true, (ErrorData) null);
                SspPlayDetailActivity.this.w();
                if (SspPlayDetailActivity.this.d) {
                    SspPlayDetailActivity.this.d = false;
                    SspPlayDetailActivity.this.d();
                }
            }

            @Override
            public void a(VideoDetailInfoEntity videoDetailInfoEntity, int i, int i2, String str, Throwable th) {
                SspPlayDetailActivity.this.g();
                ErrorData errorData = new ErrorData();
                errorData.setUrl(com.hunantv.imgo.net.b.y());
                errorData.setCode(i2 + "");
                errorData.setParam(SspPlayDetailActivity.this.K != null ? SspPlayDetailActivity.this.K.buildParameter() : "");
                errorData.setMsg(str);
                SspPlayDetailActivity.this.a("ppv", false, errorData);
                if (p.b()) {
                    SspPlayDetailActivity sspPlayDetailActivity = SspPlayDetailActivity.this;
                    sspPlayDetailActivity.a(sspPlayDetailActivity.L);
                } else {
                    SspPlayDetailActivity sspPlayDetailActivity2 = SspPlayDetailActivity.this;
                    sspPlayDetailActivity2.a(sspPlayDetailActivity2.M);
                }
                SspPlayDetailActivity.this.g();
            }
        });
    }

    public void d() {
        this.i = 1;
        f();
    }

    public void e() {
        if (this.t.size() <= 3) {
            return;
        }
        this.i++;
        f();
    }

    public void a() {
        PlayerCore playerCore = new PlayerCore();
        this.F = playerCore;
        playerCore.setFrom(j());
        this.F.setRequestPauseAd(true);
        if ("0".equals(this.F.init(this))) {
            p();
            this.w.removeAllViews();
            t.a((Context) this);
            t();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.g, this.h);
            layoutParams.gravity = 17;
            if (this.F.getDisplayView() != null) {
                this.w.addView(this.F.getDisplayView(), layoutParams);
            }
            this.F.setAspectRatio(1);
            this.F.setOnVideoCompleteListener(new PlayListener.OnVideoCompleteListener() {
                @Override
                public void onVideoComplete() {
                    PlayerVideoInfo currentVideoInfo = SspPlayDetailActivity.this.F.getCurrentVideoInfo();
                    if (currentVideoInfo == null || !currentVideoInfo.isPreview()) {
                        SspPlayDetailActivity.this.c = true;
                        if (SspPlayDetailActivity.this.F != null) {
                            SspPlayDetailActivity.this.F.pause();
                            SspPlayDetailActivity.this.F.setPlayState(11);
                            return;
                        }
                        return;
                    }
                    if (SspPlayDetailActivity.this.E != null && SspPlayDetailActivity.this.B != null) {
                        SspPlayDetailActivity.this.B.removeControlComponent(SspPlayDetailActivity.this.E);
                    }
                    SspPlayDetailActivity.this.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP, "");
                    SspPlayDetailActivity.this.E.setAuthData(SspPlayDetailActivity.this.F.getAuthData());
                    SspPlayDetailActivity.this.E.rendUi(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP);
                    SspPlayDetailActivity.this.s();
                    SspPlayDetailActivity.this.c = false;
                }
            });
            this.F.setOnVideoStartPlayingListener(new PlayListener.OnVideoStartPlayingListener() {
                @Override
                public void onVideoStartPlaying(boolean z) {
                }
            });
            this.F.setOnErrorListener(new PlayListener.OnErrorListener() {
                @Override
                public void onError(String str) {
                    if (str == null || !str.startsWith("140105_")) {
                        return;
                    }
                    if (SspPlayDetailActivity.this.E != null) {
                        SspPlayDetailActivity.this.B.removeControlComponent(SspPlayDetailActivity.this.E);
                    }
                    SspPlayDetailActivity sspPlayDetailActivity = SspPlayDetailActivity.this;
                    sspPlayDetailActivity.a(str, sspPlayDetailActivity.getResources().getString(R.string.sorry_play_faild));
                    SspPlayDetailActivity.this.E.setAuthData(SspPlayDetailActivity.this.F.getAuthData());
                    SspPlayDetailActivity.this.F.getCurrentVideoInfo();
                    SspPlayDetailActivity.this.E.rendUi(str, SspPlayDetailActivity.this.k);
                    SspPlayDetailActivity.this.s();
                }
            });
            this.F.setOnAuthorizeResultListener(new PlayListener.OnAuthorizeResultListener() {
                @Override
                public void onAuthorizeResult(String str, String str2) {
                    if (MgtvPlayerConstants.ErrorCode.AUTH_SUCCESS.equals(str) || MgtvPlayerConstants.ErrorCode.AUTH_FAILED_JUST_LOOK.equals(str)) {
                        return;
                    }
                    if (SspPlayDetailActivity.this.E != null && SspPlayDetailActivity.this.B != null) {
                        SspPlayDetailActivity.this.B.removeView(SspPlayDetailActivity.this.E.getView());
                    }
                    SspPlayDetailActivity sspPlayDetailActivity = SspPlayDetailActivity.this;
                    sspPlayDetailActivity.E = sspPlayDetailActivity.a(str, str2);
                    SspPlayDetailActivity.this.E.setAuthData(SspPlayDetailActivity.this.F.getAuthData());
                    SspPlayDetailActivity.this.E.rendUi(str);
                    SspPlayDetailActivity.this.s();
                }
            });
            this.F.setOnVideoPreparedListener(new PlayListener.OnVideoPreparedListener() {
                @Override
                public void onVideoPrepared() {
                    if (SspPlayDetailActivity.this.E == null || SspPlayDetailActivity.this.B == null) {
                        return;
                    }
                    SspPlayDetailActivity.this.B.removeView(SspPlayDetailActivity.this.E.getView());
                    SspPlayDetailActivity.this.E = null;
                }
            });
            this.F.setOnAdStartPlayingListener(new PlayListener.OnAdStartPlayingListener() {
                @Override
                public void onAdStartPlaying() {
                    if (SspPlayDetailActivity.this.E == null || SspPlayDetailActivity.this.B == null) {
                        return;
                    }
                    SspPlayDetailActivity.this.B.removeView(SspPlayDetailActivity.this.E.getView());
                    SspPlayDetailActivity.this.E = null;
                }
            });
            this.F.setOnAdCountdownListener(new PlayListener.OnAdCountdownListener() {
                @Override
                public void onAdCountdown(int i) {
                }
            });
            this.F.setOnAdPreparedListener(new PlayListener.OnAdPreparedListener() {
                @Override
                public void onAdPrepared() {
                }
            });
            this.F.setOnAdCompleteListener(new PlayListener.OnAdCompleteListener() {
                @Override
                public void onAdComplete() {
                }
            });
            this.F.setOnVideoLoadingListener(new PlayListener.OnVideoLoadingListener() {
                @Override
                public void onBuffering(int i) {
                }

                @Override
                public void onVideoLoading(int i) {
                }
            });
            this.F.setOnVideoPausedListener(new PlayListener.OnVideoPausedListener() {
                @Override
                public void OnVideoPaused() {
                }
            });
            this.F.setOnVideoPreparingListener(new PlayListener.OnVideoPreparingListener() {
                @Override
                public void OnVideoPreparing() {
                }
            });
            this.F.setOnVideoStoppedListener(new PlayListener.OnVideoStoppedListener() {
                @Override
                public void OnVideoStopped() {
                }
            });
            this.F.setOnVideoStartedListener(new PlayListener.OnVideoStartedListener() {
                @Override
                public void OnVideoStarted() {
                }
            });
            this.F.setOnVideoSizeChangedListener(new PlayListener.OnVideoSizeChangedListener() {
                @Override
                public void onVideoSizeChanged(int i, int i2) {
                }
            });
            this.F.setSourcePrepareListener(new c() {
                @Override
                public void a(boolean z, String str, String str2) {
                }
            });
            this.F.setAdControlListener(new d() {
                @Override
                public void a() {
                    SspPlayDetailActivity.this.onBackPressed();
                }

                @Override
                public void b() {
                    if (SspPlayDetailActivity.this.F != null) {
                        if (SspPlayDetailActivity.this.F.isFullScreen()) {
                            SspPlayDetailActivity.this.F.switchFullScreenV2(false);
                            VideoSDKReport.a().y();
                        } else {
                            SspPlayDetailActivity.this.F.switchFullScreenV2(true);
                            VideoSDKReport.a().z();
                        }
                    }
                }

                @Override
                public void c() {
                    SspPlayDetailActivity.this.c = false;
                }

                @Override
                public void a(boolean z) {
                    int iA;
                    if (SspPlayDetailActivity.this.D != null) {
                        SspPlayDetailActivity.this.D.setTopUiVisible(z);
                    }
                    SspPlayDetailActivity.this.j = z;
                    if (SspPlayDetailActivity.this.E != null) {
                        SspPlayDetailActivity.this.E.screenChange(SspPlayDetailActivity.this.j);
                    }
                    if (SspPlayDetailActivity.this.B != null) {
                        ViewGroup.LayoutParams layoutParams2 = SspPlayDetailActivity.this.B.getLayoutParams();
                        if (z) {
                            t.a((Activity) SspPlayDetailActivity.this, true);
                            com.mgtv.thirdsdk.playcore.utils.f.a(SspPlayDetailActivity.this.u, 8);
                            iA = t.a(SspPlayDetailActivity.this, 40.0f);
                        } else {
                            t.a((Activity) SspPlayDetailActivity.this, false);
                            com.mgtv.thirdsdk.playcore.utils.f.a(SspPlayDetailActivity.this.u, 0);
                            iA = 0;
                        }
                        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
                            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) layoutParams2;
                            layoutParams3.rightMargin = iA;
                            layoutParams3.leftMargin = iA;
                        }
                    }
                }
            });
        }
    }

    public void b(List<VideoBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        List<VideoBean> list2 = this.s;
        list2.addAll(list2.size(), list);
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(new f(SspPlayDetailAdapter.d, list.get(i)));
        }
        a(this.t.size(), arrayList.size(), arrayList);
    }

    public void a(ContentListEntity contentListEntity) {
        ContentListEntity.Data data;
        i();
        boolean z = this.i == 1;
        if (contentListEntity != null && (data = contentListEntity.data) != null) {
            com.mgtv.ssp.bean.b bVar = data.page;
            if (bVar != null) {
                a(bVar.a());
            }
            List<VideoBean> list = contentListEntity.data.items;
            if (z) {
                a(list);
            } else {
                b(list);
            }
            LoadMoreRecycleView loadMoreRecycleView = this.x;
            if (loadMoreRecycleView != null) {
                loadMoreRecycleView.post(new Runnable() {
                    @Override
                    public void run() {
                        SspPlayDetailActivity.this.r();
                    }
                });
                return;
            }
            return;
        }
        a(0);
        if (z) {
            return;
        }
        v.a(getResources().getString(R.string.no_more_data));
    }

    public void a(List<VideoBean> list) {
        f fVar;
        f fVar2;
        f fVar3;
        f fVar4;
        f fVar5;
        f fVar6;
        f fVar7;
        f fVar8;
        f fVar9 = null;
        if (list != null && !list.isEmpty()) {
            this.s.clear();
            this.s.addAll(list);
            ArrayList arrayList = new ArrayList();
            int size = list.size();
            int i = 0;
            while (i < size) {
                f fVar10 = new f(SspPlayDetailAdapter.d, list.get(i));
                fVar10.a = i == 0;
                arrayList.add(fVar10);
                i++;
            }
            if (this.t == null) {
                this.t = new ArrayList();
            }
            if (this.t.size() > 1) {
                f fVar11 = this.t.get(0);
                if (fVar11 != null) {
                    int i2 = fVar11.b;
                    int i3 = SspPlayDetailAdapter.b;
                    fVar7 = i2 != i3 ? new f(i3) : fVar11;
                } else {
                    fVar7 = null;
                }
                f fVar12 = this.t.get(1);
                if (fVar12 != null) {
                    System.out.println("bindVideoInfo resetList TYPE_AD sspBaseDetail1 " + fVar11.d.getActors());
                    int i4 = fVar12.b;
                    int i5 = SspPlayDetailAdapter.c;
                    if (i4 != i5) {
                        fVar12 = new f(i5, new VideoDetailInfoBean());
                    }
                } else {
                    fVar12 = null;
                }
                if (this.t.size() > 2 && arrayList.size() == 0 && (fVar8 = this.t.get(2)) != null) {
                    System.out.println("bindVideoInfo TYPE_AD ");
                    int i6 = fVar8.b;
                    int i7 = SspPlayDetailAdapter.a;
                    fVar9 = i6 != i7 ? new f(i7) : fVar8;
                }
                fVar5 = fVar12;
                f fVar13 = fVar9;
                fVar9 = fVar7;
                fVar6 = fVar13;
            } else if (this.t.size() == 0) {
                System.out.println("bindVideoInfo resetList mInfoList.size() == 0 ");
                fVar9 = new f(SspPlayDetailAdapter.b, new VideoDetailInfoBean());
                fVar5 = new f(SspPlayDetailAdapter.c);
                fVar6 = new f(SspPlayDetailAdapter.a);
            } else {
                fVar5 = null;
                fVar6 = null;
            }
            this.t.clear();
            if (fVar9 == null) {
                System.out.println("bindVideoInfo resetList sspBaseDetail == 0 ");
                fVar9 = new f(SspPlayDetailAdapter.b, new VideoDetailInfoBean());
            }
            this.t.add(fVar9);
            if (fVar5 == null) {
                fVar5 = new f(SspPlayDetailAdapter.c);
            }
            this.t.add(fVar5);
            if (arrayList.size() == 0) {
                if (fVar6 == null) {
                    fVar6 = new f(SspPlayDetailAdapter.a);
                }
                this.t.add(fVar6);
                this.G.a(true);
            } else {
                if (fVar6 != null && this.t.size() > 2) {
                    this.t.remove(2);
                }
                this.G.a(false);
                this.t.addAll(arrayList);
            }
            this.G.notifyDataSetChanged();
            return;
        }
        if (this.t == null) {
            this.t = new ArrayList();
        }
        if (this.t.size() > 1) {
            f fVar14 = this.t.get(0);
            if (fVar14 != null) {
                System.out.println("bindVideoInfo resetList TYPE_DESC sspBaseDetail0 " + fVar14.d.getActors());
                int i8 = fVar14.b;
                int i9 = SspPlayDetailAdapter.b;
                if (i8 != i9) {
                    fVar3 = new f(i9);
                    fVar3.e = true;
                } else {
                    fVar3 = fVar14;
                }
            } else {
                fVar3 = null;
            }
            f fVar15 = this.t.get(1);
            if (fVar15 != null) {
                System.out.println("bindVideoInfo resetList TYPE_AD sspBaseDetail1 " + fVar14.d.getActors());
                int i10 = fVar15.b;
                int i11 = SspPlayDetailAdapter.c;
                if (i10 != i11) {
                    fVar15 = new f(i11, new VideoDetailInfoBean());
                }
            } else {
                fVar15 = null;
            }
            if (this.t.size() > 2 && (fVar4 = this.t.get(2)) != null) {
                System.out.println("bindVideoInfo TYPE_AD ");
                int i12 = fVar4.b;
                int i13 = SspPlayDetailAdapter.a;
                fVar9 = i12 != i13 ? new f(i13) : fVar4;
            }
            fVar = fVar15;
            f fVar16 = fVar9;
            fVar9 = fVar3;
            fVar2 = fVar16;
        } else if (this.t.size() == 0) {
            System.out.println("bindVideoInfo resetList mInfoList.size() == 0 ");
            fVar9 = new f(SspPlayDetailAdapter.b, new VideoDetailInfoBean());
            fVar9.e = true;
            fVar = new f(SspPlayDetailAdapter.c);
            fVar2 = new f(SspPlayDetailAdapter.a);
        } else {
            fVar = null;
            fVar2 = null;
        }
        this.t.clear();
        if (fVar9 == null) {
            fVar9 = new f(SspPlayDetailAdapter.b, new VideoDetailInfoBean());
            fVar9.e = true;
        }
        this.t.add(fVar9);
        if (fVar == null) {
            fVar = new f(SspPlayDetailAdapter.c);
        }
        this.t.add(fVar);
        if (fVar2 == null) {
            fVar2 = new f(SspPlayDetailAdapter.a);
        }
        fVar2.f = getResources().getString(R.string.page_empty);
        this.t.add(fVar2);
        this.G.a(true);
        this.G.notifyDataSetChanged();
    }

    private void a(int i, int i2, List<f> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (i == 0) {
            this.t.addAll(i, list);
        } else {
            this.t.addAll(list);
        }
        this.G.notifyItemRangeInserted(i, i2);
    }

    public void a(int i) {
        LoadMoreRecycleView loadMoreRecycleView = this.x;
        if (loadMoreRecycleView == null || i <= 0) {
            return;
        }
        loadMoreRecycleView.a(i);
    }

    public void a(String str, boolean z, ErrorData errorData) {
        VideoSDKReport.a().a(str, z ? "0" : "1", errorData, j());
    }

    public PlayErrorView a(String str, String str2) {
        PlayErrorView playErrorView = this.E;
        if (playErrorView == null) {
            PlayErrorView playErrorView2 = new PlayErrorView(this, str, str2);
            this.E = playErrorView2;
            playErrorView2.setViewClick(new PlayErrorView.OnErrorViewCallback() {
                @Override
                public boolean isFull() {
                    return SspPlayDetailActivity.this.j;
                }

                @Override
                public void onBack() {
                    SspPlayDetailActivity.this.onBackPressed();
                }

                @Override
                public void onDismiss() {
                    if (SspPlayDetailActivity.this.E == null || SspPlayDetailActivity.this.B == null) {
                        return;
                    }
                    SspPlayDetailActivity.this.B.removeView(SspPlayDetailActivity.this.E.getView());
                    SspPlayDetailActivity.this.E = null;
                }

                @Override
                public void retry() {
                    SspPlayDetailActivity.this.n();
                }

                @Override
                public void toLogin() {
                }

                @Override
                public void toVip(String str3) {
                }
            });
        } else {
            playErrorView.setMsg(str2);
        }
        return this.E;
    }

    public void a(String str) {
        List<f> list = this.t;
        if (list == null || list.size() == 0) {
            TextView textView = this.y;
            if (textView != null) {
                textView.setText(str);
            }
            com.mgtv.thirdsdk.playcore.utils.f.a(this.z, 0);
        }
    }
}
