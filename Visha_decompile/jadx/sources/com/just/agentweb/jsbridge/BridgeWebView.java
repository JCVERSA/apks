package com.just.agentweb.jsbridge;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.collection.ArrayMap;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@SuppressLint({"SetJavaScriptEnabled"})
public class BridgeWebView extends WebView implements WebViewJavascriptBridge, BridgeWebViewClient.OnLoadJSListener {
    private final int URL_MAX_CHARACTER_NUM;
    private final Map<String, OnBridgeCallback> mCallbacks;
    private BridgeWebViewClient mClient;
    private Gson mGson;
    private boolean mJSLoaded;
    private List<Object> mMessages;
    private long mUniqueId;

    public static abstract class BaseJavascriptInterface {
        private final Map<String, OnBridgeCallback> mCallbacks;

        public BaseJavascriptInterface(Map<String, OnBridgeCallback> map) {
            this.mCallbacks = map;
        }

        @JavascriptInterface
        public void response(String str, String str2) {
            OnBridgeCallback onBridgeCallbackRemove;
            Log.d("BaseJavascriptInterface", str + ", responseId: " + str2 + " " + Thread.currentThread().getName());
            if (TextUtils.isEmpty(str2) || (onBridgeCallbackRemove = this.mCallbacks.remove(str2)) == null) {
                return;
            }
            onBridgeCallbackRemove.onCallBack(str);
        }

        public abstract String send(String str);

        @JavascriptInterface
        public String send(String str, String str2) {
            Log.d("BaseJavascriptInterface", str + ", callbackId: " + str2 + " " + Thread.currentThread().getName());
            return send(str);
        }
    }

    public BridgeWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.URL_MAX_CHARACTER_NUM = 2097152;
        this.mCallbacks = new ArrayMap();
        this.mMessages = new ArrayList();
        this.mUniqueId = 0L;
        this.mJSLoaded = false;
        init();
    }

    public void lambda$sendResponse$0(Object obj) {
        Gson gson = this.mGson;
        if (gson == null) {
            return;
        }
        String str = String.format("javascript:WebViewJavascriptBridge._handleMessageFromNative(%s);", JSONObject.quote(gson.toJson(obj)));
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            if (str.length() >= 2097152) {
                evaluateJavascript(str, null);
            } else {
                loadUrl(str);
            }
        }
    }

    private void doSend(String str, Object obj, OnBridgeCallback onBridgeCallback) {
        if ((obj instanceof String) || this.mGson != null) {
            JSRequest jSRequest = new JSRequest();
            if (obj != null) {
                jSRequest.data = obj instanceof String ? (String) obj : this.mGson.toJson(obj);
            }
            if (onBridgeCallback != null) {
                StringBuilder sb = new StringBuilder();
                long j = this.mUniqueId + 1;
                this.mUniqueId = j;
                sb.append(j);
                sb.append("_");
                sb.append(SystemClock.currentThreadTimeMillis());
                String str2 = String.format("JAVA_CB_%s", sb.toString());
                this.mCallbacks.put(str2, onBridgeCallback);
                jSRequest.callbackId = str2;
            }
            if (!TextUtils.isEmpty(str)) {
                jSRequest.handlerName = str;
            }
            queueMessage(jSRequest);
        }
    }

    private void init() {
        clearCache(true);
        getSettings().setUseWideViewPort(true);
        getSettings().setCacheMode(2);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        BridgeWebViewClient bridgeWebViewClient = new BridgeWebViewClient(this);
        this.mClient = bridgeWebViewClient;
        super.setWebViewClient(bridgeWebViewClient);
    }

    private void queueMessage(Object obj) {
        List<Object> list = this.mMessages;
        if (list != null) {
            list.add(obj);
        } else {
            lambda$sendResponse$0(obj);
        }
    }

    public void callHandler(String str, String str2, OnBridgeCallback onBridgeCallback) {
        doSend(str, str2, onBridgeCallback);
    }

    @Override
    public void destroy() {
        super.destroy();
        this.mCallbacks.clear();
    }

    public Map<String, OnBridgeCallback> getCallbacks() {
        return this.mCallbacks;
    }

    public boolean isJSLoaded() {
        return this.mJSLoaded;
    }

    @Override
    public void onLoadFinished() {
        this.mJSLoaded = true;
        List<Object> list = this.mMessages;
        if (list != null) {
            Iterator<Object> it = list.iterator();
            while (it.hasNext()) {
                lambda$sendResponse$0(it.next());
            }
            this.mMessages = null;
        }
    }

    @Override
    public void onLoadStart() {
        this.mJSLoaded = false;
    }

    public void sendResponse(Object obj, String str) {
        boolean z = obj instanceof String;
        if ((z || this.mGson != null) && !TextUtils.isEmpty(str)) {
            final JSResponse jSResponse = new JSResponse();
            jSResponse.responseId = str;
            jSResponse.responseData = z ? (String) obj : this.mGson.toJson(obj);
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                lambda$sendResponse$0(jSResponse);
            } else {
                post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$sendResponse$0(jSResponse);
                    }
                });
            }
        }
    }

    @Override
    public void sendToWeb(String str) {
        sendToWeb(str, (OnBridgeCallback) null);
    }

    public void setGson(Gson gson) {
        this.mGson = gson;
    }

    @Override
    public void setWebViewClient(WebViewClient webViewClient) {
        this.mClient.setWebViewClient(webViewClient);
    }

    @Override
    public void sendToWeb(String str, OnBridgeCallback onBridgeCallback) {
        doSend(null, str, onBridgeCallback);
    }

    @Override
    public void sendToWeb(String str, Object... objArr) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            loadUrl(String.format(BridgeUtil.JAVASCRIPT_STR, String.format(str, objArr)));
        }
    }

    public BridgeWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.URL_MAX_CHARACTER_NUM = 2097152;
        this.mCallbacks = new ArrayMap();
        this.mMessages = new ArrayList();
        this.mUniqueId = 0L;
        this.mJSLoaded = false;
        init();
    }

    public BridgeWebView(Context context) {
        super(context);
        this.URL_MAX_CHARACTER_NUM = 2097152;
        this.mCallbacks = new ArrayMap();
        this.mMessages = new ArrayList();
        this.mUniqueId = 0L;
        this.mJSLoaded = false;
        init();
    }
}
