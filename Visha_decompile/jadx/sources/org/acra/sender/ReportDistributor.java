package org.acra.sender;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import defpackage.c;
import defpackage.c74;
import defpackage.cl1;
import defpackage.e74;
import defpackage.i15;
import defpackage.i81;
import defpackage.ov4;
import defpackage.ue3;
import defpackage.us8;
import defpackage.uu8;
import defpackage.y45;
import defpackage.z32;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONException;

public final class ReportDistributor {
    public final Context a;
    public final CoreConfiguration b;
    public final List c;
    public final Bundle d;

    public ReportDistributor(Context context, CoreConfiguration coreConfiguration, List list, Bundle bundle) {
        y45.j(context, "context");
        y45.j(coreConfiguration, "config");
        y45.j(list, "reportSenders");
        y45.j(bundle, "extras");
        this.a = context;
        this.b = coreConfiguration;
        this.c = list;
        this.d = bundle;
    }

    public final boolean a(File file) {
        y45.j(file, "reportFile");
        c.d.i(c.c, "Sending report " + file);
        try {
            c(new cl1().a(file));
            ov4.a(file);
            return true;
        } catch (IOException e) {
            c.d.e(c.c, "Failed to send crash reports for " + file, e);
            ov4.a(file);
            return false;
        } catch (RuntimeException e2) {
            c.d.e(c.c, "Failed to send crash reports for " + file, e2);
            ov4.a(file);
            return false;
        } catch (ReportSenderException e3) {
            c.d.e(c.c, "Failed to send crash reports for " + file, e3);
            return false;
        } catch (JSONException e4) {
            c.d.e(c.c, "Failed to send crash reports for " + file, e4);
            ov4.a(file);
            return false;
        }
    }

    public final boolean b() {
        try {
            return (this.a.getPackageManager().getApplicationInfo(this.a.getPackageName(), 0).flags & 2) > 0;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public final void c(CrashReportData crashReportData) throws ReportSenderException {
        if (!b() || this.b.getSendReportsInDevMode()) {
            LinkedList linkedList = new LinkedList();
            for (us8 us8Var : this.c) {
                try {
                    if (c.b) {
                        c.d.d(c.c, "Sending report using " + us8Var.getClass().getName());
                    }
                    us8Var.a(this.a, crashReportData, this.d);
                    if (c.b) {
                        c.d.d(c.c, "Sent report using " + us8Var.getClass().getName());
                    }
                } catch (ReportSenderException e) {
                    linkedList.add(new uu8.a(us8Var, e));
                }
            }
            if (linkedList.isEmpty()) {
                if (c.b) {
                    c.d.d(c.c, "Report was sent by all senders");
                }
            } else {
                if (((uu8) i15.b(this.b.getRetryPolicyClass(), new c74() {
                    @Override
                    public final uu8 invoke() {
                        return new z32();
                    }
                })).a(this.c, linkedList)) {
                    throw new ReportSenderException("Policy marked this task as incomplete. ACRA will try to send this report again.", ((uu8.a) linkedList.get(0)).a());
                }
                c.d.w(c.c, "ReportSenders of classes [" + i81.y0(linkedList, null, null, null, 0, null, new e74() {
                    @Override
                    public final CharSequence invoke(uu8.a aVar) {
                        y45.j(aVar, "it");
                        String name = aVar.b().getClass().getName();
                        y45.i(name, "it.sender.javaClass.name");
                        return name;
                    }
                }, 31, null) + "] failed, but Policy marked this task as complete. ACRA will not send this report again.\nSuppressed:\n" + i81.y0(linkedList, "\n", null, null, 0, null, new e74() {
                    @Override
                    public final CharSequence invoke(uu8.a aVar) {
                        y45.j(aVar, "it");
                        return ue3.b(aVar.a());
                    }
                }, 30, null));
            }
        }
    }
}
