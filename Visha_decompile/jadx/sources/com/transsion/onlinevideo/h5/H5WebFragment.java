package com.transsion.onlinevideo.h5;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.home.OnlineHomeFragment;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.al4;
import defpackage.c06;
import defpackage.fc7;
import defpackage.vz6;

public class H5WebFragment extends BaseFragment implements IWebLoadStatusCallback {
    public ViewGroup A;
    public MainViewModel B;
    public al4 l;
    public View m;
    public View n;
    public ViewGroup o;
    public View p;
    public TextView q;
    public SeekBar r;
    public boolean s;
    public OnlineHomeFragment.e t;
    public int u;
    public String v = "";
    public long w = 0;
    public int x = -1;
    public String y = "";
    public boolean z = false;
    public boolean C = false;
    public boolean D = false;
    public boolean E = false;
    public int F = 0;
    public boolean G = false;

    public class a implements vz6 {
        public a() {
        }

        public void c(int i) {
            if (H5WebFragment.this.s) {
                return;
            }
            H5WebFragment.this.j0(i);
        }

        public void d() {
            if (H5WebFragment.this.s) {
                H5WebFragment.this.j0(0);
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

    private String X() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString(VkConstant.URL, "") : "";
    }

    private void Y() {
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
                this.b.b0(view2);
            }
        });
    }

    public void j0(int i) {
        boolean z = i != 0;
        this.s = z;
        if (z) {
            View view = this.p;
            if (view != null) {
                view.setVisibility(8);
                this.o.setVisibility(0);
            }
        } else {
            Y();
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

    public void U(boolean z) {
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

    public void V(String str) {
        this.l = al4.g(str);
    }

    public final void W() {
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

    public final boolean Z() {
        return this.mIsVisibleToUser && this.mIsParentVisibleToUser && !this.mIsHide;
    }

    public final boolean a0() {
        return (!isAdded() || getView() == null || getActivity() == null) ? false : true;
    }

    public final void b0(View view) {
        if (MainApp.w == 0) {
            ToastUtils.s(com.transsion.playercommon.R.string.no_network);
            return;
        }
        this.s = true;
        al4 al4Var = this.l;
        if (al4Var == null || al4Var.j() == null) {
            return;
        }
        this.l.j().reload();
    }

    public final void c0() {
        Log.i("visha_H5WebFragment", "onBackPressed: mIsParentVisibleToUser = " + this.mIsParentVisibleToUser + ", mIsClickTabSelf = " + this.G);
        if (this.mIsParentVisibleToUser && !this.G) {
            this.l.k();
        }
        this.G = false;
    }

    public final void d0(boolean z) {
        WebView webViewJ;
        if (this.l != null && z != this.z && a0() && (webViewJ = this.l.j()) != null && !TextUtils.isEmpty(webViewJ.getUrl())) {
            if (z) {
                webViewJ.onResume();
                this.l.r();
            } else {
                webViewJ.onPause();
                this.l.q();
            }
        }
        this.z = z;
    }

    public final void e0(boolean z) {
        if (this.D) {
            MusicPlayManager.S().A1(true, !z);
        } else if (this.E) {
            VideoPlayManager.X().p2(true, !z);
        }
    }

    public void f0(OnlineHomeFragment.e eVar) {
        this.t = eVar;
    }

    @Override
    public void g(WebView webView, String str, Bitmap bitmap) {
        Log.d("visha_H5WebFragment", "onPageStarted : " + str);
        this.m.setVisibility(8);
    }

    public void g0() {
        OnlineHomeFragment.e eVar = this.t;
        if (eVar != null) {
            eVar.a(true);
        }
    }

    public final void h0() {
        if (!Z() || !a0() || this.x <= -1 || this.w > 0) {
            return;
        }
        Log.i("visha_H5WebFragment", "trackH5ChannelShow");
        c06.b(this.x, this.y, X());
        this.w = System.currentTimeMillis();
    }

    public final void i0() {
        if (this.w <= 0 || this.x <= -1) {
            return;
        }
        int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - this.w) / 1000);
        this.w = 0L;
        if (iCurrentTimeMillis > 0) {
            c06.c(this.x, this.y, iCurrentTimeMillis, X());
        }
    }

    public final void lambda$onViewCreated$0(Integer num) {
        this.G = num.intValue() == this.F;
        Log.i("visha_H5WebFragment", "onViewCreated: mainTabIndexLiveData tabIndex = " + num + ", mTabPreIndex = " + this.F);
        this.F = num.intValue();
    }

    @Override
    public void markPointPageShow() {
        super.markPointPageShow();
        if (Z() && a0()) {
            h0();
            d0(true);
            W();
            Log.i("visha_H5WebFragment", "markPointPageShow mIsBottomPlayBarShow: " + this.C + " mIsBottomBarMusicPlaying: " + this.D + " mIsBottomBarVideoPlaying:" + this.E);
            if (this.C) {
                e0(true);
            }
        }
    }

    @Override
    public boolean onBackPressed() {
        al4 al4Var = this.l;
        if (al4Var == null || !al4Var.e()) {
            return false;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.c0();
            }
        }, 100L);
        return true;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            this.u = arguments.getInt("header_margin");
            this.x = arguments.getInt("channelid", -1);
            this.y = arguments.getString("channelname", "");
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
        Log.d("visha_H5WebFragment", sb.toString());
        MainApp.s("visha_H5WebFragment");
        al4 al4Var = this.l;
        if (al4Var != null) {
            try {
                WebView webViewJ = al4Var.j();
                if (webViewJ != null) {
                    webViewJ.stopLoading();
                    webViewJ.onPause();
                    webViewJ.setWebChromeClient(null);
                    webViewJ.setWebViewClient(null);
                }
            } catch (Exception e) {
                LogUtils.m("visha_H5WebFragment", "onDestroy onError : " + e);
            }
        }
        if (fc7.c(this.l)) {
            this.l.p();
        }
        ViewGroup viewGroup = this.o;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.l = null;
        }
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_h5_web;
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        Log.d("visha_H5WebFragment", "onPageFinished : " + str);
        j0(MainApp.w);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (Z()) {
            i0();
        }
        d0(false);
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
        this.A.setPadding(0, this.u, 0, dimensionPixelSize);
        this.o = viewGroup;
        this.r = (SeekBar) view.findViewById(R.id.sb_web);
        j0(MainApp.w);
        this.v = X();
        Log.d("visha_H5WebFragment", "loadUrl:" + this.v);
        V(this.v);
        this.l.t(this);
        this.l.f(this.mActivity, viewGroup, 0, new FrameLayout.LayoutParams(-1, -1));
        MainApp.d("visha_H5WebFragment", new a());
        if (this.B == null) {
            this.B = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        }
        this.B.b.observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$onViewCreated$0((Integer) obj);
            }
        });
    }

    @Override
    public boolean peekConsumeBack() {
        al4 al4Var = this.l;
        return al4Var != null && al4Var.e() && this.mIsParentVisibleToUser;
    }

    @Override
    public void setParentVisible(boolean z) {
        super.setParentVisible(z);
        if (z) {
            h0();
        } else {
            i0();
        }
        if (this.mIsVisibleToUser) {
            U(z);
        }
        if (z) {
            return;
        }
        d0(false);
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            h0();
        } else {
            i0();
            d0(false);
        }
    }
}
