package com.snaptube.premium.fragment;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.webkit.CookieManager;
import android.webkit.JsPromptResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.phoenix.download.DownloadInfo;
import com.phoenix.slog.SnapTubeLogger;
import com.phoenix.slog.SnapTubeLoggerManager;
import com.snaptube.ads.AdFlavor;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.ads.nativead.AdView;
import com.snaptube.base.BaseFragment;
import com.snaptube.dataadapter.IYouTubeDataAdapter;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.dataadapter.youtube.BaseYoutubeDataAdapter;
import com.snaptube.extractor.pluginlib.models.ExtractResult;
import com.snaptube.extractor.pluginlib.models.TrackerModel;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.extractor.pluginlib.models.YouTubePlaybackModel;
import com.snaptube.extractor.pluginlib.models.YouTubePlaylist;
import com.snaptube.extractor.pluginlib.utils.MediaUtil;
import com.snaptube.mixed_list.view.FABBatchDownload;
import com.snaptube.plugin.extension.nonlifecycle.root.ChooseFormatFragment;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.anim.Animations;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.batch_download.BatchVideoSelectManager;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.dialog.BatchDownloadFormatFragment;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.share.SharePopupFragment;
import com.snaptube.premium.views.VideoEnabledWebView;
import com.snaptube.premium.webview.PluginForIndividualVideoSites;
import com.snaptube.premium.webview.VideoStatusManagerPlugin;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.util.ProductionEnv;
import com.snaptube.video.videoextractor.net.HttpHeader;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.base.utils.InputMethodHelper;
import com.wandoujia.base.utils.RxBus;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.regex.Pattern;
import javax.inject.Inject;
import kotlin.Pair;
import net.pubnative.mediation.adapter.model.SnaptubeNativeAdModel;
import o.aa7;
import o.ah3;
import o.ap3;
import o.az7;
import o.b6;
import o.b88;
import o.bd2;
import o.bh5;
import o.c39;
import o.cv4;
import o.dd7;
import o.f13;
import o.fn0;
import o.gd0;
import o.gj;
import o.gv8;
import o.hd0;
import o.hg7;
import o.hq1;
import o.hu4;
import o.hv8;
import o.i45;
import o.if9;
import o.iv8;
import o.ja9;
import o.jv8;
import o.k3;
import o.ke3;
import o.kv8;
import o.l29;
import o.l3;
import o.l5;
import o.ld0;
import o.lv8;
import o.mv8;
import o.nh5;
import o.nv8;
import o.ov8;
import o.pf9;
import o.pn0;
import o.pv8;
import o.qv8;
import o.rd;
import o.rk7;
import o.rv8;
import o.ry6;
import o.s86;
import o.sr7;
import o.sv8;
import o.tv8;
import o.u08;
import o.uv8;
import o.vc2;
import o.vq6;
import o.vs1;
import o.w29;
import o.wd9;
import o.x53;
import o.y6;
import o.ya3;
import o.yj8;
import o.z2;
import o.z39;
import o.z6;
import o.za3;
import o.zz4;
import org.json.JSONObject;

public class VideoWebViewFragment extends BaseFragment implements ry6, uv8.b, bh5, ya3, com.snaptube.premium.batch_download.a, za3 {
    public static final String[] O0 = {"vimeo.com", "facebook.com", "getsnap.link"};
    public static final String[] P0 = {"facebook.com"};
    public static final String[] Q0 = {"vimeo.com", "facebook.com"};
    public static final String[] R0 = {"snaptube.in", "snaptubevideo.com", "accounts.google.com"};
    public static final String[] S0 = {"instagram.com"};
    public static final String[] T0 = {"com.faceb@@k.k@tana", "com.instagram.android", "com.zhiliaoapp.musically"};
    public static boolean U0 = false;
    public String A;
    public FABBatchDownload C;
    public FabLoadingView D;

    @Inject
    ke3 D0;
    public ProgressBar E;

    @Inject
    IYouTubeDataAdapter E0;
    public uv8 F;
    public x53 F0;
    public View G;
    public ViewGroup H;
    public WebView I;
    public t I0;
    public View J;
    public View K;
    public WebChromeClient.CustomViewCallback L;
    public EditText M;
    public int N;
    public String O;
    public String P;
    public w Q;
    public v R;
    public nh5 S;
    public int T;
    public VideoInfo U;
    public boolean V;
    public aa7 W;
    public String X;
    public String Y;
    public String Z;
    public Context h;
    public List i;
    public com.snaptube.premium.webview.c k;
    public ValueCallback m;
    public ValueCallback n;

    public String f427o;
    public AdView v0;
    public ViewGroup w0;
    public String y;
    public String z;
    public final z6 g = new z6();
    public boolean j = true;
    public boolean l = false;
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;
    public boolean s = false;
    public boolean t = true;
    public boolean u = false;
    public boolean v = true;
    public int w = 0;
    public long x = 0;
    public final Handler B = new u(this);
    public boolean f0 = false;
    public boolean x0 = false;
    public boolean y0 = true;
    public String z0 = null;
    public boolean A0 = false;
    public String B0 = null;
    public boolean C0 = true;
    public BatchVideoSelectManager G0 = new BatchVideoSelectManager();
    public String H0 = null;
    public boolean J0 = false;
    public final String K0 = "youtube-webview-playlist-guide-shown";
    public final String L0 = "https://m.youtube.com/feed/account";
    public final View.OnClickListener M0 = new sv8(this);
    public final View.OnClickListener N0 = new tv8(this);

    public enum DownloadButtonStatus {
        GONE,
        DISABLE_NOT_IN_DETAIL_PAGE,
        DISABLE_WAIT_FOR_VIDEO_TAG,
        ENABLE,
        ENABLE_BY_VIDEO_TAG,
        ENABLE_BY_JSBRIDGE,
        LOADING,
        MULTI_SELECT
    }

    public static class FullscreenHolder extends FrameLayout {
        public FullscreenHolder(Context context) {
            super(context);
        }
    }

    public class a implements ChooseFormatFragment.b {
        public a() {
        }

        @Override
        public void a(String str) {
            VideoWebViewFragment.this.p4(str, true);
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            WebView webView = VideoWebViewFragment.this.I;
            if (webView != null) {
                webView.reload();
            }
            VideoWebViewFragment.o3(VideoWebViewFragment.this, false);
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public final String a;

        public c(String str) {
            this.a = str;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            vs1.a(this.a, VideoWebViewFragment.g3(VideoWebViewFragment.this));
        }
    }

    public class d implements Runnable {
        public final String a;

        public d(String str) {
            this.a = str;
        }

        @Override
        public void run() {
            VideoWebViewFragment.this.o4(this.a);
        }
    }

    public class e implements k3 {
        public e() {
        }

        @Override
        public void call() {
        }
    }

    public class f implements l3 {
        public f() {
        }

