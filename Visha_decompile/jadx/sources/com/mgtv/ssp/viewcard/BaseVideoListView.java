package com.mgtv.ssp.viewcard;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hunantv.imgo.data.ErrorData;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.log.e;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.ThreadManager;
import com.hunantv.imgo.util.p;
import com.hunantv.imgo.util.v;
import com.mgtv.ssp.MgSspLoginStatusReceiver;
import com.mgtv.ssp.R;
import com.mgtv.ssp.adapter.BaseVideoAdapter;
import com.mgtv.ssp.auth.EntranceInfo;
import com.mgtv.ssp.auth.b;
import com.mgtv.ssp.authbase.AccountInfo;
import com.mgtv.ssp.authbase.MgSspAccountCallback;
import com.mgtv.ssp.authbase.a;
import com.mgtv.ssp.bean.ContentListEntity;
import com.mgtv.ssp.bean.VideoBean;
import com.mgtv.ssp.bean.VideoInfoBean;
import com.mgtv.ssp.bean.config.SspSpaceConfig;
import com.mgtv.ssp.callback.MgSspSdkCallback;
import com.mgtv.ssp.control.GestureVideoController;
import com.mgtv.ssp.fragment.BaseListFragment;
import com.mgtv.ssp.play.PlayErrorView;
import com.mgtv.ssp.play.PlayerCore;
import com.mgtv.ssp.play.playsdk.PlayListener;
import com.mgtv.ssp.widget.LoadMoreRecycleView;
import com.mgtv.task.g;
import com.mgtv.task.h;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.m;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseVideoListView extends BaseView {
    public static int s;
    private BaseListFragment.a G;
    private h H;
    private m I;
    private boolean a;
    private MgSspSdkCallback b;
    protected boolean c;
    protected List<VideoBean> d;
    protected int e;
    protected String f;
    protected LoadMoreRecycleView g;
    protected RecyclerView.Adapter h;
    protected LinearLayoutManager i;
    protected HttpParams j;
    protected EntranceInfo k;
    protected PlayErrorView l;
    protected TextView m;
    protected int n;
    protected VideoInfoBean o;
    protected PlayerCore p;
    protected GestureVideoController q;
    protected MgSspAccountCallback r;
    protected int t;
    protected List<String> u;
    protected boolean v;
    protected long w;
    public Activity x;
    int y;
    long z;

    public BaseVideoListView(@NonNull Context context) {
        this(context, null);
    }

    private void f() {
        if (this.x != null) {
            this.H = new h(ThreadManager.getNetWorkExecutorService(), false);
            this.I = new m(this.x, this.H, null);
            a(this.x);
        }
    }

    public void h() {
        if (this.y == 0 && PreferencesUtil.a("SDKCONFIG_SWITCH", 0) == 1) {
            this.y++;
            a(getRetryUrl());
        }
    }

    public void w() {
        List<VideoBean> list;
        VideoInfoBean video;
        if (!getRealVisible() || this.i == null || (list = this.d) == null || list.isEmpty()) {
            return;
        }
        int iFindFirstVisibleItemPosition = this.i.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = this.i.findLastVisibleItemPosition();
        int size = this.d.size();
        if (iFindFirstVisibleItemPosition < 0 || iFindLastVisibleItemPosition < 0) {
            return;
        }
        while (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
            if (this.i.findViewByPosition(iFindFirstVisibleItemPosition) != null) {
                if (iFindFirstVisibleItemPosition >= size) {
                    return;
                }
                VideoBean videoBean = this.d.get(iFindFirstVisibleItemPosition);
                if (videoBean != null && (video = videoBean.getVideo()) != null && !video.hasExposed()) {
                    e.b("lyzzzzzzzzzz", "曝光:ContentEvent.SHOW:" + video.getFdParams() + ",position：" + iFindFirstVisibleItemPosition, true);
                    VideoSDKReport.a().a(iFindFirstVisibleItemPosition, video.getPreviewVcode(), video.getFdParams(), getModType());
                    video.setExposed();
                }
            }
            iFindFirstVisibleItemPosition++;
        }
    }

    public abstract LoadMoreRecycleView a();

    public void a(boolean z) {
    }

    public abstract RecyclerView.Adapter b();

    public abstract LinearLayoutManager c();

    public abstract HttpParams d();

    public void destroy() {
        this.B = false;
        h hVar = this.H;
        if (hVar != null) {
            hVar.a((g) null);
        }
        this.I = null;
        if (this.o != null) {
            VideoSDKReport.a().w();
        }
        this.f = "";
        this.a = false;
        PlayerCore playerCore = this.p;
        if (playerCore != null) {
            playerCore.release();
            this.p = null;
        }
    }

    public void g() {
    }

    public EntranceInfo getInfo() {
        return this.k;
    }

    public abstract String getModType();

    public abstract String getRetryUrl();

    public m getTaskStarter() {
        return this.I;
    }

    public abstract String getUrl();

    public BaseListFragment.a getmAutoCallback() {
        return this.G;
    }

    public void i() {
    }

    public void j() {
    }

    public void k() {
    }

    public void l() {
    }

    public void m() {
        this.n = -1;
        a(s, true, false);
    }

    public void n() {
        if (this.A) {
            return;
        }
        j();
        q();
        this.A = true;
        SspSpaceConfig sspSpaceConfigD = b.a().d();
        if (sspSpaceConfigD != null) {
            com.hunantv.imgo.b.e.c().a(sspSpaceConfigD.autoPlay == 1);
        }
    }

    public void o() {
        PlayerCore playerCore = this.p;
        if (playerCore != null) {
            playerCore.setOnAuthorizeResultListener(new PlayListener.OnAuthorizeResultListener() {
                @Override
                public void onAuthorizeResult(String str, String str2) {
                    if (MgtvPlayerConstants.ErrorCode.AUTH_SUCCESS.equals(str) || MgtvPlayerConstants.ErrorCode.AUTH_FAILED_JUST_LOOK.equals(str)) {
                        return;
                    }
                    BaseVideoListView baseVideoListView = BaseVideoListView.this;
                    PlayErrorView playErrorView = baseVideoListView.l;
                    if (playErrorView != null) {
                        baseVideoListView.q.removeControlComponent(playErrorView);
                    }
                    BaseVideoListView.this.a(str, str2);
                    BaseVideoListView baseVideoListView2 = BaseVideoListView.this;
                    baseVideoListView2.l.setAuthData(baseVideoListView2.p.getAuthData());
                    BaseVideoListView baseVideoListView3 = BaseVideoListView.this;
                    VideoInfoBean videoInfoBean = baseVideoListView3.o;
                    if (videoInfoBean != null) {
                        baseVideoListView3.l.rendUi(str, videoInfoBean.getPreviewVcode());
                    } else {
                        baseVideoListView3.l.rendUi(str, "-1");
                    }
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    BaseVideoListView baseVideoListView4 = BaseVideoListView.this;
                    baseVideoListView4.q.addControlComponent(layoutParams, baseVideoListView4.l, false);
                    BaseVideoListView.this.p.setPlayState(16);
                }
            });
            this.p.setOnErrorListener(new PlayListener.OnErrorListener() {
                @Override
                public void onError(String str) {
                    if (str == null || !str.startsWith("140105_")) {
                        return;
                    }
                    BaseVideoListView baseVideoListView = BaseVideoListView.this;
                    PlayErrorView playErrorView = baseVideoListView.l;
                    if (playErrorView != null) {
                        baseVideoListView.q.removeControlComponent(playErrorView);
                    }
                    BaseVideoListView baseVideoListView2 = BaseVideoListView.this;
                    baseVideoListView2.a(str, baseVideoListView2.getResources().getString(R.string.sorry_play_faild));
                    BaseVideoListView baseVideoListView3 = BaseVideoListView.this;
                    baseVideoListView3.l.setAuthData(baseVideoListView3.p.getAuthData());
                    BaseVideoListView baseVideoListView4 = BaseVideoListView.this;
                    VideoInfoBean videoInfoBean = baseVideoListView4.o;
                    if (videoInfoBean != null) {
                        baseVideoListView4.l.rendUi(str, videoInfoBean.getPreviewVcode());
                    } else {
                        baseVideoListView4.l.rendUi(str, "-1");
                    }
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    BaseVideoListView baseVideoListView5 = BaseVideoListView.this;
                    baseVideoListView5.q.addControlComponent(layoutParams, baseVideoListView5.l, false);
                    BaseVideoListView.this.p.setPlayState(16);
                }
            });
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void onPause() {
    }

    public void onResume() {
    }

    @Override
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            onResume();
        } else {
            g();
        }
    }

    public void p() {
        VideoInfoBean videoInfoBean = this.o;
        if (videoInfoBean == null || TextUtils.isEmpty(videoInfoBean.getPreviewVcode())) {
            return;
        }
        this.u.add(this.o.getPreviewVcode());
        this.t = this.u.size();
    }

    public void pause() {
    }

    public void q() {
        this.e = 1;
        this.y = 0;
        a(getUrl());
    }

    public void r() {
        this.e++;
        this.y = 0;
        a(getUrl());
    }

    public void resume() {
    }

    public void s() {
        LoadMoreRecycleView loadMoreRecycleView = this.g;
        if (loadMoreRecycleView != null) {
            loadMoreRecycleView.a(false);
        }
    }

    public void setFrom(String str) {
        RecyclerView.Adapter adapter = this.h;
        if (adapter instanceof BaseVideoAdapter) {
            ((BaseVideoAdapter) adapter).a(str);
        }
    }

    public void setInfo(EntranceInfo entranceInfo) {
        this.k = entranceInfo;
    }

    public void setIsMore(int i) {
        LoadMoreRecycleView loadMoreRecycleView = this.g;
        if (loadMoreRecycleView == null || i <= 0) {
            return;
        }
        loadMoreRecycleView.a(i);
    }

    public void setMgSspSdkCallback(MgSspSdkCallback mgSspSdkCallback) {
        this.b = mgSspSdkCallback;
    }

    public void setmAutoCallback(BaseListFragment.a aVar) {
        this.G = aVar;
    }

    public void t() {
        if (this.o != null) {
            VideoSDKReport.a().x();
        }
    }

    public void u() {
        MgSspAccountCallback mgSspAccountCallback = new MgSspAccountCallback() {
            @Override
            public void gotoLogin(MgSspLoginStatusReceiver mgSspLoginStatusReceiver) {
                if (BaseVideoListView.this.b != null) {
                    BaseVideoListView.this.b.gotoLogin(mgSspLoginStatusReceiver);
                }
            }

            @Override
            public void onResult(int i, String str) {
                if (i == 0) {
                    com.mgtv.ssp.authbase.b.a(BaseVideoListView.this.x, new com.mgtv.ssp.authbase.b.a() {
                        @Override
                        public void onChanged(boolean z) {
                            if (z) {
                                BaseVideoListView.this.m();
                            }
                        }
                    });
                }
            }
        };
        this.r = mgSspAccountCallback;
        PlayerCore playerCore = this.p;
        if (playerCore != null) {
            playerCore.setSspAccountCallback(mgSspAccountCallback);
        }
    }

    @Override
    public void visibleChanged(boolean z) {
        if (z != this.v || System.currentTimeMillis() - this.w >= 1000) {
            this.v = z;
            this.w = System.currentTimeMillis();
            setRealVisible(z);
            a(z);
        }
    }

    public BaseVideoListView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void b(List<VideoBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a(this.d.size(), list.size(), list);
    }

    @Override
    public void e() {
        RecyclerView.Adapter adapter;
        this.d = new ArrayList();
        this.g = a();
        this.h = b();
        setFrom(getModType());
        this.j = d();
        LinearLayoutManager linearLayoutManagerC = c();
        this.i = linearLayoutManagerC;
        LoadMoreRecycleView loadMoreRecycleView = this.g;
        if (loadMoreRecycleView == null || (adapter = this.h) == null || linearLayoutManagerC == null || this.j == null) {
            return;
        }
        loadMoreRecycleView.setAdapter(adapter);
        this.g.setLayoutManager(this.i);
        this.g.a(new LoadMoreRecycleView.c() {
            @Override
            public void a() {
                BaseVideoListView.this.r();
            }
        });
        this.g.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                if (i == 0) {
                    BaseVideoListView.this.w();
                }
            }
        });
    }

    public BaseVideoListView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.n = -1;
        this.t = 0;
        this.y = 0;
        if (context instanceof Activity) {
            this.x = (Activity) context;
            this.u = new ArrayList();
            f();
            return;
        }
        throw new IllegalArgumentException("context must be activity !!!");
    }

    public void b(String str) {
        TextView textView = this.m;
        if (textView != null) {
            textView.setVisibility(0);
            this.m.setText(str);
            this.m.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    BaseVideoListView baseVideoListView = BaseVideoListView.this;
                    if (jCurrentTimeMillis - baseVideoListView.z >= 2000) {
                        baseVideoListView.z = jCurrentTimeMillis;
                        baseVideoListView.q();
                    }
                }
            });
        }
    }

    public PlayErrorView a(String str, String str2) {
        PlayErrorView playErrorView = this.l;
        if (playErrorView == null) {
            PlayErrorView playErrorView2 = new PlayErrorView(getContext(), str, str2);
            this.l = playErrorView2;
            playErrorView2.setLandScreen(this.c);
            this.l.setViewClick(new PlayErrorView.OnErrorViewCallback() {
                @Override
                public boolean isFull() {
                    return false;
                }

                @Override
                public void onBack() {
                    BaseVideoListView.this.onBackPress();
                }

                @Override
                public void onDismiss() {
                    GestureVideoController gestureVideoController;
                    BaseVideoListView baseVideoListView = BaseVideoListView.this;
                    PlayErrorView playErrorView3 = baseVideoListView.l;
                    if (playErrorView3 == null || (gestureVideoController = baseVideoListView.q) == null) {
                        return;
                    }
                    gestureVideoController.removeControlComponent(playErrorView3);
                    BaseVideoListView.this.l = null;
                }

                @Override
                public void retry() {
                    BaseVideoListView.this.m();
                }

                @Override
                public void toLogin() {
                    if (BaseVideoListView.this.b != null) {
                        BaseVideoListView.this.b.gotoLogin(new MgSspLoginStatusReceiver() {
                            @Override
                            public void result(int i, AccountInfo accountInfo) {
                                if (i == 0) {
                                    com.hunantv.imgo.util.b.j(accountInfo.getOpenId());
                                    com.hunantv.imgo.util.b.o(accountInfo.getToken());
                                    BaseVideoListView.this.m();
                                }
                            }
                        });
                    }
                }

                @Override
                public void toVip(String str3) {
                    AccountInfo accountInfo = new AccountInfo();
                    accountInfo.setOpenId(com.hunantv.imgo.util.b.R());
                    accountInfo.setToken(com.hunantv.imgo.util.b.V());
                    accountInfo.setVipurl(str3);
                    BaseVideoListView baseVideoListView = BaseVideoListView.this;
                    baseVideoListView.a(baseVideoListView.getContext(), accountInfo, VideoSDKReport.a().o(), VideoSDKReport.a().p(), BaseVideoListView.this.getModType(), VideoSDKReport.a().q(), BaseVideoListView.this.r);
                }
            });
        } else {
            playErrorView.setLandScreen(this.c);
            this.l.setMsg(str2);
        }
        return this.l;
    }

    public void a(String str) {
        HttpParams httpParams = this.j;
        if (httpParams == null) {
            i();
            return;
        }
        httpParams.put("pageSize", (Number) 10);
        this.j.put("pageNum", Integer.valueOf(this.e));
        if (b.a().e() != null) {
            this.j.put("cxid", b.a().e().getCxid());
        }
        this.j.put("spaceId", com.hunantv.imgo.util.b.l(getModType()));
        if (!TextUtils.isEmpty(this.f)) {
            this.j.put("currVcode", this.f);
        }
        this.j.put("lt", Integer.valueOf(com.hunantv.imgo.util.b.ac() ? 2 : 1));
        this.j.put("allowRc", Integer.valueOf(com.hunantv.imgo.util.b.ab() ? 1 : 0));
        getTaskStarter().a(true).b(10000).a(str, this.j, new ImgoHttpCallBack<ContentListEntity>() {
            @Override
            public void b(ContentListEntity contentListEntity) {
            }

            @Override
            public void a(ContentListEntity contentListEntity) {
                List<VideoBean> list;
                BaseVideoListView.this.a(contentListEntity);
                BaseVideoListView.this.i();
                if (BaseVideoListView.this.e == 1) {
                    ContentListEntity.Data data = contentListEntity.data;
                    boolean z = (data == null || (list = data.items) == null || list.size() <= 0) ? false : true;
                    if (BaseVideoListView.this.G != null && z) {
                        BaseVideoListView.this.G.a();
                    }
                    if (z) {
                        TextView textView = BaseVideoListView.this.m;
                        if (textView != null) {
                            textView.setVisibility(8);
                        }
                    } else {
                        List<VideoBean> list2 = BaseVideoListView.this.d;
                        if (list2 == null || list2.size() <= 0) {
                            BaseVideoListView baseVideoListView = BaseVideoListView.this;
                            baseVideoListView.b(baseVideoListView.getResources().getString(R.string.page_empty));
                            BaseVideoListView.this.h();
                        }
                    }
                }
                BaseVideoListView baseVideoListView2 = BaseVideoListView.this;
                if (baseVideoListView2.e == 1 && !baseVideoListView2.a) {
                    BaseVideoListView.this.a("ppv", true, (ErrorData) null);
                }
                BaseVideoListView.this.a = true;
            }

            @Override
            public void a(ContentListEntity contentListEntity, int i, int i2, String str2, Throwable th) {
                BaseVideoListView baseVideoListView = BaseVideoListView.this;
                if (baseVideoListView.e == 1 && !baseVideoListView.a) {
                    ErrorData errorData = new ErrorData();
                    errorData.setUrl(BaseVideoListView.this.getUrl());
                    errorData.setCode(i2 + "");
                    HttpParams httpParams2 = BaseVideoListView.this.j;
                    errorData.setParam(httpParams2 != null ? httpParams2.buildParameter() : "");
                    errorData.setMsg(str2);
                    BaseVideoListView.this.a("ppv", false, errorData);
                }
                BaseVideoListView.this.a = true;
                BaseVideoListView.this.i();
                List<VideoBean> list = BaseVideoListView.this.d;
                if (list == null || list.size() <= 0) {
                    if (p.b()) {
                        BaseVideoListView baseVideoListView2 = BaseVideoListView.this;
                        baseVideoListView2.b(baseVideoListView2.getResources().getString(R.string.mgplayer_error_message));
                    } else {
                        BaseVideoListView baseVideoListView3 = BaseVideoListView.this;
                        baseVideoListView3.b(baseVideoListView3.getResources().getString(R.string.no_network));
                    }
                }
                BaseVideoListView.this.h();
            }
        });
    }

    public void a(ContentListEntity contentListEntity) {
        ContentListEntity.Data data;
        s();
        boolean z = this.e == 1;
        if (contentListEntity != null && (data = contentListEntity.data) != null) {
            com.mgtv.ssp.bean.b bVar = data.page;
            if (bVar != null) {
                setIsMore(bVar.a());
            }
            List<VideoBean> list = contentListEntity.data.items;
            if (z) {
                a(list);
            } else {
                b(list);
            }
            LoadMoreRecycleView loadMoreRecycleView = this.g;
            if (loadMoreRecycleView != null) {
                loadMoreRecycleView.post(new Runnable() {
                    @Override
                    public void run() {
                        BaseVideoListView.this.w();
                    }
                });
                return;
            }
            return;
        }
        setIsMore(0);
        if (z) {
            return;
        }
        v.a(getResources().getString(R.string.no_more_data));
    }

    public void a(List<VideoBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.d.clear();
        this.d.addAll(list);
        this.h.notifyDataSetChanged();
    }

    private void a(int i, int i2, List<VideoBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (i == 0) {
            this.d.addAll(i, list);
        } else {
            this.d.addAll(list);
        }
        this.h.notifyItemRangeInserted(i, i2);
    }

    public void a(String str, boolean z, ErrorData errorData) {
        VideoSDKReport.a().a(str, z ? "0" : "1", errorData, getModType());
    }

    public void a(Context context, AccountInfo accountInfo, String str, String str2, String str3, String str4, MgSspAccountCallback mgSspAccountCallback) {
        if (context != null) {
            a.a(context, accountInfo, str, str2, str3, str4, mgSspAccountCallback);
        }
    }

    public boolean a(View view) {
        Rect rect = new Rect();
        view.getLocalVisibleRect(rect);
        return rect.top >= 0;
    }
}
