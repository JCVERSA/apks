package org.acra.collector;

import android.content.Context;
import defpackage.ac8;
import defpackage.ts8;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001:\u0001\u0013J/\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u0012\u001a\u00020\r8VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lorg/acra/collector/Collector;", "Lac8;", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", "crashReportData", "Lzfb;", "collect", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "Lorg/acra/collector/Collector$Order;", "getOrder", "()Lorg/acra/collector/Collector$Order;", "getOrder$annotations", "()V", "order", "Order", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface Collector extends ac8 {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lorg/acra/collector/Collector$Order;", "", "(Ljava/lang/String;I)V", "FIRST", "EARLY", "NORMAL", "LATE", "LAST", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public enum Order {
        FIRST,
        EARLY,
        NORMAL,
        LATE,
        LAST
    }

    void collect(Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData crashReportData) throws CollectorException;

    @Override
    default boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    default Order getOrder() {
        return Order.NORMAL;
    }
}
