package com.mbridge.msdk.mbsignalcommon.commonwebview;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class CollapsibleWebView extends CommonWebView {

    private CopyOnWriteArrayList<CommonWebView.h> f35611v;

    private CopyOnWriteArrayList<CommonWebView.h> f35612w;

    private CopyOnWriteArrayList<e> f35613x;

    private String f35614y;

    private String f35615z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            CollapsibleWebView.this.hideToolBarButton("doCollapse");
            CollapsibleWebView.this.showToolBarButton("doSpand");
            CollapsibleWebView.this.d();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            CollapsibleWebView.this.hideToolBarButton("doSpand");
            CollapsibleWebView.this.showToolBarButton("doCollapse");
            CollapsibleWebView.this.e();
        }
    }

    class c implements CommonWebView.i {
        c() {
        }

        @Override
        public void a(String str) {
            CollapsibleWebView collapsibleWebView = CollapsibleWebView.this;
            collapsibleWebView.b(collapsibleWebView.f35631j, str);
        }
    }

    class d extends WebViewClient {

        Boolean f35619a = Boolean.FALSE;

        String f35620b = "";

        d() {
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            if (this.f35619a.booleanValue()) {
                return;
            }
            CollapsibleWebView.this.a((View) webView, str);
            this.f35619a = Boolean.FALSE;
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f35620b = str;
        }

        @Override
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            HashMap map = new HashMap();
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "error");
            map.put("url", str2);
            map.put(TrackingKey.DESCRIPTION, str);
            if (!this.f35619a.booleanValue() && this.f35620b.equals(str2)) {
                this.f35619a = Boolean.TRUE;
                CollapsibleWebView.this.b(webView, map);
            }
            CollapsibleWebView.this.a(webView, map);
        }

        @Override
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            HashMap map = new HashMap();
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "http");
            String str = webResourceRequest.getUrl() + "";
            map.put("url", str);
            map.put("statusCode", webResourceResponse.getStatusCode() + "");
            map.put(TrackingKey.DESCRIPTION, "http error");
            if (!this.f35619a.booleanValue() && (this.f35620b.equals(str) || TextUtils.isEmpty(this.f35620b))) {
                this.f35619a = Boolean.TRUE;
                CollapsibleWebView.this.b(webView, map);
            }
            CollapsibleWebView.this.a(webView, map);
        }

        @Override
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            HashMap map = new HashMap();
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "ssl");
            map.put("url", sslError.getUrl());
            map.put(TrackingKey.DESCRIPTION, "ssl error");
            if (!this.f35619a.booleanValue()) {
                if (this.f35620b.equals(sslError.getUrl() + "")) {
                    this.f35619a = Boolean.TRUE;
                    CollapsibleWebView.this.b(webView, map);
                }
            }
            CollapsibleWebView.this.a(webView, map);
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            o0.b("CollapsibleWebView", "WebView called onRenderProcessGone");
            return true;
        }
    }

    public interface e {
        void a(View view, String str);

        void a(View view, Map<String, String> map);

        void b(View view, String str);

        void b(View view, Map<String, String> map);
    }

    public CollapsibleWebView(Context context) {
        super(context);
    }

    public void d() {
        Iterator<CommonWebView.h> it = this.f35611v.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public void e() {
        Iterator<CommonWebView.h> it = this.f35612w.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    private ToolBar.b getCollapseButton() {
        return new ToolBar.b("doCollapse").a(false).a("mbridge_arrow_down_white_blackbg").a(new a());
    }

    private ToolBar.b getExpandButton() {
        return new ToolBar.b("doSpand").a("mbridge_arrow_up_black").a(new b());
    }

    public String getCollapseIconName() {
        return this.f35614y;
    }

    public String getExpandIconName() {
        return this.f35615z;
    }

    @Override
    public void init() {
        super.init();
        this.f35611v = new CopyOnWriteArrayList<>();
        this.f35612w = new CopyOnWriteArrayList<>();
        this.f35613x = new CopyOnWriteArrayList<>();
        this.f35614y = "mbridge_arrow_down_white_blackbg";
        this.f35615z = "mbridge_arrow_up_white";
        useDeeplink();
        initWebViewListener();
        useProgressBar();
        ArrayList<ToolBar.b> arrayList = new ArrayList<>();
        arrayList.add(getCollapseButton());
        arrayList.add(getExpandButton());
        useDefaultToolBar();
        useCustomizedToolBar(arrayList, true);
    }

    public void initWebViewListener() {
        setPageLoadTimtoutListener(new c());
        setPageLoadTimtout(CommonWebView.DEFAULT_JUMP_TIMEOUT);
        addWebViewClient(new d());
    }

    public void setCollapseIconName(String str) {
        this.f35614y = str;
    }

    public void setCollapseListener(CommonWebView.h hVar) {
        this.f35611v.add(hVar);
    }

    public void setCustomizedToolBarMarginWidthPixel(int i10, int i11, int i12, int i13) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f35624c.getLayoutParams();
        layoutParams.setMargins(i10, i11, i12, i13);
        this.f35624c.setLayoutParams(layoutParams);
    }

    public void setExpandIconName(String str) {
        this.f35615z = str;
    }

    public void setExpandListener(CommonWebView.h hVar) {
        this.f35612w.add(hVar);
    }

    public void setPageLoadListener(e eVar) {
        this.f35613x.add(eVar);
    }

    public CollapsibleWebView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public CollapsibleWebView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a(View view, String str) {
        Iterator<e> it = this.f35613x.iterator();
        while (it.hasNext()) {
            it.next().a(view, str);
        }
    }

    public void b(View view, Map<String, String> map) {
        Iterator<e> it = this.f35613x.iterator();
        while (it.hasNext()) {
            it.next().b(view, map);
        }
    }

    public void a(View view, Map<String, String> map) {
        Iterator<e> it = this.f35613x.iterator();
        while (it.hasNext()) {
            it.next().a(view, map);
        }
    }

    public void b(View view, String str) {
        Iterator<e> it = this.f35613x.iterator();
        while (it.hasNext()) {
            it.next().b(view, str);
        }
    }
}
