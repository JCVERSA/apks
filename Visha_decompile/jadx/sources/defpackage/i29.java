package defpackage;

import android.content.Context;
import java.io.File;
import java.util.List;
import org.acra.config.CoreConfiguration;
import org.acra.file.ReportLocator;
import org.acra.scheduler.SenderSchedulerFactory;

public final class i29 {
    public final ReportLocator a;
    public final gc9 b;

    public i29(Context context, CoreConfiguration coreConfiguration) {
        y45.j(context, "context");
        y45.j(coreConfiguration, "config");
        this.a = new ReportLocator(context);
        List listLoadEnabled = coreConfiguration.getPluginLoader().loadEnabled(coreConfiguration, SenderSchedulerFactory.class);
        if (listLoadEnabled.isEmpty()) {
            this.b = new g42(context, coreConfiguration);
            return;
        }
        gc9 gc9VarCreate = ((SenderSchedulerFactory) listLoadEnabled.get(0)).create(context, coreConfiguration);
        this.b = gc9VarCreate;
        if (listLoadEnabled.size() > 1) {
            c.d.w(c.c, "More than one SenderScheduler found. Will use only " + gc9VarCreate.getClass().getSimpleName());
        }
    }

    public final void a(File file, boolean z) {
        if (file != null) {
            if (c.b) {
                c.d.d(c.c, "Mark " + file.getName() + " as approved.");
            }
            File file2 = new File(this.a.a(), file.getName());
            if (!file.renameTo(file2)) {
                c.d.w(c.c, "Could not rename approved report from " + file + " to " + file2);
            }
        }
        if (c.b) {
            c.d.d(c.c, "Schedule report sending");
        }
        this.b.a(z);
    }
}
