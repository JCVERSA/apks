package com.mgmi.db.dao3;

import android.content.Context;
import org.greenrobot.greendao.database.Database;

public class d {
    private static d a;
    private com.mgmi.db.a b;
    private b c;
    private Database d;

    public d(Context context) {
        b(context);
    }

    public static d a(Context context) {
        if (a == null) {
            synchronized (d.class) {
                try {
                    if (a == null) {
                        a = new d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    private void b(Context context) {
        com.mgmi.db.a aVar = new com.mgmi.db.a(context, "MGMI_PHONE", null);
        this.b = aVar;
        Database readableDb = aVar.getReadableDb();
        this.d = readableDb;
        this.c = new a(readableDb).newSession();
    }

    public FileDownloadInfoDao c() {
        return this.c.b();
    }

    public MgmiOfflineAdResourceDao b() {
        return this.c.a();
    }

    public MgmiOfflineAdDao a() {
        return this.c.c();
    }
}
