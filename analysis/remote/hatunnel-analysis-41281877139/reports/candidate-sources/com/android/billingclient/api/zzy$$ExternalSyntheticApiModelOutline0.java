package com.android.billingclient.api;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.app.ApplicationExitInfo;
import android.app.LocaleManager;
import android.app.NotificationChannel;
import android.app.job.JobInfo;
import android.content.AttributionSource;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.graphics.Rect;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Handler;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Process;
import android.os.StrictMode;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.textclassifier.TextClassifier;
import android.webkit.SafeBrowsingResponse;
import android.webkit.ServiceWorkerWebSettings;
import android.webkit.TracingConfig;
import android.webkit.TracingController;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import android.widget.Toolbar;
import dalvik.system.DelegateLastClassLoader;
import java.io.OutputStream;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

public final class zzy$$ExternalSyntheticApiModelOutline0 {
    public static int m(ApplicationExitInfo applicationExitInfo) {
        return applicationExitInfo.getReason();
    }

    public static int m(AudioManager audioManager, int i) {
        return audioManager.getStreamMinVolume(i);
    }

    public static int m(Spatializer spatializer) {
        return spatializer.getImmersiveAudioLevel();
    }

    public static int m(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    public static int m(WindowManager.LayoutParams layoutParams) {
        return layoutParams.layoutInDisplayCutoutMode;
    }

    public static int m(WebSettings webSettings) {
        return webSettings.getForceDark();
    }

    public static long m491m(ApplicationExitInfo applicationExitInfo) {
        return applicationExitInfo.getTimestamp();
    }

    public static ApplicationExitInfo m(Object obj) {
        return (ApplicationExitInfo) obj;
    }

    public static LocaleManager m492m(Object obj) {
        return (LocaleManager) obj;
    }

    public static JobInfo.Builder m(JobInfo.Builder builder, long j) {
        return builder.setTriggerContentUpdateDelay(j);
    }

    public static JobInfo.Builder m(JobInfo.Builder builder, JobInfo.TriggerContentUri triggerContentUri) {
        return builder.addTriggerContentUri(triggerContentUri);
    }

    public static JobInfo.Builder m(JobInfo.Builder builder, NetworkRequest networkRequest) {
        return builder.setRequiredNetwork(networkRequest);
    }

    public static JobInfo.Builder m(JobInfo.Builder builder, boolean z) {
        return builder.setImportantWhileForeground(z);
    }

    public static JobInfo.TriggerContentUri m(Uri uri, int i) {
        return new JobInfo.TriggerContentUri(uri, i);
    }

    public static Intent m(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        return context.registerReceiver(broadcastReceiver, intentFilter, i);
    }

    public static Intent m(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
        return context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i);
    }

    public static PackageInfo m() {
        return WebView.getCurrentWebViewPackage();
    }

    public static PackageManager.ComponentInfoFlags m(long j) {
        return PackageManager.ComponentInfoFlags.of(j);
    }

    public static ServiceInfo m(PackageManager packageManager, ComponentName componentName, PackageManager.ComponentInfoFlags componentInfoFlags) {
        return packageManager.getServiceInfo(componentName, componentInfoFlags);
    }

    public static Rect m(WindowMetrics windowMetrics) {
        return windowMetrics.getBounds();
    }

    public static Spatializer m(AudioManager audioManager) {
        return audioManager.getSpatializer();
    }

    public static Spatializer m493m(Object obj) {
        return (Spatializer) obj;
    }

    public static Uri m494m() {
        return WebView.getSafeBrowsingPrivacyPolicyUrl();
    }

    public static LocaleList m(LocaleManager localeManager) {
        return localeManager.getSystemLocales();
    }

    public static Looper m(WebView webView) {
        return webView.getWebViewLooper();
    }

    public static StrictMode.VmPolicy.Builder m(StrictMode.VmPolicy.Builder builder) {
        return builder.permitUnsafeIntentLaunch();
    }

    public static Display.HdrCapabilities m(Display display) {
        return display.getHdrCapabilities();
    }

