package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;

final class zzgi extends com.google.android.gms.internal.measurement.zzck {
    private final zzgf zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgi(zzgf zzgfVar, Context context, String str) {
        super(context, str, null, 1);
        this.zza = zzgfVar;
    }

    @Override
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e10) {
            throw e10;
        } catch (SQLiteException unused) {
            this.zza.zzj().zzg().zza("Opening the local database failed, dropping and recreating it");
            if (!this.zza.zza().getDatabasePath("google_app_measurement_local.db").delete()) {
                this.zza.zzj().zzg().zza("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e11) {
                this.zza.zzj().zzg().zza("Failed to open local database. Events will bypass local storage", e11);
                return null;
            }
        }
    }

    @Override
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        zzaw.zza(this.zza.zzj(), sQLiteDatabase);
    }

    @Override
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        zzaw.zza(this.zza.zzj(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }

    @Override
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
