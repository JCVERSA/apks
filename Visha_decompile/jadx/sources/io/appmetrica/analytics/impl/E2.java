package io.appmetrica.analytics.impl;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import io.appmetrica.analytics.coreapi.internal.annotations.DoNotInline;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.appmetrica.analytics.impl.E2;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@DoNotInline
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\n"}, d2 = {"Lio/appmetrica/analytics/impl/E2;", "", "Landroid/content/Context;", "context", "Lio/appmetrica/analytics/impl/g2;", "converter", "Lio/appmetrica/analytics/impl/H2;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, MethodDecl.initName, "()V", "analytics_binaryProdRelease"}, k = 1, mv = {1, 6, 0})
@TargetApi(28)
public final class E2 {
    public static final E2 a = new E2();

    private E2() {
    }

    public static final H2 a(Context context, final C2554g2 converter) {
        return new H2((G2) SystemServiceUtils.accessSystemServiceByNameSafely(context, "usagestats", "getting app standby bucket", "usageStatsManager", new FunctionWithThrowable() {
            @Override
            public final Object apply(Object obj) {
                return E2.a(converter, (UsageStatsManager) obj);
            }
        }), (Boolean) SystemServiceUtils.accessSystemServiceByNameSafely(context, "activity", "getting is background restricted", "activityManager", new FunctionWithThrowable() {
            @Override
            public final Object apply(Object obj) {
                return E2.a((ActivityManager) obj);
            }
        }));
    }

    public static final G2 a(C2554g2 c2554g2, UsageStatsManager usageStatsManager) {
        int appStandbyBucket = usageStatsManager.getAppStandbyBucket();
        c2554g2.getClass();
        if (AndroidUtils.isApiAchieved(28)) {
            if (AndroidUtils.isApiAchieved(30) && appStandbyBucket == 45) {
                return G2.RESTRICTED;
            }
            if (appStandbyBucket == 10) {
                return G2.ACTIVE;
            }
            if (appStandbyBucket == 20) {
                return G2.WORKING_SET;
            }
            if (appStandbyBucket == 30) {
                return G2.FREQUENT;
            }
            if (appStandbyBucket == 40) {
                return G2.RARE;
            }
        }
        return null;
    }

    public static final Boolean a(ActivityManager activityManager) {
        return Boolean.valueOf(activityManager.isBackgroundRestricted());
    }
}
