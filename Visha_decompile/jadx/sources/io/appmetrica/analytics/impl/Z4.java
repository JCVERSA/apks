package io.appmetrica.analytics.impl;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
import okhttp3.internal.connection.RealConnection;
import org.mozilla.javascript.ES6Iterator;

public final class Z4 extends DatabaseScript {
    public final int a = 2000;
    public final String b = "number";
    public final String c = "global_number";
    public final String d = "number_of_type";
    public final String e = "name";
    public final String f = ES6Iterator.VALUE_PROPERTY;
    public final String g = "type";
    public final String h = "time";
    public final String i = "session_id";
    public final String j = "error_environment";
    public final String k = "session_type";
    public final String l = "app_environment";
    public final String m = "app_environment_revision";
    public final String n = "truncated";
    public final String o = "custom_type";
    public final String p = "encrypting_mode";
    public final String q = "profile_id";
    public final String r = "first_occurrence_status";
    public final String s = "source";
    public final String t = "attribution_id_changed";
    public final String u = "open_id";
    public final String v = "extras";
    public final String w = "reports";
    public final C2733n7 x = new C2733n7(null, 1, 0 == true ? 1 : 0);

    public static boolean a(C2708m7 c2708m7) {
        Long l;
        EnumC2588hb enumC2588hb;
        Long l2;
        Long l3;
        Long l4;
        Integer num;
        Long l5 = c2708m7.a;
        return (l5 == null || l5.longValue() < RealConnection.IDLE_CONNECTION_HEALTHY_NS || c2708m7.b == null || (l = c2708m7.c) == null || l.longValue() < 0 || (enumC2588hb = c2708m7.d) == null || enumC2588hb == EnumC2588hb.EVENT_TYPE_UNDEFINED || (l2 = c2708m7.e) == null || l2.longValue() < 0 || (l3 = c2708m7.f) == null || l3.longValue() < 0 || ((l4 = c2708m7.g.d) != null && l4.longValue() < 0) || ((num = c2708m7.g.i) != null && num.intValue() < 0)) ? false : true;
    }

