package com.transsion.sniffer_load;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.util.Property;
import android.util.TypedValue;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.text.TextUtilsCompat;
import androidx.media3.common.C;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.just.agentweb.DefaultWebClient;
import com.just.agentweb.NestedScrollAgentWebView;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.dbdata.beans.sniff.SniffMarkPointBean;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoArrayBean;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoBean;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.adapter.SniffMultiVideoAdapter;
import com.transsion.sniffer_load.data.ReviewHistory;
import com.transsion.sniffer_load.data.SniffDataManager;
import com.transsion.sniffer_load.data.WebPreviewRecord;
import com.transsion.sniffer_load.database.BookmarkDatabase;
import com.transsion.sniffer_load.dialog.SniffMultiVideoDialog;
import com.transsion.sniffer_load.sniffservice.SniffHeaderInjector;
import com.transsion.sniffer_load.sniffservice.SniffMarkPointer;
import com.transsion.sniffer_load.sniffservice.SniffScriptConfigMgr;
import com.transsion.sniffer_load.sniffservice.SniffYoutubeUtil;
import com.transsion.sniffer_load.viewmodel.BookmarksViewModel;
import com.transsion.sniffer_load.viewmodel.DownloadViewModel;
import com.transsion.sniffer_load.webview.SniffWebViewContainer;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgets.BadgeView;
import defpackage.az8;
import defpackage.b23;
import defpackage.b39;
import defpackage.d39;
import defpackage.dz5;
import defpackage.e07;
import defpackage.e16;
import defpackage.e6b;
import defpackage.eic;
import defpackage.f27;
import defpackage.f5;
import defpackage.fc7;
import defpackage.gp3;
import defpackage.hb0;
import defpackage.k29;
import defpackage.m23;
import defpackage.mc7;
import defpackage.mf7;
import defpackage.nic;
import defpackage.oa1;
import defpackage.p06;
import defpackage.pp3;
import defpackage.py2;
import defpackage.r06;
import defpackage.r0a;
import defpackage.s16;
import defpackage.t74;
import defpackage.vb;
import defpackage.vz6;
import defpackage.w6c;
import defpackage.ym1;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class WebActivity extends BaseActivity implements View.OnClickListener, IWebLoadStatusCallback {
    public static int K0 = 0;
    public static String L0 = null;
    public static String M0 = "dl_bm_cl";
    public ArrayList E0;
    public FrameLayout F0;
    public LinearLayout G0;
    public BookmarksViewModel O;
    public nic P;
    public DownloadViewModel Q;
    public ImageView R;
    public String S;
    public int T;
    public int U;
    public TextView V;
    public FrameLayout W;
    public AppBarLayout X;
    public ImageView Y;
    public ImageView Z;
    public TextView a0;
    public TextView b0;
    public View c0;
    public View d0;
    public BadgeView f0;
    public boolean g0;
    public Bitmap h0;
    public ImageView i0;
    public ImageView j0;
    public ImageView k0;
    public ImageView l0;
    public SniffWebViewContainer m0;
    public long o0;
    public long p0;
    public long q0;
    public LinearLayout r0;
    public boolean s0;
    public long t0;
    public int u0;
    public boolean v0;
    public SniffVideoInfoArrayBean w0;
    public CoordinatorLayout x0;
    public SniffMultiVideoDialog y0;
    public String z0;
    public int[] N = new int[2];
    public final Map e0 = new HashMap();
    public boolean n0 = true;
    public boolean A0 = false;
    public ArrayList B0 = new ArrayList();
    public int C0 = 1;
    public boolean D0 = false;
    public boolean H0 = false;
    public Runnable I0 = new Runnable() {
        @Override
        public void run() {
            int iH = GlobalDownloadManger.B().h();
            if (iH <= 0) {
                WebActivity.this.f0.setVisibility(4);
                return;
            }
            WebActivity.this.f0.setNum(iH);
            WebActivity.this.f0.requestLayout();
            WebActivity.this.f0.setVisibility(0);
        }
    };
    public Runnable J0 = new Runnable() {
        @Override
        public void run() {
            WebActivity.this.L0(false);
        }
    };

    public class a implements vz6 {
        public a() {
        }

        @Override
        public void onDisconnect() {
            ToastUtils.s(R.string.net_not_connect);
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            f5.c(new Intent("android.settings.SETTINGS"), WebActivity.this);
            dz5.b(1, "vd_dl_net_set_cl");
        }
    }

    public class c extends AnimatorListenerAdapter {
        public final boolean b;

        public c(boolean z) {
            this.b = z;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            WebActivity.this.b0.setVisibility(this.b ? 0 : 8);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            WebActivity.this.b0.setVisibility(0);
        }
    }

    public class d implements gp3.b {
        public d() {
        }

        @Override
        public void a(Bitmap bitmap) {
            LogUtils.j("visha_WebActivity", "onFaviconReceived，favicon width: " + bitmap.getWidth() + " height: " + bitmap.getHeight());
            WebActivity.this.h0 = bitmap;
            WebActivity.this.C1();
        }

        @Override
        public void b() {
            LogUtils.j("visha_WebActivity", "onFaviconFailed");
        }
    }

    public class e extends Handler {
        public final WebView.HitTestResult a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Looper looper, WebView.HitTestResult hitTestResult) {
            super(looper);
            this.a = hitTestResult;
        }

        @Override
        public void handleMessage(Message message) {
            if (WebActivity.this.isFinishing()) {
                return;
            }
            String extra = (String) message.getData().get("url");
            if (TextUtils.isEmpty(extra)) {
                extra = this.a.getExtra();
            }
            String str = extra;
            WebActivity webActivity = WebActivity.this;
            eic.a(webActivity, webActivity.d0, str, str, 8, WebActivity.this);
        }
    }

    private void A1() {
        PopupMenu popupMenu = b39.b(this) ? new PopupMenu(this, this.l0, 8388661) : new PopupMenu(this, this.l0, 8388693);
        popupMenu.inflate(R.menu.more_item_menu);
        if (MainApp.p) {
            popupMenu.getMenu().removeItem(R.id.turn_on_privacy_browse);
        } else {
            popupMenu.getMenu().removeItem(R.id.turn_off_privacy_browse);
        }
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
            @Override
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return this.a.o1(menuItem);
            }
        });
        popupMenu.show();
        p06.d0("dl_brower_rpfloating_show");
    }

    public static void g1(boolean z) {
        MainApp.z = false;
        w6c.r(MainApp.f(), "download_open_notice", !z);
    }

    public static void m1(boolean z) {
        MainApp.A = false;
        w6c.r(MainApp.f(), "web_open_notice", !z);
    }

    private void u1() {
        M0 = "dl_bm_cl";
        Intent intent = getIntent();
        if (intent != null && !TextUtils.isEmpty(intent.getStringExtra("web_url_from"))) {
            M0 = intent.getStringExtra("web_url_from");
        }
        p06.o0("dl_brower_rp_show", "address", L0);
    }

    @Override
    public void A(WebView webView, int i) {
        SniffWebViewContainer sniffWebViewContainer = this.m0;
        if (sniffWebViewContainer == null || webView != sniffWebViewContainer.k()) {
            return;
        }
        String url = webView.getUrl();
        L0 = url;
        this.V.setText(url);
        this.P.j(L0);
        this.Q.c(L0);
        if (fc7.c(webView) && fc7.c(this.j0) && fc7.c(this.i0)) {
            if (webView.canGoBack()) {
                if (!this.i0.isEnabled()) {
                    this.i0.setEnabled(true);
                }
            } else if (this.i0.isEnabled()) {
                this.i0.setEnabled(false);
            }
            if (webView.canGoForward()) {
                if (this.j0.isEnabled()) {
                    return;
                }
                this.j0.setEnabled(true);
            } else if (this.j0.isEnabled()) {
                this.j0.setEnabled(false);
            }
        }
    }

    public final void B1() {
        hb0.markDirect("dl_brower_rp_ldend_ssguide_show");
        f5.b(new Intent(this, (Class<?>) SSYoutubeDialogActivity.class), 1248, this);
    }

    @Override
    public void C(WebView webView, Bitmap bitmap) {
        SniffWebViewContainer sniffWebViewContainer;
        if (webView == null || (sniffWebViewContainer = this.m0) == null || webView != sniffWebViewContainer.k() || bitmap == null) {
            return;
        }
        Bitmap bitmap2 = this.h0;
        if (bitmap2 == null) {
            E1(webView, bitmap);
            return;
        }
        if (bitmap2.getHeight() < bitmap.getHeight() || this.h0.getWidth() < bitmap.getWidth()) {
            LogUtils.j("visha_WebActivity", "onReceivedIcon", "favicon width:" + this.h0.getWidth() + " height:" + this.h0.getHeight() + " icon width:" + bitmap.getWidth() + " height:" + bitmap.getHeight());
            E1(webView, bitmap);
        }
    }

    public final void C1() {
        BookmarksViewModel.m0(this, L0, this.h0);
        List list = (List) this.O.F().getValue();
        if (list == null || !list.contains(L0)) {
            return;
        }
        BookmarksViewModel.j0(this, L0, this.h0);
    }

    public final void D1() {
        LinearLayout linearLayout;
        boolean z = this.mScreenType == BaseConstant.SCREEN_TYPE.FOLD;
        SniffMultiVideoDialog sniffMultiVideoDialog = this.y0;
        if (sniffMultiVideoDialog != null) {
            sniffMultiVideoDialog.onStart();
        }
        if (this.F0 == null || (linearLayout = this.G0) == null || this.W == null) {
            return;
        }
        if (z) {
            ((ViewGroup) linearLayout.getParent()).removeAllViews();
            this.W.setVisibility(0);
            this.W.removeAllViews();
            ((FrameLayout.LayoutParams) this.G0.getLayoutParams()).topMargin = 0;
            this.W.addView(this.G0);
            this.F0.setVisibility(8);
            this.F0.requestLayout();
            return;
        }
        ((ViewGroup) linearLayout.getParent()).removeAllViews();
        this.F0.setVisibility(0);
        this.F0.removeAllViews();
        ((FrameLayout.LayoutParams) this.G0.getLayoutParams()).topMargin = -2;
        this.F0.addView(this.G0);
        this.W.setVisibility(8);
        this.W.requestLayout();
    }

    public final void E1(WebView webView, Bitmap bitmap) {
        this.h0 = bitmap;
        BookmarksViewModel.m0(this, webView.getUrl(), bitmap);
        BookmarksViewModel.j0(this, webView.getUrl(), bitmap);
        this.P.h(this.h0);
    }

    public final void K0(ImageView imageView) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", imageView.isSelected() ? 1 : 0);
        bundle.putString("address", L0);
        trackData.add("status", imageView.isSelected() ? 1 : 0);
        trackData.add("address", L0);
        p06.q0(trackData, bundle, "dl_brower_rp_bm_cl", 9324L);
    }

    public final void L0(boolean z) {
        this.v0 = z;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.c0, (Property<View, Float>) View.TRANSLATION_X, z ? this.u0 : 0.0f);
        objectAnimatorOfFloat.addListener(new c(z));
        objectAnimatorOfFloat.setInterpolator(new AccelerateInterpolator());
        objectAnimatorOfFloat.start();
    }

    public final void M0(WebPreviewRecord webPreviewRecord) {
        if (webPreviewRecord.getWebview() == null) {
            webPreviewRecord.setWebview(SniffWebViewContainer.M(this, this, webPreviewRecord.getWebUrl(), this.Q, "multi_web", true));
        }
        View childAt = this.x0.getChildAt(0);
        if (childAt.equals(webPreviewRecord.getWebview().g())) {
            Log.i("visha_WebActivity", "the same webview");
            return;
        }
        if (childAt.getTag() != null && "multi_web".equals(childAt.getTag())) {
            this.x0.removeViewAt(0);
        }
        View viewG = webPreviewRecord.getWebview().g();
        if (viewG.getParent() != null) {
            ((ViewGroup) viewG.getParent()).removeView(viewG);
        }
        this.x0.addView(webPreviewRecord.getWebview().g(), 0);
    }

    public void N0() {
        if (e07.e(this)) {
            return;
        }
        dz5.b(1, "vd_dl_net_show");
        new com.transsion.widgetslib.dialog.d.a(this).j(R.string.eror_no_net).u(R.string.setting_overlay_screen_ok, new b()).m(R.string.download_no_network_cancel, null).F();
    }

    public final void O0() {
        f5.b(new Intent(this, (Class<?>) MultiWebDialogActivity.class), 1245, this);
    }

    public void P0(boolean z) {
        x1();
        finish();
        if (z) {
            overridePendingTransition(R.anim.pre_hold, R.anim.web_out);
        } else {
            overridePendingTransition(0, 0);
        }
    }

    public final void Q0(int i) {
        this.a0.setText(String.valueOf(i));
    }

    public final void R0() {
        Intent intent = getIntent();
        if (intent != null) {
            this.E0 = intent.getParcelableArrayListExtra("download_content");
        }
    }

    public final void S0() {
        this.h0 = null;
        gp3.b().a(L0, new d());
    }

    public final Message T0(WebView.HitTestResult hitTestResult) {
        return new e(Looper.getMainLooper(), hitTestResult).obtainMessage();
    }

    public final String U0(Intent intent) {
        if (intent != null && intent.getExtras() != null) {
            return intent.getExtras().getString(VkConstant.URL);
        }
        Log.e("visha_WebActivity", "getUrl invalid param");
        return "";
    }

    public boolean V0() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.t0;
        Log.w("visha_WebActivity", "ingoreClickEvent interval:" + jCurrentTimeMillis);
        return Math.abs(jCurrentTimeMillis) < ((long) oa1.a());
    }

    public void W0() {
        this.Q.a(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.w1((SniffVideoInfoArrayBean) obj);
            }
        });
    }

    public final void X0(final String str) {
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.c1(str, (WebActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.b1((Boolean) obj);
            }
        });
    }

    public final boolean Y0(String str) {
        try {
            String host = new URL(str).getHost();
            if (r0a.g(host)) {
                return false;
            }
            return host.toLowerCase().contains(".youtube.com");
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public boolean Z0() {
        return TextUtilsCompat.getLayoutDirectionFromLocale(getResources().getConfiguration().locale) == 1;
    }

    public final boolean a1(String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        String strSubstring = str.endsWith("/") ? str.substring(0, str.length() - 1) : str;
        if (str.startsWith(DefaultWebClient.HTTP_SCHEME)) {
            str2 = str;
        } else {
            str2 = DefaultWebClient.HTTP_SCHEME + str;
        }
        if (str.startsWith(DefaultWebClient.HTTP_SCHEME)) {
            str3 = strSubstring;
        } else {
            str3 = DefaultWebClient.HTTP_SCHEME + strSubstring;
        }
        if (str.startsWith("https://")) {
            str4 = str;
        } else {
            str4 = "https://" + str;
        }
        if (str.startsWith("https://")) {
            str5 = strSubstring;
        } else {
            str5 = "https://" + strSubstring;
        }
        String strReplaceFirst = str.replaceFirst("^(http://|https://)", "");
        String strReplaceFirst2 = strSubstring.replaceFirst("^(http://|https://)", "");
        boolean z = !BookmarkDatabase.c(this).a().getBookmarks(Arrays.asList(str, strSubstring, str2, str3, str4, str5, strReplaceFirst, strReplaceFirst2)).isEmpty();
        Log.d("visha_WebActivity", "isSameUrl: " + z + " url: " + str + " noSlashPostfixUrl: " + strSubstring + " httpPrefix: " + str2 + " httpPrefixNoSlash: " + str3 + " httpsPrefix: " + str4 + " httpsPrefixNoSlash: " + str5 + " noPreFix: " + strReplaceFirst + " noPreFixNoSlash: " + strReplaceFirst2);
        return z;
    }

    public final void b1(Boolean bool) {
        this.R.setSelected(bool.booleanValue());
    }

    public final Boolean c1(String str, WebActivity webActivity) {
        return Boolean.valueOf(a1(str));
    }

    public final void d1(Boolean bool) {
        nic nicVar = this.P;
        if (nicVar == null || nicVar.o() == null) {
            return;
        }
        List listO = this.P.o();
        if (listO.size() > 0) {
            L0 = ((WebPreviewRecord) listO.get(0)).getWebUrl();
            this.z0 = ((WebPreviewRecord) listO.get(0)).getWebUrl();
            q1(L0);
        }
    }

    public final void e1(Intent intent) {
        if (intent != null) {
            q1(intent.getStringExtra(VkConstant.URL));
        }
    }

    public final void f1(Object obj) {
        j1(0);
    }

    @Override
    public void g(WebView webView, String str, Bitmap bitmap) {
        SniffWebViewContainer sniffWebViewContainer = this.m0;
        if (sniffWebViewContainer == null || webView != sniffWebViewContainer.k()) {
            return;
        }
        this.i0.setEnabled(false);
        this.j0.setEnabled(false);
        this.V.setText(str);
        L0 = str;
        Log.d("visha_WebActivity", "onPageStarted, url : " + L0);
        X0(L0);
        HashMap map = new HashMap();
        map.put("address", L0);
        map.put(hb0.KEY_NAME_NUM, Integer.valueOf(this.P.p()));
        map.put("from", M0);
        map.put("status", Integer.valueOf(MainApp.p ? 1 : 0));
        hb0.markTrackMap("dl_brower_rp_ldstart", map);
        this.o0 = System.currentTimeMillis();
        this.P.j(str);
        this.c0.setVisibility(4);
        this.D0 = true;
        S0();
    }

    public final void h1(Integer num) {
        Q0(this.P.p());
    }

    public final void i1(WebPreviewRecord webPreviewRecord) {
        if (webPreviewRecord == null) {
            Log.e("visha_WebActivity", "webPreviewRecord is null");
            return;
        }
        M0(webPreviewRecord);
        this.m0 = webPreviewRecord.getWebview();
        this.S = webPreviewRecord.getTitle();
        L0 = webPreviewRecord.getWebUrl();
        ImageView imageView = this.i0;
        if (imageView != null) {
            imageView.setEnabled(this.m0.b());
        }
        ImageView imageView2 = this.j0;
        if (imageView2 != null) {
            imageView2.setEnabled(this.m0.b());
        }
        TextView textView = this.V;
        if (textView != null) {
            textView.setText(L0);
        }
        w1(SniffDataManager.getPageData(L0));
        nic nicVar = this.P;
        nicVar.z(nicVar.m());
    }

    public final void k1() {
        this.f0.getLocationInWindow(this.N);
        this.T = this.x0.getWidth();
        this.U = this.x0.getHeight() + d39.d(this);
        SniffWebViewContainer sniffWebViewContainer = this.m0;
        if (sniffWebViewContainer != null) {
            sniffWebViewContainer.v(this.N);
            this.m0.w(new int[]{this.T, this.U});
        }
    }

    @Override
    public void l(WebView webView, String str) {
        SniffWebViewContainer sniffWebViewContainer = this.m0;
        if (sniffWebViewContainer == null || webView != sniffWebViewContainer.k()) {
            return;
        }
        this.e0.put(webView.getUrl(), str);
        BookmarksViewModel.n0(this, webView.getUrl(), str);
        List list = (List) this.O.F().getValue();
        if (list == null || !list.contains(webView.getUrl())) {
            return;
        }
        BookmarksViewModel.k0(this, webView.getUrl(), str);
    }

    public final void l1(AtomicBoolean atomicBoolean, com.transsion.sniffer_load.okdownload.a aVar, boolean z) {
        if (z) {
            atomicBoolean.set(GlobalDownloadManger.B().p(this, aVar));
        } else {
            atomicBoolean.set(false);
        }
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    public final void n1() {
        if (w6c.c(MainApp.f(), "web_open_notice", true) && MainApp.A) {
            f27.a(this, getResources().getString(R.string.sniff_content_text), getResources().getString(pp3.c ? R.string.sniff_content_notice_pre : R.string.sniff_content_notice), getResources().getString(R.string.notice), new f27.c() {
                @Override
                public final void a(boolean z) {
                    WebActivity.m1(z);
                }
            });
        }
    }

    @Override
    public void o(WebView webView, String str) {
        SniffWebViewContainer sniffWebViewContainer = this.m0;
        if (sniffWebViewContainer == null || webView != sniffWebViewContainer.k()) {
            return;
        }
        this.S = str;
        this.P.i(str);
        ImageView imageView = this.R;
        if (imageView != null) {
            imageView.setAlpha(1.0f);
            this.R.setEnabled(true);
        }
    }

    public final boolean o1(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.history) {
            p06.d0("dl_brower_rp_more_history_cl");
            f5.b(new Intent(this, (Class<?>) WebHistoryActivity.class), 1241, this);
        } else if (menuItem.getItemId() == R.id.bookmark) {
            p06.d0("dl_brower_rp_more_bm_cl");
            f5.b(new Intent(this, (Class<?>) WebBookmarkActivity.class), 1240, this);
        } else {
            if (menuItem.getItemId() == R.id.turn_on_privacy_browse) {
                MainApp.p = true;
                w6c.r(this, "private_browsing", true);
                ToastUtils.s(R.string.visha_not_save_search_and_view_history);
                dz5.f(2, 1);
                this.Z.setVisibility(MainApp.p ? 0 : 8);
            } else if (menuItem.getItemId() == R.id.turn_off_privacy_browse) {
                MainApp.p = false;
                w6c.r(this, "private_browsing", false);
                ToastUtils.s(R.string.load_privacy_browsing_setting_hint);
                dz5.f(2, 0);
                this.Z.setVisibility(MainApp.p ? 0 : 8);
            }
        }
        return false;
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.n0 = false;
        if (intent != null) {
            if (i == 1241) {
                this.m0.o(intent.getStringExtra("url"));
            } else if (i == 1240) {
                this.R.setSelected(true);
                this.m0.o(intent.getStringExtra("url"));
            } else if (i == 1245) {
                String stringExtra = intent.getStringExtra("search_result_url");
                this.m0.o(stringExtra);
                L0 = stringExtra;
            }
        }
        if (i == 1248 && i2 == -1) {
            this.m0.o("https://api.vishavideo.com/#/ssyoutube");
        }
    }

    @Override
    public void onBackPressed() {
        if (this.A0) {
            this.C0++;
            ArrayList arrayList = this.B0;
            if (arrayList == null || arrayList.size() <= 0 || this.B0.size() < this.C0) {
                P0(true);
                return;
            }
            ArrayList arrayList2 = this.B0;
            String str = (String) arrayList2.get(arrayList2.size() - this.C0);
            L0 = str;
            q1(str);
            return;
        }
        if (getOnBackPressedDispatcher().getHasEnabledCallbacks()) {
            LiveEventBus.b().c("web_activity_back", Boolean.TRUE);
            P0(true);
            return;
        }
        SniffWebViewContainer sniffWebViewContainer = this.m0;
        if (sniffWebViewContainer == null || !sniffWebViewContainer.b()) {
            LiveEventBus.b().c("web_activity_back", Boolean.TRUE);
            P0(true);
        } else {
            this.m0.l();
        }
        x1();
        setResult(1242, new Intent());
    }

    @Override
    public void onClick(View view) {
        if (this.m0 == null) {
            return;
        }
        int id = view.getId();
        if (id == R.id.iv_refresh) {
            p06.d0("dl_brower_rp_refresh_cl");
            this.m0.t();
            return;
        }
        if (id == R.id.iv_download_manager) {
            Intent intent = new Intent(this, (Class<?>) DownloadManagerActivity.class);
            intent.putExtra("go_download", 1);
            intent.putExtra("from", "dl_brower_rp_dl_cl");
            intent.putExtra("support_theme_background", false);
            f5.c(intent, this);
            s16.c(GlobalDownloadManger.B().h(), "浏览器");
            r06.f(this.mScreenType, "dl_brower_rp_dl_cl", hb0.KEY_NAME_NUM, GlobalDownloadManger.B().h());
            return;
        }
        if (id == R.id.iv_add_bookmark) {
            if (this.R.isSelected()) {
                this.R.setSelected(false);
                this.O.D(L0, this);
            } else {
                this.R.setSelected(true);
                String str = this.S;
                String str2 = L0;
                this.O.A(new Bookmark(str, str2, (String) this.e0.get(str2), b23.i(this.h0)), this);
            }
            K0(this.R);
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            bundle.putInt("status", this.R.isSelected() ? 1 : 0);
            bundle.putString("address", L0);
            trackData.add("status", this.R.isSelected() ? 1 : 0);
            trackData.add("address", L0);
            p06.q0(trackData, bundle, "dl_brower_rp_bm_cl", 9324L);
            hb0.markTrackTwo("dl_brower_rp_bm_cl", "status", Integer.valueOf(this.R.isSelected() ? 1 : 0), "address", L0);
            return;
        }
        if (id == R.id.iv_more) {
            p06.d0("dl_brower_rp_more_cl");
            A1();
            return;
        }
        if (id == R.id.iv_main_page) {
            p06.d0("dl_brower_rp_home_cl");
            this.m0.o("https://www.google.com");
            return;
        }
        if (id == R.id.iv_goright) {
            p06.d0("dl_brower_rp_next_cl");
            this.m0.m();
            return;
        }
        if (id == R.id.iv_goleft) {
            p06.d0("dl_brower_rp_previous_cl");
            this.m0.l();
            return;
        }
        if (id == R.id.iv_back) {
            p06.d0("dl_brower_rp_retract_cl");
            LiveEventBus.b().c("web_activity_back", Boolean.TRUE);
            P0(true);
            return;
        }
        if (id == R.id.edit_url) {
            p06.d0("dl_brower_rp_input_cl");
            Intent intent2 = new Intent(this, (Class<?>) SearchActivity.class);
            intent2.putExtra("from", "dl_brower_rp_input_cl");
            intent2.putExtra("web_start_url", this.V.getText().toString());
            intent2.putExtra("page_tag", "visha_WebActivity");
            f5.b(intent2, 1245, this);
            return;
        }
        if (id == R.id.edit_url_open) {
            p06.d0("dl_brower_rp_input_cl");
            Intent intent3 = new Intent(this, (Class<?>) SearchActivity.class);
            intent3.putExtra("from", "dl_brower_rp_input_cl");
            intent3.putExtra("web_start_url", this.V.getText().toString());
            intent3.putExtra("page_tag", "visha_WebActivity");
            f5.b(intent3, 1245, this);
            return;
        }
        if (id == R.id.ll_multi_web) {
            p06.d0("dl_brower_rp_multi_cl");
            WebView webViewK = this.m0.k();
            if (webViewK == null) {
                Log.w("visha_WebActivity", "onClick multi_web: current webview is null");
                return;
            }
            webViewK.setDrawingCacheEnabled(true);
            this.P.g(webViewK.getDrawingCache());
            webViewK.setDrawingCacheEnabled(false);
            O0();
            return;
        }
        if (id != R.id.fl_sniffer_download || V0()) {
            return;
        }
        this.t0 = System.currentTimeMillis();
        boolean z = this.s0;
        String str3 = L0;
        p06.n(z, str3, SniffDataManager.getPageDataForMarkPoint(str3));
        if (!this.s0) {
            if (SniffYoutubeUtil.isSSYoutubeSite(L0) || SniffYoutubeUtil.isYoutubeSite(L0)) {
                B1();
                return;
            } else {
                dz5.b = L0;
                DownloadTipActivity.x0(this, L0);
                return;
            }
        }
        if (w6c.c(MainApp.f(), "download_open_notice", true) && MainApp.z) {
            f27.a(this, getResources().getString(R.string.download_content_text), getResources().getString(pp3.c ? R.string.download_content_notice_pre : R.string.download_content_notice), getResources().getString(R.string.copyright_notice), new f27.c() {
                @Override
                public final void a(boolean z2) {
                    WebActivity.g1(z2);
                }
            });
            return;
        }
        x();
        SniffVideoInfoArrayBean pageData = SniffDataManager.getPageData(L0);
        if (pageData.getMultiVideoList() == null || pageData.getMultiVideoList().size() <= 0) {
            ToastUtils.s(R.string.download_failed);
            return;
        }
        e16.d = L0;
        if (Z0()) {
            int[] iArr = this.N;
            iArr[0] = iArr[0] + d39.a(getBaseContext(), 14.0f);
        }
        SniffMultiVideoSheetActivity.C0(this, true, L0, this.N, new int[]{this.T, this.U}, Z0(), L0, pageData.getSniffResultShowType());
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        com.transsion.widgetslib.dialog.d dVar = f27.a;
        if (dVar != null) {
            dVar.g(configuration);
        }
        if (com.transsion.utils.a.A()) {
            this.c0.setTranslationY(0.0f);
            y1();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_web_with_hide_toolbar);
        this.n0 = true;
        com.transsion.utils.a.a(this, 10);
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(com.transsion.magicvideo.R.attr.os_platform_basic_color, typedValue, true);
        K0 = typedValue.data;
        R0();
        boolean z = false;
        if (bundle != null) {
            this.A0 = true;
            ArrayList<String> stringArrayList = bundle.getStringArrayList("web_review_history_list");
            this.B0 = stringArrayList;
            if (stringArrayList != null && stringArrayList.size() > 0) {
                ArrayList arrayList = this.B0;
                L0 = (String) arrayList.get(arrayList.size() - this.C0);
                ArrayList arrayList2 = this.B0;
                this.z0 = (String) arrayList2.get(arrayList2.size() - this.C0);
            }
        } else {
            this.A0 = false;
            L0 = U0(getIntent());
            this.z0 = az8.a().d("mUrl");
        }
        this.V = (TextView) findViewById(R.id.edit_url);
        this.Y = (ImageView) findViewById(R.id.iv_back);
        int i = R.id.ll_bottom_bar;
        this.W = (FrameLayout) findViewById(i);
        this.X = (AppBarLayout) findViewById(R.id.top_bar);
        this.f0 = (BadgeView) findViewById(R.id.bv_count);
        this.i0 = (ImageView) findViewById(R.id.iv_goleft);
        this.j0 = (ImageView) findViewById(R.id.iv_goright);
        this.k0 = (ImageView) findViewById(R.id.iv_main_page);
        this.l0 = (ImageView) findViewById(R.id.iv_more);
        this.r0 = (LinearLayout) findViewById(R.id.ll_multi_web);
        TextView textView = (TextView) findViewById(R.id.tv_multi_web);
        this.a0 = textView;
        textView.setLongClickable(false);
        this.G0 = (LinearLayout) findViewById(R.id.fl_bottom_content);
        this.F0 = (FrameLayout) findViewById(R.id.fl_half_content);
        this.i0.setOnClickListener(this);
        this.W = (FrameLayout) findViewById(i);
        this.b0 = (TextView) findViewById(R.id.tv_sniffer_download);
        this.c0 = findViewById(R.id.fl_sniffer_download);
        this.d0 = findViewById(R.id.empty_anchor);
        this.c0.setOnClickListener(this);
        this.i0.setOnClickListener(this);
        this.j0.setOnClickListener(this);
        this.k0.setOnClickListener(this);
        this.l0.setOnClickListener(this);
        this.Y.setOnClickListener(this);
        this.V.setOnClickListener(this);
        this.r0.setOnClickListener(this);
        this.Z = (ImageView) findViewById(R.id.iv_privacy_browse);
        ((ImageView) findViewById(R.id.iv_refresh)).setOnClickListener(this);
        findViewById(R.id.iv_download_manager).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.iv_add_bookmark);
        this.R = imageView;
        imageView.setOnClickListener(this);
        this.R.setAlpha(0.4f);
        this.R.setEnabled(false);
        this.O = (BookmarksViewModel) getViewModel(BookmarksViewModel.class);
        nic nicVarQ = nic.q(this);
        this.P = nicVarQ;
        nicVarQ.E((int) (d39.c(this) * 0.4f));
        nic.F(d39.c(this));
        this.Q = (DownloadViewModel) getViewModel(DownloadViewModel.class);
        this.P.e.observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.h1((Integer) obj);
            }
        });
        String str = L0;
        DownloadViewModel downloadViewModel = this.Q;
        ArrayList arrayList3 = this.E0;
        this.m0 = SniffWebViewContainer.M(this, this, str, downloadViewModel, "multi_web", arrayList3 == null || arrayList3.isEmpty());
        this.P.l().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.i1((WebPreviewRecord) obj);
            }
        });
        this.x0 = (CoordinatorLayout) findViewById(R.id.activtiy_web_with_hide_toolbar);
        if (getIntent() != null && getIntent().getExtras() != null) {
            z = getIntent().getExtras().getBoolean("need_new_web", false);
        }
        this.P.C(this.m0, L0, z);
        this.P.j(L0);
        Q0(this.P.p());
        this.V.setText(L0);
        GlobalDownloadManger.B().v("visha_WebActivity", new mf7() {
            @Override
            public final void a(int i2) {
                this.a.j1(i2);
            }
        });
        D1();
        u1();
        this.g0 = w6c.c(getBaseContext(), "need_youtube_guide", true);
        j1(GlobalDownloadManger.B().h());
        this.q0 = System.currentTimeMillis();
        this.f0.post(new Runnable() {
            @Override
            public final void run() {
                this.b.k1();
            }
        });
        this.u0 = (Z0() ? -1 : 1) * getResources().getDimensionPixelOffset(R.dimen.local_download_btn_animation_translate_x_left);
        W0();
        y1();
        N0();
        if (GlobalDownloadManger.d) {
            MainApp.d("visha_WebActivity", new a());
        }
        p1();
    }

    @Override
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        if (view instanceof NestedScrollAgentWebView) {
            NestedScrollAgentWebView nestedScrollAgentWebView = (NestedScrollAgentWebView) view;
            int lastMotionX = nestedScrollAgentWebView.getLastMotionX();
            int lastMotionY = nestedScrollAgentWebView.getLastMotionY();
            CoordinatorLayout.LayoutParams layoutParams = new CoordinatorLayout.LayoutParams(1, 1);
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = lastMotionY;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = lastMotionX;
            this.d0.setLayoutParams(layoutParams);
        }
        WebView.HitTestResult hitTestResult = this.m0.k().getHitTestResult();
        hb0.markDirect("dl_brower_rp_lc");
        if (hitTestResult.getExtra() != null) {
            if (hitTestResult.getType() == 7) {
                eic.a(this, this.d0, hitTestResult.getExtra(), hitTestResult.getExtra(), 7, this);
                return;
            }
            if (hitTestResult.getType() == 8) {
                this.m0.k().requestFocusNodeHref(T0(hitTestResult));
            } else if (hitTestResult.getType() == 5) {
                eic.a(this, this.d0, hitTestResult.getExtra(), hitTestResult.getExtra(), 5, this);
            } else {
                eic.a(this, this.d0, hitTestResult.getExtra(), hitTestResult.getExtra(), 0, this);
            }
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        SniffDataManager.clearSniffData(L0);
        nic nicVar = this.P;
        if (nicVar != null) {
            nicVar.x(this);
        }
        this.m0 = null;
        MainApp.s("visha_WebActivity");
        GlobalDownloadManger.B().i("visha_WebActivity");
        this.Q.b(this);
        SniffMarkPointBean.Builder builder = new SniffMarkPointBean.Builder();
        SniffMarkPointer.ENUM_SNIFF_MARKPOINT enum_sniff_markpoint = SniffMarkPointer.ENUM_SNIFF_MARKPOINT.CODE_2005;
        SniffMarkPointer.markPointSniffAsync(builder.setCode(enum_sniff_markpoint.code).setMsg(enum_sniff_markpoint.msg).setMainUrl(L0).setDuration((int) (System.currentTimeMillis() - this.q0)).setEventName(SniffMarkPointer.DL_BROWER_SNIFF).Build());
        SniffMultiVideoDialog sniffMultiVideoDialog = this.y0;
        if (sniffMultiVideoDialog != null && sniffMultiVideoDialog.isAdded()) {
            this.y0.onDestroy();
        }
        ThreadUtils.o().removeCallbacks(this.I0);
        View view = this.c0;
        if (view != null) {
            view.removeCallbacks(this.J0);
            this.c0.clearAnimation();
        }
        com.transsion.widgetslib.dialog.d dVar = f27.a;
        if (dVar != null && dVar.isShowing()) {
            f27.a.dismiss();
        }
        f27.a = null;
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 5) {
            return super.onKeyDown(i, keyEvent);
        }
        LogUtils.j("visha_WebActivity", "ignore KEYCODE_CALL on WebActivity");
        return true;
    }

    @Override
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        s1();
        if (intent == null) {
            Log.e("visha_WebActivity", "onNewIntent");
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("need_new_web", false);
        L0 = U0(intent);
        M0 = "dl_bm_cl";
        if (!TextUtils.isEmpty(intent.getStringExtra("web_url_from"))) {
            M0 = intent.getStringExtra("web_url_from");
        }
        this.P.D(intent.getIntExtra("page_index", 0));
        if (booleanExtra) {
            r1(L0);
        } else {
            q1(L0);
        }
        Q0(this.P.p());
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        SniffWebViewContainer sniffWebViewContainer = this.m0;
        if (sniffWebViewContainer == null || webView != sniffWebViewContainer.k()) {
            return;
        }
        this.p0 = System.currentTimeMillis();
        L0 = webView.getUrl();
        ArrayList arrayList = this.E0;
        if (arrayList != null && !arrayList.isEmpty()) {
            SniffDataManager.setData(L0, this.E0);
        }
        Log.d("visha_WebActivity", "onPageFinished, url : " + L0);
        X0(L0);
        ReviewHistory reviewHistory = new ReviewHistory(webView.getTitle(), (String) this.e0.get(L0), L0, System.currentTimeMillis());
        if (Y0(str) && this.g0) {
            this.g0 = false;
            w6c.r(getBaseContext(), "need_youtube_guide", this.g0);
            com.transsion.sniffer_load.b.i(this);
            p06.f0(null, "dl_brower_rp_ygtips_show", 9324L);
        }
        if (this.D0) {
            this.D0 = false;
            if (!MainApp.p) {
                this.O.z(reviewHistory, this);
            }
        }
        this.V.setText(L0);
        hb0.markTrackThree("dl_brower_rp_ldend", "address", L0, "duration", Integer.valueOf(((int) (this.p0 - this.o0)) / 1000), "status", Integer.valueOf(MainApp.p ? 1 : 0));
    }

    @Override
    public void onPause() {
        super.onPause();
        this.H0 = true;
        if (fc7.c(this.m0)) {
            this.m0.q();
        }
        LiveEventBus.b().c("close_forbid_dialog", Boolean.TRUE);
    }

    @Override
    public void onResume() {
        SniffMultiVideoAdapter sniffMultiVideoAdapter;
        super.onResume();
        this.H0 = false;
        Log.d("visha_WebActivity", "onResume: " + L0);
        X0(L0);
        if (this.n0) {
            overridePendingTransition(R.anim.web_in, R.anim.pre_hold);
            this.n0 = false;
        } else {
            overridePendingTransition(R.anim.activity_webview_begin, R.anim.activity_close_exit);
        }
        if (fc7.c(this.m0)) {
            this.m0.r();
        }
        boolean z = getIntent() != null && getIntent().getBooleanExtra("music_guide", false);
        if ("https://360media.com.ng/".equals(L0) && z && MMKV.p().getBoolean("music_guide", true)) {
            new com.transsion.sniffer_load.a().b(this);
            w6c.r(getBaseContext(), "need_download_guide", false);
            MMKV.p().y("music_guide", false);
        }
        SniffMultiVideoDialog sniffMultiVideoDialog = this.y0;
        if (sniffMultiVideoDialog != null && sniffMultiVideoDialog.isAdded() && this.y0.isVisible() && (sniffMultiVideoAdapter = this.y0.p) != null) {
            sniffMultiVideoAdapter.notifyDataSetChanged();
        }
        if (!this.H0 && Y0(L0) && this.g0) {
            this.g0 = false;
            w6c.r(getBaseContext(), "need_youtube_guide", this.g0);
            com.transsion.sniffer_load.b.i(this);
            p06.f0(null, "dl_brower_rp_ygtips_show", 9324L);
        }
        this.R.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.n1();
            }
        }, 100L);
        this.Z.setVisibility(MainApp.p ? 0 : 8);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putStringArrayList("web_review_history_list", this.B0);
        super.onSaveInstanceState(bundle);
    }

    @Override
    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onScreenTypeChange(screen_type);
        D1();
        r06.c(screen_type, "dl_brower_rp_show");
    }

    @Override
    public void onStop() {
        super.onStop();
        if (this.P == null || isChangingConfigurations()) {
            return;
        }
        nic nicVar = this.P;
        nicVar.A(nicVar.m(), 1);
    }

    public final void p1() {
        LiveEventBus.b().d("is_from_multiweb_back").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.d1((Boolean) obj);
            }
        });
        LiveEventBus.b().d("need_load_new_web").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.e1((Intent) obj);
            }
        });
        LiveEventBus.b().d("download_service_connected").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.f1(obj);
            }
        });
    }

    public final void q1(String str) {
        SniffWebViewContainer sniffWebViewContainer = this.m0;
        if (sniffWebViewContainer != null) {
            sniffWebViewContainer.o(str);
            this.V.setText(str);
        }
    }

    public final void r1(String str) {
        this.P.e(L0, SniffWebViewContainer.M(this, this, str, this.Q, "multi_web", true));
    }

    public void s1() {
    }

    public void t1() {
        StringBuffer stringBuffer = new StringBuffer();
        SniffVideoInfoArrayBean pageData = SniffDataManager.getPageData(L0);
        if (pageData.getMultiVideoList() != null) {
            Iterator<SniffVideoInfoBean> it = pageData.getMultiVideoList().iterator();
            while (it.hasNext()) {
                stringBuffer.append(it.next().getVideoList().get(0));
                stringBuffer.append(StringUtils.COMMA);
            }
        }
        hb0.markTrackThree("dl_brower_rp_c_adl_show", "status", Integer.valueOf(this.s0 ? 1 : 2), hb0.KEY_NAME_MAINURL, L0, "video_url", stringBuffer.toString());
    }

    @Override
    public boolean j(final com.transsion.sniffer_load.okdownload.a aVar, int i) {
        e16.g(i);
        String str = L0;
        aVar.k = str;
        SniffHeaderInjector.inject(aVar, str, aVar.b);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        new e6b(this, new e6b.c() {
            @Override
            public final void a(boolean z) {
                this.a.l1(atomicBoolean, aVar, z);
            }
        }).b(false);
        return atomicBoolean.get();
    }

    public final void w1(SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        LiveEventBus.b().d("download_list_update").postValue(sniffVideoInfoArrayBean);
        if (!py2.e(L0) || SniffScriptConfigMgr.getInstance().isClientForbidSniff(L0)) {
            this.c0.setVisibility(4);
            return;
        }
        if (sniffVideoInfoArrayBean.getMultiVideoList() != null) {
            int size = sniffVideoInfoArrayBean.getMultiVideoList().size();
            if (this.c0.getVisibility() == 0) {
                if (!this.s0 && size > 0) {
                    StringBuffer stringBuffer = new StringBuffer();
                    if (sniffVideoInfoArrayBean.getMultiVideoList() != null) {
                        Iterator<SniffVideoInfoBean> it = sniffVideoInfoArrayBean.getMultiVideoList().iterator();
                        while (it.hasNext()) {
                            stringBuffer.append(it.next().getVideoList().get(0));
                            stringBuffer.append(StringUtils.COMMA);
                        }
                    }
                    p06.q(L0, stringBuffer.toString());
                }
                this.s0 = size != 0;
            } else {
                this.s0 = size != 0;
                t1();
                this.c0.setVisibility(0);
            }
            if (size == 0) {
                L0(false);
                this.c0.setBackgroundResource(R.drawable.local_download_btn_bg_disable);
                this.b0.setVisibility(8);
                return;
            }
            this.c0.setBackgroundResource(R.drawable.local_download_btn_bg);
            this.b0.setText(getResources().getString(size == 1 ? R.string.video_num_a : R.string.videos_num_a, String.valueOf(size)));
            if (!this.v0 && !sniffVideoInfoArrayBean.equals(this.w0)) {
                L0(true);
                this.c0.removeCallbacks(this.J0);
                this.c0.postDelayed(this.J0, 2000L);
            }
            this.w0 = sniffVideoInfoArrayBean;
        }
    }

    @Override
    public void x() {
        this.X.setExpanded(true);
    }

    public final void x1() {
        if (r0a.g(L0) || !L0.contains("Visha-Feedback-65295e1ed3ea44a1875ce932baf3284e")) {
            if (this.h0 != null) {
                LogUtils.j("visha_WebActivity", "putLastWebToSp: " + L0, "mTitle: " + this.S, "mBitmap width: " + this.h0.getWidth() + " height: " + this.h0.getHeight());
                C1();
            }
            w6c.w(this, "last_web", new Bookmark(this.S, L0, b23.i(this.h0)));
        }
    }

    @Override
    public void y(IWebLoadStatusCallback.MENU menu, String str, String str2) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        if (this.P == null) {
            this.P = nic.q(this);
        }
        if (IWebLoadStatusCallback.MENU.OPEN_B.equals(menu)) {
            if (this.P.p() >= 9) {
                ToastUtils.u(this, R.string.window_up_to_limit);
                return;
            }
            this.P.c(str2, str, SniffWebViewContainer.M(this, this, str2, this.Q, "multi_web", true));
            ToastUtils.s(R.string.link_open_b);
            return;
        }
        if (!IWebLoadStatusCallback.MENU.OPEN_F.equals(menu)) {
            ((ClipboardManager) getSystemService("clipboard")).setText(str2);
            ToastUtils.s(R.string.link_copy);
        } else {
            L0 = str2;
            this.P.d(str2, str, SniffWebViewContainer.M(this, this, str2, this.Q, "multi_web", true));
        }
    }

    public final void y1() {
        int iA = d39.a(this, 56.0f);
        m23.a(this.c0, iA, d39.b(this) - iA);
    }

    @Override
    public void z(WebView webView, String str) {
    }

    public final void j1(int i) {
        ThreadUtils.o().postDelayed(this.I0, (ym1.b && (b39.a(this) == BaseConstant.SCREEN_TYPE.FOLD)) ? C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS : 0L);
        LogUtils.v("visha_WebActivity", "is delay set count:" + ym1.b);
    }
}