        public void a(Throwable th) {
            ProductionEnv.throwExceptForDebugging(th);
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public class g implements ChooseFormatFragment.b {
        public g() {
        }

        @Override
        public void a(String str) {
            VideoWebViewFragment.this.p4(str, true);
        }
    }

    public class h implements DialogInterface.OnClickListener {
        public final SharedPreferences a;

        public h(SharedPreferences sharedPreferences) {
            this.a = sharedPreferences;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            this.a.edit().putBoolean("youtube-webview-playlist-guide-shown", true).apply();
            VideoWebViewFragment.v3(false);
        }
    }

    public class i implements DialogInterface.OnClickListener {
        public final SharedPreferences a;

        public i(SharedPreferences sharedPreferences) {
            this.a = sharedPreferences;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            VideoWebViewFragment.this.o4("https://m.youtube.com/feed/account");
            this.a.edit().putBoolean("youtube-webview-playlist-guide-shown", true).apply();
            VideoWebViewFragment.v3(false);
        }
    }

    public static class j {
        public static final int[] a;

        static {
            int[] iArr = new int[DownloadButtonStatus.values().length];
            a = iArr;
            try {
                iArr[DownloadButtonStatus.DISABLE_NOT_IN_DETAIL_PAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[DownloadButtonStatus.DISABLE_WAIT_FOR_VIDEO_TAG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[DownloadButtonStatus.ENABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[DownloadButtonStatus.ENABLE_BY_VIDEO_TAG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[DownloadButtonStatus.ENABLE_BY_JSBRIDGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[DownloadButtonStatus.MULTI_SELECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[DownloadButtonStatus.LOADING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[DownloadButtonStatus.GONE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public class k implements View.OnFocusChangeListener {
        public k() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            if (z) {
                VideoWebViewFragment.t3(VideoWebViewFragment.this, ((WebView) view).getUrl());
            }
        }
    }

    public class l implements l3 {
        public l() {
        }

        public void a(RxBus.d dVar) {
            Object obj = dVar.d;
            String str = obj instanceof String ? (String) obj : null;
            if (VideoWebViewFragment.Z2(VideoWebViewFragment.this) == null || !TextUtils.equals(VideoWebViewFragment.Z2(VideoWebViewFragment.this).getPlacementAlias(), str)) {
                return;
            }
            VideoWebViewFragment.b3(VideoWebViewFragment.this, false);
            gd0 gd0Var = gd0.a;
            gd0Var.j(VideoWebViewFragment.Y2(VideoWebViewFragment.this));
            gd0Var.i();
            VideoWebViewFragment.Y2(VideoWebViewFragment.this).setVisibility(8);
        }

        @Override
        public void call(Object obj) {
            a((RxBus.d) obj);
        }
    }

    public class m implements l3 {
        public m() {
        }

        public void a(Throwable th) {
            ProductionEnv.logException("RxjavaExecuteException", th);
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override
        public void run() {
            VideoWebViewFragment videoWebViewFragment = VideoWebViewFragment.this;
            VideoWebViewFragment.k3(videoWebViewFragment, VideoWebViewFragment.a3(videoWebViewFragment), true, true);
        }
    }

    public class o implements InputMethodHelper.c {
        public int a = 0;

        public o() {
        }

        @Override
        public void a(Rect rect, boolean z) {
            boolean z2;
            int iHeight = rect.height();
            int i = this.a;
            if (i == iHeight) {
                return;
            }
            if (iHeight - i > 200) {
                this.a = iHeight;
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.a - iHeight > 200) {
                this.a = iHeight;
                z2 = false;
            }
            if (VideoWebViewFragment.Z2(VideoWebViewFragment.this) == null) {
                return;
            }
            if (z2) {
                VideoWebViewFragment.Z2(VideoWebViewFragment.this).setVisibility(8);
            } else {
                VideoWebViewFragment.Z2(VideoWebViewFragment.this).setVisibility(0);
            }
        }
    }

    public class p implements Runnable {
        public final String a;

        public p(String str) {
            this.a = str;
        }

        @Override
        public void run() {
            com.snaptube.premium.webview.c cVar;
            if (!zz4.c(this.a) || (cVar = VideoWebViewFragment.this.k) == null) {
                VideoWebViewFragment.k3(VideoWebViewFragment.this, this.a, true, true);
            } else {
                cVar.o(true);
            }
        }
    }

    public class q implements View.OnClickListener {
        public final String a;

        public q(String str) {
            this.a = str;
        }

        @Override
        public void onClick(View view) {
            VideoWebViewFragment.k3(VideoWebViewFragment.this, this.a, true, false);
        }
    }

    public class r implements View.OnClickListener {
        public r() {
        }

        @Override
        public void onClick(View view) {
            com.snaptube.premium.webview.c cVar = VideoWebViewFragment.this.k;
            if (cVar != null) {
                cVar.n();
            }
        }
    }

    public class s implements View.OnClickListener {
        public s() {
        }

        @Override
        public void onClick(View view) {
            VideoWebViewFragment videoWebViewFragment = VideoWebViewFragment.this;
            VideoWebViewFragment.l3(videoWebViewFragment, videoWebViewFragment.m());
        }
    }

    public static class t implements AdView.d {
        @Override
        public void a() {
        }

        @Override
        public void onAdShow() {
            gd0.a.h();
        }
    }

    public static class u extends Handler {
        public WeakReference a;

        public u(VideoWebViewFragment videoWebViewFragment) {
            this.a = new WeakReference(videoWebViewFragment);
        }

        @Override
        public void handleMessage(Message message) {
            VideoWebViewFragment videoWebViewFragment = (VideoWebViewFragment) this.a.get();
            if (videoWebViewFragment == null || videoWebViewFragment.getActivity() == null) {
                return;
            }
            int i = message.what;
            if (i == 25) {
                VideoWebViewFragment.u3(videoWebViewFragment);
            }
            if (i == 37) {
                String strOptString = ((JSONObject) message.obj).optString("url");
                if (TextUtils.isEmpty(strOptString)) {
                    ProductionEnv.w("playlist illegal");
                    return;
                } else {
                    VideoWebViewFragment.p3(videoWebViewFragment, strOptString);
                    return;
                }
            }
            switch (i) {
                case 1:
                    removeMessages(1);
                    VideoWebViewFragment.s3(videoWebViewFragment, (String) message.obj);
                    break;
                case 2:
                    VideoWebViewFragment.d3(videoWebViewFragment, DownloadButtonStatus.DISABLE_WAIT_FOR_VIDEO_TAG, null);
                    break;
                case 3:
                    VideoInfo videoInfo = (VideoInfo) ((List) message.obj).get(0);
                    VideoWebViewFragment.c3(videoWebViewFragment, videoInfo);
                    VideoWebViewFragment.d3(videoWebViewFragment, DownloadButtonStatus.ENABLE_BY_VIDEO_TAG, videoInfo.getSource());
                    break;
                case 4:
                    VideoWebViewFragment.k3(videoWebViewFragment, (String) message.obj, true, false);
                    break;
                case 5:
                    s86.b();
                    VideoWebViewFragment.m3(videoWebViewFragment);
                    Object obj = message.obj;
                    if (obj != null && (obj instanceof ExtractResult)) {
                        VideoWebViewFragment.i3(videoWebViewFragment, (ExtractResult) obj, message.arg1 != 256);
                    } else {
                        b88.e(videoWebViewFragment.getActivity(), R.string.video_info_query_failure);
                    }
                    break;
                case 6:
                    VideoWebViewFragment.d3(videoWebViewFragment, DownloadButtonStatus.ENABLE_BY_JSBRIDGE, null);
                    break;
                case 7:
                    removeMessages(8);
                    VideoWebViewFragment.n3(videoWebViewFragment, message.obj);
                    break;
                case 8:
                    s86.b();
                    break;
                case 9:
                    VideoWebViewFragment.d3(videoWebViewFragment, DownloadButtonStatus.GONE, null);
                    break;
                default:
                    switch (i) {
                        case 16:
                            VideoWebViewFragment.d3(videoWebViewFragment, DownloadButtonStatus.DISABLE_WAIT_FOR_VIDEO_TAG, null);
                            break;
                        case 17:
                            VideoWebViewFragment.q3(videoWebViewFragment, (dd7) message.obj);
                            break;
                        case 18:
                            VideoWebViewFragment.e3(videoWebViewFragment, (hq1) message.obj);
                            break;
                        case 19:
                            Object obj2 = message.obj;
                            if (obj2 != null && (obj2 instanceof YouTubePlaylist)) {
                                VideoWebViewFragment.j3(videoWebViewFragment, (YouTubePlaylist) obj2);
                            } else {
                                b88.e(videoWebViewFragment.getActivity(), R.string.video_info_query_failure);
                            }
                            break;
                        case 20:
                            VideoWebViewFragment.d3(videoWebViewFragment, DownloadButtonStatus.LOADING, null);
                            break;
                        case 21:
                            VideoWebViewFragment.d3(videoWebViewFragment, DownloadButtonStatus.MULTI_SELECT, null);
                            break;
                        case 22:
                            videoWebViewFragment.O4((String) message.obj);
                            break;
                        case 23:
                            VideoWebViewFragment.r3(videoWebViewFragment, message);
                            break;
                        default:
                            switch (i) {
                                case 32:
                                    videoWebViewFragment.u4();
                                    break;
                                case 33:
                                    VideoWebViewFragment.h3(videoWebViewFragment, message);
                                    break;
                                case 34:
                                    VideoWebViewFragment.f3(videoWebViewFragment, (String) message.obj);
                                    break;
                                case 35:
                                    if (videoWebViewFragment.getContext() != null && (message.obj instanceof String)) {
                                        w29.a.c(videoWebViewFragment.getContext(), (String) message.obj, null, true);
                                        break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
    }

    public interface v {
        void c0();

        void n0();
    }

    public interface w {
        void a(String str);
    }

    private void F4(String str) {
        ProductionEnv.debugLog("VideoWebView", "onUrlChanged: url= " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.B.sendEmptyMessage(8);
        this.y = str;
        this.A = null;
        this.U = null;
        e5(str);
        A3(f5(str), null);
        i5(str);
        this.B.removeMessages(1);
        if (PhoenixApplication.O().n(str)) {
            Handler handler = this.B;
            handler.sendMessageDelayed(handler.obtainMessage(1, str), 500L);
        }
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((com.snaptube.premium.webview.e) it2.next()).a(str);
            }
        }
        h5();
    }

    private String J3() {
        String str = this.O;
        if (if9.s(this.y)) {
            return str + "/playlist";
        }
        if (!if9.v(this.y)) {
            return str;
        }
        return str + "/detail";
    }

    public static void L2(Throwable th) {
        m4(th);
    }

    public static void M2(TaskInfo taskInfo, String str) {
        d4(taskInfo, str);
    }

    public static void N2(VideoWebViewFragment videoWebViewFragment) {
        videoWebViewFragment.h4();
    }

    public static void O2(VideoWebViewFragment videoWebViewFragment, View view) {
        videoWebViewFragment.f4(view);
    }

    public static void P2(VideoWebViewFragment videoWebViewFragment, String str) {
        videoWebViewFragment.k4(str);
    }

    public static void Q2(VideoWebViewFragment videoWebViewFragment, String str) {
        videoWebViewFragment.i4(str);
    }

    public static void R2(VideoWebViewFragment videoWebViewFragment, String str, View view) {
        videoWebViewFragment.b4(str, view);
    }

    public static void S2(VideoWebViewFragment videoWebViewFragment) {
        videoWebViewFragment.n4();
    }

    public static void T2(VideoWebViewFragment videoWebViewFragment, RxBus.d dVar) {
        videoWebViewFragment.l4(dVar);
    }

    public static boolean T4(String str) {
        return (wd9.H(R0, str) || str.startsWith("file:///") || wd9.H(P0, str)) ? false : true;
    }

    public static void U2(VideoWebViewFragment videoWebViewFragment, View view) {
        videoWebViewFragment.g4(view);
    }

    public static boolean U3(String str) {
        return wd9.H(O0, str);
    }

    public static void V2(VideoWebViewFragment videoWebViewFragment, String str, String str2) {
        videoWebViewFragment.e4(str, str2);
    }

    public static boolean V3(String str) {
        List<String> pathSegments;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Uri uri = Uri.parse(str);
        try {
            return wd9.H(S0, str) && (pathSegments = uri.getPathSegments()) != null && pathSegments.size() > 0 && TtmlNode.TAG_P.equals(uri.getPathSegments().get(0));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void W2(VideoWebViewFragment videoWebViewFragment, String str) {
        videoWebViewFragment.j4(str);
    }

    public static boolean W3(String str) {
        return PhoenixApplication.O().n(str) && (U3(str) || PhoenixApplication.O().o(str));
    }

    public static void X2(String str) {
        c4(str);
    }

    public static ViewGroup Y2(VideoWebViewFragment videoWebViewFragment) {
        return videoWebViewFragment.w0;
    }

    public static AdView Z2(VideoWebViewFragment videoWebViewFragment) {
        return videoWebViewFragment.v0;
    }

    public static String a3(VideoWebViewFragment videoWebViewFragment) {
        return videoWebViewFragment.f427o;
    }

    public static void b3(VideoWebViewFragment videoWebViewFragment, boolean z) {
        videoWebViewFragment.f0 = z;
    }

    public static void c3(VideoWebViewFragment videoWebViewFragment, VideoInfo videoInfo) {
        videoWebViewFragment.U = videoInfo;
    }

    public static void c4(String str) {
        Context contextZ = PhoenixApplication.z();
        b88.h(contextZ, contextZ.getResources().getString(R.string.toast_start_downloading, str));
    }

    public static void d3(VideoWebViewFragment videoWebViewFragment, DownloadButtonStatus downloadButtonStatus, String str) {
        videoWebViewFragment.A3(downloadButtonStatus, str);
    }

    public static void d4(TaskInfo taskInfo, String str) {
        ap3.i(taskInfo.i(), str, "guide_webview");
    }

    public static void e3(VideoWebViewFragment videoWebViewFragment, hq1 hq1Var) {
        videoWebViewFragment.B3(hq1Var);
    }

    public static void f3(VideoWebViewFragment videoWebViewFragment, String str) {
        videoWebViewFragment.C3(str);
    }

    public static String g3(VideoWebViewFragment videoWebViewFragment) {
        return videoWebViewFragment.J3();
    }

    public static void h3(VideoWebViewFragment videoWebViewFragment, Message message) {
        videoWebViewFragment.R3(message);
    }

    public static void i3(VideoWebViewFragment videoWebViewFragment, ExtractResult extractResult, boolean z) {
        videoWebViewFragment.w4(extractResult, z);
    }

    private void i5(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strG = yj8.g(str);
        EditText editText = this.M;
        if (editText != null) {
            if (TextUtils.isEmpty(strG)) {
                strG = str;
            }
            editText.setText(strG);
        }
        w wVar = this.Q;
        if (wVar != null) {
            wVar.a(str);
        }
    }

    public static void j3(VideoWebViewFragment videoWebViewFragment, YouTubePlaylist youTubePlaylist) {
        videoWebViewFragment.x4(youTubePlaylist);
    }

    public static void k3(VideoWebViewFragment videoWebViewFragment, String str, boolean z, boolean z2) {
        videoWebViewFragment.y4(str, z, z2);
    }

    public static void l3(VideoWebViewFragment videoWebViewFragment, String str) {
        videoWebViewFragment.z4(str);
    }

    public static void m3(VideoWebViewFragment videoWebViewFragment) {
        videoWebViewFragment.B4();
    }

    public static void m4(Throwable th) {
        ProductionEnv.logException("RxjavaExecuteException", th);
    }

    public static void n3(VideoWebViewFragment videoWebViewFragment, Object obj) {
        videoWebViewFragment.C4(obj);
    }

    public static void o3(VideoWebViewFragment videoWebViewFragment, boolean z) {
        videoWebViewFragment.P4(z);
    }

    public static void p3(VideoWebViewFragment videoWebViewFragment, String str) {
        videoWebViewFragment.U4(str);
    }

    public static void q3(VideoWebViewFragment videoWebViewFragment, dd7 dd7Var) {
        videoWebViewFragment.V4(dd7Var);
    }

    public static void r3(VideoWebViewFragment videoWebViewFragment, Message message) {
        videoWebViewFragment.a5(message);
    }

    public static void s3(VideoWebViewFragment videoWebViewFragment, String str) {
        videoWebViewFragment.b5(str);
    }

    public static void t3(VideoWebViewFragment videoWebViewFragment, String str) {
        videoWebViewFragment.i5(str);
    }

    public static void u3(VideoWebViewFragment videoWebViewFragment) {
        videoWebViewFragment.j5();
    }

    public static void v3(boolean z) {
        U0 = z;
    }

    public final void A3(DownloadButtonStatus downloadButtonStatus, String str) {
        if (this.C == null) {
            return;
        }
        if (if9.v(str) && !if9.r(this.h)) {
            downloadButtonStatus = DownloadButtonStatus.GONE;
        }
        int[] iArr = j.a;
        switch (iArr[downloadButtonStatus.ordinal()]) {
            case 1:
                if (this.C.getVisibility() != 8) {
                    this.C.setDownloadButtonClickListener(this.M0);
                    this.C.setDownloadBackground(R.drawable.bg_batch_download_disable);
                    this.C.setVisibility(8);
                    this.D.setVisibility(8);
                }
                break;
            case 2:
                if (this.C.getVisibility() != 8) {
                    if (!this.j) {
                        A3(DownloadButtonStatus.GONE, null);
                    } else {
                        this.C.setDownloadButtonClickListener(this.N0);
                        this.C.setDownloadBackground(R.drawable.bg_batch_download_disable);
                        this.C.setVisibility(8);
                        this.D.setVisibility(8);
                    }
                }
                break;
            case 3:
                this.C.setDownloadButtonClickListener(new q(str));
                this.C.setDownloadBackground(R.drawable.bg_batch_download);
                this.C.setVisibility(0);
                this.D.setVisibility(8);
                break;
            case 4:
                this.C.setDownloadButtonClickListener(new pv8(this, str));
                this.C.setDownloadBackground(R.drawable.bg_batch_download);
                this.C.setVisibility(0);
                this.D.setVisibility(8);
                break;
            case 5:
                this.C.setDownloadButtonClickListener(new r());
                this.C.setDownloadBackground(R.drawable.bg_batch_download);
                this.C.setVisibility(0);
                this.D.setVisibility(8);
                break;
            case 6:
                this.C.setDownloadBackground(R.drawable.bg_batch_download);
                this.C.setVisibility(0);
                this.D.setVisibility(8);
                this.C.setDownloadButtonClickListener(new s());
                break;
            case 7:
                this.C.setVisibility(8);
                this.D.setVisibility(0);
                break;
            default:
                this.C.setVisibility(8);
                this.D.setVisibility(8);
                break;
        }
        this.B.removeMessages(2);
        int i2 = iArr[downloadButtonStatus.ordinal()];
        if (i2 == 3 || i2 == 4 || i2 == 5 || i2 == 6) {
            gj.c(Animations.SHAKE).g(1300L).h(new DecelerateInterpolator()).i(this.C);
        }
    }

    public List A4() {
        ArrayList arrayList = new ArrayList();
        if (GlobalConfig.enableTrackYoutubePlayWebview()) {
            arrayList.add(new pf9(this.O));
        }
        arrayList.add(new PluginForIndividualVideoSites(this.B));
        arrayList.add(new com.snaptube.premium.webview.b());
        if (com.snaptube.premium.webview.c.l()) {
            com.snaptube.premium.webview.c cVar = new com.snaptube.premium.webview.c(this.B, this.E0);
            this.k = cVar;
            cVar.t(this.p);
            this.k.v(true);
            this.k.u(this.G0);
            arrayList.add(this.k);
        }
        arrayList.add(new com.snaptube.premium.webview.d());
        arrayList.add(new com.snaptube.premium.webview.a(this.O));
        arrayList.add(new VideoStatusManagerPlugin());
        return arrayList;
    }

    public final void B() {
        o4(this.f427o);
    }

    public final void B3(hq1 hq1Var) {
        aa7 aa7Var = this.W;
        if (aa7Var != null) {
            aa7Var.h(getContext(), hq1Var);
        }
    }

    public final void B4() {
        FABBatchDownload fABBatchDownload = this.C;
        if (fABBatchDownload == null || fABBatchDownload.getVisibility() != 0) {
            return;
        }
        this.C.setProgressVisibility(8);
    }

    public final void C3(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String[] strArrSplit = str.split("\\|");
        int length = strArrSplit.length - 1;
        while (true) {
            if (length < 0) {
                str2 = null;
                break;
            } else {
                if (strArrSplit[length].startsWith("https:") || strArrSplit[length].startsWith("http:")) {
                    str2 = strArrSplit[length];
                    break;
                }
                length--;
            }
        }
        if (str2 != null) {
            SnapTubeLoggerManager.Instance.reportFeedbackExtractorLog(str2);
        }
    }

    public final void C4(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        String strOptString = jSONObject.optString("url");
        String strOptString2 = jSONObject.optString("id");
        vc2 vc2Var = vc2.a;
        vc2Var.b(strOptString2);
        if (vc2Var.c()) {
            return;
        }
        new pn0.a().c(new pn0.c().e(strOptString).m(J3()).i("jump_from_web")).e(new a()).f(Collections.singletonList(strOptString), !W3(strOptString), getActivity());
    }

    @Override
    public void D1(WebView webView, String str) {
        X4(null);
        Q3();
    }

    public VideoEnabledWebView D3(Context context, View view) {
        return (VideoEnabledWebView) com.snaptube.premium.web.a.a(context, (ViewGroup) view.findViewById(R.id.container_webview), VideoEnabledWebView.class);
    }

    public final void D4(WebView webView, Activity activity) {
        if (if9.v(webView.getUrl())) {
            webView.stopLoading();
            if (webView.canGoBack()) {
                webView.goBack();
            } else {
                activity.finish();
            }
        }
    }

    public String E3(Bundle bundle) {
        String string = bundle != null ? bundle.getString("url") : null;
        return TextUtils.isEmpty(string) ? Config.n : string;
    }

    public final void E4(Uri[] uriArr) {
        this.n.onReceiveValue(uriArr);
        this.n = null;
    }

    public final String F3() {
        CharSequence text;
        ClipboardManager clipboardManager = (ClipboardManager) getActivity().getSystemService("clipboard");
        String string = (!clipboardManager.hasPrimaryClip() || clipboardManager.getPrimaryClip().getItemCount() <= 0 || (text = clipboardManager.getPrimaryClip().getItemAt(0).getText()) == null) ? null : text.toString();
        if (V3(string)) {
            return string;
        }
        return null;
    }

    @Override
    public void G1(WebView webView) {
        L4(this.G, webView);
    }

    public final String G3(VideoInfo videoInfo, String str) {
        if (videoInfo != null && videoInfo.getReportData() != null) {
            Object objA = gv8.a(videoInfo.getReportData(), "position_source", str);
            if (objA instanceof String) {
                return (String) objA;
            }
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0029  */
    public final void G4(String[] strArr) {
        String str;
        if (strArr == null || strArr.length != 1) {
            str = "*/*";
        } else {
            String str2 = strArr[0];
            if (TextUtils.isEmpty(str2)) {
                str = "*/*";
            } else {
                String lowerCase = str2.toLowerCase();
                if (lowerCase.contains("video")) {
                    str = "video/*";
                } else if (lowerCase.contains("image")) {
                    str = "image/*";
                } else {
                    str = "*/*";
                }
            }
        }
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType(str);
        startActivityForResult(Intent.createChooser(intent, getActivity().getString(R.string.select_image)), 10000);
    }

    public View H3(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.video_webview_container_layout, viewGroup, false);
    }

    public final void H4() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            String strE3 = E3(arguments);
            this.f427o = strE3;
            this.P = strE3;
            boolean z = arguments.getBoolean("auto_download", false);
            this.p = z;
            this.q = z;
            this.r = arguments.getBoolean("show_address_bar", false);
            this.s = arguments.getBoolean("show_toolbar", false);
            this.t = arguments.getBoolean("show_status_bar", true);
            this.u = arguments.getBoolean("incognito_mode");
            this.Z = arguments.getString("title");
            this.v = arguments.getBoolean("ad_block", true);
            this.v = arguments.getBoolean("ad_block", true);
            this.w = arguments.getInt("background_color", 0);
            this.x = arguments.getLong("click_time", 0L);
            this.O = arguments.getString(IntentUtil.POS);
            this.y0 = arguments.getBoolean("is_show_browser_ad", true);
            if (arguments.getBoolean("adsense_supported", false)) {
                this.B0 = yj8.g(this.f427o);
            }
            if (this.O == null) {
                this.O = "webview";
            }
        }
    }

    public ViewGroup I3(View view) {
        return (ViewGroup) view.findViewById(R.id.webview_container);
    }

    public final void I4(VideoInfo videoInfo, boolean z) {
        if (vc2.a.c()) {
            RxBus.d().g(1221, videoInfo.getSource());
        } else {
            new pn0.a().c(new pn0.c().m(J3()).i("jump_from_web")).g(videoInfo).f(Collections.singletonList(videoInfo.getSource()), z, getActivity());
        }
    }

    public final boolean J4(String str, boolean z, boolean z2) {
        u08.a(z2 ? "download_button_auto_click" : "download_button_click");
        if (!TextUtils.isEmpty(str) && getActivity() != null && !getActivity().isFinishing()) {
            String strJ3 = J3();
            if (zz4.k(str)) {
                t4(str, strJ3);
                return false;
            }
            if (if9.s(str)) {
                NavigationManager.H(this.h, str, strJ3, null);
                return false;
            }
            VideoInfo videoInfo = this.U;
            if (videoInfo != null && TextUtils.equals(videoInfo.getSource(), str)) {
                new pn0.a().c(new pn0.c(this.U.getReportData()).m(G3(this.U, this.O)).i("jump_from_web")).g(this.U).f(Collections.singletonList(this.U.getSource()), z, getActivity());
                return true;
            }
            new pn0.a().e(new g()).c(new pn0.c().m(strJ3).i("jump_from_web")).f(Collections.singletonList(str), z, getActivity());
        }
        return false;
    }

    public String K3() {
        return "webview";
    }

    public void K4() {
        uv8 uv8Var = this.F;
        if (uv8Var != null) {
            uv8Var.j();
        }
    }

    public final String L3() {
        return !TextUtils.isEmpty(this.X) ? this.X : m();
    }

    public final void L4(View view, WebView webView) {
        ((ViewGroup) view.findViewById(R.id.container_webview)).removeView(webView);
    }

    @Override
    public boolean M1(ValueCallback valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        this.n = valueCallback;
        if (fileChooserParams != null) {
            G4(fileChooserParams.getAcceptTypes());
            return true;
        }
        G4(null);
        return true;
    }

    public String M3() {
        WebView webView;
        uv8 uv8Var = this.F;
        if (uv8Var == null || (webView = uv8Var.d) == null) {
            return null;
        }
        return webView.getTitle();
    }

    public final void M4(String str, Intent intent) {
        if (intent == null) {
            return;
        }
        ReportPropertyBuilder.e().setEventName("Trigger").setAction("click_intent_url").setProperty("content_url", str).setProperty("arg1", intent.toUri(1)).reportEvent();
    }

    public boolean N3() {
        if (P3()) {
            return true;
        }
        uv8 uv8Var = this.F;
        return uv8Var != null && uv8Var.d();
    }

    public void N4(nh5 nh5Var) {
        this.S = nh5Var;
    }

    public final boolean O3(String str, String str2, String str3) {
        TaskInfo taskInfo;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strB = hu4.b(str);
        if (TextUtils.isEmpty(strB)) {
            strB = hu4.c().a(str3);
        }
        Uri uri = Uri.parse(str);
        String queryParameter = uri.getQueryParameter("packageName");
        if (TextUtils.isEmpty(queryParameter)) {
            queryParameter = uri.getQueryParameter("id");
        }
        String queryParameter2 = uri.getQueryParameter("adsource");
        String queryParameter3 = uri.getQueryParameter("thumbnailUrl");
        String queryParameter4 = uri.getQueryParameter("title");
        String queryParameter5 = uri.getQueryParameter("launchAfterInstall");
        if (TextUtils.isEmpty(queryParameter4)) {
            queryParameter4 = queryParameter;
        }
        if (!TextUtils.equals(strB, "apk") || TextUtils.isEmpty(queryParameter) || !TextUtils.equals(queryParameter2, SnaptubeNativeAdModel.NETWORK_NAME)) {
            return false;
        }
        if (TextUtils.equals("true", queryParameter5)) {
            com.snaptube.ads.selfbuild.b.c().b(queryParameter);
        }
        String strF = rd.f(queryParameter);
        Iterator it2 = TaskInfoDBUtils.x0().iterator();
        while (true) {
            if (!it2.hasNext()) {
                taskInfo = null;
                break;
            }
            taskInfo = (TaskInfo) it2.next();
            if ((taskInfo instanceof com.snaptube.taskManager.datasets.a) && TextUtils.equals(((com.snaptube.taskManager.datasets.a) taskInfo).getPackageName(), queryParameter)) {
                break;
            }
        }
        if (taskInfo != null && taskInfo.i == TaskInfo.TaskStatus.FINISH) {
            this.B.post(new iv8(taskInfo, queryParameter));
            return true;
        }
        if (taskInfo == null) {
            com.snaptube.taskManager.datasets.a aVar = new com.snaptube.taskManager.datasets.a();
            aVar.c0(queryParameter);
            aVar.w = strF;
            aVar.r = DownloadInfo.ContentType.APP;
            aVar.k = queryParameter4;
            aVar.f479o = str;
            aVar.l = queryParameter3;
            aVar.R(rd.g(queryParameter));
            aVar.B = TaskInfo.ContentType.APK;
            TaskInfoDBUtils.l(aVar, null);
        }
        this.B.post(new jv8(queryParameter4));
        return true;
    }

    public void O4(String str) {
        this.X = str;
    }

    @Override
    public void P1(boolean z) {
    }

    public final boolean P3() {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return false;
        }
        return pn0.c(activity.getSupportFragmentManager());
    }

    public final void P4(boolean z) {
        View viewFindViewById;
        if (getView() == null || (viewFindViewById = getView().findViewById(R.id.list_no_network_tips_view)) == null) {
            return;
        }
        viewFindViewById.setVisibility(z ? 0 : 8);
        viewFindViewById.setOnClickListener(new b());
    }

    public void Q3() {
        WebView webView;
        String url;
        String strF3;
        uv8 uv8Var = this.F;
        if (uv8Var == null || (webView = uv8Var.d) == null || (url = webView.getUrl()) == null || !url.startsWith("https://www.snaptube.in/_sites-page/instagram-guide.html") || (strF3 = F3()) == null || strF3.equals(this.f427o)) {
            return;
        }
        this.f427o = strF3;
        o4(strF3);
    }

    public final void Q4() {
        this.g.c(this.v);
    }

    @Override
    public void R1(WebView webView, Bitmap bitmap) {
        ld0.a.g(webView.getContext(), webView.getUrl(), bitmap);
    }

    public final void R3(Message message) {
        uv8 uv8Var;
        WebView webView;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        YouTubePlaybackModel youTubePlaybackModel = (YouTubePlaybackModel) message.obj;
        String strE = youTubePlaybackModel.e();
        String strF = youTubePlaybackModel.f();
        String strC = youTubePlaybackModel.c();
        int iD = youTubePlaybackModel.d();
        long jG = youTubePlaybackModel.g();
        if (TextUtils.isEmpty(strE) || TextUtils.isEmpty(strF)) {
            return;
        }
        String strM = if9.m(strF);
        if (TextUtils.isEmpty(strM)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://snaptubeapp.com/watch").buildUpon().appendQueryParameter("url", strF).build());
        intent.setPackage(activity.getPackageName());
        intent.putExtra(IntentUtil.COVER_URL, "https://i.ytimg.com/vi/" + strM + "/hqdefault.jpg");
        intent.putExtra(IntentUtil.POS, "youtube-webview-intercept-video");
        intent.putExtra(IntentUtil.VIDEO_TITLE, strE);
        intent.putExtra("play_count", jG);
        intent.putExtra(IntentUtil.DURATION, iD);
        intent.putExtra("author", strC);
        intent.putExtra("auto_download", this.q);
        if (getContext() == null || !this.D0.l0(getContext(), null, intent) || (uv8Var = this.F) == null || (webView = uv8Var.d) == null) {
            return;
        }
        D4(webView, getActivity());
    }

    public final void R4(View view, boolean z) {
        this.w0 = (ViewGroup) view.findViewById(R.id.ad_container);
        AdView adView = (AdView) view.findViewById(R.id.adview);
        this.v0 = adView;
        if (this.w0 == null || adView == null || !PhoenixApplication.C().n()) {
            this.f0 = false;
            return;
        }
        if (!gd0.a.b()) {
            z = false;
        }
        this.f0 = z;
        this.w0.setVisibility(8);
        if (z) {
            AdsPos adsPos = AdsPos.NATIVE_BROWSER_BANNER;
            int iB0 = PhoenixApplication.C().y().b0(adsPos.pos());
            boolean zS0 = PhoenixApplication.C().y().s0(adsPos.pos());
            AdFlavor adFlavorFindByFlavor = AdFlavor.findByFlavor(iB0);
            this.v0.setLayoutId(adFlavorFindByFlavor == null ? R.layout.card_ad_unit_youtube_details_top_banner : adFlavorFindByFlavor.resId);
            this.v0.setPlacementAlias(adsPos.pos());
            this.v0.setShowCtaAction(zS0);
            t tVar = new t();
            this.I0 = tVar;
            this.v0.setAdShowListener(tVar);
            RxBus.d().c(1052).g(RxBus.f).g(y2()).u0(new l(), new m());
        }
    }

    @Override
    public void S1() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            l5.b(activity, this.N);
        }
        v vVar = this.R;
        if (vVar != null) {
            vVar.n0();
        }
        View view = this.K;
        if (view != null) {
            view.setVisibility(8);
            this.K = null;
            try {
                this.L.onCustomViewHidden();
            } catch (Throwable unused) {
            }
        }
        ViewGroup viewGroup = this.H;
        if (viewGroup != null) {
            try {
                viewGroup.removeAllViews();
                ViewParent parent = this.H.getParent();
                if (parent != null) {
                    ((ViewGroup) parent).removeView(this.H);
                }
            } catch (Throwable th) {
                SnapTubeLogger.e(th);
            }
        }
        this.J.setVisibility(0);
    }

    public final boolean S3(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strG = yj8.g(str);
        return !TextUtils.isEmpty(strG) && strG.matches(GlobalConfig.getAdsenseHostRegex());
    }

    public void S4() {
        if (getActivity() != null) {
            SharePopupFragment.t3(getActivity(), L3(), M3(), K3());
        }
    }

    @Override
    public BatchVideoSelectManager T1() {
        return this.G0;
    }

    public final boolean T3(String str) {
        return str.startsWith(rk7.c.h.c()) || str.startsWith(rk7.b.h.c());
    }

    public final void U4(String str) {
        NavigationManager.I(this.h, str, J3(), null, "jump_from_web");
    }

    @Override
    public void V0() {
        com.snaptube.premium.webview.c cVar = this.k;
        if (cVar != null) {
            cVar.r(this.P);
        }
    }

    public final void V4(dd7 dd7Var) {
        aa7 aa7Var = this.W;
        if (aa7Var != null) {
            aa7Var.r(getActivity(), dd7Var);
        }
    }

    @Override
    public void W(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        if (this.K != null) {
            customViewCallback.onCustomViewHidden();
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.N = activity.getRequestedOrientation();
            FrameLayout frameLayout = (FrameLayout) activity.getWindow().getDecorView();
            FullscreenHolder fullscreenHolder = new FullscreenHolder(activity);
            this.H = fullscreenHolder;
            fullscreenHolder.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            this.H.addView(view, new FrameLayout.LayoutParams(-1, -1));
            if (X3()) {
                frameLayout.addView(this.H, new FrameLayout.LayoutParams(-1, -1));
                l5.b(activity, 0);
                v vVar = this.R;
                if (vVar != null) {
                    vVar.c0();
                }
            } else {
                ((FrameLayout) this.G).addView(this.H, new FrameLayout.LayoutParams(-1, -1));
            }
        }
        this.J.setVisibility(8);
        this.K = view;
        this.L = customViewCallback;
    }

    public final void W4() {
        FragmentActivity activity;
        SharedPreferences sharedPreferencesB0 = Config.b0();
        if (sharedPreferencesB0.getBoolean("youtube-webview-playlist-guide-shown", false) || (activity = getActivity()) == null || activity.isFinishing() || U0) {
            return;
        }
        U0 = true;
        new com.wandoujia.base.view.c.e(activity).o(LayoutInflater.from(this.h).inflate(R.layout.youtube_playlist_download_guide, (ViewGroup) null)).c(true).k(R.string.lark_player_try_it, new i(sharedPreferencesB0)).j(R.string.upgrade_ignore, new h(sharedPreferencesB0)).p();
    }

    public final boolean X3() {
        WebView webView = this.I;
        return (webView == null || wd9.H(S0, webView.getUrl())) ? false : true;
    }

    public final void X4(String str) {
        WebView webView;
        uv8 uv8Var = this.F;
        if (uv8Var == null || (webView = uv8Var.d) == null) {
            return;
        }
        if (str == null) {
            str = webView.getUrl();
        }
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, this.y)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("testIfUrlChanged: currentUrl= ");
        String str2 = this.y;
        if (str2 == null) {
            str2 = "null";
        }
        sb.append(str2);
        sb.append(", newUrl= ");
        sb.append(str);
        ProductionEnv.debugLog("VideoWebView", sb.toString());
        F4(str);
    }

    public final boolean Y3(String str) {
        return (TextUtils.isEmpty(this.B0) || TextUtils.isEmpty(str) || !this.B0.equals(yj8.g(str))) ? false : true;
    }

    public final void Y4(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public final boolean Z3() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments.getBoolean("arg_is_restore", false);
        }
        return false;
    }

    public final void Z4(String str) {
        if (str.startsWith("https://static.snaptube.in/lottie/index.html")) {
            z2.c("extract_fail_common_login_page");
        }
    }

    public final boolean a4(String str, String str2) {
        Uri uri = Uri.parse(str);
        Uri uri2 = Uri.parse(str2);
        return TextUtils.equals(uri.getHost(), uri2.getHost()) && TextUtils.equals(uri.getPath(), uri2.getPath());
    }

    public final void a5(Message message) {
        TrackerModel trackerModel = (TrackerModel) message.obj;
        String strF = trackerModel.f();
        strF.hashCode();
        if (strF.equals("YouTubeWebviewPlaylist")) {
            vq6.K().g(new ReportPropertyBuilder().setEventName(trackerModel.f()).setAction(trackerModel.c()).setProperty("list_url", trackerModel.h()).setProperty("list_type", trackerModel.g()).setProperty("error", trackerModel.e()));
            return;
        }
        if (!strF.equals("YouTubeWebPlayback")) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("Unknown event found, event " + trackerModel.f()));
            return;
        }
        String strD = trackerModel.d();
        String strM = if9.m(strD);
        String strL = if9.l(strD);
        ah3 property = new ReportPropertyBuilder().setEventName(trackerModel.f()).setAction(trackerModel.c()).setProperty("title", trackerModel.k()).setProperty("content_url", strD).setProperty("yt_video_id", strM).setProperty("video_duration", Integer.valueOf(trackerModel.l())).setProperty("play_position", Integer.valueOf(trackerModel.i())).setProperty("played_time", Integer.valueOf(trackerModel.j()));
        if (strL != null) {
            property.setProperty(BaseYoutubeDataAdapter.YTB_PLAYLIST_ID, strL);
        }
        vq6.K().g(property);
    }

    public final void b4(String str, View view) {
        y4(str, true, false);
    }

    public final void b5(String str) {
        if (this.C == null) {
            return;
        }
        String str2 = this.y;
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, this.A)) {
            return;
        }
        this.A = str;
        if (PhoenixApplication.O().g(str) && !W3(str)) {
            A3(DownloadButtonStatus.ENABLE, str);
        }
    }

    @Override
    public boolean c2(WebView webView, boolean z, boolean z2, Message message) {
        if (!z2 || this.G == null || getActivity() == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        VideoEnabledWebView videoEnabledWebViewD3 = D3(getActivity(), this.G);
        new uv8(this, videoEnabledWebViewD3, jCurrentTimeMillis).k(videoEnabledWebViewD3, jCurrentTimeMillis);
        ((WebView.WebViewTransport) message.obj).setWebView(videoEnabledWebViewD3);
        CookieManager.getInstance().setAcceptThirdPartyCookies(videoEnabledWebViewD3, !this.u);
        message.sendToTarget();
        return true;
    }

    public final void c5(String str) {
        if (!TextUtils.isEmpty(this.H0) && a4(str, this.H0) && hg7.b(str)) {
            this.H0 = null;
            WebView webView = this.F.d;
            if (webView == null) {
                return;
            }
            ViewCompat.postOnAnimation(webView, new p(str));
        }
    }

    @Override
    public void d2(WebView webView, String str, boolean z) {
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((com.snaptube.premium.webview.e) it2.next()).C(webView, str, z);
            }
        }
    }

    public final void d5(String str) {
        if (this.w0 == null || this.v0 == null || str == null || TextUtils.equals(this.z, str)) {
            return;
        }
        SystemClock.elapsedRealtime();
        this.z = str;
        h5();
    }

    public void e(WebView webView, String str) {
        WebView webView2;
        ProductionEnv.debugLog("VideoWebView", "onPageFinished: " + str);
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((com.snaptube.premium.webview.e) it2.next()).e(webView, str);
            }
        }
        if (if9.D(str) && if9.r(PhoenixApplication.z()) && Config.G4()) {
            W4();
        }
        nh5 nh5Var = this.S;
        if (nh5Var != null) {
            nh5Var.g1(webView.getTitle(), 100);
        }
        if (!this.x0 && (webView2 = this.I) != null) {
            webView2.setVisibility(0);
            c5(str);
        }
        if (Z3()) {
            return;
        }
        fn0.a.c(str, getArguments(), webView, new ov8(this, str));
    }

    public final void e4(String str, String str2) {
        o4(str);
    }

    public final void e5(String str) {
    }

    public final void f4(View view) {
        com.snaptube.premium.webview.a.d(this.y, false, true);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            new com.wandoujia.base.view.c.e(activity).m(R.string.dialog_title_not_in_detail_page).f(R.string.dialog_message_not_in_detail_page).c(true).k(R.string.ok, null).p();
        }
    }

    public final DownloadButtonStatus f5(String str) {
        if (!W3(str) && T4(str)) {
            return DownloadButtonStatus.DISABLE_WAIT_FOR_VIDEO_TAG;
        }
        return DownloadButtonStatus.GONE;
    }

    @Override
    public void g0(ValueCallback valueCallback, String str, String str2) {
        this.m = valueCallback;
        G4(null);
    }

    public final void g4(View view) {
        com.snaptube.premium.webview.a.d(this.y, false, true);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            new com.wandoujia.base.view.c.e(activity).m(R.string.dialog_title_wait_for_video_tag).f(R.string.dialog_message_wait_for_video_tag).c(true).k(R.string.ok, null).p();
        }
    }

    public final void g5(String str) {
        if (this.f427o == null || str == null || !f13.b(this.O) || !this.f427o.contains("www.google.com/sorry/index")) {
            return;
        }
        boolean z = !str.contains("www.google.com/sorry/index");
        for (Map.Entry entry : f13.a().entrySet()) {
            if (z) {
                entry.setValue(new Pair(Boolean.TRUE, Boolean.FALSE));
            } else if (r4((String) entry.getKey(), this.O)) {
                entry.setValue(new Pair(Boolean.FALSE, Boolean.TRUE));
            }
        }
    }

    public final void h4() {
        WebView webView = this.I;
        if (webView != null) {
            webView.setOnFocusChangeListener(null);
        }
        uv8 uv8Var = this.F;
        if (uv8Var != null) {
            uv8Var.f();
            this.I = null;
        }
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((com.snaptube.premium.webview.e) it2.next()).onDestroy();
            }
            this.i.clear();
        }
        AdView adView = this.v0;
        if (adView != null) {
            adView.U();
            this.v0 = null;
        }
    }

    public final void h5() {
        boolean z;
        if (this.w0 == null || this.v0 == null || this.J0) {
            return;
        }
        try {
            z = gd0.a.g() ? false : !Pattern.compile((String) PhoenixApplication.C().y().d0(AdsPos.NATIVE_BROWSER_BANNER.pos(), "url_exclude_regex", String.class)).matcher(m()).matches();
        } catch (Exception unused) {
        }
        if (z && this.f0 && this.v0 != null) {
            this.J0 = true;
            this.w0.setVisibility(0);
            this.w0.removeView(this.v0);
            this.w0.addView(this.v0, -1, -2);
            this.v0.o0();
            return;
        }
        if (this.w0.getVisibility() != 0 || this.I == null) {
            return;
        }
        this.w0.setVisibility(8);
        int measuredWidth = this.I.getMeasuredWidth();
        int measuredHeight = this.I.getMeasuredHeight();
        ViewGroup.LayoutParams layoutParams = this.I.getLayoutParams();
        layoutParams.width = measuredWidth;
        layoutParams.height = measuredHeight;
        this.I.setLayoutParams(layoutParams);
        ProductionEnv.d("VideoWebView", "measuredWidth : " + measuredWidth + " measuredHeight:" + measuredHeight);
    }

    @Override
    public void i(WebView webView, String str) {
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((com.snaptube.premium.webview.e) it2.next()).i(webView, str);
            }
        }
        String url = webView.getUrl();
        if (!TextUtils.isEmpty(url) && !this.u) {
            this.F0.a(url, str).g(new e(), new f());
        }
        if (TextUtils.isEmpty(url)) {
            return;
        }
        if (if9.v(url) || if9.s(url)) {
            vq6.K().h("/youtube_details", new ReportPropertyBuilder().setProperty("from", "youtube-webview"));
        }
    }

