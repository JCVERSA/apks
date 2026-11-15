package com.mgtv.data.aphone.core.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

abstract class d extends SQLiteOpenHelper {
    private static Executor a = Executors.newSingleThreadExecutor(new ThreadFactory() {
        private final AtomicInteger a = new AtomicInteger(1);

        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(runnable, "SDKDBHelper async #" + this.a.getAndIncrement());
        }
    });

    public d(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    public static <E extends Enum & b> int b(E[] eArr) {
        Class<?> cls = eArr[0].getClass();
        try {
            return ((Integer) cls.getField("VERSION").get(null)).intValue();
        } catch (Exception unused) {
            throw new RuntimeException("必须定义 " + cls.getSimpleName() + " 的VERSION静态常量！");
        }
    }

    public abstract void a(SQLiteDatabase sQLiteDatabase, int i);

    public void a(@NonNull h hVar, boolean z) {
        g gVar = new g(getWritableDatabase(), hVar);
        if (z) {
            a.execute(gVar);
        } else {
            gVar.run();
        }
    }

    @Override
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase, 0);
    }

    @Override
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        a(sQLiteDatabase, i);
    }

    public static SQLiteStatement a(SQLiteDatabase sQLiteDatabase, @NonNull String str, @NonNull Enum<?>[] enumArr, @Nullable List<? extends Enum<?>> list) {
        return sQLiteDatabase.compileStatement(a(str, enumArr, list));
    }

    public static String a(@NonNull String str, @NonNull Enum<?>[] enumArr, @Nullable List<? extends Enum<?>> list) {
        StringBuilder sb = new StringBuilder("INSERT OR REPLACE INTO " + str + " (");
        StringBuilder sb2 = new StringBuilder(" VALUES (");
        int length = enumArr.length;
        boolean z = true;
        for (int i = 0; i < length; i++) {
            Enum<?> r5 = enumArr[i];
            if (list == null || !list.contains(r5)) {
                sb.append(z ? "" : ", ");
                sb.append(r5.name());
                sb2.append(z ? "" : ", ");
                sb2.append("?");
                z = false;
            }
        }
        sb.append(")");
        sb2.append(")");
        sb.append((CharSequence) sb2);
        return sb.toString();
    }

    public static SQLiteStatement a(SQLiteDatabase sQLiteDatabase, @NonNull String str) {
        return sQLiteDatabase.compileStatement(a(str));
    }

    public static String a(@NonNull String str) {
        return new StringBuilder("DELETE FROM " + str + " ").toString();
    }

    public static <E extends Enum & b> void a(SQLiteDatabase sQLiteDatabase, E[] eArr, int i) {
        int iB = b(eArr);
        String strA = a(eArr);
        if (i >= iB) {
            return;
        }
        sQLiteDatabase.execSQL(a(strA, eArr));
        a(sQLiteDatabase, strA, eArr);
    }

    public static <E extends Enum & b> String a(String str, E[] eArr) {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS " + str + "(");
        ArrayList<String> arrayList = new ArrayList();
        int length = eArr.length;
        boolean z = true;
        boolean z2 = true;
        int i = 0;
        while (i < length) {
            E e = eArr[i];
            if (!z2) {
                sb.append(", ");
            }
            if (e.getDesc().b) {
                arrayList.add(e.name());
            }
            sb.append(e.name());
            sb.append(" ");
            sb.append(e.getDesc().a);
            i++;
            z2 = false;
        }
        if (arrayList.size() > 0) {
            sb.append(", PRIMARY KEY (");
            for (String str2 : arrayList) {
                sb.append(z ? "" : StringUtils.COMMA);
                sb.append(str2);
                z = false;
            }
            sb.append(")");
        }
        for (E e2 : eArr) {
            if (e2.getDesc().d) {
                sb.append(", FOREIGN KEY(");
                sb.append(e2.name());
                sb.append(") REFERENCES ");
                E e3 = e2;
                sb.append(e3.getDesc().e);
                sb.append("(");
                sb.append(e3.getDesc().f);
                sb.append(")");
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public static <E extends Enum & b> String a(E[] eArr) {
        Class<?> cls = eArr[0].getClass();
        try {
            return (String) cls.getField("TABLE").get(null);
        } catch (Exception unused) {
            throw new RuntimeException("必须定义 " + cls.getSimpleName() + " 的TABLE静态常量，并且值不能为空！");
        }
    }

    private static <E extends Enum & b> void a(SQLiteDatabase sQLiteDatabase, String str, E[] eArr) {
        for (E e : eArr) {
            String strA = a(str, e);
            if (strA != null) {
                sQLiteDatabase.execSQL(strA);
            }
        }
    }

    public static <E extends Enum & b> String a(String str, E e) {
        if (!e.getDesc().c) {
            return null;
        }
        return "CREATE INDEX " + str + "_" + e.name() + "_index_name ON " + str + "(" + e.name() + ")";
    }
}
