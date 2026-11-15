package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.ArrayList;
import java.util.Iterator;

public final class R6 extends InterruptionSafeThread {
    public final C2706m5 a;
    public final S6 b;

    public R6(S6 s6, C2706m5 c2706m5) {
        this.b = s6;
        this.a = c2706m5;
    }

    public final synchronized void a(ArrayList arrayList) {
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ContentValues contentValues = (ContentValues) it.next();
                this.b.getClass();
                Integer asInteger = contentValues.getAsInteger("type");
                asInteger.intValue();
                arrayList2.add(asInteger);
            }
            Iterator it2 = this.b.j.iterator();
            while (it2.hasNext()) {
                ((W8) it2.next()).a(arrayList2);
            }
            ((C2980x5) this.a.p).d();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void run() {
        ArrayList<ContentValues> arrayList;
        while (isRunning()) {
            try {
                synchronized (this) {
                    try {
                        if (S6.a(this.b)) {
                            wait();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable unused) {
                stopRunning();
            }
            synchronized (this.b.e) {
                arrayList = new ArrayList(this.b.f);
                this.b.f.clear();
            }
            S6 s6 = this.b;
            s6.getClass();
            if (!arrayList.isEmpty()) {
                s6.b.lock();
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase writableDatabase = s6.c.getWritableDatabase();
                    if (writableDatabase != null) {
                        try {
                            writableDatabase.beginTransaction();
                            for (ContentValues contentValues : arrayList) {
                                writableDatabase.insertOrThrow("events", null, contentValues);
                                s6.i.incrementAndGet();
                                s6.a(contentValues, "Event saved to db");
                            }
                            writableDatabase.setTransactionSuccessful();
                            s6.i.get();
                        } catch (Throwable unused2) {
                            sQLiteDatabase = writableDatabase;
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.endTransaction();
                            }
                        }
                    }
                    if (writableDatabase != null) {
                        try {
                            writableDatabase.endTransaction();
                        } catch (Throwable unused3) {
                        }
                    }
                } catch (Throwable unused4) {
                }
                s6.b.unlock();
            }
            a(arrayList);
        }
    }
}
