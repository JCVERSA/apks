package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.measurement.internal.e;
import com.google.android.gms.measurement.internal.zzac;
import com.google.android.gms.measurement.internal.zzaw;
import com.google.android.gms.measurement.internal.zzlc;
import java.util.ArrayList;
import java.util.List;

public final class v1h extends nlh {
    public final x0h c;
    public boolean d;

    public v1h(e eVar) {
        super(eVar);
        Context contextE = this.a.e();
        this.a.z();
        this.c = new x0h(this, contextE, "google_app_measurement_local.db");
    }

    @Override
    public final boolean m() {
        return false;
    }

    public final SQLiteDatabase n() {
        if (this.d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.d = true;
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:140:0x021a A[Catch: all -> 0x021e, TryCatch #31 {all -> 0x021e, blocks: (B:138:0x0214, B:140:0x021a, B:143:0x0220, B:159:0x024f, B:151:0x023c), top: B:187:0x0214 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x0231  */
    /* JADX WARN: Code duplicated, block: B:154:0x0243  */
    /* JADX WARN: Code duplicated, block: B:156:0x0248 A[PHI: r9 r15
      0x0248: PHI (r9v3 int) = (r9v1 int), (r9v1 int), (r9v4 int) binds: [B:146:0x0234, B:162:0x0263, B:155:0x0246] A[DONT_GENERATE, DONT_INLINE]
      0x0248: PHI (r15v7 android.database.sqlite.SQLiteDatabase) = 
      (r15v5 android.database.sqlite.SQLiteDatabase)
      (r15v6 android.database.sqlite.SQLiteDatabase)
      (r15v8 android.database.sqlite.SQLiteDatabase)
     binds: [B:146:0x0234, B:162:0x0263, B:155:0x0246] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:161:0x0260  */
    /* JADX WARN: Code duplicated, block: B:166:0x026c  */
    /* JADX WARN: Code duplicated, block: B:168:0x0271  */
    /* JADX WARN: Code duplicated, block: B:187:0x0214 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:198:0x01fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:204:0x0266 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x0266 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x0266 A[SYNTHETIC] */
    public final List o(int i) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabase2;
        Cursor cursorQuery2;
        long j;
        String str;
        String[] strArr;
        zzlc zzlcVarCreateFromParcel;
        zzac zzacVarCreateFromParcel;
        g();
        Cursor cursor = null;
        if (this.d) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!r()) {
            return arrayList;
        }
        int i2 = 5;
        for (int i3 = 0; i3 < 5; i3++) {
            try {
                SQLiteDatabase sQLiteDatabaseN = n();
                if (sQLiteDatabaseN == null) {
                    this.d = true;
                    return null;
                }
                try {
                    sQLiteDatabaseN.beginTransaction();
                    try {
                        try {
                            cursorQuery2 = sQLiteDatabaseN.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
                            try {
                                long j2 = -1;
                                if (cursorQuery2.moveToFirst()) {
                                    j = cursorQuery2.getLong(0);
                                    try {
                                        cursorQuery2.close();
                                    } catch (SQLiteDatabaseLockedException unused) {
                                        sQLiteDatabase2 = sQLiteDatabaseN;
                                        cursorQuery = null;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        SystemClock.sleep(i2);
                                        i2 += 20;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                    } catch (SQLiteFullException e) {
                                        e = e;
                                        sQLiteDatabase2 = sQLiteDatabaseN;
                                        cursorQuery = null;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        this.a.b().q().b("Error reading entries from local database", e);
                                        this.d = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                    } catch (SQLiteException e2) {
                                        e = e2;
                                        sQLiteDatabase2 = sQLiteDatabaseN;
                                        cursorQuery = null;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        if (sQLiteDatabase != null) {
                                            try {
                                                if (sQLiteDatabase.inTransaction()) {
                                                    sQLiteDatabase.endTransaction();
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                cursor = cursorQuery;
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                                if (sQLiteDatabase != null) {
                                                    sQLiteDatabase.close();
                                                }
                                                throw th;
                                            }
                                        }
                                        this.a.b().q().b("Error reading entries from local database", e);
                                        this.d = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        sQLiteDatabase2 = sQLiteDatabaseN;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        throw th;
                                    }
                                } else {
                                    cursorQuery2.close();
                                    j = -1;
                                }
                                if (j != -1) {
                                    str = "rowid<?";
                                    strArr = new String[]{String.valueOf(j)};
                                } else {
                                    str = null;
                                    strArr = null;
                                }
                                cursorQuery = sQLiteDatabaseN.query("messages", new String[]{"rowid", "type", "entry"}, str, strArr, null, null, "rowid asc", Integer.toString(100));
                                while (cursorQuery.moveToNext()) {
                                    try {
                                        j2 = cursorQuery.getLong(0);
                                        int i4 = cursorQuery.getInt(1);
                                        byte[] blob = cursorQuery.getBlob(2);
                                        if (i4 == 0) {
                                            Parcel parcelObtain = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain.unmarshall(blob, 0, blob.length);
                                                    parcelObtain.setDataPosition(0);
                                                    zzaw zzawVarCreateFromParcel = zzaw.CREATOR.createFromParcel(parcelObtain);
                                                    parcelObtain.recycle();
                                                    if (zzawVarCreateFromParcel != null) {
                                                        arrayList.add(zzawVarCreateFromParcel);
                                                    }
                                                } catch (Throwable th3) {
                                                    parcelObtain.recycle();
                                                    throw th3;
                                                }
                                            } catch (SafeParcelReader.ParseException unused2) {
                                                this.a.b().q().a("Failed to load event from local database");
                                                parcelObtain.recycle();
                                            }
                                        } else if (i4 == 1) {
                                            Parcel parcelObtain2 = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain2.unmarshall(blob, 0, blob.length);
                                                    parcelObtain2.setDataPosition(0);
                                                    zzlcVarCreateFromParcel = zzlc.CREATOR.createFromParcel(parcelObtain2);
                                                    parcelObtain2.recycle();
                                                } catch (Throwable th4) {
                                                    parcelObtain2.recycle();
                                                    throw th4;
                                                }
                                            } catch (SafeParcelReader.ParseException unused3) {
                                                this.a.b().q().a("Failed to load user property from local database");
                                                parcelObtain2.recycle();
                                                zzlcVarCreateFromParcel = null;
                                            }
                                            if (zzlcVarCreateFromParcel != null) {
                                                arrayList.add(zzlcVarCreateFromParcel);
                                            }
                                        } else if (i4 == 2) {
                                            Parcel parcelObtain3 = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain3.unmarshall(blob, 0, blob.length);
                                                    parcelObtain3.setDataPosition(0);
                                                    zzacVarCreateFromParcel = zzac.CREATOR.createFromParcel(parcelObtain3);
                                                    parcelObtain3.recycle();
                                                } catch (Throwable th5) {
                                                    parcelObtain3.recycle();
                                                    throw th5;
                                                }
                                            } catch (SafeParcelReader.ParseException unused4) {
                                                this.a.b().q().a("Failed to load conditional user property from local database");
                                                parcelObtain3.recycle();
                                                zzacVarCreateFromParcel = null;
                                            }
                                            if (zzacVarCreateFromParcel != null) {
                                                arrayList.add(zzacVarCreateFromParcel);
                                            }
                                        } else if (i4 == 3) {
                                            this.a.b().v().a("Skipping app launch break");
                                        } else {
                                            this.a.b().q().a("Unknown record type in local database");
                                        }
                                    } catch (SQLiteDatabaseLockedException unused5) {
                                        sQLiteDatabase2 = sQLiteDatabaseN;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        SystemClock.sleep(i2);
                                        i2 += 20;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                    } catch (SQLiteFullException e3) {
                                        e = e3;
                                        sQLiteDatabase2 = sQLiteDatabaseN;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        this.a.b().q().b("Error reading entries from local database", e);
                                        this.d = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                    } catch (SQLiteException e4) {
                                        e = e4;
                                        sQLiteDatabase2 = sQLiteDatabaseN;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        if (sQLiteDatabase != null) {
                                            if (sQLiteDatabase.inTransaction()) {
                                                sQLiteDatabase.endTransaction();
                                            }
                                        }
                                        this.a.b().q().b("Error reading entries from local database", e);
                                        this.d = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        sQLiteDatabase2 = sQLiteDatabaseN;
                                        cursor = cursorQuery;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        throw th;
                                    }
                                }
                                sQLiteDatabase2 = sQLiteDatabaseN;
                                try {
                                    if (sQLiteDatabase2.delete("messages", "rowid <= ?", new String[]{Long.toString(j2)}) < arrayList.size()) {
                                        this.a.b().q().a("Fewer entries removed from local database than expected");
                                    }
                                    sQLiteDatabase2.setTransactionSuccessful();
                                    sQLiteDatabase2.endTransaction();
                                    cursorQuery.close();
                                    sQLiteDatabase2.close();
                                    return arrayList;
                                } catch (SQLiteDatabaseLockedException unused6) {
                                    sQLiteDatabase = sQLiteDatabase2;
                                    SystemClock.sleep(i2);
                                    i2 += 20;
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    if (sQLiteDatabase != null) {
                                        sQLiteDatabase.close();
                                    }
                                } catch (SQLiteFullException e5) {
                                    e = e5;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    this.a.b().q().b("Error reading entries from local database", e);
                                    this.d = true;
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    if (sQLiteDatabase != null) {
                                        sQLiteDatabase.close();
                                    }
                                } catch (SQLiteException e6) {
                                    e = e6;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    if (sQLiteDatabase != null) {
                                        if (sQLiteDatabase.inTransaction()) {
                                            sQLiteDatabase.endTransaction();
                                        }
                                    }
                                    this.a.b().q().b("Error reading entries from local database", e);
                                    this.d = true;
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    if (sQLiteDatabase != null) {
                                        sQLiteDatabase.close();
                                    }
                                } catch (Throwable th7) {
                                    th = th7;
                                    cursor = cursorQuery;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (sQLiteDatabase != null) {
                                        sQLiteDatabase.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                sQLiteDatabase2 = sQLiteDatabaseN;
                                if (cursorQuery2 != null) {
                                    try {
                                        cursorQuery2.close();
                                    } catch (SQLiteDatabaseLockedException unused7) {
                                        cursorQuery = null;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        SystemClock.sleep(i2);
                                        i2 += 20;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                    } catch (SQLiteFullException e7) {
                                        e = e7;
                                        cursorQuery = null;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        this.a.b().q().b("Error reading entries from local database", e);
                                        this.d = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                    } catch (SQLiteException e8) {
                                        e = e8;
                                        cursorQuery = null;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        if (sQLiteDatabase != null) {
                                            if (sQLiteDatabase.inTransaction()) {
                                                sQLiteDatabase.endTransaction();
                                            }
                                        }
                                        this.a.b().q().b("Error reading entries from local database", e);
                                        this.d = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                    } catch (Throwable th9) {
                                        th = th9;
                                        sQLiteDatabase = sQLiteDatabase2;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        throw th;
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th10) {
                            th = th10;
                            sQLiteDatabase2 = sQLiteDatabaseN;
                            cursorQuery2 = null;
                            if (cursorQuery2 != null) {
                                cursorQuery2.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th11) {
                        th = th11;
                        sQLiteDatabase2 = sQLiteDatabaseN;
                    }
                } catch (SQLiteDatabaseLockedException unused8) {
                    sQLiteDatabase2 = sQLiteDatabaseN;
                } catch (SQLiteFullException e9) {
                    e = e9;
                    sQLiteDatabase2 = sQLiteDatabaseN;
                } catch (SQLiteException e10) {
                    e = e10;
                    sQLiteDatabase2 = sQLiteDatabaseN;
                } catch (Throwable th12) {
                    th = th12;
                    sQLiteDatabase2 = sQLiteDatabaseN;
                }
            } catch (SQLiteDatabaseLockedException unused9) {
                cursorQuery = null;
                sQLiteDatabase = null;
            } catch (SQLiteFullException e11) {
                e = e11;
                cursorQuery = null;
                sQLiteDatabase = null;
            } catch (SQLiteException e12) {
                e = e12;
                cursorQuery = null;
                sQLiteDatabase = null;
            } catch (Throwable th13) {
                th = th13;
                sQLiteDatabase = null;
            }
        }
        this.a.b().v().a("Failed to read events from database in reasonable time");
        return null;
    }

    public final void p() {
        int iDelete;
        g();
        try {
            SQLiteDatabase sQLiteDatabaseN = n();
            if (sQLiteDatabaseN == null || (iDelete = sQLiteDatabaseN.delete("messages", null, null)) <= 0) {
                return;
            }
            this.a.b().u().b("Reset local analytics data. records", Integer.valueOf(iDelete));
        } catch (SQLiteException e) {
            this.a.b().q().b("Error resetting local analytics data. error", e);
        }
    }

    public final boolean q() {
        return w(3, new byte[0]);
    }

    public final boolean r() {
        Context contextE = this.a.e();
        this.a.z();
        return contextE.getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0069 A[PHI: r4
      0x0069: PHI (r4v4 int) = (r4v1 int), (r4v2 int), (r4v1 int) binds: [B:35:0x007c, B:32:0x0067, B:29:0x0060] A[DONT_GENERATE, DONT_INLINE]] */
    public final boolean s() {
        g();
        if (!this.d && r()) {
            int i = 5;
            for (int i2 = 0; i2 < 5; i2++) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    try {
                        try {
                            SQLiteDatabase sQLiteDatabaseN = n();
                            if (sQLiteDatabaseN == null) {
                                this.d = true;
                                return false;
                            }
                            sQLiteDatabaseN.beginTransaction();
                            sQLiteDatabaseN.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                            sQLiteDatabaseN.setTransactionSuccessful();
                            sQLiteDatabaseN.endTransaction();
                            sQLiteDatabaseN.close();
                            return true;
                        } catch (SQLiteException e) {
                            if (0 != 0) {
                                try {
                                    if (sQLiteDatabase.inTransaction()) {
                                        sQLiteDatabase.endTransaction();
                                    }
                                } catch (Throwable th) {
                                    if (0 != 0) {
                                        sQLiteDatabase.close();
                                    }
                                    throw th;
                                }
                            }
                            this.a.b().q().b("Error deleting app launch break from local database", e);
                            this.d = true;
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                        }
                    } catch (SQLiteDatabaseLockedException unused) {
                        SystemClock.sleep(i);
                        i += 20;
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                    }
                } catch (SQLiteFullException e2) {
                    this.a.b().q().b("Error deleting app launch break from local database", e2);
                    this.d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            this.a.b().v().a("Error deleting app launch break from local database in reasonable time");
        }
        return false;
    }

    public final boolean t(zzac zzacVar) {
        byte[] bArrA0 = this.a.N().a0(zzacVar);
        if (bArrA0.length <= 131072) {
            return w(2, bArrA0);
        }
        this.a.b().s().a("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean u(zzaw zzawVar) {
        Parcel parcelObtain = Parcel.obtain();
        fte.a(zzawVar, parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return w(0, bArrMarshall);
        }
        this.a.b().s().a("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean v(zzlc zzlcVar) {
        Parcel parcelObtain = Parcel.obtain();
        t8j.a(zzlcVar, parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return w(1, bArrMarshall);
        }
        this.a.b().s().a("User property too long for local database. Sending directly to service");
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x00f4 A[PHI: r8
      0x00f4: PHI (r8v3 android.database.sqlite.SQLiteDatabase) = (r8v2 android.database.sqlite.SQLiteDatabase), (r8v4 android.database.sqlite.SQLiteDatabase) binds: [B:60:0x00f2, B:76:0x0125] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:80:0x0130  */
    /* JADX WARN: Code duplicated, block: B:82:0x0135  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final boolean w(int i, byte[] bArr) throws Throwable {
        SQLiteDatabase sQLiteDatabaseN;
        ?? RawQuery;
        ?? r10;
        g();
        ?? r2 = 0;
        if (this.d) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", Integer.valueOf(i));
        contentValues.put("entry", bArr);
        this.a.z();
        int i2 = 0;
        int i3 = 5;
        for (int i4 = 5; i2 < i4; i4 = 5) {
            ?? r8 = 0;
             = 0;
            ?? r9 = 0;
            sQLiteDatabase = null;
            SQLiteDatabase sQLiteDatabase = null;
            try {
                sQLiteDatabaseN = n();
                try {
                    if (sQLiteDatabaseN == null) {
                        this.d = true;
                        return r2;
                    }
                    sQLiteDatabaseN.beginTransaction();
                    RawQuery = sQLiteDatabaseN.rawQuery("select count(1) from messages", null);
                    long j = 0;
                    if (RawQuery != 0) {
                        try {
                            if (RawQuery.moveToFirst()) {
                                j = RawQuery.getLong(r2);
                            }
                        } catch (SQLiteDatabaseLockedException unused) {
                            r9 = RawQuery;
                            try {
                                SystemClock.sleep(i3);
                                i3 += 20;
                                if (r9 != 0) {
                                    r9.close();
                                }
                                if (sQLiteDatabaseN != null) {
                                    sQLiteDatabaseN.close();
                                }
                                i2++;
                                r2 = 0;
                            } catch (Throwable th) {
                                th = th;
                                r8 = r9;
                                if (r8 != 0) {
                                    r8.close();
                                }
                                if (sQLiteDatabaseN != null) {
                                    sQLiteDatabaseN.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteFullException e) {
                            e = e;
                            sQLiteDatabase = sQLiteDatabaseN;
                            r10 = RawQuery;
                            this.a.b().q().b("Error writing entry; local database full", e);
                            this.d = true;
                            if (r10 != 0) {
                                r10.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            i2++;
                            r2 = 0;
                        } catch (SQLiteException e2) {
                            e = e2;
                            sQLiteDatabase = sQLiteDatabaseN;
                            RawQuery = RawQuery;
                            if (sQLiteDatabase != null) {
                                try {
                                    if (sQLiteDatabase.inTransaction()) {
                                        sQLiteDatabase.endTransaction();
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    sQLiteDatabaseN = sQLiteDatabase;
                                    r8 = RawQuery;
                                    if (r8 != 0) {
                                        r8.close();
                                    }
                                    if (sQLiteDatabaseN != null) {
                                        sQLiteDatabaseN.close();
                                    }
                                    throw th;
                                }
                            }
                            this.a.b().q().b("Error writing entry to local database", e);
                            this.d = true;
                            if (RawQuery != 0) {
                                RawQuery.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            i2++;
                            r2 = 0;
                        } catch (Throwable th3) {
                            th = th3;
                            r8 = RawQuery;
                            if (r8 != 0) {
                                r8.close();
                            }
                            if (sQLiteDatabaseN != null) {
                                sQLiteDatabaseN.close();
                            }
                            throw th;
                        }
                    }
                    if (j >= SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) {
                        this.a.b().q().a("Data loss, local db full");
                        long j2 = 100001 - j;
                        long jDelete = sQLiteDatabaseN.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", new String[]{Long.toString(j2)});
                        if (jDelete != j2) {
                            this.a.b().q().d("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j2), Long.valueOf(jDelete), Long.valueOf(j2 - jDelete));
                        }
                    }
                    sQLiteDatabaseN.insertOrThrow("messages", null, contentValues);
                    sQLiteDatabaseN.setTransactionSuccessful();
                    sQLiteDatabaseN.endTransaction();
                    if (RawQuery != 0) {
                        RawQuery.close();
                    }
                    sQLiteDatabaseN.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused2) {
                } catch (SQLiteFullException e3) {
                    e = e3;
                    RawQuery = 0;
                } catch (SQLiteException e4) {
                    e = e4;
                    RawQuery = 0;
                }
            } catch (SQLiteDatabaseLockedException unused3) {
                sQLiteDatabaseN = null;
            } catch (SQLiteFullException e5) {
                e = e5;
                r10 = 0;
            } catch (SQLiteException e6) {
                e = e6;
                RawQuery = 0;
            } catch (Throwable th4) {
                th = th4;
                sQLiteDatabaseN = null;
                if (r8 != 0) {
                    r8.close();
                }
                if (sQLiteDatabaseN != null) {
                    sQLiteDatabaseN.close();
                }
                throw th;
            }
        }
        this.a.b().u().a("Failed to write entry to local database");
        return false;
    }
}
