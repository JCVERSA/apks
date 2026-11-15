package com.google.firebase.crashlytics.internal.send;

import android.content.Context;
import com.google.android.datatransport.runtime.t;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.common.a0;
import com.google.firebase.crashlytics.internal.common.l0;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.nio.charset.Charset;
import t8.g;
import t8.i;
import vb.j;

public class b {

    private static final j f30897c = new j();

    private static final String f30898d = e("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    private static final String f30899e = e("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    private static final g f30900f = new g() {
        @Override
        public final Object apply(Object obj) {
            return b.d((CrashlyticsReport) obj);
        }
    };

    private final ReportQueue f30901a;

    private final g f30902b;

    b(ReportQueue reportQueue, g gVar) {
        this.f30901a = reportQueue;
        this.f30902b = gVar;
    }

    public static b b(Context context, yb.b bVar, l0 l0Var) {
        t.f(context);
        i iVarG = t.c().g(new com.google.android.datatransport.cct.a(f30898d, f30899e));
        t8.c cVarB = t8.c.b("json");
        g gVar = f30900f;
        return new b(new ReportQueue(iVarG.b("FIREBASE_CRASHLYTICS_REPORT", CrashlyticsReport.class, cVarB, gVar), bVar.b(), l0Var), gVar);
    }

    public static byte[] d(CrashlyticsReport crashlyticsReport) {
        return f30897c.M(crashlyticsReport).getBytes(Charset.forName("UTF-8"));
    }

    private static String e(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb2 = new StringBuilder(str.length() + str2.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            sb2.append(str.charAt(i10));
            if (str2.length() > i10) {
                sb2.append(str2.charAt(i10));
            }
        }
        return sb2.toString();
    }

    public Task c(a0 a0Var, boolean z10) {
        return this.f30901a.i(a0Var, z10).getTask();
    }
}
