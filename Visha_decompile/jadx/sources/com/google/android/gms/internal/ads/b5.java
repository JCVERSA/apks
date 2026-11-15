package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.b5;
import com.google.android.gms.internal.ads.c3;
import com.google.android.gms.internal.ads.i3;
import defpackage.lug;
import defpackage.pqh;
import java.util.ArrayList;
import org.mozilla.javascript.ES6Iterator;

public final class b5 {
    public final o0 a;
    public final Context b;
    public final lug c;
    public final VersionInfoParcel d;

    public b5(Context context, VersionInfoParcel versionInfoParcel, o0 o0Var, lug lugVar) {
        this.b = context;
        this.d = versionInfoParcel;
        this.a = o0Var;
        this.c = lugVar;
    }

    public static Void a(b5 b5Var, boolean z, SQLiteDatabase sQLiteDatabase) {
        if (z) {
            b5Var.b.deleteDatabase("OfflineUpload.db");
        } else {
            ArrayList arrayList = new ArrayList();
            Cursor cursorQuery = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(y0.G0(cursorQuery.getBlob(cursorQuery.getColumnIndexOrThrow("serialized_proto_data"))));
                } catch (zzgyk e) {
                    int i = zze.zza;
                    zzo.zzg("Unable to deserialize proto from offline signals database:");
                    zzo.zzg(e.getMessage());
                }
            }
            cursorQuery.close();
            Context context = b5Var.b;
            a1 a1VarS0 = c1.s0();
            a1VarS0.A(context.getPackageName());
            a1VarS0.C(Build.MODEL);
            a1VarS0.v(a5.a(sQLiteDatabase, 0));
            a1VarS0.z(arrayList);
            a1VarS0.x(a5.a(sQLiteDatabase, 1));
            a1VarS0.B(a5.a(sQLiteDatabase, 3));
            a1VarS0.y(zzv.zzC().currentTimeMillis());
            a1VarS0.w(a5.b(sQLiteDatabase, 2));
            final c1 c1Var = (c1) a1VarS0.q();
            int size = arrayList.size();
            long jC0 = 0;
            for (int i2 = 0; i2 < size; i2++) {
                y0 y0Var = (y0) arrayList.get(i2);
                if (y0Var.D0() == zzbbn$zzq.ENUM_TRUE && y0Var.C0() > jC0) {
                    jC0 = y0Var.C0();
                }
            }
            if (jC0 != 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(ES6Iterator.VALUE_PROPERTY, Long.valueOf(jC0));
                sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
            }
            o0 o0Var = b5Var.a;
            o0Var.b(new n0() {
                @Override
                public final void a(i3 i3Var) {
                    i3Var.z(c1Var);
                }
            });
            VersionInfoParcel versionInfoParcel = b5Var.d;
            n1 n1VarH0 = o1.h0();
            n1VarH0.v(versionInfoParcel.buddyApkVersion);
            n1VarH0.x(versionInfoParcel.clientJarVersion);
            n1VarH0.w(true == versionInfoParcel.isClientJar ? 0 : 2);
            final o1 o1Var = (o1) n1VarH0.q();
            o0Var.b(new n0() {
                @Override
                public final void a(i3 i3Var) {
                    c3 c3Var = (c3) i3Var.E().H();
                    c3Var.w(o1Var);
                    i3Var.x(c3Var);
                }
            });
            o0Var.c(10004);
            a5.e(sQLiteDatabase);
        }
        return null;
    }

    public final void b(final boolean z) {
        try {
            this.c.a(new pqh() {
                @Override
                public final Object zza(Object obj) {
                    b5.a(this.a, z, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            int i = zze.zza;
            zzo.zzg("Error in offline signals database startup: ".concat(strValueOf));
        }
    }
}
