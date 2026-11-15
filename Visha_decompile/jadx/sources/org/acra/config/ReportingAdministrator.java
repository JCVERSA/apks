package org.acra.config;

import android.content.Context;
import defpackage.ac8;
import defpackage.qi5;
import defpackage.ts8;
import defpackage.y45;
import kotlin.Metadata;
import org.acra.data.CrashReportData;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0017¢\u0006\u0004\b\t\u0010\nJ'\u0010\r\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0017¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0017¢\u0006\u0004\b\u0014\u0010\u0015J1\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lorg/acra/config/ReportingAdministrator;", "Lac8;", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lts8;", "reportBuilder", "", "shouldStartCollecting", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;)Z", "Lorg/acra/data/CrashReportData;", "crashReportData", "shouldSendReport", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/data/CrashReportData;)Z", "Lzfb;", "notifyReportDropped", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V", "Lqi5;", "lastActivityManager", "shouldFinishActivity", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lqi5;)Z", "shouldKillApplication", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)Z", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface ReportingAdministrator extends ac8 {
    @Override
    default boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    default void notifyReportDropped(Context context, CoreConfiguration config) {
        y45.j(context, "context");
        y45.j(config, "config");
    }

    default boolean shouldFinishActivity(Context context, CoreConfiguration config, qi5 lastActivityManager) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(lastActivityManager, "lastActivityManager");
        return true;
    }

    default boolean shouldKillApplication(Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData crashReportData) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        return true;
    }

    default boolean shouldSendReport(Context context, CoreConfiguration config, CrashReportData crashReportData) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(crashReportData, "crashReportData");
        return true;
    }

    default boolean shouldStartCollecting(Context context, CoreConfiguration config, ts8 reportBuilder) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        return true;
    }
}