    public final void i4(String str) {
        try {
            Y4(str);
        } catch (Exception unused) {
        }
    }

    public void j(WebView webView, String str) {
        this.x0 = false;
        if (!this.V) {
            this.V = true;
        }
        this.Y = str;
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((com.snaptube.premium.webview.e) it2.next()).j(webView, str);
            }
        }
        ProductionEnv.debugLog("VideoWebView", "onPageStarted: " + str);
        this.g.b(str);
        X4(str);
        d5(str);
        Z4(str);
    }

    public final void j4(String str) {
        FragmentActivity activity = getActivity();
        if (activity == null || pn0.e(activity.getSupportFragmentManager())) {
            return;
        }
        y4(str, true, true);
    }

    public final void j5() {
    }

    public final void k4(String str) {
        com.snaptube.premium.webview.c cVar = this.k;
        if (cVar != null) {
            cVar.o(true);
        }
        if (!zz4.f(str) || T3(str)) {
            return;
        }
        this.B.postDelayed(new hv8(this, str), 2500L);
    }

    public final void l4(RxBus.d dVar) {
        com.snaptube.premium.webview.c cVar = this.k;
        if (cVar != null) {
            cVar.n();
        } else {
            y4(this.y, true, true);
        }
    }

    public String m() {
        WebView webView;
        uv8 uv8Var = this.F;
        if (uv8Var == null || (webView = uv8Var.d) == null) {
            return null;
        }
        return webView.getUrl();
    }

