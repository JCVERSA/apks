package com.mgtv.ssp.activity;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.hunantv.imgo.a.e;
import com.hunantv.imgo.data.EventClickData;
import com.hunantv.imgo.util.a;
import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.n;
import com.hunantv.imgo.util.u;
import com.hunantv.imgo.util.v;
import com.mgtv.ssp.R;
import com.mgtv.ssp.apkDownload.d;
import com.mgtv.webview.MgSspWebView;
import com.mgtv.webview.c;
import java.net.URLEncoder;
import org.json.JSONObject;

public class SspCommonWebActivity extends SspBaseWebActivity {

    @Nullable
    ValueCallback<Uri[]> j;
    private String k = null;
    private String l;
    private String m;

    @Override
    public int b() {
        return R.layout.activity_web;
    }

    @Override
    public void c() {
        this.e = (MgSspWebView) findViewById(R.id.vip_web);
        this.g = findViewById(R.id.error_view);
        this.h = (TextView) findViewById(R.id.tv_web_error);
        View viewFindViewById = findViewById(R.id.close_layout);
        this.c = viewFindViewById;
        this.d = viewFindViewById.findViewById(R.id.close_web);
        TextView textView = (TextView) this.c.findViewById(R.id.tv_webtitle);
        this.i = textView;
        textView.setText("");
    }

    @Override
    public void d() {
        super.d();
        MgSspWebView mgSspWebView = this.e;
        if (mgSspWebView != null) {
            mgSspWebView.setWebChromeClient(new WebChromeClient() {
                @Override
                public void onReceivedTitle(WebView webView, String str) {
                    super.onReceivedTitle(webView, str);
                    if (SspCommonWebActivity.this.i == null || TextUtils.isEmpty(str)) {
                        return;
                    }
                    SspCommonWebActivity.this.i.setText(str);
                }

                @Override
                @TargetApi(21)
                public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                    SspCommonWebActivity.this.j = valueCallback;
                    Intent intentCreateIntent = fileChooserParams.createIntent();
                    intentCreateIntent.setType("image/*");
                    SspCommonWebActivity sspCommonWebActivity = SspCommonWebActivity.this;
                    a.a(sspCommonWebActivity, Intent.createChooser(intentCreateIntent, sspCommonWebActivity.getString(R.string.choose_upload)), 5);
                    n.a("RootWebChromeClient", "onShowFileChooser: 5.0+");
                    return true;
                }
            });
            this.e.a(new c() {
                @Override
                public void a(@Nullable String str) {
                }

                @Override
                public void b(String str) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("openid", b.R());
                        jSONObject.put("token", b.V());
                        jSONObject.put("rtype", b.S());
                    } catch (Throwable unused) {
                    }
                    SspCommonWebActivity.this.e.d(jSONObject.toString());
                }

                @Override
                public void c(String str) {
                    v.b(str);
                }

                @Override
                public void a() {
                    super.a();
                    SspCommonWebActivity.this.finish();
                }
            });
            this.e.setDownloadListener(new DownloadListener() {
                @Override
                public void onDownloadStart(final String str, String str2, String str3, String str4, long j) {
                    SspCommonWebActivity sspCommonWebActivity = SspCommonWebActivity.this;
                    if (!sspCommonWebActivity.a) {
                        sspCommonWebActivity.a = true;
                        sspCommonWebActivity.a("2", str);
                    }
                    if (u.c(str)) {
                        d dVarA = d.a();
                        SspCommonWebActivity sspCommonWebActivity2 = SspCommonWebActivity.this;
                        dVarA.a(sspCommonWebActivity2, sspCommonWebActivity2.l, str, new d.b() {
                            @Override
                            public void a() {
                                SspCommonWebActivity.this.a("3", str);
                            }
                        });
                    }
                }
            });
        }
    }

    @Override
    @SuppressLint({"NewApi"})
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        a(i, i2, intent);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @RequiresApi(21)
    public void b(int i, int i2, @Nullable Intent intent) {
        Uri[] uriArr;
        if (this.j == null) {
            return;
        }
        if (intent != null) {
            String dataString = intent.getDataString();
            ClipData clipData = intent.getClipData();
            if (clipData != null) {
                uriArr = new Uri[clipData.getItemCount()];
                for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                    uriArr[i3] = clipData.getItemAt(i3).getUri();
                }
            } else {
                uriArr = null;
            }
            if (dataString != null) {
                uriArr = new Uri[]{Uri.parse(dataString)};
            }
        } else {
            uriArr = null;
        }
        this.j.onReceiveValue(uriArr);
        this.j = null;
    }

    @Override
    public void a() {
        try {
            this.b = getIntent().getStringExtra("webUrl");
            this.m = getIntent().getStringExtra("vcode");
            this.l = u.a();
        } catch (Throwable unused) {
        }
    }

    public void a(String str, String str2) {
        if (str2 != null) {
            try {
                e eVar = new e(this);
                EventClickData eventClickData = new EventClickData(u.a(), "downdiver", str, URLEncoder.encode(str2, "UTF-8"), "qt_webview");
                String str3 = this.m;
                if (str3 != null) {
                    eventClickData.setCpid(str3);
                }
                eVar.a(eventClickData);
            } catch (Throwable unused) {
            }
        }
    }

    @RequiresApi(api = 21)
    public boolean a(int i, int i2, @Nullable Intent intent) {
        if (i != 5) {
            if (i != 100 || this.j == null) {
                return false;
            }
            if (intent != null && i2 == -1) {
                intent.getData();
            }
            if (this.j == null) {
                return false;
            }
            b(i, i2, intent);
            return false;
        }
        if (this.j == null) {
            return false;
        }
        b(i, i2, intent);
        return true;
    }
}
