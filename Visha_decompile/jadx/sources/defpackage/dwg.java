package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzu;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.j8;
import defpackage.dwg;
import java.util.concurrent.Callable;

public final class dwg extends uyh {
    public final Context b;
    public final g8i c;

    public dwg(Context context, g8i g8iVar) {
        super(context, "AdMobOfflineBufferedPings.db", null, ((Integer) zzbd.zzc().b(cye.w8)).intValue(), wyh.a);
        this.b = context;
        this.c = g8iVar;
    }

    public static void D(SQLiteDatabase sQLiteDatabase, zzu zzuVar) {
        String str;
        sQLiteDatabase.beginTransaction();
        try {
            Cursor cursorQuery = sQLiteDatabase.query("offline_buffered_pings", new String[]{"timestamp", "url"}, "event_state = 1", null, null, null, "timestamp ASC", null);
            int count = cursorQuery.getCount();
            String[] strArr = new String[count];
            int i = 0;
            while (cursorQuery.moveToNext()) {
                int columnIndex = cursorQuery.getColumnIndex("timestamp");
                int columnIndex2 = cursorQuery.getColumnIndex("url");
                if (columnIndex2 != -1) {
                    long j = cursorQuery.getLong(columnIndex);
                    String string = cursorQuery.getString(columnIndex2);
                    if (string == null) {
                        str = "";
                    } else {
                        Uri uri = Uri.parse(string);
                        long jCurrentTimeMillis = zzv.zzC().currentTimeMillis() - j;
                        String encodedQuery = uri.getEncodedQuery();
                        Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
                        builderClearQuery.appendQueryParameter("bd", Long.toString(jCurrentTimeMillis));
                        str = String.valueOf(builderClearQuery.build()) + "&" + encodedQuery;
                    }
                    strArr[i] = str;
                }
                i++;
            }
            cursorQuery.close();
            sQLiteDatabase.delete("offline_buffered_pings", "event_state = ?", new String[]{Integer.toString(1)});
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            for (int i2 = 0; i2 < count; i2++) {
                zzuVar.zza(strArr[i2]);
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    public static Void a(dwg dwgVar, fwg fwgVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(fwgVar.a));
        contentValues.put("gws_query_id", fwgVar.b);
        contentValues.put("url", fwgVar.c);
        contentValues.put("event_state", Integer.valueOf(fwgVar.d - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        zzv.zzq();
        Context context = dwgVar.b;
        zzbr zzbrVarZzA = zzs.zzA(context);
        if (zzbrVarZzA != null) {
            try {
                zzbrVarZzA.zze(ObjectWrapper.wrap(context));
            } catch (RemoteException e) {
                zze.zzb("Failed to schedule offline ping sender.", e);
            }
        }
        return null;
    }

    public static Void b(zzu zzuVar, SQLiteDatabase sQLiteDatabase) {
        D(sQLiteDatabase, zzuVar);
        return null;
    }

    public static void h(SQLiteDatabase sQLiteDatabase, String str, zzu zzuVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        D(sQLiteDatabase, zzuVar);
    }

    public static final void o(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    public final void d(final String str) {
        g(new pqh(this) {
            @Override
            public final Object zza(Object obj) {
                dwg.o((SQLiteDatabase) obj, str);
                return null;
            }
        });
    }

    public final void e(final fwg fwgVar) {
        g(new pqh() {
            @Override
            public final Object zza(Object obj) {
                dwg.a(this.a, fwgVar, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    public final void g(pqh pqhVar) {
        Callable callable = new Callable() {
            @Override
            public final Object call() {
                return this.b.getWritableDatabase();
            }
        };
        g8i g8iVar = this.c;
        j8.r(g8iVar.m(callable), new cwg(this, pqhVar), g8iVar);
    }

    public final void k(final SQLiteDatabase sQLiteDatabase, final zzu zzuVar, final String str) {
        this.c.execute(new Runnable() {
            @Override
            public final void run() {
                dwg.h(sQLiteDatabase, str, zzuVar);
            }
        });
    }

    public final void n(final zzu zzuVar, final String str) {
        g(new pqh() {
            @Override
            public final Object zza(Object obj) {
                this.a.k((SQLiteDatabase) obj, zzuVar, str);
                return null;
            }
        });
    }

    @Override
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)");
    }

    @Override
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    @Override
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }
}
