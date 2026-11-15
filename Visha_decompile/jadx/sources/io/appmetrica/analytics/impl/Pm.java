package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.i81;
import io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.ArrayList;
import java.util.List;

public final class Pm implements TempCacheStorage {
    public final F6 a;
    public final String b;
    public final SystemTimeProvider c = new SystemTimeProvider();

    public Pm(F6 f6, String str) {
        this.a = f6;
        this.b = str;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final List<TempCacheStorage.Entry> get(String str, int i) {
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabaseA;
        Rm rm;
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase sQLiteDatabase = null;
        Cursor cursor = null;
        try {
            sQLiteDatabaseA = this.a.a();
            if (sQLiteDatabaseA != null) {
                try {
                    cursorQuery = sQLiteDatabaseA.query(false, this.b, null, "scope=?", new String[]{str}, null, null, TtmlNode.ATTR_ID, String.valueOf(i));
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            try {
                                try {
                                    rm = new Rm(cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow(TtmlNode.ATTR_ID)), cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("scope")), cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("timestamp")), cursorQuery.getBlob(cursorQuery.getColumnIndexOrThrow("data")));
                                } catch (Throwable unused) {
                                    rm = null;
                                }
                                if (rm != null) {
                                    arrayList.add(rm);
                                }
                            } catch (Throwable unused2) {
                                sQLiteDatabase = sQLiteDatabaseA;
                                sQLiteDatabaseA = sQLiteDatabase;
                            }
                        }
                    }
                } catch (Throwable unused3) {
                    cursorQuery = null;
                }
                cursor = cursorQuery;
            }
        } catch (Throwable unused4) {
            cursorQuery = null;
        }
        In.a(cursor);
        this.a.a(sQLiteDatabaseA);
        return arrayList;
    }

    @Override
    public final long put(String str, long j, byte[] bArr) {
        SQLiteDatabase sQLiteDatabaseA;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabaseA = this.a.a();
            if (sQLiteDatabaseA != null) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("scope", str);
                    contentValues.put("timestamp", Long.valueOf(j));
                    contentValues.put("data", bArr);
                    long jInsertOrThrow = sQLiteDatabaseA.insertOrThrow(this.b, null, contentValues);
                    this.a.a(sQLiteDatabaseA);
                    return jInsertOrThrow;
                } catch (Throwable unused) {
                    sQLiteDatabase = sQLiteDatabaseA;
                    sQLiteDatabaseA = sQLiteDatabase;
                    this.a.a(sQLiteDatabaseA);
                    return -1L;
                }
            }
        } catch (Throwable unused2) {
        }
        this.a.a(sQLiteDatabaseA);
        return -1L;
    }

    @Override
    public final void remove(long j) {
        a("id=?", new String[]{String.valueOf(j)});
    }

    @Override
    public final void removeOlderThan(String str, long j) {
        a("scope=? AND timestamp<?", new String[]{str, String.valueOf(this.c.currentTimeMillis() - j)});
    }

    @Override
    public final TempCacheStorage.Entry get(String str) {
        return (TempCacheStorage.Entry) i81.q0(get(str, 1));
    }

    public final void a(String str, String[] strArr) {
        SQLiteDatabase sQLiteDatabaseA;
        try {
            sQLiteDatabaseA = this.a.a();
            if (sQLiteDatabaseA != null) {
                try {
                    sQLiteDatabaseA.delete(this.b, str, strArr);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
            sQLiteDatabaseA = null;
        }
        this.a.a(sQLiteDatabaseA);
    }
}
