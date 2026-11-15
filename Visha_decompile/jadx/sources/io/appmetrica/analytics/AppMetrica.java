package io.appmetrica.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.webkit.WebView;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.impl.AbstractC2727n1;
import io.appmetrica.analytics.impl.C0;
import io.appmetrica.analytics.impl.C2702m1;
import io.appmetrica.analytics.plugins.AppMetricaPlugins;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public final class AppMetrica {
    public static void activate(@NonNull Context context, @NonNull AppMetricaConfig appMetricaConfig) {
        AbstractC2727n1.a.a(context, appMetricaConfig);
    }

    public static void activateReporter(@NonNull Context context, @NonNull ReporterConfig reporterConfig) {
        AbstractC2727n1.a.a(context, reporterConfig);
    }

    public static void clearAppEnvironment() {
        AbstractC2727n1.a.a();
    }

    public static void enableActivityAutoTracking(@NonNull Application application) {
        AbstractC2727n1.a.a(application);
    }

    @Nullable
    public static String getDeviceId(@NonNull Context context) {
        return AbstractC2727n1.a.b();
    }

    public static int getLibraryApiLevel() {
        return 115;
    }

    @NonNull
    public static String getLibraryVersion() {
        return "7.7.2";
    }

    @NonNull
    public static AppMetricaPlugins getPluginExtension() {
        return C0.a;
    }

    @NonNull
    public static IReporter getReporter(@NonNull Context context, @NonNull String str) {
        return AbstractC2727n1.a.a(context, str);
    }

    @Nullable
    public static String getUuid(@NonNull Context context) {
        return AbstractC2727n1.a.a(context).id;
    }

    @MainThread
    public static void initWebViewReporting(@NonNull WebView webView) {
        AbstractC2727n1.a.a(webView);
    }

    public static void pauseSession(@Nullable Activity activity) {
        AbstractC2727n1.a.a(activity);
    }

    public static void putAppEnvironmentValue(@NonNull String str, @Nullable String str2) {
        AbstractC2727n1.a.a(str, str2);
    }

    public static void putErrorEnvironmentValue(@NonNull String str, @Nullable String str2) {
        AbstractC2727n1.a.b(str, str2);
    }

    public static void registerAnrListener(@NonNull AnrListener anrListener) {
        AbstractC2727n1.a.a(anrListener);
    }

    public static void reportAdRevenue(@NonNull AdRevenue adRevenue) {
        AbstractC2727n1.a.a(adRevenue);
    }

    public static void reportAnr(@NonNull Map<Thread, StackTraceElement[]> map) {
        AbstractC2727n1.a.a(map);
    }

    public static void reportAppOpen(@NonNull Activity activity) {
        AbstractC2727n1.a.b(activity);
    }

    public static void reportECommerce(@NonNull ECommerceEvent eCommerceEvent) {
        AbstractC2727n1.a.a(eCommerceEvent);
    }

    public static void reportError(@NonNull String str, @Nullable String str2) {
        AbstractC2727n1.a.a(str, str2, (Throwable) null);
    }

    public static void reportEvent(@NonNull String str) {
        AbstractC2727n1.a.b(str);
    }

    public static void reportExternalAdRevenue(@NonNull Object... objArr) {
        AbstractC2727n1.a.b(objArr);
    }

    public static void reportExternalAttribution(@NonNull ExternalAttribution externalAttribution) {
        AbstractC2727n1.a.a(externalAttribution);
    }

    public static void reportReferralUrl(@NonNull String str) {
        AbstractC2727n1.a.d(str);
    }

    public static void reportRevenue(@NonNull Revenue revenue) {
        AbstractC2727n1.a.a(revenue);
    }

    public static void reportUnhandledException(@NonNull Throwable th) {
        AbstractC2727n1.a.a(th);
    }

    public static void reportUserProfile(@NonNull UserProfile userProfile) {
        AbstractC2727n1.a.a(userProfile);
    }

    public static void requestDeferredDeeplink(@NonNull DeferredDeeplinkListener deferredDeeplinkListener) {
        AbstractC2727n1.a.a(deferredDeeplinkListener);
    }

    public static void requestDeferredDeeplinkParameters(@NonNull DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        AbstractC2727n1.a.a(deferredDeeplinkParametersListener);
    }

    public static void requestStartupParams(@NonNull Context context, @NonNull StartupParamsCallback startupParamsCallback, @NonNull List<String> list) {
        C2702m1 c2702m1 = AbstractC2727n1.a;
        if (list.isEmpty()) {
            list = Arrays.asList(StartupParamsCallback.APPMETRICA_UUID, StartupParamsCallback.APPMETRICA_DEVICE_ID, StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH);
        }
        c2702m1.a(context, startupParamsCallback, list);
    }

    public static void resumeSession(@Nullable Activity activity) {
        AbstractC2727n1.a.c(activity);
    }

    public static void sendEventsBuffer() {
        AbstractC2727n1.a.f();
    }

    public static void setAdvIdentifiersTracking(boolean z) {
        AbstractC2727n1.a.a(z);
    }

    public static void setDataSendingEnabled(boolean z) {
        AbstractC2727n1.a.b(z);
    }

    public static void setLocation(@Nullable Location location) {
        AbstractC2727n1.a.a(location);
    }

    public static void setLocationTracking(boolean z) {
        AbstractC2727n1.a.c(z);
    }

    public static void setUserProfileID(@Nullable String str) {
        AbstractC2727n1.a.e(str);
    }

    public static void reportAppOpen(@NonNull Intent intent) {
        AbstractC2727n1.a.a(intent);
    }

    public static void reportError(@NonNull String str, @Nullable String str2, @Nullable Throwable th) {
        AbstractC2727n1.a.a(str, str2, th);
    }

    public static void reportEvent(@NonNull String str, @Nullable String str2) {
        AbstractC2727n1.a.c(str, str2);
    }

    public static void reportAppOpen(@NonNull String str) {
        AbstractC2727n1.a.a(str);
    }

    public static void reportError(@NonNull String str, @Nullable Throwable th) {
        AbstractC2727n1.a.a(str, th);
    }

    public static void reportEvent(@NonNull String str, @Nullable Map<String, Object> map) {
        AbstractC2727n1.a.a(str, map);
    }
}
