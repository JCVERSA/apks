package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils;
import java.io.Closeable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.BooleanUtils;
import org.mozilla.javascript.ES6Iterator;

public final class C2986xb implements Oa, Closeable {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final String c = "preferences";
    public final C2961wb d;
    public volatile boolean e;
    public final F6 f;

    public C2986xb(F6 f6) {
        this.f = f6;
        C2961wb c2961wb = new C2961wb(this, String.format(Locale.US, "IAA-DW-%s", Integer.valueOf(ThreadFactoryC3013yd.a())));
        this.d = c2961wb;
        c2961wb.start();
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0055  */
    public static void a(C2986xb c2986xb) {
        SQLiteDatabase sQLiteDatabaseA;
        Object obj;
        c2986xb.getClass();
        Cursor cursor = null;
        try {
            sQLiteDatabaseA = c2986xb.f.a();
            if (sQLiteDatabaseA != null) {
                try {
                    Cursor cursorQuery = sQLiteDatabaseA.query(c2986xb.c, new String[]{"key", ES6Iterator.VALUE_PROPERTY, "type"}, null, null, null, null, null);
                    while (cursorQuery.moveToNext()) {
                        try {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("key"));
                            String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(ES6Iterator.VALUE_PROPERTY));
                            int i = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("type"));
                            if (!TextUtils.isEmpty(string)) {
                                if (i != 1) {
                                    if (i == 2) {
                                        obj = ParseUtils.parseInt(string2);
                                    } else if (i == 3) {
                                        obj = ParseUtils.parseLong(string2);
                                    } else if (i != 4) {
                                        if (i != 5) {
                                            obj = string2;
                                            obj = null;
                                        } else {
                                            obj = string2;
                                            obj = ParseUtils.parseFloat(string2);
                                        }
                                    }
                                } else if (BooleanUtils.TRUE.equals(string2)) {
                                    obj = Boolean.TRUE;
                                } else if (BooleanUtils.FALSE.equals(string2)) {
                                    obj = Boolean.FALSE;
                                } else {
                                    obj = string2;
                                    obj = null;
                                }
                                if (obj != null) {
                                    c2986xb.a.put(string, obj);
                                }
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    cursor = cursorQuery;
                } catch (Throwable unused2) {
                }
            }
        } catch (Throwable unused3) {
            sQLiteDatabaseA = null;
        }
        In.a(cursor);
        c2986xb.f.a(sQLiteDatabaseA);
    }

    @Override
    public final void b() {
        synchronized (this.d) {
            this.d.notifyAll();
        }
    }

    public final void c() {
        if (this.e) {
            return;
        }
        try {
            this.a.wait();
        } catch (InterruptedException unused) {
        }
    }

    @Override
    public final void close() {
        if (this.d.isRunning()) {
            this.d.stopRunning();
        }
    }

    @Override
    public final boolean getBoolean(String str, boolean z) {
        Object objB = b(str);
        return objB instanceof Boolean ? ((Boolean) objB).booleanValue() : z;
    }

    @Override
    public final int getInt(String str, int i) {
        Object objB = b(str);
        return objB instanceof Integer ? ((Integer) objB).intValue() : i;
    }

    @Override
    public final long getLong(String str, long j) {
        Object objB = b(str);
        return objB instanceof Long ? ((Long) objB).longValue() : j;
    }

    @Override
    public final String getString(String str, String str2) {
        Object objB = b(str);
        return objB instanceof String ? (String) objB : str2;
    }

    @Override
    public final Oa remove(String str) {
        synchronized (this.a) {
            c();
            this.a.remove(str);
        }
        synchronized (this.d) {
            this.b.put(str, this);
            this.d.notifyAll();
        }
        return this;
    }

    public final Object b(String str) {
        Object obj;
        synchronized (this.a) {
            c();
            obj = this.a.get(str);
        }
        return obj;
    }

    public static void a(C2986xb c2986xb, HashMap map) {
        SQLiteDatabase sQLiteDatabaseA;
        c2986xb.getClass();
        int size = map.size();
        ContentValues[] contentValuesArr = new ContentValues[size];
        int i = 0;
        for (Map.Entry entry : map.entrySet()) {
            ContentValues contentValues = new ContentValues();
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            contentValues.put("key", str);
            if (value == c2986xb) {
                contentValues.putNull(ES6Iterator.VALUE_PROPERTY);
            } else if (value instanceof String) {
                contentValues.put(ES6Iterator.VALUE_PROPERTY, (String) value);
                contentValues.put("type", (Integer) 4);
            } else if (value instanceof Long) {
                contentValues.put(ES6Iterator.VALUE_PROPERTY, (Long) value);
                contentValues.put("type", (Integer) 3);
            } else if (value instanceof Integer) {
                contentValues.put(ES6Iterator.VALUE_PROPERTY, (Integer) value);
                contentValues.put("type", (Integer) 2);
            } else if (value instanceof Boolean) {
                contentValues.put(ES6Iterator.VALUE_PROPERTY, String.valueOf(((Boolean) value).booleanValue()));
                contentValues.put("type", (Integer) 1);
            } else if (value instanceof Float) {
                contentValues.put(ES6Iterator.VALUE_PROPERTY, (Float) value);
                contentValues.put("type", (Integer) 5);
            }
            contentValuesArr[i] = contentValues;
            i++;
        }
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabaseA = c2986xb.f.a();
            if (sQLiteDatabaseA != null) {
                try {
                    sQLiteDatabaseA.beginTransaction();
                    for (int i2 = 0; i2 < size; i2++) {
                        ContentValues contentValues2 = contentValuesArr[i2];
                        if (contentValues2.getAsString(ES6Iterator.VALUE_PROPERTY) == null) {
                            sQLiteDatabaseA.delete(c2986xb.c, "key = ?", new String[]{contentValues2.getAsString("key")});
                        } else {
                            sQLiteDatabaseA.insertWithOnConflict(c2986xb.c, null, contentValues2, 5);
                        }
                    }
                    sQLiteDatabaseA.setTransactionSuccessful();
                } catch (Throwable unused) {
                    sQLiteDatabase = sQLiteDatabaseA;
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable unused2) {
                        }
                    }
                    sQLiteDatabaseA = sQLiteDatabase;
                }
            }
            if (sQLiteDatabaseA != null) {
                try {
                    sQLiteDatabaseA.endTransaction();
                } catch (Throwable unused3) {
                }
            }
        } catch (Throwable unused4) {
        }
        c2986xb.f.a(sQLiteDatabaseA);
    }

    @Override
    public final synchronized Oa a(String str, String str2) {
        a(str, (Object) str2);
        return this;
    }

    @Override
    public final Oa a(String str, long j) {
        a(str, Long.valueOf(j));
        return this;
    }

    @Override
    public final synchronized Oa a(int i, String str) {
        a(str, Integer.valueOf(i));
        return this;
    }

    @Override
    public final Oa a(String str, boolean z) {
        a(str, Boolean.valueOf(z));
        return this;
    }

    @Override
    public final Oa a(String str, float f) {
        a(str, Float.valueOf(f));
        return this;
    }

    @Override
    public final boolean a(String str) {
        boolean zContainsKey;
        synchronized (this.a) {
            c();
            zContainsKey = this.a.containsKey(str);
        }
        return zContainsKey;
    }

    @Override
    public final Set a() {
        HashSet hashSet;
        synchronized (this.a) {
            hashSet = new HashSet(this.a.keySet());
        }
        return hashSet;
    }

    public final void a(String str, Object obj) {
        synchronized (this.a) {
            c();
            this.a.put(str, obj);
        }
        synchronized (this.d) {
            this.b.put(str, obj);
            this.d.notifyAll();
        }
    }
}
