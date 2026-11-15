package com.mgtv.ssp.download;

import android.content.Context;
import com.mgtv.ssp.download.dao3.FileDownloadInfoDao;
import java.util.concurrent.atomic.AtomicInteger;
import org.greenrobot.greendao.database.Database;

public class a {
    private static a a;
    private b b;
    private com.mgtv.ssp.download.dao3.b c;
    private Database d;
    private AtomicInteger e = new AtomicInteger();

    public a(Context context) {
        b(context);
    }

    public static synchronized a a(Context context) {
        try {
            if (a == null) {
                synchronized (a.class) {
                    try {
                        if (a == null) {
                            a = new a(context);
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
        this.b = new b(context, "MgSspFileDownload", null);
        if (this.e.incrementAndGet() == 1) {
            Database readableDb = this.b.getReadableDb();
            this.d = readableDb;
            this.c = new com.mgtv.ssp.download.dao3.a(readableDb).newSession();
        }
    }

    public FileDownloadInfoDao a() {
        return this.c.a();
    }
}
