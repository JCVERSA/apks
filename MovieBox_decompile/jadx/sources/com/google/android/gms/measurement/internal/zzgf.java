package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.List;

public final class zzgf extends zzh {
    private final zzgi zza;
    private boolean zzb;

    zzgf(zzhy zzhyVar) {
        super(zzhyVar);
        this.zza = new zzgi(this, zza(), "google_app_measurement_local.db");
    }

    private static long zza(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
            if (!cursorQuery.moveToFirst()) {
                cursorQuery.close();
                return -1L;
            }
            long j10 = cursorQuery.getLong(0);
            cursorQuery.close();
            return j10;
        } catch (Throwable th2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th2;
        }
    }

    private final SQLiteDatabase zzad() throws SQLiteException {
        if (this.zzb) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zza.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzb = true;
        return null;
    }

    private final boolean zzae() {
        return zza().getDatabasePath("google_app_measurement_local.db").exists();
    }

    public final void zzaa() {
        int iDelete;
        zzt();
        try {
            SQLiteDatabase sQLiteDatabaseZzad = zzad();
            if (sQLiteDatabaseZzad == null || (iDelete = sQLiteDatabaseZzad.delete("messages", null, null)) <= 0) {
                return;
            }
            zzj().zzp().zza("Reset local analytics data. records", Integer.valueOf(iDelete));
        } catch (SQLiteException e10) {
            zzj().zzg().zza("Error resetting local analytics data. error", e10);
        }
    }

    public final boolean zzab() {
        return zza(3, new byte[0]);
    }

    public final boolean zzac() {
        zzt();
        if (this.zzb || !zzae()) {
            return false;
        }
        int i10 = 5;
        for (int i11 = 0; i11 < 5; i11++) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                try {
                    SQLiteDatabase sQLiteDatabaseZzad = zzad();
                    if (sQLiteDatabaseZzad == null) {
                        this.zzb = true;
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        return false;
                    }
                    sQLiteDatabaseZzad.beginTransaction();
                    sQLiteDatabaseZzad.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    sQLiteDatabaseZzad.setTransactionSuccessful();
                    sQLiteDatabaseZzad.endTransaction();
                    sQLiteDatabaseZzad.close();
                    return true;
                } catch (SQLiteFullException e10) {
                    zzj().zzg().zza("Error deleting app launch break from local database", e10);
                    this.zzb = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            } catch (SQLiteDatabaseLockedException unused) {
                SystemClock.sleep(i10);
                i10 += 20;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            } catch (SQLiteException e11) {
                if (0 != 0) {
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Throwable th2) {
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                        throw th2;
                    }
                }
                zzj().zzg().zza("Error deleting app launch break from local database", e11);
                this.zzb = true;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            }
        }
        zzj().zzu().zza("Error deleting app launch break from local database in reasonable time");
        return false;
    }

    @Override
    public final Clock zzb() {
        return super.zzb();
    }

    @Override
    public final zzb zzc() {
        return super.zzc();
    }

    @Override
    public final zzab zzd() {
        return super.zzd();
    }

    @Override
    public final zzag zze() {
        return super.zze();
    }

    @Override
    public final zzaz zzf() {
        return super.zzf();
    }

    @Override
    public final zzgg zzg() {
        return super.zzg();
    }

    @Override
    public final zzgf zzh() {
        return super.zzh();
    }

    @Override
    public final zzgh zzi() {
        return super.zzi();
    }

    @Override
    public final zzgo zzj() {
        return super.zzj();
    }

    @Override
    public final zzha zzk() {
        return super.zzk();
    }

    @Override
    public final zzhv zzl() {
        return super.zzl();
    }

    @Override
    public final zzjq zzm() {
        return super.zzm();
    }

    @Override
    public final zzlj zzn() {
        return super.zzn();
    }

    @Override
    public final zzls zzo() {
        return super.zzo();
    }

    @Override
    public final zznb zzp() {
        return super.zzp();
    }

    @Override
    public final zzos zzq() {
        return super.zzq();
    }

    @Override
    public final void zzr() {
        super.zzr();
    }

    @Override
    public final void zzs() {
        super.zzs();
    }

    @Override
    public final void zzt() {
        super.zzt();
    }

    @Override
    protected final boolean zzz() {
        return false;
    }

    @Override
    public final Context zza() {
        return super.zza();
    }

    /* JADX WARN: Code duplicated, block: B:110:0x01af A[Catch: all -> 0x01b3, TryCatch #8 {all -> 0x01b3, blocks: (B:108:0x01a9, B:110:0x01af, B:113:0x01b7, B:128:0x01e5, B:120:0x01d2), top: B:145:0x01a9 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:117:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:123:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:125:0x01de  */
    /* JADX WARN: Code duplicated, block: B:130:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:132:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:135:0x0203  */
    /* JADX WARN: Code duplicated, block: B:137:0x0208  */
    /* JADX WARN: Code duplicated, block: B:145:0x01a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x01fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x01fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x01fc A[SYNTHETIC] */
    public final List<AbstractSafeParcelable> zza(int i10) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabaseZzad;
        SQLiteDatabase sQLiteDatabase2;
        String str;
        String[] strArr;
        zzon zzonVarCreateFromParcel;
        zzae zzaeVarCreateFromParcel;
        zzt();
        Cursor cursor = null;
        if (this.zzb) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!zzae()) {
            return arrayList;
        }
        int i11 = 5;
        int i12 = 0;
        for (int i13 = 5; i12 < i13; i13 = 5) {
            try {
                sQLiteDatabaseZzad = zzad();
                if (sQLiteDatabaseZzad == null) {
                    try {
                        this.zzb = true;
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        return null;
                    } catch (SQLiteFullException e10) {
                        e = e10;
                        cursorQuery = null;
                        zzj().zzg().zza("Error reading entries from local database", e);
                        this.zzb = true;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        i12++;
                    } catch (SQLiteException e11) {
                        e = e11;
                        cursorQuery = null;
                        if (sQLiteDatabaseZzad != null) {
                            try {
                                if (sQLiteDatabaseZzad.inTransaction()) {
                                    sQLiteDatabaseZzad.endTransaction();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                cursor = cursorQuery;
                                sQLiteDatabase = sQLiteDatabaseZzad;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                throw th;
                            }
                        }
                        zzj().zzg().zza("Error reading entries from local database", e);
                        this.zzb = true;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        i12++;
                    }
                } else {
                    try {
                        try {
                            sQLiteDatabaseZzad.beginTransaction();
                            long jZza = zza(sQLiteDatabaseZzad);
                            long j10 = -1;
                            if (jZza != -1) {
                                str = "rowid<?";
                                strArr = new String[]{String.valueOf(jZza)};
                            } else {
                                str = null;
                                strArr = null;
                            }
                            sQLiteDatabase = sQLiteDatabaseZzad;
                            try {
                                cursorQuery = sQLiteDatabaseZzad.query("messages", new String[]{"rowid", NativeComponentConstants.KEY_COMPONENT_TYPE, "entry"}, str, strArr, null, null, "rowid asc", Integer.toString(100));
                                while (cursorQuery.moveToNext()) {
                                    try {
                                        j10 = cursorQuery.getLong(0);
                                        int i14 = cursorQuery.getInt(1);
                                        byte[] blob = cursorQuery.getBlob(2);
                                        if (i14 == 0) {
                                            Parcel parcelObtain = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain.unmarshall(blob, 0, blob.length);
                                                    parcelObtain.setDataPosition(0);
                                                    zzbf zzbfVarCreateFromParcel = zzbf.CREATOR.createFromParcel(parcelObtain);
                                                    parcelObtain.recycle();
                                                    if (zzbfVarCreateFromParcel != null) {
                                                        arrayList.add(zzbfVarCreateFromParcel);
                                                    }
                                                } catch (Throwable th3) {
                                                    parcelObtain.recycle();
                                                    throw th3;
                                                }
                                            } catch (SafeParcelReader.ParseException unused) {
                                                zzj().zzg().zza("Failed to load event from local database");
                                                parcelObtain.recycle();
                                            }
                                        } else if (i14 == 1) {
                                            Parcel parcelObtain2 = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain2.unmarshall(blob, 0, blob.length);
                                                    parcelObtain2.setDataPosition(0);
                                                    zzonVarCreateFromParcel = zzon.CREATOR.createFromParcel(parcelObtain2);
                                                    parcelObtain2.recycle();
                                                } catch (Throwable th4) {
                                                    parcelObtain2.recycle();
                                                    throw th4;
                                                }
                                            } catch (SafeParcelReader.ParseException unused2) {
                                                zzj().zzg().zza("Failed to load user property from local database");
                                                parcelObtain2.recycle();
                                                zzonVarCreateFromParcel = null;
                                            }
                                            if (zzonVarCreateFromParcel != null) {
                                                arrayList.add(zzonVarCreateFromParcel);
                                            }
                                        } else if (i14 == 2) {
                                            Parcel parcelObtain3 = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain3.unmarshall(blob, 0, blob.length);
                                                    parcelObtain3.setDataPosition(0);
                                                    zzaeVarCreateFromParcel = zzae.CREATOR.createFromParcel(parcelObtain3);
                                                    parcelObtain3.recycle();
                                                } catch (SafeParcelReader.ParseException unused3) {
                                                    zzj().zzg().zza("Failed to load conditional user property from local database");
                                                    parcelObtain3.recycle();
                                                    zzaeVarCreateFromParcel = null;
                                                }
                                                if (zzaeVarCreateFromParcel != null) {
                                                    arrayList.add(zzaeVarCreateFromParcel);
                                                }
                                            } catch (Throwable th5) {
                                                parcelObtain3.recycle();
                                                throw th5;
                                            }
                                        } else if (i14 == 3) {
                                            zzj().zzu().zza("Skipping app launch break");
                                        } else {
                                            zzj().zzg().zza("Unknown record type in local database");
                                        }
                                    } catch (SQLiteDatabaseLockedException unused4) {
                                        sQLiteDatabase2 = sQLiteDatabase;
                                        SystemClock.sleep(i11);
                                        i11 += 20;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase2 != null) {
                                            sQLiteDatabase2.close();
                                        }
                                        i12++;
                                    } catch (SQLiteFullException e12) {
                                        e = e12;
                                        sQLiteDatabaseZzad = sQLiteDatabase;
                                        zzj().zzg().zza("Error reading entries from local database", e);
                                        this.zzb = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabaseZzad != null) {
                                            sQLiteDatabaseZzad.close();
                                        }
                                        i12++;
                                    } catch (SQLiteException e13) {
                                        e = e13;
                                        sQLiteDatabaseZzad = sQLiteDatabase;
                                        if (sQLiteDatabaseZzad != null) {
                                            if (sQLiteDatabaseZzad.inTransaction()) {
                                                sQLiteDatabaseZzad.endTransaction();
                                            }
                                        }
                                        zzj().zzg().zza("Error reading entries from local database", e);
                                        this.zzb = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabaseZzad != null) {
                                            sQLiteDatabaseZzad.close();
                                        }
                                        i12++;
                                    } catch (Throwable th6) {
                                        th = th6;
                                        cursor = cursorQuery;
                                    }
                                }
                                if (sQLiteDatabase.delete("messages", "rowid <= ?", new String[]{Long.toString(j10)}) < arrayList.size()) {
                                    zzj().zzg().zza("Fewer entries removed from local database than expected");
                                }
                                sQLiteDatabase.setTransactionSuccessful();
                                sQLiteDatabase.endTransaction();
                                cursorQuery.close();
                                sQLiteDatabase.close();
                                return arrayList;
                            } catch (SQLiteDatabaseLockedException unused5) {
                                cursorQuery = null;
                                sQLiteDatabase2 = sQLiteDatabase;
                                SystemClock.sleep(i11);
                                i11 += 20;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                if (sQLiteDatabase2 != null) {
                                    sQLiteDatabase2.close();
                                }
                                i12++;
                            } catch (SQLiteFullException e14) {
                                e = e14;
                                cursorQuery = null;
                            } catch (SQLiteException e15) {
                                e = e15;
                                cursorQuery = null;
                            } catch (Throwable th7) {
                                th = th7;
                            }
                        } catch (SQLiteFullException e16) {
                            e = e16;
                            cursorQuery = null;
                            zzj().zzg().zza("Error reading entries from local database", e);
                            this.zzb = true;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (sQLiteDatabaseZzad != null) {
                                sQLiteDatabaseZzad.close();
                            }
                            i12++;
                        } catch (SQLiteException e17) {
                            e = e17;
                            cursorQuery = null;
                            if (sQLiteDatabaseZzad != null) {
                                if (sQLiteDatabaseZzad.inTransaction()) {
                                    sQLiteDatabaseZzad.endTransaction();
                                }
                            }
                            zzj().zzg().zza("Error reading entries from local database", e);
                            this.zzb = true;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (sQLiteDatabaseZzad != null) {
                                sQLiteDatabaseZzad.close();
                            }
                            i12++;
                        }
                    } catch (SQLiteDatabaseLockedException unused6) {
                        sQLiteDatabase = sQLiteDatabaseZzad;
                    } catch (Throwable th8) {
                        th = th8;
                        sQLiteDatabase = sQLiteDatabaseZzad;
                    }
                }
            } catch (SQLiteDatabaseLockedException unused7) {
                cursorQuery = null;
                sQLiteDatabase2 = null;
            } catch (SQLiteFullException e18) {
                e = e18;
                cursorQuery = null;
                sQLiteDatabaseZzad = null;
            } catch (SQLiteException e19) {
                e = e19;
                cursorQuery = null;
                sQLiteDatabaseZzad = null;
            } catch (Throwable th9) {
                th = th9;
                sQLiteDatabase = null;
            }
            if (cursor != null) {
                cursor.close();
            }
            if (sQLiteDatabase != null) {
                sQLiteDatabase.close();
            }
            throw th;
        }
        zzj().zzu().zza("Failed to read events from database in reasonable time");
        return null;
    }

    public final boolean zza(zzae zzaeVar) {
        zzq();
        byte[] bArrZza = zzos.zza((Parcelable) zzaeVar);
        if (bArrZza.length > 131072) {
            zzj().zzn().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zza(2, bArrZza);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:77:0x0123  */
    /* JADX WARN: Code duplicated, block: B:79:0x0128  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    private final boolean zza(int i10, byte[] bArr) throws Throwable {
        SQLiteDatabase sQLiteDatabaseZzad;
        ?? RawQuery;
        long j10;
        zzt();
        ?? r10 = 0;
        if (this.zzb) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(i10));
        contentValues.put("entry", bArr);
        int i11 = 0;
        int i12 = 5;
        for (int i13 = 5; i11 < i13; i13 = 5) {
            ?? r11 = 0;
             = 0;
            r11 = 0;
            ?? r12 = 0;
            r11 = 0;
            SQLiteDatabase sQLiteDatabase = null;
            try {
                sQLiteDatabaseZzad = zzad();
                try {
                    if (sQLiteDatabaseZzad == null) {
                        this.zzb = true;
                        if (sQLiteDatabaseZzad != null) {
                            sQLiteDatabaseZzad.close();
                        }
                        return r10;
                    }
                    sQLiteDatabaseZzad.beginTransaction();
                    RawQuery = sQLiteDatabaseZzad.rawQuery("select count(1) from messages", null);
                    if (RawQuery != 0) {
                        try {
                            if (RawQuery.moveToFirst()) {
                                j10 = RawQuery.getLong(r10);
                            } else {
                                j10 = 0;
                            }
                        } catch (SQLiteDatabaseLockedException unused) {
                            r12 = RawQuery;
                            SystemClock.sleep(i12);
                            i12 += 20;
                            if (r12 != 0) {
                                r12.close();
                            }
                            if (sQLiteDatabaseZzad != null) {
                                sQLiteDatabaseZzad.close();
                            }
                            i11++;
                            r10 = 0;
                        } catch (SQLiteFullException e10) {
                            e = e10;
                            r11 = RawQuery;
                            try {
                                zzj().zzg().zza("Error writing entry; local database full", e);
                                this.zzb = true;
                                if (r11 != 0) {
                                    r11.close();
                                }
                                if (sQLiteDatabaseZzad != null) {
                                    sQLiteDatabaseZzad.close();
                                }
                                i11++;
                                r10 = 0;
                            } catch (Throwable th2) {
                                th = th2;
                                if (r11 != 0) {
                                    r11.close();
                                }
                                if (sQLiteDatabaseZzad != null) {
                                    sQLiteDatabaseZzad.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e11) {
                            e = e11;
                            sQLiteDatabase = sQLiteDatabaseZzad;
                            RawQuery = RawQuery;
                            if (sQLiteDatabase != null) {
                                try {
                                    if (sQLiteDatabase.inTransaction()) {
                                        sQLiteDatabase.endTransaction();
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    sQLiteDatabaseZzad = sQLiteDatabase;
                                    r11 = RawQuery;
                                    if (r11 != 0) {
                                        r11.close();
                                    }
                                    if (sQLiteDatabaseZzad != null) {
                                        sQLiteDatabaseZzad.close();
                                    }
                                    throw th;
                                }
                            }
                            zzj().zzg().zza("Error writing entry to local database", e);
                            this.zzb = true;
                            if (RawQuery != 0) {
                                RawQuery.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            i11++;
                            r10 = 0;
                        } catch (Throwable th4) {
                            th = th4;
                            r11 = RawQuery;
                            if (r11 != 0) {
                                r11.close();
                            }
                            if (sQLiteDatabaseZzad != null) {
                                sQLiteDatabaseZzad.close();
                            }
                            throw th;
                        }
                    } else {
                        j10 = 0;
                    }
                    if (j10 >= 100000) {
                        zzj().zzg().zza("Data loss, local db full");
                        long j11 = 100001 - j10;
                        long jDelete = sQLiteDatabaseZzad.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", new String[]{Long.toString(j11)});
                        if (jDelete != j11) {
                            zzj().zzg().zza("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j11), Long.valueOf(jDelete), Long.valueOf(j11 - jDelete));
                        }
                    }
                    sQLiteDatabaseZzad.insertOrThrow("messages", null, contentValues);
                    sQLiteDatabaseZzad.setTransactionSuccessful();
                    sQLiteDatabaseZzad.endTransaction();
                    if (RawQuery != 0) {
                        RawQuery.close();
                    }
                    sQLiteDatabaseZzad.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused2) {
                } catch (SQLiteFullException e12) {
                    e = e12;
                } catch (SQLiteException e13) {
                    e = e13;
                    RawQuery = 0;
                }
            } catch (SQLiteDatabaseLockedException unused3) {
                sQLiteDatabaseZzad = null;
            } catch (SQLiteFullException e14) {
                e = e14;
                sQLiteDatabaseZzad = null;
            } catch (SQLiteException e15) {
                e = e15;
                RawQuery = 0;
            } catch (Throwable th5) {
                th = th5;
                sQLiteDatabaseZzad = null;
                if (r11 != 0) {
                    r11.close();
                }
                if (sQLiteDatabaseZzad != null) {
                    sQLiteDatabaseZzad.close();
                }
                throw th;
            }
        }
        zzj().zzp().zza("Failed to write entry to local database");
        return false;
    }

    public final boolean zza(zzbf zzbfVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzbfVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length > 131072) {
            zzj().zzn().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zza(0, bArrMarshall);
    }

    public final boolean zza(zzon zzonVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzonVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length > 131072) {
            zzj().zzn().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return zza(1, bArrMarshall);
    }
}
