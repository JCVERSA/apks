package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteFullException;
import android.os.Process;
import android.util.Log;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.data.athena;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.ga.anateh;

public class zbd {
    public static volatile zbd b;
    public final Context a;

    public zbd(Context context) {
        this.a = context;
    }

    public static zbd a() {
        return b;
    }

    public static void b(Context context) {
        if (b == null) {
            synchronized (zbd.class) {
                try {
                    if (b == null) {
                        b = new zbd(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void c(anateh anatehVar) {
        String stackTraceString;
        long usableSpace;
        int iB = athena.b();
        if (iB == 0 || anatehVar == null) {
            c4d.b("trackException tid not configure or e is null");
            return;
        }
        String strA = anatehVar.a();
        if (strA.contains("addJSON") || strA.contains("updateEvents") || strA.contains("cleanupEvents")) {
            return;
        }
        TrackData trackDataAdd = new TrackData().add("count", 1, 1).add("eid", strA).add("pid", Process.myPid(), 2).add("extra", anatehVar.b(), 2);
        Throwable cause = anatehVar.getCause();
        if (cause == null) {
            stackTraceString = null;
        } else if (cause instanceof SQLiteFullException) {
            stackTraceString = cause.getClass().getName();
        } else {
            stackTraceString = cause.getCause() != null ? Log.getStackTraceString(cause.getCause()) : Log.getStackTraceString(cause);
            if (stackTraceString.length() > 2048) {
                stackTraceString = stackTraceString.substring(0, 2048);
            }
        }
        TrackData trackDataAdd2 = trackDataAdd.add("stackTrace", stackTraceString);
        if (strA.contains("sql")) {
            try {
                usableSpace = this.a.getFilesDir().getUsableSpace();
            } catch (Exception e) {
                e.printStackTrace();
                usableSpace = 0;
            }
            trackDataAdd2.add("usableSpace", usableSpace);
        }
        AthenaAnalytics.J(iB).c0("ev_athena", trackDataAdd2, iB);
    }
}
