package org.acra.interaction;

import android.content.Context;
import android.content.Intent;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.c;
import defpackage.og9;
import defpackage.ue1;
import defpackage.y45;
import java.io.File;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;
import org.acra.config.DialogConfiguration;
import org.acra.plugins.HasConfigPlugin;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0017\u0018\u0000 \u00112\u00020\u00012\u00020\u0002:\u0001\u0012B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0012¢\u0006\u0004\b\f\u0010\rJ'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lorg/acra/interaction/DialogInteraction;", "Lorg/acra/plugins/HasConfigPlugin;", "Lorg/acra/interaction/ReportInteraction;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Ljava/io/File;", "reportFile", "Landroid/content/Intent;", "createCrashReportDialogIntent", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Landroid/content/Intent;", "", "performInteraction", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Z", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "acra-dialog_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class DialogInteraction extends HasConfigPlugin implements ReportInteraction {
    public static final String EXTRA_REPORT_CONFIG = "REPORT_CONFIG";
    public static final String EXTRA_REPORT_FILE = "REPORT_FILE";

    public DialogInteraction() {
        super(DialogConfiguration.class);
    }

    private Intent createCrashReportDialogIntent(Context context, CoreConfiguration config, File reportFile) {
        if (c.b) {
            c.d.d(c.c, "Creating DialogIntent for " + reportFile);
        }
        Intent intent = new Intent(context, ((DialogConfiguration) ue1.b(config, DialogConfiguration.class)).getReportDialogClass());
        intent.putExtra(EXTRA_REPORT_FILE, reportFile);
        intent.putExtra(EXTRA_REPORT_CONFIG, config);
        return intent;
    }

    @Override
    public boolean performInteraction(Context context, CoreConfiguration config, File reportFile) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportFile, "reportFile");
        if (new og9(context, config).a().getBoolean("acra.alwaysaccept", false)) {
            return true;
        }
        if (c.b) {
            c.d.d(c.c, "Creating CrashReportDialog for " + reportFile);
        }
        Intent intentCreateCrashReportDialogIntent = createCrashReportDialogIntent(context, config, reportFile);
        intentCreateCrashReportDialogIntent.setFlags(268435456);
        context.startActivity(intentCreateCrashReportDialogIntent);
        return false;
    }
}