    @Override
    public final void runScript(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery;
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY,session_id INTEGER,session_type INTEGER,number_in_session INTEGER,type INTEGER,global_number INTEGER,time INTEGER,event_description BLOB )");
        Cursor cursor = null;
        try {
            cursorQuery = sQLiteDatabase.query(this.w, null, null, null, null, null, null, String.valueOf(this.a));
            while (cursorQuery.moveToNext()) {
                try {
                    C2708m7 c2708m7A = a(cursorQuery);
                    if (c2708m7A != null && a(c2708m7A)) {
                        try {
                            sQLiteDatabase.insertOrThrow("events", null, this.x.fromModel(c2708m7A));
                        } catch (Throwable unused) {
                        }
                    }
                } catch (Throwable unused2) {
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursorQuery = cursor;
                    }
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + this.w);
                }
            }
        } catch (Throwable unused3) {
        }
        cursorQuery.close();
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + this.w);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0115 A[PHI: r4
      0x0115: PHI (r4v7 io.appmetrica.analytics.impl.s9) = (r4v5 io.appmetrica.analytics.impl.s9), (r4v6 io.appmetrica.analytics.impl.s9) binds: [B:32:0x0113, B:35:0x011a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:34:0x0118 A[Catch: all -> 0x0120, TRY_LEAVE, TryCatch #0 {all -> 0x0120, blocks: (B:31:0x0107, B:34:0x0118), top: B:57:0x0107, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x011d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0131  */
    /* JADX WARN: Code duplicated, block: B:50:0x014e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0151 A[Catch: all -> 0x016b, TryCatch #4 {all -> 0x016b, blocks: (B:3:0x0005, B:10:0x002a, B:20:0x00e0, B:44:0x0132, B:48:0x0142, B:52:0x0157, B:51:0x0151, B:38:0x0120, B:29:0x0103, B:13:0x00d4, B:16:0x00d9, B:6:0x0024, B:31:0x0107, B:34:0x0118, B:21:0x00ea, B:24:0x00fb, B:27:0x0100), top: B:65:0x0005, inners: #0, #3 }] */
    public final C2708m7 a(Cursor cursor) {
        EnumC3045zk enumC3045zk;
        M8 m8;
        EnumC2661ka enumC2661ka;
        EnumC2661ka enumC2661ka2;
        EnumC2859s9 enumC2859s9;
        int i;
        int columnIndex;
        byte[] blob;
        int i2;
        EnumC2859s9 enumC2859s10;
        try {
            Long lValueOf = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.i)));
            int i3 = cursor.getInt(cursor.getColumnIndexOrThrow(this.k));
            EnumC3045zk enumC3045zk2 = EnumC3045zk.FOREGROUND;
            if (i3 != 0) {
                enumC3045zk2 = EnumC3045zk.BACKGROUND;
                enumC3045zk = i3 == 1 ? enumC3045zk2 : null;
            }
            Long lValueOf2 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.b)));
            EnumC2588hb enumC2588hbA = EnumC2588hb.a(cursor.getInt(cursor.getColumnIndexOrThrow(this.g)));
            Long lValueOf3 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.c)));
            Long lValueOf4 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.h)));
            Integer numValueOf = Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(this.o)));
            String string = cursor.getString(cursor.getColumnIndexOrThrow(this.e));
            String string2 = cursor.getString(cursor.getColumnIndexOrThrow(this.f));
            Long lValueOf5 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.d)));
            String string3 = cursor.getString(cursor.getColumnIndexOrThrow(this.j));
            String string4 = cursor.getString(cursor.getColumnIndexOrThrow(this.l));
            Long lValueOf6 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.m)));
            Integer numValueOf2 = Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(this.n)));
            int i4 = cursor.getInt(cursor.getColumnIndexOrThrow(this.p));
            M8 m9 = M8.NONE;
            if (i4 == 0) {
                m8 = m9;
            } else {
                m9 = M8.AES_VALUE_ENCRYPTION;
                if (i4 != 2) {
                    m9 = M8.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER;
                    if (i4 != 1) {
                        m8 = null;
                    }
                }
                m8 = m9;
            }
            String string5 = cursor.getString(cursor.getColumnIndexOrThrow(this.q));
            try {
                try {
                    try {
                        try {
                            int i5 = cursor.getInt(cursor.getColumnIndexOrThrow(this.r));
                            EnumC2661ka enumC2661ka3 = EnumC2661ka.FIRST_OCCURRENCE;
                            if (i5 != 1) {
                                enumC2661ka3 = EnumC2661ka.NON_FIRST_OCCURENCE;
                                if (i5 != 2) {
                                    enumC2661ka = EnumC2661ka.UNKNOWN;
                                    enumC2661ka2 = enumC2661ka;
                                    i2 = cursor.getInt(cursor.getColumnIndexOrThrow(this.s));
                                    enumC2859s10 = EnumC2859s9.NATIVE;
                                    if (i2 == 0) {
                                        enumC2859s9 = enumC2859s10;
                                    } else {
                                        enumC2859s10 = EnumC2859s9.JS;
                                        if (i2 == 1) {
                                            enumC2859s9 = enumC2859s10;
                                        } else {
                                            enumC2859s9 = null;
                                        }
                                    }
                                    boolean z = cursor.getInt(cursor.getColumnIndexOrThrow(this.t)) == 1;
                                    Boolean boolValueOf = Boolean.valueOf(z);
                                    i = cursor.getInt(cursor.getColumnIndexOrThrow(this.u));
                                    Integer numValueOf3 = Integer.valueOf(i);
                                    columnIndex = cursor.getColumnIndex(this.v);
                                    if (columnIndex < 0) {
                                        blob = null;
                                    } else {
                                        blob = cursor.getBlob(columnIndex);
                                    }
                                    return new C2708m7(lValueOf, enumC3045zk, lValueOf2, enumC2588hbA, lValueOf3, lValueOf4, new C2683l7(numValueOf, string, string2, lValueOf5, null, string3, string4, lValueOf6, numValueOf2, null, null, m8, string5, enumC2661ka2, enumC2859s9, boolValueOf, numValueOf3, blob));
                                }
                                return null;
                            }
                            enumC2661ka2 = enumC2661ka3;
                        } catch (Throwable unused) {
                            enumC2661ka = EnumC2661ka.UNKNOWN;
                        }
                        if (cursor.getInt(cursor.getColumnIndexOrThrow(this.t)) == 1) {
                        }
                    } catch (Throwable unused2) {
                    }
                    i = cursor.getInt(cursor.getColumnIndexOrThrow(this.u));
                } catch (Throwable unused3) {
                    i = -1;
                }
                i2 = cursor.getInt(cursor.getColumnIndexOrThrow(this.s));
                enumC2859s10 = EnumC2859s9.NATIVE;
                if (i2 == 0) {
                    enumC2859s9 = enumC2859s10;
                } else {
                    enumC2859s10 = EnumC2859s9.JS;
                    if (i2 == 1) {
                        enumC2859s9 = enumC2859s10;
                    } else {
                        enumC2859s9 = null;
                    }
                }
            } catch (Throwable unused4) {
                enumC2859s9 = EnumC2859s9.NATIVE;
            }
            Boolean boolValueOf2 = Boolean.valueOf(z);
            Integer numValueOf4 = Integer.valueOf(i);
            columnIndex = cursor.getColumnIndex(this.v);
            if (columnIndex < 0) {
                blob = null;
            } else {
                blob = cursor.getBlob(columnIndex);
            }
            return new C2708m7(lValueOf, enumC3045zk, lValueOf2, enumC2588hbA, lValueOf3, lValueOf4, new C2683l7(numValueOf, string, string2, lValueOf5, null, string3, string4, lValueOf6, numValueOf2, null, null, m8, string5, enumC2661ka2, enumC2859s9, boolValueOf2, numValueOf4, blob));
        } catch (Throwable unused5) {
            return null;
        }
    }
}
