package com.snaptube.premium.webview;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Toast;
import com.snaptube.dataadapter.IYouTubeDataAdapter;
import com.snaptube.extractor.pluginlib.models.ExtractResult;
import com.snaptube.extractor.pluginlib.models.TrackerModel;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.extractor.pluginlib.models.YouTubePlaybackModel;
import com.snaptube.extractor.pluginlib.models.YouTubePlaylist;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.batch_download.BatchVideoSelectManager;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.webview.module.CustomMoModule;
import com.snaptube.taskManager.CombinTask;
import java.util.List;
import net.pubnative.mediation.adapter.model.GuideNativeAdModel;
import o.dc3;
import o.dd7;
import o.fc1;
import o.fi7;
import o.hq1;
import o.if9;
import o.j23;
import o.lu3;
import o.m50;
import o.ne6;
import o.ou3;
import o.pe8;
import o.s23;
import o.sd9;
import o.ta7;
import o.ti3;
import o.va4;
import o.x87;
import o.yj8;
import o.yw0;
import org.json.JSONObject;

public class c extends e.a implements Handler.Callback {
    public boolean c;
    public lu3 d;
    public final Handler f;
    public pe8 g;
    public BatchVideoSelectManager j;
    public final IYouTubeDataAdapter k;
    public Handler e = new Handler(this);
    public boolean h = false;
    public boolean i = false;
    public boolean m = false;
    public String n = null;
    public dc3 l = PhoenixApplication.O().k();

    public class a extends ou3 {
        public a() {
        }

        @Override
        public boolean a() {
            if (c.d(c.this)) {
                return false;
            }
            return super.a();
        }

        @Override
        public boolean b() {
            if (c.d(c.this)) {
                return false;
            }
            return super.b();
        }
    }

    public c(Handler handler, IYouTubeDataAdapter iYouTubeDataAdapter) {
        this.f = handler;
        this.k = iYouTubeDataAdapter;
    }

    public static boolean d(c cVar) {
        return cVar.i;
    }

    public static boolean l() {
        return lu3.h();
    }

    @Override
    public void B(Context context, WebView webView) {
        super.B(context, webView);
        this.d = new lu3("$" + ne6.a(5), x87.b(), x87.a());
        pe8 pe8Var = new pe8(context.getApplicationContext(), this.e, this.d.d());
        this.g = pe8Var;
        pe8Var.v(Config.q());
        this.g.u(this.h);
        this.g.A(Config.G4());
        this.g.z(Config.F4());
        this.g.w(CombinTask.isSupported());
        this.g.y(if9.r(context));
        this.g.x(new a());
        m50.c = Config.y4();
        this.d.l("ui", this.g);
        this.d.i(context, PhoenixApplication.O().k(), this.e);
        if (this.k != null) {
            this.d.l("youtube-data-adapter", new sd9(this.k, j23.g()));
        }
        CustomMoModule customMoModule = new CustomMoModule(context, this.e);
        customMoModule.h(this.j);
        this.d.l("common-mo", customMoModule);
        this.d.l(GuideNativeAdModel.NETWORK_NAME, new s23(context, this.e));
        this.d.l("common", new yw0(PhoenixApplication.z(), this.l));
        this.d.l("log", new va4());
        lu3 lu3Var = this.d;
        webView.addJavascriptInterface(lu3Var, lu3Var.f());
    }

    public void D(String str) {
        this.g.t("extract.backgroundJs", "{\"url\":\"" + str + "\"}");
    }

    @Override
    public void e(WebView webView, String str) {
        super.e(webView, str);
        h(webView.getUrl());
    }

