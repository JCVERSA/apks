package com.mgtv.downloader.database;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import org.greenrobot.greendao.database.Database;

public class d {
    private static d a;
    private e b;
    private b c;
    private Database d;
    private AtomicInteger e = new AtomicInteger();

    public d(Context context) {
        b(context);
    }

    public static synchronized d a(Context context) {
        try {
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
        } catch (Throwable th2) {
            throw th2;
        }
        return a;
    }

    private void b(Context context) {
        e eVar = new e(context, "MGTV_DOWNLOAD.db", null);
        this.b = eVar;
        eVar.setWriteAheadLoggingEnabled(true);
        if (this.e.incrementAndGet() == 1) {
            Database readableDb = this.b.getReadableDb();
            this.d = readableDb;
            this.c = new a(readableDb).newSession();
        }
    }

    public DownloadInfoDao a() {
        return this.c.a();
    }
}
