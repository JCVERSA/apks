package com.mgtv.ssp.activity;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.hunantv.imgo.a.f;
import com.hunantv.imgo.data.ErrorData;
import com.hunantv.imgo.util.a;
import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.v;
import com.mgtv.ssp.MgSspLoginStatusReceiver;
import com.mgtv.ssp.R;
import com.mgtv.ssp.authbase.AccountInfo;
import com.mgtv.ssp.authbase.MgSspAccountCallback;
import com.mgtv.webview.MgSspWebView;
import com.mgtv.webview.c;
import com.mgtv.webview.jsbridge.d;
import java.io.Serializable;
import org.json.JSONObject;

public class SspVipWebActivity extends SspBaseWebActivity {
    private static MgSspAccountCallback k;
    private boolean j;
    private String l;
    private String m;
    private String n;
    private String o;

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        MgSspAccountCallback mgSspAccountCallback = k;
        if (mgSspAccountCallback != null) {
            mgSspAccountCallback.onResult(0, "");
            k = null;
        }
        f.a(this).a("vip_click", "vip_out", "0", null, this.n, "", this.l, this.m, -1, "", this.o);
    }

    @Override
    public void onPause() {
        super.onPause();
        this.j = false;
        MgSspWebView mgSspWebView = this.e;
        if (mgSspWebView != null) {
            mgSspWebView.a("webviewEnterBackground", "", (d) null);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.j = true;
        MgSspWebView mgSspWebView = this.e;
        if (mgSspWebView != null) {
            mgSspWebView.a("webviewBecomeActive", "", (d) null);
        }
    }

    public static void a(MgSspAccountCallback mgSspAccountCallback) {
        k = mgSspAccountCallback;
    }

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
    }

    @Override
    public void d() {
        super.d();
        MgSspWebView mgSspWebView = this.e;
        if (mgSspWebView != null) {
            mgSspWebView.a(new c() {
                @Override
                public void a(@Nullable String str) {
                    Intent intent = new Intent(SspVipWebActivity.this, (Class<?>) SspCommonWebActivity.class);
                    intent.putExtra("webUrl", str);
                    a.a(SspVipWebActivity.this, intent);
                }

                @Override
                public void b(String str) {
                    if (SspVipWebActivity.k != null) {
                        SspVipWebActivity.k.gotoLogin(new MgSspLoginStatusReceiver() {
                            @Override
                            public void result(int i, AccountInfo accountInfo) {
                                if (i == 0) {
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        b.j(accountInfo.getOpenId());
                                        b.o(accountInfo.getToken());
                                        jSONObject.put("openid", b.R());
                                        jSONObject.put("token", b.V());
                                        jSONObject.put("rtype", b.S());
                                    } catch (Throwable unused) {
                                    }
                                    SspVipWebActivity.this.e.d(jSONObject.toString());
                                }
                            }
                        });
                    }
                }

                @Override
                public void c(String str) {
                    ErrorData errorData = new ErrorData();
                    errorData.setMsg(str);
                    f.a(SspVipWebActivity.this).a("vip_click", "vip_err", "1", errorData, SspVipWebActivity.this.n, "", SspVipWebActivity.this.l, SspVipWebActivity.this.m, -1, "", SspVipWebActivity.this.o);
                    v.b(str);
                }

                @Override
                public String b() {
                    if (SspVipWebActivity.this.j) {
                        return "1";
                    }
                    return "0";
                }

                @Override
                public void a() {
                    super.a();
                    SspVipWebActivity.this.finish();
                }
            });
        }
    }

    @Override
    public void a() {
        Serializable serializableExtra = getIntent().getSerializableExtra("acinfo");
        if (serializableExtra instanceof AccountInfo) {
            this.b = ((AccountInfo) serializableExtra).getVipurl();
        }
        this.l = getIntent().getStringExtra("currentVideoId");
        this.m = getIntent().getStringExtra("currentEncodeVideoId");
        this.n = getIntent().getStringExtra("from");
        this.o = getIntent().getStringExtra("collection_id");
        f.a(this).a("vip_click", "vip_in", "0", null, this.n, "", this.l, this.m, -1, "", this.o);
    }
}
