package defpackage;

import android.content.Context;
import android.os.Bundle;
import org.acra.data.CrashReportData;

public interface us8 {
    default void a(Context context, CrashReportData crashReportData, Bundle bundle) {
        y45.j(context, "context");
        y45.j(crashReportData, "errorContent");
        y45.j(bundle, "extras");
        c(context, crashReportData);
    }

    default boolean b() {
        return false;
    }

    void c(Context context, CrashReportData crashReportData);
}