    public static DisplayCutout m495m(Object obj) {
        return (DisplayCutout) obj;
    }

    public static WindowMetrics m(WindowManager windowManager) {
        return windowManager.getMaximumWindowMetrics();
    }

    public static TextClassifier m496m() {
        return TextClassifier.NO_OP;
    }

    public static SafeBrowsingResponse m497m(Object obj) {
        return (SafeBrowsingResponse) obj;
    }

    public static ServiceWorkerWebSettings m498m(Object obj) {
        return (ServiceWorkerWebSettings) obj;
    }

    public static TracingConfig.Builder m499m() {
        return new TracingConfig.Builder();
    }

    public static TracingConfig.Builder m(TracingConfig.Builder builder, int i) {
        return builder.setTracingMode(i);
    }

    public static TracingConfig.Builder m(TracingConfig.Builder builder, Collection collection) {
        return builder.addCategories((Collection<String>) collection);
    }

    public static TracingConfig.Builder m(TracingConfig.Builder builder, int[] iArr) {
        return builder.addCategories(iArr);
    }

    public static TracingConfig m(TracingConfig.Builder builder) {
        return builder.build();
    }

    public static TracingController m500m() {
        return TracingController.getInstance();
    }

    public static WebViewRenderProcess m501m(WebView webView) {
        return webView.getWebViewRenderProcess();
    }

    public static WebViewRenderProcess m502m(Object obj) {
        return (WebViewRenderProcess) obj;
    }

    public static WebViewRenderProcessClient m503m(WebView webView) {
        return webView.getWebViewRenderProcessClient();
    }

    public static DelegateLastClassLoader m(String str, ClassLoader classLoader) {
        return new DelegateLastClassLoader(str, classLoader);
    }

    public static CharSequence m(NotificationChannel notificationChannel) {
        return notificationChannel.getName();
    }

    public static Class m504m() {
        return Consumer.class;
    }

    public static ClassLoader m505m() {
        return WebView.getWebViewClassLoader();
    }

    public static String m506m() {
        return Application.getProcessName();
    }

    public static String m(AttributionSource attributionSource) {
        return attributionSource.getAttributionTag();
    }

    public static String m(Context context) {
        return context.getAttributionTag();
    }

    public static List m(ActivityManager activityManager, String str, int i, int i2) {
        return activityManager.getHistoricalProcessExitReasons(str, i, i2);
    }

    public static List m507m(Spatializer spatializer) {
        return spatializer.getSpatializedChannelMasks();
    }

    public static List m508m(DisplayCutout displayCutout) {
        return displayCutout.getBoundingRects();
    }

    public static void m509m() {
    }

    public static void m(Activity activity, boolean z) {
        activity.setShowWhenLocked(z);
    }

    public static void m(NotificationChannel notificationChannel, CharSequence charSequence) {
        notificationChannel.setName(charSequence);
    }

    public static void m(NotificationChannel notificationChannel, boolean z) {
        notificationChannel.setShowBadge(z);
    }

    public static void m(Context context, ValueCallback valueCallback) {
        WebView.startSafeBrowsing(context, valueCallback);
    }

    public static void m(Spatializer spatializer, Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener) {
        spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
    }

    public static void m(Spatializer spatializer, Executor executor, Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener) {
        spatializer.addOnSpatializerStateChangedListener(executor, spatializer$OnSpatializerStateChangedListener);
    }

    public static void m(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback) {
        connectivityManager.registerDefaultNetworkCallback(networkCallback);
    }

    public static void m(Window window, int i) {
        window.setBackgroundBlurRadius(i);
    }

    public static void m(WindowManager.LayoutParams layoutParams, int i) {
        layoutParams.layoutInDisplayCutoutMode = i;
    }

    public static void m(SafeBrowsingResponse safeBrowsingResponse, boolean z) {
        safeBrowsingResponse.backToSafety(z);
    }

    public static void m(TracingController tracingController, TracingConfig tracingConfig) {
        tracingController.start(tracingConfig);
    }

