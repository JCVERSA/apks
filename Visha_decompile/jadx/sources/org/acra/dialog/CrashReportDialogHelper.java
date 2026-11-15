package org.acra.dialog;

import android.content.Context;
import android.content.Intent;
import defpackage.c;
import defpackage.c74;
import defpackage.cl1;
import defpackage.i29;
import defpackage.y45;
import defpackage.yi5;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import kotlin.b;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.dialog.CrashReportDialogHelper;
import org.acra.file.BulkReportDeleter;
import org.acra.interaction.DialogInteraction;
import org.json.JSONException;

public final class CrashReportDialogHelper {
    public final Context a;
    public final File b;
    public final CoreConfiguration c;
    public final yi5 d;

    public CrashReportDialogHelper(Context context, Intent intent) {
        y45.j(context, "context");
        y45.j(intent, "intent");
        this.a = context;
        Serializable serializableExtra = intent.getSerializableExtra(DialogInteraction.EXTRA_REPORT_CONFIG);
        Serializable serializableExtra2 = intent.getSerializableExtra(DialogInteraction.EXTRA_REPORT_FILE);
        if ((serializableExtra instanceof CoreConfiguration) && (serializableExtra2 instanceof File)) {
            this.c = (CoreConfiguration) serializableExtra;
            this.b = (File) serializableExtra2;
            this.d = b.a(new c74() {
                {
                    super(0);
                }

                @Override
                public final CrashReportData invoke() throws IOException {
                    try {
                        return new cl1().a(this.this$0.b);
                    } catch (JSONException e) {
                        throw new IOException(e);
                    }
                }
            });
            return;
        }
        c.d.e(c.c, "Illegal or incomplete call of " + CrashReportDialogHelper.class.getSimpleName());
        throw new IllegalArgumentException();
    }

    public static final void e(CrashReportDialogHelper crashReportDialogHelper) {
        y45.j(crashReportDialogHelper, "this$0");
        new BulkReportDeleter(crashReportDialogHelper.a).a(false, 0);
    }

    public static final void i(CrashReportDialogHelper crashReportDialogHelper, String str, String str2) {
        y45.j(crashReportDialogHelper, "this$0");
        try {
            if (c.b) {
                c.d.d(c.c, "Add user comment to " + crashReportDialogHelper.b);
            }
            CrashReportData crashReportDataG = crashReportDialogHelper.g();
            ReportField reportField = ReportField.USER_COMMENT;
            if (str == null) {
                str = "";
            }
            crashReportDataG.h(reportField, str);
            ReportField reportField2 = ReportField.USER_EMAIL;
            if (str2 == null) {
                str2 = "";
            }
            crashReportDataG.h(reportField2, str2);
            new cl1().b(crashReportDataG, crashReportDialogHelper.b);
        } catch (IOException e) {
            c.d.w(c.c, "User comment not added: ", e);
        } catch (JSONException e2) {
            c.d.w(c.c, "User comment not added: ", e2);
        }
        new i29(crashReportDialogHelper.a, crashReportDialogHelper.c).a(crashReportDialogHelper.b, false);
    }

    public final void d() {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                CrashReportDialogHelper.e(this.b);
            }
        }).start();
    }

    public final CoreConfiguration f() {
        return this.c;
    }

    public final CrashReportData g() {
        return (CrashReportData) this.d.getValue();
    }

    public final void h(final String str, final String str2) {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                CrashReportDialogHelper.i(this.b, str, str2);
            }
        }).start();
    }
}
