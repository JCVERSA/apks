package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.acra.config.CoreConfiguration;
import org.acra.file.ReportLocator;
import org.acra.sender.ReportDistributor;
import org.acra.sender.ReportSenderFactory;

public final class jc9 {
    public final Context a;
    public final CoreConfiguration b;
    public final ReportLocator c;

    public jc9(Context context, CoreConfiguration coreConfiguration) {
        y45.j(context, "context");
        y45.j(coreConfiguration, "config");
        this.a = context;
        this.b = coreConfiguration;
        this.c = new ReportLocator(context);
    }

    public static final void d(jc9 jc9Var, String str) {
        y45.j(jc9Var, "this$0");
        xoa.a(jc9Var.a, str, 1);
    }

    public final List b(boolean z) {
        if (c.b) {
            c.d.d(c.c, "Using PluginLoader to find ReportSender factories");
        }
        List listLoadEnabled = this.b.getPluginLoader().loadEnabled(this.b, ReportSenderFactory.class);
        if (c.b) {
            c.d.d(c.c, "reportSenderFactories : " + listLoadEnabled);
        }
        List list = listLoadEnabled;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            us8 us8VarCreate = ((ReportSenderFactory) it.next()).create(this.a, this.b);
            if (c.b) {
                c.d.d(c.c, "Adding reportSender : " + us8VarCreate);
            }
            arrayList.add(us8VarCreate);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (z == ((us8) obj).b()) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public final void c(boolean z, Bundle bundle) {
        y45.j(bundle, "extras");
        if (c.b) {
            c.d.d(c.c, "About to start sending reports from SenderService");
        }
        try {
            List listE1 = i81.e1(b(z));
            if (listE1.isEmpty()) {
                if (c.b) {
                    c.d.d(c.c, "No ReportSenders configured - adding NullSender");
                }
                listE1.add(new g37());
            }
            File[] fileArrB = this.c.b();
            ReportDistributor reportDistributor = new ReportDistributor(this.a, this.b, listE1, bundle);
            bl1 bl1Var = new bl1();
            int i = 0;
            boolean z2 = false;
            for (File file : fileArrB) {
                String name = file.getName();
                y45.i(name, "report.name");
                boolean zA = bl1Var.a(name);
                boolean z3 = !zA;
                if (!bundle.getBoolean("onlySendSilentReports") || zA) {
                    z2 |= z3;
                    if (i >= 5) {
                        break;
                    } else if (reportDistributor.a(file)) {
                        i++;
                    }
                }
            }
            final String reportSendSuccessToast = i > 0 ? this.b.getReportSendSuccessToast() : this.b.getReportSendFailureToast();
            if (z2 && reportSendSuccessToast != null && reportSendSuccessToast.length() > 0) {
                if (c.b) {
                    c.d.d(c.c, "About to show " + (i > 0 ? "success" : "failure") + " toast");
                }
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public final void run() {
                        jc9.d(this.b, reportSendSuccessToast);
                    }
                });
            }
        } catch (Exception e) {
            c.d.e(c.c, "", e);
        }
        if (c.b) {
            c.d.d(c.c, "Finished sending reports from SenderService");
        }
    }
}
