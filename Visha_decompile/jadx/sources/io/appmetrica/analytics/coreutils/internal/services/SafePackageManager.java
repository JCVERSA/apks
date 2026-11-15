package io.appmetrica.analytics.coreutils.internal.services;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import defpackage.c74;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.impl.c;
import io.appmetrica.analytics.coreutils.impl.d;
import io.appmetrica.analytics.coreutils.impl.e;
import io.appmetrica.analytics.coreutils.impl.f;
import io.appmetrica.analytics.coreutils.impl.g;
import io.appmetrica.analytics.coreutils.impl.h;
import io.appmetrica.analytics.coreutils.impl.i;
import io.appmetrica.analytics.coreutils.impl.j;
import io.appmetrica.analytics.coreutils.impl.k;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ'\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\t\u0010\rJ'\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0018\u0010\u0017J\u001f\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ'\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b!\u0010\"J'\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b%\u0010&J/\u0010)\u001a\u0004\u0018\u00010(2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b)\u0010*J\u001d\u0010-\u001a\u00020,2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0006¢\u0006\u0004\b-\u0010.J\u001f\u0010/\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b/\u00100¨\u00061"}, d2 = {"Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;", "", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "", "packageName", "Landroid/content/pm/PackageInfo;", "getPackageInfo", "(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;", "", "flags", "(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;", "Landroid/content/ComponentName;", "component", "Landroid/content/pm/ServiceInfo;", "getServiceInfo", "(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;", "Landroid/content/Intent;", "intent", "Landroid/content/pm/ResolveInfo;", "resolveService", "(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;", "resolveActivity", "authority", "Landroid/content/pm/ProviderInfo;", "resolveContentProvider", "(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ProviderInfo;", "Landroid/content/pm/ApplicationInfo;", "getApplicationInfo", "(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;", "Landroid/os/Bundle;", "getApplicationMetaData", "(Landroid/content/Context;)Landroid/os/Bundle;", "componentName", "Landroid/content/pm/ActivityInfo;", "getActivityInfo", "(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;", "newState", "Lzfb;", "setComponentEnabledSetting", "(Landroid/content/Context;Landroid/content/ComponentName;II)Lzfb;", "name", "", "hasSystemFeature", "(Landroid/content/Context;Ljava/lang/String;)Z", "getInstallerPackageName", "(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;", "core-utils_release"}, k = 1, mv = {1, 6, 0})
public final class SafePackageManager {
    private static Object a(Boolean bool, c74 c74Var) {
        try {
            Object objInvoke = c74Var.invoke();
            return objInvoke == null ? bool : objInvoke;
        } catch (Throwable unused) {
            return bool;
        }
    }

    public final ActivityInfo getActivityInfo(Context context, ComponentName componentName, int flags) {
        return (ActivityInfo) a(null, new io.appmetrica.analytics.coreutils.impl.a(context, componentName, flags));
    }

    public final ApplicationInfo getApplicationInfo(Context context, String packageName, int flags) {
        return (ApplicationInfo) a(null, new io.appmetrica.analytics.coreutils.impl.b(context, packageName, flags));
    }

    public final Bundle getApplicationMetaData(Context context) {
        return (Bundle) a(null, new c(this, context));
    }

    public final String getInstallerPackageName(Context context, String packageName) {
        return (String) a(null, new d(context, packageName));
    }

    public final PackageInfo getPackageInfo(Context context, String packageName) {
        return getPackageInfo(context, packageName, 0);
    }

    public final ServiceInfo getServiceInfo(Context context, ComponentName component, int flags) {
        return (ServiceInfo) a(null, new f(context, component, flags));
    }

    public final boolean hasSystemFeature(Context context, String name) {
        return ((Boolean) a(Boolean.FALSE, new g(context, name))).booleanValue();
    }

    public final ResolveInfo resolveActivity(Context context, Intent intent, int flags) {
        return (ResolveInfo) a(null, new h(context, intent, flags));
    }

    public final ProviderInfo resolveContentProvider(Context context, String authority) {
        return (ProviderInfo) a(null, new i(context, authority));
    }

    public final ResolveInfo resolveService(Context context, Intent intent, int flags) {
        return (ResolveInfo) a(null, new j(context, intent, flags));
    }

    public final zfb setComponentEnabledSetting(Context context, ComponentName componentName, int newState, int flags) {
        return (zfb) a(null, new k(context, componentName, newState, flags));
    }

    public final PackageInfo getPackageInfo(Context context, String packageName, int flags) {
        return (PackageInfo) a(null, new e(context, packageName, flags));
    }
}
