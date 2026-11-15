package defpackage;

import android.content.Context;
import org.acra.data.CrashReportData;

public class g37 implements us8 {
    @Override
    public void c(Context context, CrashReportData crashReportData) {
        y45.j(context, "context");
        y45.j(crashReportData, "errorContent");
        c.d.w(c.c, context.getPackageName() + " reports will NOT be sent - no valid ReportSender was found!");
    }
}
