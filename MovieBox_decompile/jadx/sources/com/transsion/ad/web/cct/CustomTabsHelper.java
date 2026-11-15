package com.transsion.ad.web.cct;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.d;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class CustomTabsHelper {

    public static final Companion f41338a = new Companion(null);

    private static String f41339b;

    public static final class Companion {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion$Mode;", "", "<init>", "(Ljava/lang/String;I)V", "PRIORITY_CHROME", "DEFAULT_BROWSER", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public enum Mode {
            PRIORITY_CHROME,
            DEFAULT_BROWSER;

            private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());

            public static EnumEntries<Mode> getEntries() {
                return $ENTRIES;
            }
        }

        public class a {

            public static final int[] f41340a;

            static {
                int[] iArr = new int[Mode.values().length];
                try {
                    iArr[Mode.PRIORITY_CHROME.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Mode.DEFAULT_BROWSER.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f41340a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean c(Context context, Intent intent) {
            try {
                List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
                Intrinsics.g(listQueryIntentActivities, "queryIntentActivities(...)");
                if (listQueryIntentActivities.isEmpty()) {
                    return false;
                }
                for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                    IntentFilter intentFilter = resolveInfo.filter;
                    if (intentFilter != null && intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo.activityInfo != null) {
                        return true;
                    }
                }
            } catch (RuntimeException unused) {
            }
            return false;
        }

        public static void e(Companion companion, Activity activity, d dVar, Uri uri, gi.a aVar, Mode mode, int i10, Object obj) {
            if ((i10 & 16) != 0) {
                mode = Mode.PRIORITY_CHROME;
            }
            companion.d(activity, dVar, uri, aVar, mode);
        }

        public final String a(Context context) {
            Intrinsics.h(context, "context");
            if (CustomTabsHelper.f41339b != null) {
                return CustomTabsHelper.f41339b;
            }
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
            String str = resolveInfoResolveActivity != null ? resolveInfoResolveActivity.activityInfo.packageName : null;
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            Intrinsics.g(listQueryIntentActivities, "queryIntentActivities(...)");
            ArrayList arrayList = new ArrayList();
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                Intent intent2 = new Intent();
                intent2.setAction("android.support.customtabs.action.CustomTabsService");
                intent2.setPackage(resolveInfo.activityInfo.packageName);
                if (packageManager.resolveService(intent2, 0) != null) {
                    arrayList.add(resolveInfo.activityInfo.packageName);
                }
            }
            CustomTabsHelper.f41339b = arrayList.isEmpty() ? null : (TextUtils.isEmpty(str) || c(context, intent) || !arrayList.contains(str)) ? (String) arrayList.get(0) : str;
            return CustomTabsHelper.f41339b;
        }

        public final String b(Context context) {
            Intrinsics.h(context, "context");
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
            intent.setPackage("com.android.chrome");
            if (packageManager.resolveService(intent, 0) != null) {
                return "com.android.chrome";
            }
            for (String str : CollectionsKt.o("com.chrome.beta", "com.chrome.dev", "com.chrome.canary")) {
                intent.setPackage(str);
                if (packageManager.resolveService(intent, 0) != null) {
                    return str;
                }
            }
            return a(context);
        }

        public final void d(Activity activity, d customTabsIntent, Uri uri, gi.a aVar, Mode mode) {
            String strB;
            Intrinsics.h(activity, "activity");
            Intrinsics.h(customTabsIntent, "customTabsIntent");
            Intrinsics.h(uri, "uri");
            Intrinsics.h(mode, "mode");
            int i10 = a.f41340a[mode.ordinal()];
            if (i10 == 1) {
                strB = b(activity);
            } else {
                if (i10 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                strB = a(activity);
            }
            if (strB != null) {
                customTabsIntent.f1857a.setPackage(strB);
                customTabsIntent.a(activity, uri);
            } else if (aVar != null) {
                aVar.a(activity, uri);
            }
        }

        private Companion() {
        }
    }
}
