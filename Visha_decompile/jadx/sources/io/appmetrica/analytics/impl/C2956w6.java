package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;

public final class C2956w6 {
    public final C2587ha a;
    public final C2807q6 b;
    public final Context c;
    public final C2562ga d;

    public C2956w6(Context context) {
        this(context, new C2587ha(), new C2807q6(), C2562ga.a(context));
    }

    public final void a(C2743nh c2743nh) {
        boolean zMkdir;
        D9 d9A;
        PrintWriter printWriter;
        File crashesDirectory = FileUtils.getCrashesDirectory(this.c);
        this.b.getClass();
        if (crashesDirectory == null) {
            return;
        }
        try {
            try {
                if (crashesDirectory.exists()) {
                    if (!crashesDirectory.isDirectory()) {
                        if (!crashesDirectory.delete()) {
                            return;
                        } else {
                            zMkdir = crashesDirectory.mkdir();
                        }
                    }
                    C2791pf c2791pf = c2743nh.e.a;
                    String str = c2791pf.a.getAsInteger("PROCESS_CFG_PROCESS_ID") + "-" + c2791pf.a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID");
                    d9A = this.d.a(str);
                    d9A.a.lock();
                    d9A.b.a();
                    this.a.getClass();
                    printWriter = new PrintWriter(new BufferedOutputStream(new FileOutputStream(new File(crashesDirectory, str))));
                    printWriter.write(new C2787pb(c2743nh.a, c2743nh.e, c2743nh.d).k());
                    In.a((Closeable) printWriter);
                    d9A.c();
                    return;
                }
                zMkdir = crashesDirectory.mkdir();
                printWriter.write(new C2787pb(c2743nh.a, c2743nh.e, c2743nh.d).k());
                In.a((Closeable) printWriter);
                d9A.c();
                return;
            } catch (Throwable unused) {
                In.a((Closeable) printWriter);
                d9A.c();
                return;
            }
            d9A.a.lock();
            d9A.b.a();
            this.a.getClass();
            printWriter = new PrintWriter(new BufferedOutputStream(new FileOutputStream(new File(crashesDirectory, str))));
        } catch (Throwable unused2) {
            printWriter = null;
        }
        if (!zMkdir) {
            return;
        }
        C2791pf c2791pf2 = c2743nh.e.a;
        String str2 = c2791pf2.a.getAsInteger("PROCESS_CFG_PROCESS_ID") + "-" + c2791pf2.a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID");
        d9A = this.d.a(str2);
    }

    public C2956w6(Context context, C2587ha c2587ha, C2807q6 c2807q6, C2562ga c2562ga) {
        this.c = context;
        this.a = c2587ha;
        this.b = c2807q6;
        this.d = c2562ga;
    }
}
