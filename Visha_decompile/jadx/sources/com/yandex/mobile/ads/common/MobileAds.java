package com.yandex.mobile.ads.common;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.pw1;
import com.yandex.mobile.ads.impl.q11;
import com.yandex.mobile.ads.impl.zl2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\tH\u0007¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000f\u0010\u000bJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0011\u0010\u000bJ\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0013\u0010\u000bJ\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0015\u0010\u000bJ\u001f\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001e\u001a\u00020\u001a8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u0003\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/yandex/mobile/ads/common/MobileAds;", "", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lzfb;", "showDebugPanel", "(Landroid/content/Context;)V", "", "enableLogging", "(Z)V", "locationConsent", "setLocationConsent", "enableIndicator", "enableDebugErrorIndicator", "consent", "setUserConsent", "ageRestrictedUser", "setAgeRestrictedUser", "reportingEnabled", "setAppAdAnalyticsReporting", "Lcom/yandex/mobile/ads/common/InitializationListener;", "initializationListener", "initialize", "(Landroid/content/Context;Lcom/yandex/mobile/ads/common/InitializationListener;)V", "", "getLibraryVersion", "()Ljava/lang/String;", "getLibraryVersion$annotations", "libraryVersion", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public final class MobileAds {
    public static final MobileAds INSTANCE = new MobileAds();

    private MobileAds() {
    }

    public static final void enableDebugErrorIndicator(boolean enableIndicator) {
        int i = q11.a;
        int i2 = pw1.l;
        pw1.a.a().a(enableIndicator);
    }

    public static final void enableLogging(boolean enableLogging) {
        q11.a(enableLogging);
    }

    public static final String getLibraryVersion() {
        int i = q11.a;
        return "7.12.2";
    }

    public static void getLibraryVersion$annotations() {
    }

    public static final void initialize(Context context, InitializationListener initializationListener) {
        y45.j(context, "context");
        y45.j(initializationListener, "initializationListener");
        q11.a(context, new en2(context), new zl2(initializationListener));
    }

    public static final void setAgeRestrictedUser(boolean ageRestrictedUser) {
        int i = q11.a;
        int i2 = pw1.l;
        pw1.a.a().c(ageRestrictedUser);
    }

    public static final void setAppAdAnalyticsReporting(boolean reportingEnabled) {
        int i = q11.a;
        int i2 = pw1.l;
        pw1.a.a().d(reportingEnabled);
    }

    public static final void setLocationConsent(boolean locationConsent) {
        int i = q11.a;
        int i2 = pw1.l;
        pw1.a.a().e(locationConsent);
    }

    public static final void setUserConsent(boolean consent) {
        int i = q11.a;
        int i2 = pw1.l;
        pw1.a.a().f(consent);
    }

    public static final void showDebugPanel(Context context) {
        y45.j(context, "context");
        y45.j(context, "context");
        Intent intent = new Intent(context, (Class<?>) IntegrationInspectorActivity.class);
        intent.addFlags(805306368);
        context.startActivity(intent);
    }
}
