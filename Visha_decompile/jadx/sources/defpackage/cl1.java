package defpackage;

import java.io.File;
import org.acra.data.CrashReportData;

public final class cl1 {
    public final CrashReportData a(File file) {
        y45.j(file, "file");
        return new CrashReportData(dv3.d(file, null, 1, null));
    }

    public final void b(CrashReportData crashReportData, File file) {
        y45.j(crashReportData, "crashData");
        y45.j(file, "file");
        dv3.g(file, crashReportData.k(), null, 2, null);
    }
}
