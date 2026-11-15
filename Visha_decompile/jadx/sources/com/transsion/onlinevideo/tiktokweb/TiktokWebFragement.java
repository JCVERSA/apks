package com.transsion.onlinevideo.tiktokweb;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.onlinevideo.R;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.c06;
import defpackage.cja;
import defpackage.fc7;
import defpackage.vz6;

public class TiktokWebFragement extends BaseFragment implements IWebLoadStatusCallback {
    public ViewGroup A;
    public MainViewModel B;
    public b l;
    public View m;
    public View n;
    public ViewGroup o;
    public View p;
    public TextView q;
    public SeekBar r;
    public boolean s;
    public int t;
    public String u = "";
    public long v = 0;
    public int w = -1;
    public String x = "";
    public boolean y = false;
    public boolean z = false;
    public boolean C = false;
    public boolean D = false;
    public boolean E = false;
    public boolean F = true;
    public boolean G = false;

    public class a implements vz6 {
        public a() {
        }

        public void c(int i) {
            if (TiktokWebFragement.this.s) {
                return;
            }
            TiktokWebFragement.this.f0(i);
        }

        public void d() {
            if (TiktokWebFragement.this.s) {
                TiktokWebFragement.this.f0(0);
            }
        }

        @Override
        public void onConnect(final int i) {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.c(i);
                }
            });
        }

        @Override
        public void onDisconnect() {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.d();
                }
            });
        }
    }

    private void V() {
        if (this.B == null) {
            this.B = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        }
        MainViewModel mainViewModel = this.B;
        if (mainViewModel != null) {
            boolean zEquals = Boolean.TRUE.equals(mainViewModel.l.getValue());
            this.C = zEquals;
            if (zEquals) {
                this.D = MusicPlayManager.S().s0();
                this.E = VideoPlayManager.X().A0();
            } else {
                this.D = false;
                this.E = false;
            }
        }
    }

    private String W() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString(VkConstant.URL, cja.a()) : cja.a();
    }

    private void X() {
        View view;
        if (this.p != null || (view = this.n) == null) {
            return;
        }
        View viewInflate = ((ViewStub) view.findViewById(R.id.no_network_view)).inflate();
        this.p = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_retry);
        this.q = textView;
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.Z(view2);
            }
        });
    }

    public void Z(View view) {
        if (MainApp.w == 0) {
            ToastUtils.s(com.transsion.playercommon.R.string.no_network);
            return;
        }
        this.s = true;
        b bVar = this.l;
        if (bVar == null || bVar.e() == null) {
            return;
        }
        this.l.e().reload();
    }

    private void c0(boolean z) {
        if (this.D) {
            MusicPlayManager.S().A1(true, !z);
        } else if (this.E) {
            VideoPlayManager.X().p2(true, !z);
        }
    }

    public void f0(int i) {
        boolean z = i != 0;
        this.s = z;
        if (z) {
            View view = this.p;
            if (view != null) {
                view.setVisibility(8);
                this.o.setVisibility(0);
            }
        } else {
            X();
            View view2 = this.p;
            if (view2 != null) {
                view2.setVisibility(0);
                this.o.setVisibility(8);
                this.m.setVisibility(8);
            }
        }
        SeekBar seekBar = this.r;
        if (seekBar != null) {
            seekBar.setProgress(0);
            this.r.setVisibility(8);
        }
    }

    @Override
    public void A(WebView webView, int i) {
        View view;
        SeekBar seekBar;
        if (!this.s || (view = this.p) == null || view.getVisibility() != 0 || (seekBar = this.r) == null) {
            return;
        }
        seekBar.setProgress(i);
        this.r.setVisibility(i == 100 ? 8 : 0);
    }

    public void T(boolean z) {
        if (!isAdded() || isDetached() || getView() == null || this.A == null || !isFoldScreen()) {
            return;
        }
        if (!z) {
            ViewGroup viewGroup = this.A;
            viewGroup.setPadding(0, viewGroup.getPaddingTop(), 0, 0);
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(com.transsion.playercommon.R.dimen.os_foot_bar_min_height);
        if (dimensionPixelSize <= 0) {
            dimensionPixelSize = com.transsion.utils.a.d(this.mContext, 60.0f);
        }
        ViewGroup viewGroup2 = this.A;
        viewGroup2.setPadding(0, viewGroup2.getPaddingTop(), 0, dimensionPixelSize);
    }

    public void U(String str) {
        this.l = b.o.a(str);
    }

    public final boolean Y() {
        return (!isAdded() || getView() == null || getActivity() == null) ? false : true;
    }

    public final boolean a0(View view, MotionEvent motionEvent) {
        if (this.G) {
            return false;
        }
        this.G = true;
        e0();
        return false;
    }

    public final void b0(boolean z) {
        WebView webViewE;
        Log.i("visha_TiktokWebFragement", "pageToVideoPauseOrResume isVisibleResume:" + z + " mBeforeVisible: " + this.y);
        if (this.l != null && z != this.y && Y() && (webViewE = this.l.e()) != null && !TextUtils.isEmpty(webViewE.getUrl()) && webViewE.getUrl().startsWith("https://www.tiktok.com/feedcoop/")) {
            if (!z) {
                d0();
                this.G = false;
            } else if (this.G) {
                e0();
            } else {
                d0();
            }
        }
        this.y = z;
    }

    public final void d0() {
        b bVar = this.l;
        if (bVar == null || bVar.e() == null) {
            return;
        }
        WebView webViewE = this.l.e();
        this.l.A(false);
        webViewE.onPause();
        webViewE.pauseTimers();
        this.l.i();
    }

    public final void e0() {
        b bVar = this.l;
        if (bVar == null || bVar.e() == null) {
            return;
        }
        WebView webViewE = this.l.e();
        webViewE.onResume();
        webViewE.resumeTimers();
        this.l.A(true);
        this.l.j();
    }

    @Override
    public void g(WebView webView, String str, Bitmap bitmap) {
        Log.d("visha_TiktokWebFragement", "onPageStarted : " + str);
        if (TextUtils.equals(this.u, str)) {
            return;
        }
        this.m.setVisibility(8);
    }

    @Override
    public void markPointPageShow() {
        super.markPointPageShow();
        if (this.mIsVisibleToUser && !this.mIsHide && Y()) {
            b0(true);
            V();
            Log.i("visha_TiktokWebFragement", "markPointPageShow mIsBottomPlayBarShow: " + this.C + " mIsBottomBarMusicPlaying: " + this.D + " mIsBottomBarVideoPlaying:" + this.E);
            if (this.C) {
                c0(true);
            }
            int i = this.w;
            if (i > -1) {
                c06.r(i, this.x);
            }
        }
    }

    @Override
    public boolean onBackPressed() {
        b bVar = this.l;
        if (bVar == null || !bVar.a()) {
            return false;
        }
        this.l.f();
        return true;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            this.t = arguments.getInt("header_margin");
            this.w = arguments.getInt("channelid", -1);
            this.x = arguments.getString("channelname", "");
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.n = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        StringBuilder sb = new StringBuilder();
        sb.append("onDestroy isNull: ");
        sb.append(this.l == null);
        Log.d("visha_TiktokWebFragement", sb.toString());
        MainApp.s("visha_TiktokWebFragement");
        b bVar = this.l;
        if (bVar != null) {
            try {
                WebView webViewE = bVar.e();
                if (webViewE != null) {
                    webViewE.stopLoading();
                    webViewE.onPause();
                    webViewE.setWebChromeClient(null);
                    webViewE.setWebViewClient(null);
                }
            } catch (Exception e) {
                LogUtils.m("visha_TiktokWebFragement", "onDestroy onError : " + e);
            }
        }
        if (fc7.c(this.l)) {
            this.l.h();
        }
        ViewGroup viewGroup = this.o;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.l = null;
        }
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_tiktok_web;
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        b bVar;
        Log.d("visha_TiktokWebFragement", "onPageFinished : " + str + " mIsFirstTTShow: " + this.F);
        f0(MainApp.w);
        if (!this.s || (bVar = this.l) == null) {
            return;
        }
        WebView webViewE = bVar.e();
        if (!this.F || webViewE == null || TextUtils.isEmpty(str) || !str.startsWith("https://www.tiktok.com/feedcoop/")) {
            return;
        }
        Log.d("visha_TiktokWebFragement", "onPageFinished match target url, pause webview");
        d0();
        this.G = false;
        this.F = false;
    }

    @Override
    public void onPause() {
        super.onPause();
        b0(false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        int dimensionPixelSize;
        super.onViewCreated(view, bundle);
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.fl_content_container);
        this.A = (ViewGroup) view.findViewById(R.id.root_container);
        this.m = view.findViewById(R.id.shimmer_view);
        if (isFoldScreen()) {
            dimensionPixelSize = getResources().getDimensionPixelSize(com.transsion.playercommon.R.dimen.os_foot_bar_min_height);
            if (dimensionPixelSize <= 0) {
                dimensionPixelSize = com.transsion.utils.a.d(this.mContext, 60.0f);
            }
        } else {
            dimensionPixelSize = 0;
        }
        this.A.setPadding(0, this.t, 0, dimensionPixelSize);
        this.o = viewGroup;
        this.r = (SeekBar) view.findViewById(R.id.sb_web);
        f0(MainApp.w);
        this.u = W();
        Log.d("visha_TiktokWebFragement", "loadUrl:" + this.u);
        U(this.u);
        this.l.k(this);
        this.l.v(this.mActivity, viewGroup, 0, new FrameLayout.LayoutParams(-1, -1));
        WebView webViewE = this.l.e();
        if (webViewE != null) {
            webViewE.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return this.b.a0(view2, motionEvent);
                }
            });
        }
        MainApp.d("visha_TiktokWebFragement", new a());
    }

    @Override
    public void setParentVisible(boolean z) {
        super.setParentVisible(z);
        if (z) {
            this.v = System.currentTimeMillis();
        } else if (this.z && this.v > 0 && this.w > -1) {
            c06.s(this.w, this.x, ((int) (System.currentTimeMillis() - this.v)) / 1000);
        }
        if (this.z) {
            T(z);
        }
        if (z) {
            return;
        }
        b0(false);
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        this.z = z;
        if (z) {
            this.v = System.currentTimeMillis();
        } else if (this.v > 0 && this.w > -1) {
            c06.s(this.w, this.x, ((int) (System.currentTimeMillis() - this.v)) / 1000);
        }
        if (z) {
            return;
        }
        b0(false);
    }
}