    @Override
    public boolean n(WebView webView, String str) {
        ProductionEnv.debugLog("VideoWebView", "shouldOverrideUrlLoading: " + str);
        this.z0 = str;
        g5(str);
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                String strA = ((com.snaptube.premium.webview.e) it2.next()).A(webView, str);
                if (strA != null) {
                    this.B.post(new d(strA));
                    return true;
                }
            }
        }
        if (y6.d(str)) {
            return true;
        }
        return c39.f().m(webView, str);
    }

    @Override
    public void n1() {
    }

    public final void n4() {
        o4(this.f427o);
        e5(this.f427o);
    }

    public void o4(String str) {
        p4(str, false);
    }

    @Override
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 10000) {
            if (this.m == null && this.n == null) {
                return;
            }
            Uri data = (intent == null || i3 != -1) ? null : intent.getData();
            if (this.n != null) {
                v4(i2, i3, intent);
                return;
            }
            ValueCallback valueCallback = this.m;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(data);
                this.m = null;
            }
        }
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        this.h = context.getApplicationContext();
    }

    public boolean onBackPressed() {
        return N3();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((com.snaptube.premium.app.d.b) getContext().getApplicationContext()).b().e0(this);
        this.F0 = com.snaptube.premium.web.history.a.n0(PhoenixApplication.C());
        H4();
        Q4();
        if (!ja9.e(requireContext())) {
            this.p = false;
            this.q = false;
            if (TextUtils.equals(this.O, "intent")) {
                this.O = "intent_forbidden";
            }
        }
        b6 activity = getActivity();
        if (activity instanceof w) {
            this.Q = (w) activity;
        }
        if (activity instanceof v) {
            this.R = (v) activity;
        }
        y3(this);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = this.G;
        if (view != null) {
            this.l = true;
            return view;
        }
        View viewH3 = H3(layoutInflater, viewGroup);
        this.G = viewH3;
        if (viewH3 == null) {
            return null;
        }
        this.V = false;
        ProgressBar progressBar = (ProgressBar) viewH3.findViewById(R.id.progress);
        this.E = progressBar;
        if (progressBar != null) {
            progressBar.setMax(100);
        }
        this.C = (FABBatchDownload) viewH3.findViewById(R.id.download);
        this.D = (FabLoadingView) viewH3.findViewById(R.id.fab_loading_view);
        this.J = I3(viewH3);
        FABBatchDownload fABBatchDownload = this.C;
        if (fABBatchDownload != null) {
            fABBatchDownload.h(fABBatchDownload.getContext().getString(R.string.download));
            this.C.setCloseButtonVisibility(8);
            this.G0.B0(J3());
            this.G0.z0(this.C);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        VideoEnabledWebView videoEnabledWebViewD3 = D3(getActivity(), viewH3);
        if (videoEnabledWebViewD3 == null) {
            return viewH3;
        }
        CookieManager.getInstance().setAcceptThirdPartyCookies(videoEnabledWebViewD3, !this.u);
        this.F = new uv8(this, videoEnabledWebViewD3, jCurrentTimeMillis);
        z39.a(this.h, videoEnabledWebViewD3);
        videoEnabledWebViewD3.setOnFocusChangeListener(new k());
        this.I = videoEnabledWebViewD3;
        this.l = true;
        return viewH3;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        this.l = false;
        fn0.a.b();
        this.B.removeCallbacksAndMessages(null);
        this.S = null;
        AdView adView = this.v0;
        if (adView != null) {
            adView.U();
            this.v0 = null;
        }
        if (this.I0 != null) {
            this.I0 = null;
        }
        super.onDestroyView();
    }

    @Override
    public void onDetach() {
        this.k = null;
        this.W = null;
        this.h = null;
        PhoenixApplication.M().post(new rv8(this));
        super.onDetach();
    }

    @Override
    public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        WebView webView;
        try {
            if (O3(str, str2, str4)) {
                return;
            }
        } catch (Exception unused) {
        }
        MediaUtil.MediaType mediaTypeS = MediaUtil.s(str4);
        if (mediaTypeS != MediaUtil.MediaType.VIDEO && mediaTypeS != MediaUtil.MediaType.AUDIO && mediaTypeS != MediaUtil.MediaType.IMAGE) {
            this.B.post(new qv8(this, str));
            return;
        }
        uv8 uv8Var = this.F;
        if (uv8Var == null || (webView = uv8Var.d) == null || webView.getUrl() == null) {
            return;
        }
        VideoInfo videoInfoG = wd9.g(this.F.d.getUrl(), str, str4, null, null);
        ExtractResult extractResult = new ExtractResult();
        extractResult.v(videoInfoG);
        Handler handler = this.B;
        handler.sendMessage(handler.obtainMessage(5, extractResult));
    }

    @Override
    public void onPause() {
        super.onPause();
        ProductionEnv.debugLog("VideoWebView", "Fragment onPause process: " + this.T);
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((com.snaptube.premium.webview.e) it2.next()).onPause();
            }
        }
        n1();
    }

    @Override
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((com.snaptube.premium.webview.e) it2.next()).onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }
        }
        l29.a(webView, webResourceRequest, webResourceResponse);
    }

    @Override
    public void onResume() {
        u0();
        super.onResume();
        if (this.F != null) {
            ProductionEnv.debugLog("VideoWebView", "WebView onResume");
            this.F.h();
            Q3();
        }
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((com.snaptube.premium.webview.e) it2.next()).onResume();
            }
        }
        if (if9.D(this.f427o)) {
            com.snaptube.premium.minibar.c.a.c(getActivity(), cv4.d(getActivity()));
        } else {
            com.snaptube.premium.minibar.c.a.i(getActivity());
        }
        vq6.K().h("/browser", new ReportPropertyBuilder().setProperty("full_url", this.f427o).setProperty("from", this.O));
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        WebView webView;
        super.onSaveInstanceState(bundle);
        uv8 uv8Var = this.F;
        if (uv8Var != null && (webView = uv8Var.d) != null) {
            bundle.putString("url", webView.getUrl());
        }
        bundle.putString(IntentUtil.POS, this.O);
        bundle.putString("title", this.Z);
    }

    @Override
    public void onStart() {
        super.onStart();
        if (zz4.f(this.f427o)) {
            fn0.a.b();
        }
        if (this.p) {
            this.p = false;
            uv8 uv8Var = this.F;
            if (uv8Var == null || uv8Var.d == null || !if9.v(this.f427o)) {
                if9.s(this.f427o);
            } else {
                ViewCompat.postOnAnimation(this.F.d, new n());
            }
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        s86.b();
        uv8 uv8Var = this.F;
        if (uv8Var != null) {
            uv8Var.i();
        }
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        uv8 uv8Var;
        uv8 uv8Var2;
        super.onViewCreated(view, bundle);
        sr7.g(view, true, false, false);
        w3(view);
        x3(view);
        if (getActivity() != null && ((uv8Var2 = this.F) == null || uv8Var2.d == null)) {
            ProductionEnv.logException("DeviceUtilException", new Exception(getActivity() + " videoWebViewHelper.webview is null"));
            b88.l(getActivity(), R.string.other_error_tap_to_retry);
            getActivity().onBackPressed();
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(A4());
        this.i = copyOnWriteArrayList;
        Iterator it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            ((com.snaptube.premium.webview.e) it2.next()).B(getActivity(), this.F.d);
        }
        this.W = new aa7(this.k);
        if (this.y0) {
            R4(view, true);
        }
        RxBus.d().c(1271).g(RxBus.f).g(y2()).u0(new lv8(this), new mv8());
        if (this.C0 && (uv8Var = this.F) != null) {
            ViewCompat.postOnAnimation(uv8Var.d, new nv8(this));
        }
        this.C0 = false;
    }

    @Override
    public boolean p(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                if (((com.snaptube.premium.webview.e) it2.next()).p(webView, str, str2, str3, jsPromptResult)) {
                    return true;
                }
            }
        }
        if (this.l) {
            return false;
        }
        jsPromptResult.cancel();
        return true;
    }

    @Override
    public boolean p2(WebView webView, String str) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return true;
        }
        new com.wandoujia.base.view.c.e(activity).m(R.string.title_confirm_download).f(R.string.msg_confirm_download).c(true).k(R.string.ok, new c(str)).h(R.string.cancel, null).p();
        return false;
    }

    public void p4(String str, boolean z) {
        uv8 uv8Var;
        if (getActivity() == null || TextUtils.isEmpty(str) || (uv8Var = this.F) == null || uv8Var.d == null || "speeddial://tabs".equals(str) || "speeddial://tabs/incognito".equals(str)) {
            return;
        }
        i5(str);
        if (isAdded()) {
            this.F.d.requestFocus();
        }
        if (!str.equals(this.F.d.getUrl()) || z) {
            ProgressBar progressBar = this.E;
            if (progressBar != null) {
                progressBar.setProgress(0);
            }
            if (n(this.F.d, str)) {
                return;
            }
            this.F.e(str);
        }
    }

    public final void q4(String str) {
        vq6.K().g(new ReportPropertyBuilder().setEventName("Click").setProperty("action", "multi_select").setProperty("position_source", J3()).setProperty("content_url", str));
    }

    public final boolean r4(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        return str2.endsWith(str);
    }

    @Override
    public void s2(WebView webView, String str, Intent intent) {
        if (getActivity() == null) {
            return;
        }
        ResolveInfo resolveInfoResolveActivity = getActivity().getPackageManager().resolveActivity(intent, 0);
        String stringExtra = intent.getStringExtra("browser_fallback_url");
        String str2 = intent.getPackage();
        if (TextUtils.isEmpty(stringExtra) || !(resolveInfoResolveActivity == null || Arrays.asList(T0).contains(str2))) {
            NavigationManager.l1(getActivity(), intent);
        } else {
            o4(stringExtra);
        }
        M4(str, intent);
    }

    public final WebResourceResponse s4(String str, Map map) {
        map.put("x-requested-with", GlobalConfig.getXRequestedWithValue());
        return c39.f().a(str, map);
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        y3(z ? this : null);
    }

    public final void t4(String str, String str2) {
        if (vc2.a.c()) {
            RxBus.d().g(1221, str);
        } else {
            new pn0.a().e(new kv8(this, str)).c(new pn0.c().m(str2).i("jump_from_web")).f(Collections.singletonList(str), true, getActivity());
        }
    }

    @Override
    public void u0() {
    }

    public void u4() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    @Override
    public void v(WebView webView, int i2, String str, String str2) {
        if (isAdded()) {
            if (i2 == -9 && zz4.c(str2)) {
                o4("https://m.facebook.com/login");
                return;
            }
            WebView webView2 = this.I;
            if (webView2 != null) {
                webView2.setVisibility(8);
            }
            P4(true);
            this.x0 = true;
            hd0.j(str2, i2, str);
        }
    }

    public final void v4(int i2, int i3, Intent intent) {
        if (i2 != 10000 || this.n == null) {
            return;
        }
        Uri[] uriArr = null;
        if (i3 != -1 || intent == null) {
            E4(null);
            return;
        }
        String dataString = intent.getDataString();
        ClipData clipData = intent.getClipData();
        if (dataString != null) {
            uriArr = new Uri[]{Uri.parse(dataString)};
        } else if (clipData != null) {
            uriArr = new Uri[clipData.getItemCount()];
            for (int i4 = 0; i4 < clipData.getItemCount(); i4++) {
                uriArr[i4] = clipData.getItemAt(i4).getUri();
            }
        }
        E4(uriArr);
    }

    @Override
    public void w(WebView webView, int i2) {
        if (i2 == 100) {
            this.J0 = false;
        }
        String url = webView.getUrl();
        if (!TextUtils.isEmpty(url)) {
            X4(url);
        }
        ProgressBar progressBar = this.E;
        if (progressBar != null) {
            progressBar.setVisibility(0);
            this.E.bringToFront();
            this.E.setProgress(i2);
            if (i2 >= 100) {
                this.E.setVisibility(4);
            }
        }
        nh5 nh5Var = this.S;
        if (nh5Var != null) {
            nh5Var.g1(webView.getTitle(), i2);
        }
        this.T = i2;
    }

    public final void w3(View view) {
        this.M = (EditText) view.findViewById(R.id.address);
        View viewFindViewById = view.findViewById(R.id.address_bar_container);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(this.r ? 0 : 8);
        }
        InputMethodHelper.h(this, new o());
    }

    public final void w4(ExtractResult extractResult, boolean z) {
        FragmentActivity activity;
        VideoInfo videoInfoJ = extractResult.j();
        if (videoInfoJ == null || (activity = getActivity()) == null || activity.isFinishing()) {
            return;
        }
        if (videoInfoJ.isValid()) {
            ExtractResult extractResult2 = new ExtractResult();
            extractResult2.v(videoInfoJ);
            bd2.b.d(videoInfoJ.getSource(), extractResult2);
        }
        String strD = extractResult.d();
        vc2 vc2Var = vc2.a;
        if (vc2Var.d(strD)) {
            if (zz4.j(videoInfoJ)) {
                t4(videoInfoJ.getSource(), J3());
                return;
            }
            I4(videoInfoJ, z);
        }
        vc2Var.a();
    }

    @Override
    public void x(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((com.snaptube.premium.webview.e) it2.next()).x(webView, webResourceRequest, webResourceError);
            }
        }
    }

    public final void x3(View view) {
        if (this.w == 0 || this.I == null) {
            return;
        }
        I3(view).setBackgroundColor(this.w);
        this.I.setBackgroundColor(this.w);
    }

    public final void x4(YouTubePlaylist youTubePlaylist) {
        if (youTubePlaylist == null || youTubePlaylist.c() == null || youTubePlaylist.c().isEmpty() || !az7.U(getActivity())) {
            return;
        }
        BatchDownloadFormatFragment.j3(getActivity().getSupportFragmentManager(), youTubePlaylist, J3());
    }

    @Override
    public WebResourceResponse y(WebView webView, WebResourceRequest webResourceRequest) {
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                WebResourceResponse webResourceResponseY = ((com.snaptube.premium.webview.e) it2.next()).y(webView, webResourceRequest);
                if (webResourceResponseY != null) {
                    return webResourceResponseY;
                }
            }
        }
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        String string = webResourceRequest.getUrl().toString();
        if (webResourceRequest.getRequestHeaders() == null) {
            return c39.f().l(webView, string);
        }
        if (S3(string)) {
            if (this.A0) {
                return s4(string, webResourceRequest.getRequestHeaders());
            }
            if (Y3(this.z0) || Y3(webResourceRequest.getRequestHeaders().get(HttpHeader.KEY_REFERER))) {
                this.A0 = true;
                return s4(string, webResourceRequest.getRequestHeaders());
            }
        }
        return c39.f().l(webView, string);
    }

    public void y3(com.snaptube.premium.batch_download.a aVar) {
        this.G0.B(getActivity(), aVar);
    }

    public final void y4(String str, boolean z, boolean z2) {
        com.snaptube.premium.webview.a.d(str, true, !J4(str, z, z2));
    }

    @Override
    public WebResourceResponse z(WebView webView, String str) {
        WebResourceResponse webResourceResponseD = this.g.d(webView, str);
        if (webResourceResponseD != null) {
            return webResourceResponseD;
        }
        List list = this.i;
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                WebResourceResponse webResourceResponseZ = ((com.snaptube.premium.webview.e) it2.next()).z(webView, str);
                if (webResourceResponseZ != null) {
                    return webResourceResponseZ;
                }
            }
        }
        return c39.f().l(webView, str);
    }

    public void z3(i45 i45Var) {
    }

    public final void z4(String str) {
        com.snaptube.premium.webview.c cVar = this.k;
        if (cVar != null) {
            cVar.q();
        }
        q4(str);
    }
}
