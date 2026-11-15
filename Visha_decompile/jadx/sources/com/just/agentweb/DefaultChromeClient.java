package com.just.agentweb;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebStorage;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

public class DefaultChromeClient extends MiddlewareWebChromeBase {
    public static final String ANDROID_WEBCHROMECLIENT_PATH = "android.webkit.WebChromeClient";
    public static final int FROM_CODE_INTENTION = 24;
    public static final int FROM_CODE_INTENTION_LOCATION = 96;
    private final String TAG;
    private WeakReference<Activity> mActivityWeakReference;
    private WeakReference<AbsAgentWebUIController> mAgentWebUIController;
    private GeolocationPermissions.Callback mCallback;
    private Object mFileChooser;
    private final IVideo mIVideo;
    private final IndicatorController mIndicatorController;
    private boolean mIsWrapper;
    private String mOrigin;
    private final PermissionInterceptor mPermissionInterceptor;
    private final AgentActionFragment.PermissionListener mPermissionListener;
    private final android.webkit.WebChromeClient mWebChromeClient;
    private final WebView mWebView;

    public DefaultChromeClient(Activity activity, IndicatorController indicatorController, android.webkit.WebChromeClient webChromeClient, @Nullable IVideo iVideo, PermissionInterceptor permissionInterceptor, WebView webView) {
        super(webChromeClient);
        this.mActivityWeakReference = null;
        this.TAG = DefaultChromeClient.class.getSimpleName();
        this.mIsWrapper = false;
        this.mOrigin = null;
        this.mCallback = null;
        this.mAgentWebUIController = null;
        this.mPermissionListener = new AgentActionFragment.PermissionListener() {
            @Override
            public void onRequestPermissionsResult(@NonNull String[] strArr, @NonNull int[] iArr, Bundle bundle) {
                if (bundle.getInt(AgentActionFragment.KEY_FROM_INTENTION) == 96) {
                    boolean zHasPermission = AgentWebUtils.hasPermission((Context) DefaultChromeClient.this.mActivityWeakReference.get(), strArr);
                    if (DefaultChromeClient.this.mCallback != null) {
                        DefaultChromeClient.this.mCallback.invoke(DefaultChromeClient.this.mOrigin, zHasPermission, false);
                        DefaultChromeClient.this.mCallback = null;
                        DefaultChromeClient.this.mOrigin = null;
                    }
                    if (zHasPermission || DefaultChromeClient.this.mAgentWebUIController.get() == null) {
                        return;
                    }
                    ((AbsAgentWebUIController) DefaultChromeClient.this.mAgentWebUIController.get()).onPermissionsDeny(AgentWebPermissions.LOCATION, "Location", "Location");
                }
            }
        };
        this.mIndicatorController = indicatorController;
        this.mIsWrapper = webChromeClient != null;
        this.mWebChromeClient = webChromeClient;
        this.mActivityWeakReference = new WeakReference<>(activity);
        this.mIVideo = iVideo;
        this.mPermissionInterceptor = permissionInterceptor;
        this.mWebView = webView;
        this.mAgentWebUIController = new WeakReference<>(AgentWebUtils.getAgentWebUIControllerByWebView(webView));
    }

    private void createAndOpenCommonFileChooser(ValueCallback valueCallback, String str) {
        if (valueCallback == null) {
            return;
        }
        Activity activity = this.mActivityWeakReference.get();
        if (activity == null || activity.isFinishing()) {
            valueCallback.onReceiveValue(new Object());
        } else {
            AgentWebUtils.showFileChooserCompat(activity, this.mWebView, null, null, this.mPermissionInterceptor, valueCallback, str, null);
        }
    }

    private void onGeolocationPermissionsShowPromptInternal(String str, GeolocationPermissions.Callback callback) {
        PermissionInterceptor permissionInterceptor = this.mPermissionInterceptor;
        if (permissionInterceptor != null && permissionInterceptor.intercept(this.mWebView.getUrl(), AgentWebPermissions.LOCATION, "location")) {
            callback.invoke(str, false, false);
            return;
        }
        Activity activity = this.mActivityWeakReference.get();
        if (activity == null) {
            callback.invoke(str, false, false);
            return;
        }
        List<String> deniedPermissions = AgentWebUtils.getDeniedPermissions(activity, AgentWebPermissions.LOCATION);
        if (deniedPermissions.isEmpty()) {
            LogUtils.i(this.TAG, "onGeolocationPermissionsShowPromptInternal:true");
            callback.invoke(str, true, false);
            return;
        }
        Action actionCreatePermissionsAction = Action.createPermissionsAction((String[]) deniedPermissions.toArray(new String[0]));
        actionCreatePermissionsAction.setFromIntention(96);
        actionCreatePermissionsAction.setPermissionListener(this.mPermissionListener);
        this.mCallback = callback;
        this.mOrigin = str;
        AgentActionFragment.start(activity, actionCreatePermissionsAction);
    }