    public static void m(WebSettings webSettings, int i) {
        webSettings.setForceDark(i);
    }

    public static void m(WebView webView, TextClassifier textClassifier) {
        webView.setTextClassifier(textClassifier);
    }

    public static void m(WebView webView, WebViewRenderProcessClient webViewRenderProcessClient) {
        webView.setWebViewRenderProcessClient(webViewRenderProcessClient);
    }

    public static void m(WebView webView, Executor executor, WebViewRenderProcessClient webViewRenderProcessClient) {
        webView.setWebViewRenderProcessClient(executor, webViewRenderProcessClient);
    }

    public static void m(Toolbar toolbar, int i) {
        toolbar.setTitleMarginStart(i);
    }

    public static void m(String str) {
        WebView.setDataDirectorySuffix(str);
    }

    public static void m(List list, ValueCallback valueCallback) {
        WebView.setSafeBrowsingWhitelist(list, valueCallback);
    }

    public static boolean m510m() {
        return Process.isIsolated();
    }

    public static boolean m(Activity activity) {
        return activity.isInMultiWindowMode();
    }

    public static boolean m511m(Context context) {
        return context.isDeviceProtectedStorage();
    }

    public static boolean m(Context context, Intent intent, int i, Executor executor, ServiceConnection serviceConnection) {
        return context.bindService(intent, i, executor, serviceConnection);
    }

    public static boolean m(PackageManager packageManager) {
        return packageManager.isInstantApp();
    }

    public static boolean m(PackageManager packageManager, String str) {
        return packageManager.isInstantApp(str);
    }

    public static boolean m(SigningInfo signingInfo) {
        return signingInfo.hasMultipleSigners();
    }

    public static boolean m512m(Spatializer spatializer) {
        return spatializer.isAvailable();
    }

    public static boolean m(Spatializer spatializer, AudioAttributes audioAttributes, AudioFormat audioFormat) {
        return spatializer.canBeSpatialized(audioAttributes, audioFormat);
    }

    public static boolean m(TelephonyManager telephonyManager) {
        return telephonyManager.isDataEnabled();
    }

    public static boolean m513m(Display display) {
        return display.isHdr();
    }

    public static boolean m(TracingController tracingController) {
        return tracingController.isTracing();
    }

    public static boolean m(TracingController tracingController, OutputStream outputStream, Executor executor) {
        return tracingController.stop(outputStream, executor);
    }

    public static boolean m(WebViewRenderProcess webViewRenderProcess) {
        return webViewRenderProcess.terminate();
    }

    public static boolean m514m(Object obj) {
        return obj instanceof DisplayCutout;
    }

    public static Signature[] m515m(SigningInfo signingInfo) {
        return signingInfo.getSigningCertificateHistory();
    }

    public static int m$1(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    public static JobInfo.Builder m$1(JobInfo.Builder builder, long j) {
        return builder.setTriggerContentMaxDelay(j);
    }

    public static JobInfo.Builder m$1(JobInfo.Builder builder, boolean z) {
        return builder.setRequiresBatteryNotLow(z);
    }

    public static WindowMetrics m$1(WindowManager windowManager) {
        return windowManager.getCurrentWindowMetrics();
    }

    public static Class m$1() {
        return LocaleManager.class;
    }

    public static void m516m$1() {
    }

    public static void m$1(SafeBrowsingResponse safeBrowsingResponse, boolean z) {
        safeBrowsingResponse.showInterstitial(z);
    }

    public static boolean m$1(Spatializer spatializer) {
        return spatializer.isEnabled();
    }

    public static int m$2(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    public static JobInfo.Builder m$2(JobInfo.Builder builder, boolean z) {
        return builder.setRequiresStorageNotLow(z);
    }

    public static void m$2() {
    }

    public static void m$2(SafeBrowsingResponse safeBrowsingResponse, boolean z) {
        safeBrowsingResponse.proceed(z);
    }

    public static int m$3(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    public static JobInfo.Builder m$3(JobInfo.Builder builder, boolean z) {
        return builder.setExpedited(z);
    }
}
