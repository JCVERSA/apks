package com.just.agentweb;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import androidx.core.net.MailTo;
import com.alibaba.android.arouter.utils.Consts;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class DefaultWebClient extends MiddlewareWebClientBase {
    public static final String ALIPAYS_SCHEME = "alipays://";
    public static final int ALLOW_SYSTEM_OPEN_SPECIAL_URL = 3;
    public static final int ASK_USER_OPEN_OTHER_PAGE = 250;
    private static final int CONSTANTS_ABNORMAL_BIG = 7;
    public static final int DERECT_OPEN_OTHER_PAGE = 1001;
    public static final int DISALLOW_OPEN_OTHER_APP = 62;
    private static final boolean HAS_ALIPAY_LIB;
    public static final String HTTPS_SCHEME = "https://";
    public static final String HTTP_SCHEME = "http://";
    public static final String INTENT_SCHEME = "intent://";
    public static final String SCHEME_SMS = "sms:";
    private static final String TAG = "DefaultWebClient";
    public static final String WEBCHAT_PAY_SCHEME = "weixin://wap/pay?";
    private WeakReference<AbsAgentWebUIController> mAgentWebUIController;
    private Handler.Callback mCallback;
    private final Set<String> mErrorUrlsSet;
    private boolean mIsInterceptUnkownUrl;
    private Object mPayTask;
    private int mUrlHandleWays;
    private final Set<String> mWaittingFinishSet;
    private WeakReference<Activity> mWeakReference;
    private final WebView mWebView;
    private final android.webkit.WebViewClient mWebViewClient;
    private Method onMainFrameErrorMethod;
    private final String[] sNotInterceptWeb;
    private boolean webClientHelper;

    public static class Builder {
        private Activity mActivity;
        private android.webkit.WebViewClient mClient;
        private boolean mIsInterceptUnkownScheme = true;
        private PermissionInterceptor mPermissionInterceptor;
        private int mUrlHandleWays;
        private boolean mWebClientHelper;
        private WebView mWebView;

        public DefaultWebClient build() {
            return new DefaultWebClient(this);
        }

        public Builder setActivity(Activity activity) {
            this.mActivity = activity;
            return this;
        }

        public Builder setClient(android.webkit.WebViewClient webViewClient) {
            this.mClient = webViewClient;
            return this;
        }

        public Builder setInterceptUnkownUrl(boolean z) {
            this.mIsInterceptUnkownScheme = z;
            return this;
        }

        public Builder setPermissionInterceptor(PermissionInterceptor permissionInterceptor) {
            this.mPermissionInterceptor = permissionInterceptor;
            return this;
        }

        public Builder setUrlHandleWays(int i) {
            this.mUrlHandleWays = i;
            return this;
        }

        public Builder setWebClientHelper(boolean z) {
            this.mWebClientHelper = z;
            return this;
        }

        public Builder setWebView(WebView webView) {
            this.mWebView = webView;
            return this;
        }
    }

    public enum OpenOtherPageWays {
        DERECT(1001),
        ASK(250),
        DISALLOW(62),
        SPECIAL(3);

        int code;

        OpenOtherPageWays(int i) {
            this.code = i;
        }
    }

    static {
        boolean z;
        try {
            Class.forName("com.alipay.sdk.app.PayTask");
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        HAS_ALIPAY_LIB = z;
        LogUtils.i(TAG, "HAS_ALIPAY_LIB:" + z);
    }

    public DefaultWebClient(Builder builder) {
        super(builder.mClient);
        this.mWeakReference = null;
        this.webClientHelper = true;
        this.mUrlHandleWays = 62;
        this.mIsInterceptUnkownUrl = true;
        this.mAgentWebUIController = null;
        this.mCallback = null;
        this.onMainFrameErrorMethod = null;
        this.mErrorUrlsSet = new HashSet();
        this.mWaittingFinishSet = new HashSet();
        this.sNotInterceptWeb = new String[]{"x.com", "twitter.com", "facebook.com", "api.whatsapp.com"};
        this.mWebView = builder.mWebView;
        this.mWebViewClient = builder.mClient;
        this.mWeakReference = new WeakReference<>(builder.mActivity);
        this.webClientHelper = builder.mWebClientHelper;
        this.mAgentWebUIController = new WeakReference<>(AgentWebUtils.getAgentWebUIControllerByWebView(builder.mWebView));
        this.mIsInterceptUnkownUrl = builder.mIsInterceptUnkownScheme;
        if (builder.mUrlHandleWays <= 0) {
            this.mUrlHandleWays = 250;
        } else {
            this.mUrlHandleWays = builder.mUrlHandleWays;
        }
    }

    public static Builder createBuilder() {
        return new Builder();
    }

    private boolean deepLink(String str) {
        ResolveInfo resolveInfoLookupResolveInfo;
        int i = this.mUrlHandleWays;
        if (i == 3) {
            Log.i(TAG, "deepLink: allow system open special url " + str);
            return openSpecialUrl(str);
        }
        if (i != 250) {
            if (i != 1001) {
                return false;
            }
            lookup(str);
            return true;
        }
        Activity activity = this.mWeakReference.get();
        if (activity == null || (resolveInfoLookupResolveInfo = lookupResolveInfo(str)) == null) {
            return false;
        }
        ActivityInfo activityInfo = resolveInfoLookupResolveInfo.activityInfo;
        LogUtils.e(TAG, "resolve package:" + resolveInfoLookupResolveInfo.activityInfo.packageName + " app package:" + activity.getPackageName());
        if (activityInfo != null && !TextUtils.isEmpty(activityInfo.packageName) && activityInfo.packageName.equals(activity.getPackageName())) {
            return lookup(str);
        }
        if (this.mAgentWebUIController.get() != null) {
            AbsAgentWebUIController absAgentWebUIController = this.mAgentWebUIController.get();
            WebView webView = this.mWebView;
            absAgentWebUIController.onOpenPagePrompt(webView, webView.getUrl(), getCallback(str));
        }
        return true;
    }

    private Handler.Callback getCallback(final String str) {
        Handler.Callback callback = this.mCallback;
        if (callback != null) {
            return callback;
        }
        Handler.Callback callback2 = new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return this.b.lambda$getCallback$0(str, message);
            }
        };
        this.mCallback = callback2;
        return callback2;
    }

    private boolean handleCommonLink(String str) {
        if (!str.startsWith("tel:") && !str.startsWith(SCHEME_SMS) && !str.startsWith(MailTo.MAILTO_SCHEME) && !str.startsWith("geo:0,0?q=")) {
            return false;
        }
        try {
            Activity activity = this.mWeakReference.get();
            if (activity == null) {
                return false;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            activity.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            if (!AgentWebConfig.DEBUG) {
                return true;
            }
            e.printStackTrace();
            return true;
        }
    }

    private void handleIntentUrl(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith(INTENT_SCHEME)) {
                lookup(str);
            }
        } catch (Throwable th) {
            if (LogUtils.isDebug()) {
                th.printStackTrace();
            }
        }
    }

    private boolean isNotInterceptWeb(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        try {
            String host = new URL(str).getHost();
            if (host != null && !host.isEmpty()) {
                for (String str2 : this.sNotInterceptWeb) {
                    if (matchesNotInterceptHost(host, str2)) {
                        Log.i(TAG, "isNotInterceptWeb: " + str);
                        return true;
                    }
                }
            }
        } catch (MalformedURLException e) {
            LogUtils.e(TAG, "Malformed URL:" + e.getMessage());
        }
        return (str.startsWith("https://") || str.startsWith(HTTP_SCHEME)) ? false : true;
    }

    public boolean lambda$getCallback$0(String str, Message message) {
        if (message.what == 1) {
            lookup(str);
        }
        return true;
    }

    private boolean lookup(String str) {
        try {
            Activity activity = this.mWeakReference.get();
            if (activity == null) {
                return true;
            }
            PackageManager packageManager = activity.getPackageManager();
            Intent uri = Intent.parseUri(str, 1);
            if (packageManager.resolveActivity(uri, 65536) == null) {
                return false;
            }
            uri.addCategory("android.intent.category.BROWSABLE");
            uri.setComponent(null);
            uri.setSelector(null);
            activity.startActivityIfNeeded(uri, -1);
            return true;
        } catch (Throwable th) {
            if (!LogUtils.isDebug()) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    private ResolveInfo lookupResolveInfo(String str) {
        try {
            Activity activity = this.mWeakReference.get();
            if (activity == null) {
                return null;
            }
            return activity.getPackageManager().resolveActivity(Intent.parseUri(str, 1), 65536);
        } catch (Throwable th) {
            if (LogUtils.isDebug()) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static boolean matchesNotInterceptHost(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        String lowerCase2 = str2.toLowerCase(locale);
        if (!lowerCase.equals(lowerCase2)) {
            if (!lowerCase.endsWith(Consts.DOT + lowerCase2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
    
        if (r1 != null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void onMainFrameError(WebView webView, int i, String str, String str2) {
        this.mErrorUrlsSet.add(str2);
        android.webkit.WebViewClient webViewClient = this.mWebViewClient;
        if (webViewClient != null && this.webClientHelper) {
            Method methodIsExistMethod = this.onMainFrameErrorMethod;
            if (methodIsExistMethod == null) {
                methodIsExistMethod = AgentWebUtils.isExistMethod(webViewClient, "onMainFrameError", AbsAgentWebUIController.class, WebView.class, Integer.TYPE, String.class, String.class);
                this.onMainFrameErrorMethod = methodIsExistMethod;
            }
            try {
                methodIsExistMethod.invoke(this.mWebViewClient, this.mAgentWebUIController.get(), webView, Integer.valueOf(i), str, str2);
                return;
            } catch (Throwable th) {
                if (LogUtils.isDebug()) {
                    th.printStackTrace();
                    return;
                }
                return;
            }
        }
        if (this.mAgentWebUIController.get() != null) {
            this.mAgentWebUIController.get().onMainFrameError(webView, i, str, str2);
        }
    }

    private boolean openSpecialUrl(String str) {
        return isNotInterceptWeb(str) && lookup(str);
    }

    private boolean preShouldOverrideUrlLoading(String str) {
        String str2 = TAG;
        Log.i(str2, "preShouldOverrideUrlLoading: url = " + str);
        if (!this.webClientHelper) {
            return false;
        }
        if (handleCommonLink(str)) {
            return true;
        }
        if (str.startsWith(INTENT_SCHEME)) {
            handleIntentUrl(str);
            return true;
        }
        if (str.startsWith(WEBCHAT_PAY_SCHEME)) {
            startActivity(str);
            return true;
        }
        if (str.startsWith(ALIPAYS_SCHEME) && lookup(str)) {
            return true;
        }
        if (queryActiviesNumber(str) > 0 && deepLink(str)) {
            LogUtils.i(str2, "intercept OtherAppScheme");
            return true;
        }
        if (!this.mIsInterceptUnkownUrl) {
            return false;
        }
        LogUtils.i(str2, "intercept InterceptUnkownScheme : " + str);
        return true;
    }

    private int queryActiviesNumber(String str) {
        try {
            if (this.mWeakReference.get() == null) {
                return 0;
            }
            List<ResolveInfo> listQueryIntentActivities = this.mWeakReference.get().getPackageManager().queryIntentActivities(Intent.parseUri(str, 1), 65536);
            if (listQueryIntentActivities == null) {
                return 0;
            }
            return listQueryIntentActivities.size();
        } catch (URISyntaxException e) {
            if (LogUtils.isDebug()) {
                e.printStackTrace();
            }
            return 0;
        }
    }

    private void startActivity(String str) {
        try {
            if (this.mWeakReference.get() == null) {
                return;
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            this.mWeakReference.get().startActivity(intent);
        } catch (Exception e) {
            if (LogUtils.isDebug()) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
        this.mWaittingFinishSet.add(str);
        super.doUpdateVisitedHistory(webView, str, z);
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        if (this.mErrorUrlsSet.contains(str) || !this.mWaittingFinishSet.contains(str)) {
            webView.setVisibility(0);
        } else if (this.mAgentWebUIController.get() != null) {
            this.mAgentWebUIController.get().onShowMainFrame();
        }
        this.mWaittingFinishSet.remove(str);
        if (!this.mErrorUrlsSet.isEmpty()) {
            this.mErrorUrlsSet.clear();
        }
        super.onPageFinished(webView, str);
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.mWaittingFinishSet.add(str);
        super.onPageStarted(webView, str, bitmap);
    }

    @Override
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        LogUtils.i(TAG, "onReceivedError：" + str + "  CODE:" + i);
        if ((str2 != null || i == -12) && i != -1) {
            if (i == -2 || str2 == null || str2.equals(webView.getUrl()) || str2.equals(webView.getOriginalUrl())) {
                onMainFrameError(webView, i, str, str2);
            }
        }
    }

    @Override
    public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
    }

    @Override
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (this.mAgentWebUIController.get() != null) {
            this.mAgentWebUIController.get().onShowSslCertificateErrorDialog(webView, sslErrorHandler, sslError);
        }
    }

    @Override
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return true;
    }

    @Override
    public void onScaleChanged(WebView webView, float f, float f2) {
        LogUtils.i(TAG, "onScaleChanged:" + f + "   n:" + f2);
        if (f2 - f > 7.0f) {
            webView.setInitialScale((int) ((f / f2) * 100.0f));
        }
    }

    @Override
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return super.shouldInterceptRequest(webView, str);
    }

    @Override
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        return super.shouldOverrideKeyEvent(webView, keyEvent);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest != null && webResourceRequest.getUrl() != null) {
            return preShouldOverrideUrlLoading(webResourceRequest.getUrl().toString());
        }
        Log.i(TAG, "shouldOverrideUrlLoading: request null");
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override
    @RequiresApi(api = 21)
    @TargetApi(23)
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        String string = webResourceRequest.getUrl().toString();
        int errorCode = webResourceError.getErrorCode();
        if (webResourceRequest.isForMainFrame()) {
            if ((string != null || errorCode == -12) && errorCode != -1) {
                LogUtils.i(TAG, "onReceivedError:" + ((Object) webResourceError.getDescription()) + " code:" + webResourceError.getErrorCode() + " failingUrl:" + string + " getUrl:" + webView.getUrl() + " getOriginalUrl:" + webView.getOriginalUrl());
                if (errorCode == -2 || string == null || string.equals(webView.getUrl()) || string.equals(webView.getOriginalUrl())) {
                    onMainFrameError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
                }
            }
        }
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (preShouldOverrideUrlLoading(str)) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