    @RequiresApi(api = 21)
    private boolean openFileChooserAboveL(WebView webView, ValueCallback<Uri[]> valueCallback, android.webkit.WebChromeClient.FileChooserParams fileChooserParams) {
        Activity activity;
        if (valueCallback == null || (activity = this.mActivityWeakReference.get()) == null || activity.isFinishing()) {
            return true;
        }
        return AgentWebUtils.showFileChooserCompat(activity, this.mWebView, valueCallback, fileChooserParams, this.mPermissionInterceptor, null, null, null);
    }

    @Override
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        super.onConsoleMessage(consoleMessage);
        return true;
    }

    @Override
    public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        quotaUpdater.updateQuota(j3 * 2);
    }

    @Override
    public void onGeolocationPermissionsHidePrompt() {
        super.onGeolocationPermissionsHidePrompt();
    }

    @Override
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        onGeolocationPermissionsShowPromptInternal(str, callback);
    }

    @Override
    public void onHideCustomView() {
        IVideo iVideo = this.mIVideo;
        if (iVideo != null) {
            iVideo.onHideCustomView();
        }
    }

    @Override
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (this.mAgentWebUIController.get() != null) {
            this.mAgentWebUIController.get().onJsAlert(webView, str, str2);
        }
        jsResult.confirm();
        return true;
    }

    @Override
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        if (this.mAgentWebUIController.get() == null) {
            return true;
        }
        this.mAgentWebUIController.get().onJsConfirm(webView, str, str2, jsResult);
        return true;
    }

    @Override
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        try {
            if (this.mAgentWebUIController.get() == null) {
                return true;
            }
            this.mAgentWebUIController.get().onJsPrompt(this.mWebView, str, str2, str3, jsPromptResult);
            return true;
        } catch (Exception e) {
            if (!LogUtils.isDebug()) {
                return true;
            }
            e.printStackTrace();
            return true;
        }
    }

    @Override
    @RequiresApi(api = 21)
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        if (permissionRequest == null) {
            return;
        }
        String[] resources = permissionRequest.getResources();
        if (resources == null || resources.length <= 0) {
            permissionRequest.deny();
            return;
        }
        HashSet hashSet = new HashSet(Arrays.asList(resources));
        ArrayList arrayList = new ArrayList(hashSet.size());
        if (hashSet.contains("android.webkit.resource.VIDEO_CAPTURE")) {
            arrayList.add("android.permission.CAMERA");
        }
        if (hashSet.contains("android.webkit.resource.AUDIO_CAPTURE")) {
            arrayList.add("android.permission.RECORD_AUDIO");
        }
        PermissionInterceptor permissionInterceptor = this.mPermissionInterceptor;
        if ((permissionInterceptor == null || !permissionInterceptor.intercept(this.mWebView.getUrl(), (String[]) arrayList.toArray(new String[0]), "onPermissionRequest")) && this.mAgentWebUIController.get() != null) {
            this.mAgentWebUIController.get().onPermissionRequest(permissionRequest);
        }
    }

    @Override
    @RequiresApi(api = 21)
    public void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
        super.onPermissionRequestCanceled(permissionRequest);
    }

    @Override
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        IndicatorController indicatorController = this.mIndicatorController;
        if (indicatorController != null) {
            indicatorController.progress(webView, i);
        }
    }

    @Override
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        super.onReceivedIcon(webView, bitmap);
    }

    @Override
    public void onReceivedTitle(WebView webView, String str) {
        if (this.mIsWrapper) {
            super.onReceivedTitle(webView, str);
        }
    }

    @Override
    public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customViewCallback) {
        IVideo iVideo = this.mIVideo;
        if (iVideo != null) {
            iVideo.onShowCustomView(view, customViewCallback);
        }
    }

    @Override
    @RequiresApi(api = 21)
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, android.webkit.WebChromeClient.FileChooserParams fileChooserParams) {
        LogUtils.i(this.TAG, "openFileChooser>=5.0");
        return openFileChooserAboveL(webView, valueCallback, fileChooserParams);
    }

    @Override
    public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
        LogUtils.i(this.TAG, "openFileChooser>=4.1");
        createAndOpenCommonFileChooser(valueCallback, str);
    }

    @Override
    public void openFileChooser(ValueCallback<Uri> valueCallback) {
        Log.i(this.TAG, "openFileChooser<3.0");
        createAndOpenCommonFileChooser(valueCallback, SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
    }

    @Override
    public void openFileChooser(ValueCallback valueCallback, String str) {
        Log.i(this.TAG, "openFileChooser>3.0");
        createAndOpenCommonFileChooser(valueCallback, str);
    }
}