    public final boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        String strG = yj8.g(str);
        return (!TextUtils.isEmpty(strG) && strG.endsWith("animeflv.net") && k()) ? false : true;
    }

    public void g(String str) {
        this.g.t("download.click", str);
    }

    public final void h(String str) {
        if (b() == null || TextUtils.isEmpty(str) || this.c) {
            return;
        }
        this.c = true;
        this.d.m();
        if (this.m) {
            this.g.t("report.screenview", str);
            this.m = false;
        }
        String strE = this.d.e(!true, false, false, x87.g());
        try {
            c().evaluateJavascript(strE, null);
        } catch (IllegalStateException e) {
            e.printStackTrace();
            c().loadUrl(String.format("javascript:%s;", strE));
        }
    }

    @Override
    public boolean handleMessage(Message message) {
        List listC;
        lu3 lu3Var;
        int i = message.what;
        if (i == 32) {
            this.f.obtainMessage(3, message.obj).sendToTarget();
            return true;
        }
        switch (i) {
            case 1:
                int i2 = message.arg1;
                if (i2 == 1) {
                    this.f.sendEmptyMessage(6);
                } else if (i2 == 2) {
                    this.f.sendEmptyMessage(16);
                } else if (i2 == 3) {
                    this.f.sendEmptyMessage(9);
                } else if (i2 == 5) {
                    this.f.sendEmptyMessage(20);
                } else if (i2 == 4) {
                    this.f.sendEmptyMessage(21);
                }
                return true;
            case 2:
                this.f.obtainMessage(7, message.obj).sendToTarget();
                return true;
            case 3:
                Object obj = message.obj;
                if (!(obj instanceof ExtractResult)) {
                    return false;
                }
                ExtractResult extractResult = (ExtractResult) obj;
                VideoInfo videoInfoJ = extractResult.j();
                this.f.obtainMessage(5, 256, -1, extractResult).sendToTarget();
                if (videoInfoJ == null) {
                    this.f.obtainMessage(34, extractResult.d()).sendToTarget();
                }
                return true;
            case 4:
                this.f.obtainMessage(17, dd7.a((JSONObject) message.obj)).sendToTarget();
                return true;
            case 5:
                this.f.obtainMessage(18, hq1.a((JSONObject) message.obj)).sendToTarget();
                return true;
            case 6:
                Object obj2 = message.obj;
                if (!(obj2 instanceof YouTubePlaylist) || (listC = ((YouTubePlaylist) obj2).c()) == null || listC.isEmpty()) {
                    return false;
                }
                this.f.obtainMessage(19, message.obj).sendToTarget();
                return true;
            case 7:
                Object obj3 = message.obj;
                if (obj3 == null || !(obj3 instanceof String)) {
                    return false;
                }
                this.f.obtainMessage(22, obj3).sendToTarget();
                return true;
            case 8:
                Object obj4 = message.obj;
                if (!(obj4 instanceof TrackerModel)) {
                    return false;
                }
                this.f.obtainMessage(23, obj4).sendToTarget();
                return true;
            case 9:
                String str = (String) message.obj;
                ti3.b bVarC = ((com.snaptube.premium.app.a) fc1.a(b())).q().c();
                String strA = bVarC != null ? bVarC.a().a() : "";
                this.d.d().a(str, !TextUtils.isEmpty(strA), strA, true);
                return true;
            default:
                switch (i) {
                    case 16:
                        this.f.obtainMessage(24, message.obj).sendToTarget();
                        return true;
                    case 17:
                        this.f.obtainMessage(25).sendToTarget();
                        return true;
                    case 18:
                        this.f.obtainMessage(32).sendToTarget();
                        return true;
                    case 19:
                        Object obj5 = message.obj;
                        if (!(obj5 instanceof YouTubePlaybackModel)) {
                            return false;
                        }
                        this.f.obtainMessage(33, obj5).sendToTarget();
                        return true;
                    default:
                        switch (i) {
                            case 21:
                                Object obj6 = message.obj;
                                if (!(obj6 instanceof String)) {
                                    return false;
                                }
                                this.f.obtainMessage(35, obj6).sendToTarget();
                                return true;
                            case 22:
                                Context contextZ = PhoenixApplication.z();
                                String str2 = (String) message.obj;
                                if (contextZ == null || (lu3Var = this.d) == null) {
                                    return false;
                                }
                                lu3Var.d().a(str2, true, contextZ.getString(R.string.download), true);
                                return true;
                            case 23:
                                Context contextZ2 = PhoenixApplication.z();
                                if (contextZ2 == null) {
                                    return false;
                                }
                                Toast.makeText(contextZ2, R.string.click_gray_download_btn_prompt, 0).show();
                                return true;
                            case 24:
                                this.f.obtainMessage(36, message.obj).sendToTarget();
                                return true;
                            case 25:
                                this.f.obtainMessage(37, message.obj).sendToTarget();
                                return true;
                            default:
                                return false;
                        }
                }
        }
    }

    @Override
    public void i(WebView webView, String str) {
        super.i(webView, str);
        if (f(webView.getUrl())) {
            h(webView.getUrl());
        }
    }

    @Override
    public void j(WebView webView, String str) {
        super.j(webView, str);
        s();
    }

    public final boolean k() {
        return Build.VERSION.SDK_INT == 22;
    }

    public void m(String str, String str2) {
        this.g.t(str, str2);
    }

    public void n() {
        o(false);
    }

    public void o(boolean z) {
        g("{\"button\": \"single\", \"isAutoClick\":" + z + "}");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.e.removeCallbacksAndMessages(null);
        lu3 lu3Var = this.d;
        if (lu3Var != null) {
            lu3Var.j();
            this.d = null;
        }
    }

    @Override
    public boolean p(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        if (this.d.c(str2, str3, jsPromptResult)) {
            return true;
        }
        return super.p(webView, str, str2, str3, jsPromptResult);
    }

    public void q() {
        g("{\"button\":\"multi\"}");
    }

    public void r(String str) {
        if (this.c) {
            this.g.t("report.screenview", str);
            this.m = false;
        } else {
            this.m = true;
            this.n = str;
        }
    }

    public void s() {
        this.c = false;
    }

    public void t(boolean z) {
        this.h = z;
    }

    public void u(BatchVideoSelectManager batchVideoSelectManager) {
        this.j = batchVideoSelectManager;
    }

    public void v(boolean z) {
        this.i = z;
    }

    public void w(ta7 ta7Var, String str) {
        lu3 lu3Var = this.d;
        if (lu3Var != null) {
            String strA = ta7Var.a();
            fi7.a("plugin_js_bridge", "sharePickRespond " + strA);
            lu3Var.d().a(str, true, strA, true);
        }
    }

    @Override
    public WebResourceResponse y(WebView webView, WebResourceRequest webResourceRequest) {
        dc3 dc3Var = this.l;
        if (dc3Var != null) {
            return dc3Var.shouldInterceptRequest(webResourceRequest);
        }
        return null;
    }

    @Override
    public WebResourceResponse z(WebView webView, String str) {
        lu3 lu3Var = this.d;
        if (lu3Var != null) {
            return lu3Var.g(str);
        }
        return null;
    }
}
