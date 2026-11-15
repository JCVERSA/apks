package defpackage;

import android.adservices.adselection.AdSelectionConfig;
import android.adservices.adselection.ReportImpressionRequest;

public abstract class f7 {
    public static ReportImpressionRequest a(long j, AdSelectionConfig adSelectionConfig) {
        return new ReportImpressionRequest(j, adSelectionConfig);
    }
}
