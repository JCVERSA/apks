package com.transsion.playercommon.vishaweb;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.just.agentweb.AgentWebUtils;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaweb.jsbridge.DefaultJsToNative;
import com.transsion.playercommon.vishaweb.jsbridge.IJsToNative;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.djb;
import defpackage.f5;
import defpackage.fc7;
import defpackage.r0a;
import defpackage.rfc;
import defpackage.se;
import defpackage.vz6;
import java.util.Map;

public class VishaWebViewActivity extends BaseActivity implements IWebLoadStatusCallback {
    public rfc N;
    public TextView O;
    public View P;
    public ImageView Q;
    public View R;
    public View S;
    public View T;
    public TextView U;
    public SeekBar V;
    public LinearLayout W;
    public boolean Y;
    public DefaultJsToNative X = new DefaultJsToNative();
    public boolean Z = true;
    public boolean a0 = false;

    public class a implements vz6 {
        public a() {
        }

        public void d() {
            if (VishaWebViewActivity.this.Y) {
                VishaWebViewActivity.this.H0(0);
            }
        }

        public final void c() {
            if (VishaWebViewActivity.this.Y) {
                return;
            }
            VishaWebViewActivity.this.H0(0);
        }

        @Override
        public void onConnect(int i) {
            VishaWebViewActivity.this.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.c();
                }
            });
        }

        @Override
        public void onDisconnect() {
            VishaWebViewActivity.this.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.d();
                }
            });
        }
    }

    public void A0(View view) {
        finish();
    }

    public void B0(View view) {
        rfc rfcVar = this.N;
        if (rfcVar == null || !rfcVar.b() || !this.Z || this.a0) {
            finish();
        } else {
            this.N.k();
        }
    }

    public void H0(int i) {
        boolean z = i != 0;
        this.Y = z;
        if (z) {
            View view = this.T;
            if (view != null) {
                view.setVisibility(8);
                this.S.setVisibility(0);
                I0(false);
            }
        } else {
            y0();
            View view2 = this.T;
            if (view2 != null) {
                view2.setVisibility(0);
                this.S.setVisibility(8);
                I0(true);
            }
        }
        SeekBar seekBar = this.V;
        if (seekBar != null) {
            seekBar.setProgress(0);
            this.V.setVisibility(8);
        }
    }

    private String getUrl() {
        return getIntent().getExtras().getString(VkConstant.URL);
    }

    private void y0() {
        if (this.T == null) {
            View viewInflate = ((ViewStub) findViewById(R.id.no_network_view)).inflate();
            this.T = viewInflate;
            TextView textView = (TextView) viewInflate.findViewById(R.id.btn_try);
            this.U = textView;
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.z0(view);
                }
            });
        }
    }

    @Override
    public void A(WebView webView, int i) {
        View view;
        SeekBar seekBar;
        if (!this.Y || (view = this.T) == null || view.getVisibility() != 0 || (seekBar = this.V) == null) {
            return;
        }
        seekBar.setProgress(i);
        this.V.setVisibility(i == 100 ? 8 : 0);
    }

    public void C0(Map map) {
        if (map == null) {
            return;
        }
        String string = map.get("url") != null ? map.get("url").toString() : null;
        String string2 = map.get("title") != null ? map.get("title").toString() : "";
        if (TextUtils.isEmpty(string)) {
            return;
        }
        Intent intent = new Intent("com.transsion.sniffer_load.open_html_url");
        intent.setPackage(se.a().getPackageName());
        intent.putExtra(VkConstant.URL, string);
        intent.putExtra("title", string2);
        f5.c(intent, this);
    }

    public void D0(int i, Map map) {
        if (i == 9) {
            if (this.O == null || map == null || map.size() <= 0) {
                return;
            }
            String str = (String) map.get("title");
            if (r0a.g(str)) {
                return;
            }
            this.O.setText(str);
            return;
        }
        if (i == 10 || i == 2) {
            finish();
        } else if (i == 7) {
            C0(map);
        } else if (i == 12) {
            E0(map);
        }
    }

    public final void E0(Map map) {
        if (this.W == null || map == null || map.get("showTitlebar") == null) {
            return;
        }
        final int i = Integer.parseInt(map.get("showTitlebar").toString());
        LogUtils.j("visha_VishaWebViewActivity", "showTitleBar: " + i);
        ThreadUtils.s(new Runnable() {
            @Override
            public void run() {
                VishaWebViewActivity.this.W.setVisibility(i == 1 ? 0 : 8);
            }
        });
    }

    public String F0(String str) {
        String strReplaceAll;
        String str2 = isDarkMode() ? "1" : "0";
        if (str.contains("dark=")) {
            strReplaceAll = str.replaceAll("(dark=[^&]*)", "dark=" + str2);
        } else if (str.contains("?")) {
            strReplaceAll = str + "&dark=" + str2;
        } else {
            strReplaceAll = str + "?dark=" + str2;
        }
        return AgentWebUtils.urlReplaceLang(strReplaceAll);
    }

    public final boolean G0(String str) {
        if (r0a.g(str)) {
            return true;
        }
        try {
            Map mapC = djb.c(str);
            return r0a.g((CharSequence) mapC.get("showTitlebar")) || Integer.parseInt((String) mapC.get("showTitlebar")) == 1;
        } catch (Exception e) {
            Log.e("visha_VishaWebViewActivity", "showTitleBar error:" + e.getMessage());
        }
        return true;
    }

    public final void I0(boolean z) {
        this.P.setVisibility(z ? 8 : 0);
        this.O.setVisibility(z ? 4 : 0);
        this.Q.setVisibility(z ? 0 : 8);
        this.R.setVisibility(z ? 0 : 8);
    }

    @Override
    public void g(WebView webView, String str, Bitmap bitmap) {
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onBackPressed() {
        rfc rfcVar = this.N;
        if (rfcVar == null || !rfcVar.b() || !this.Z || this.a0) {
            super.onBackPressed();
        } else {
            this.N.k();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_text_web);
        com.transsion.utils.a.a(this, 10);
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.fl_content_container);
        this.W = (LinearLayout) findViewById(R.id.ll_title_bar);
        this.O = (TextView) findViewById(R.id.title_bar_title);
        this.P = findViewById(R.id.title_bar_back);
        this.Q = (ImageView) findViewById(R.id.iv_logo_title);
        this.S = viewGroup;
        this.V = (SeekBar) findViewById(R.id.sb_web);
        View viewFindViewById = findViewById(R.id.iv_close_web);
        this.R = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.A0(view);
            }
        });
        H0(MainApp.w);
        String url = getUrl();
        String strX0 = x0();
        String strF0 = F0(url);
        LogUtils.j("visha_VishaWebViewActivity", "loadUrl:" + strF0);
        this.O.setText(strX0);
        this.P.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.B0(view);
            }
        });
        v0(strF0);
        this.N.q(this);
        this.N.p(w0());
        this.N.c(this, viewGroup, 0, new FrameLayout.LayoutParams(-1, -1));
        resetNavigationBarColor(true);
        if (this.N.j() != null) {
            this.N.j().setBackgroundColor(isDarkMode() ? -16777216 : -1);
        }
        MainApp.d("visha_VishaWebViewActivity", new a());
        if (G0(strF0)) {
            return;
        }
        this.W.setVisibility(8);
    }

    @Override
    public void onDestroy() {
        MainApp.s("visha_VishaWebViewActivity");
        rfc rfcVar = this.N;
        if (rfcVar != null) {
            rfcVar.l();
            this.N = null;
        }
        super.onDestroy();
    }

    public void onPageFinished(WebView webView, String str) {
        H0(MainApp.w);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (fc7.c(this.N)) {
            this.N.m();
        }
    }

    @Override
    public void onPointerCaptureChanged(boolean z) {
        super.onPointerCaptureChanged(z);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (fc7.c(this.N)) {
            this.N.n();
        }
    }

    public void v0(String str) {
        this.N = rfc.e(str);
    }

    public IJsToNative w0() {
        DefaultJsToNative defaultJsToNative = (DefaultJsToNative) getIntent().getExtras().getParcelable("OBJECT_JSSCRIPT_INTERFACE");
        if (defaultJsToNative == null) {
            defaultJsToNative = this.X;
        }
        defaultJsToNative.setVishaWebActivityWR(this);
        return defaultJsToNative;
    }

    public final String x0() {
        return getIntent().getExtras().getString("title");
    }

    public final void z0(View view) {
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.no_network);
            return;
        }
        this.Y = true;
        rfc rfcVar = this.N;
        if (rfcVar == null || rfcVar.j() == null) {
            return;
        }
        this.N.j().reload();
    }
}
