package a4;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f implements z3.d {

    public static final a f126b = new a(null);

    private static final String[] f127c = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    private static final String[] f128d = new String[0];

    private static final Lazy f129e;

    private static final Lazy f130f;

    private final SQLiteDatabase f131a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Method c() {
            return (Method) f.f130f.getValue();
        }

        public final Method d() {
            return (Method) f.f129e.getValue();
        }

        private a() {
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        f129e = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return f.q();
            }
        });
        f130f = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return f.o();
            }
        });
    }

    public f(SQLiteDatabase delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f131a = delegate;
    }

    public static final Method o() {
        Class<?> returnType;
        try {
            Method methodD = f126b.d();
            if (methodD == null || (returnType = methodD.getReturnType()) == null) {
                return null;
            }
            Class<?> cls = Integer.TYPE;
            return returnType.getDeclaredMethod("beginTransaction", cls, SQLiteTransactionListener.class, cls, CancellationSignal.class);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final Method q() {
        try {
            Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", null);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private final void r(SQLiteTransactionListener sQLiteTransactionListener) throws IllegalAccessException, InvocationTargetException {
        a aVar = f126b;
        if (aVar.c() == null || aVar.d() == null) {
            if (sQLiteTransactionListener != null) {
                p(sQLiteTransactionListener);
                return;
            } else {
                A();
                return;
            }
        }
        Method methodC = aVar.c();
        Intrinsics.e(methodC);
        Method methodD = aVar.d();
        Intrinsics.e(methodD);
        Object objInvoke = methodD.invoke(this.f131a, null);
        if (objInvoke == null) {
            throw new IllegalStateException("Required value was null.");
        }
        methodC.invoke(objInvoke, 0, sQLiteTransactionListener, 0, null);
    }

    public static final SQLiteCursor t(z3.g gVar, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        Intrinsics.e(sQLiteQuery);
        gVar.b(new i(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    public static final Cursor u(Function4 function4, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        return (Cursor) function4.invoke(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
    }

    public static final Cursor v(z3.g gVar, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        Intrinsics.e(sQLiteQuery);
        gVar.b(new i(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    @Override
    public void A() {
        this.f131a.beginTransaction();
    }

    @Override
    public List D() {
        return this.f131a.getAttachedDbs();
    }

    @Override
    public void E(String sql) {
        Intrinsics.h(sql, "sql");
        this.f131a.execSQL(sql);
    }

    @Override
    public void I() {
        this.f131a.setTransactionSuccessful();
    }

    @Override
    public void J(String sql, Object[] bindArgs) {
        Intrinsics.h(sql, "sql");
        Intrinsics.h(bindArgs, "bindArgs");
        this.f131a.execSQL(sql, bindArgs);
    }

    @Override
    public void K() {
        this.f131a.beginTransactionNonExclusive();
    }

    @Override
    public void L() {
        this.f131a.endTransaction();
    }

    @Override
    public void U(int i10) {
        this.f131a.setVersion(i10);
    }

    @Override
    public z3.h Y(String sql) {
        Intrinsics.h(sql, "sql");
        SQLiteStatement sQLiteStatementCompileStatement = this.f131a.compileStatement(sql);
        Intrinsics.g(sQLiteStatementCompileStatement, "compileStatement(...)");
        return new j(sQLiteStatementCompileStatement);
    }

    @Override
    public Cursor a0(final z3.g query, CancellationSignal cancellationSignal) {
        Intrinsics.h(query, "query");
        SQLiteDatabase sQLiteDatabase = this.f131a;
        SQLiteDatabase.CursorFactory cursorFactory = new SQLiteDatabase.CursorFactory() {
            @Override
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase2, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                return f.v(query, sQLiteDatabase2, sQLiteCursorDriver, str, sQLiteQuery);
            }
        };
        String strD = query.d();
        String[] strArr = f128d;
        Intrinsics.e(cancellationSignal);
        Cursor cursorRawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(cursorFactory, strD, strArr, null, cancellationSignal);
        Intrinsics.g(cursorRawQueryWithFactory, "rawQueryWithFactory(...)");
        return cursorRawQueryWithFactory;
    }

    @Override
    public Cursor b0(final z3.g query) {
        Intrinsics.h(query, "query");
        final Function4 function4 = new Function4() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return f.t(query, (SQLiteDatabase) obj, (SQLiteCursorDriver) obj2, (String) obj3, (SQLiteQuery) obj4);
            }
        };
        Cursor cursorRawQueryWithFactory = this.f131a.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() {
            @Override
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                return f.u(function4, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, query.d(), f128d, null);
        Intrinsics.g(cursorRawQueryWithFactory, "rawQueryWithFactory(...)");
        return cursorRawQueryWithFactory;
    }

    @Override
    public void c0() throws IllegalAccessException, InvocationTargetException {
        r(null);
    }

    @Override
    public void close() {
        this.f131a.close();
    }

    @Override
    public String getPath() {
        return this.f131a.getPath();
    }

    @Override
    public int getVersion() {
        return this.f131a.getVersion();
    }

    @Override
    public int i0(String table, int i10, ContentValues values, String str, Object[] objArr) {
        Intrinsics.h(table, "table");
        Intrinsics.h(values, "values");
        if (values.size() == 0) {
            throw new IllegalArgumentException("Empty values");
        }
        int size = values.size();
        int length = objArr == null ? size : objArr.length + size;
        Object[] objArr2 = new Object[length];
        StringBuilder sb2 = new StringBuilder();
        sb2.append("UPDATE ");
        sb2.append(f127c[i10]);
        sb2.append(table);
        sb2.append(" SET ");
        int i11 = 0;
        for (String str2 : values.keySet()) {
            sb2.append(i11 > 0 ? "," : "");
            sb2.append(str2);
            objArr2[i11] = values.get(str2);
            sb2.append("=?");
            i11++;
        }
        if (objArr != null) {
            for (int i12 = size; i12 < length; i12++) {
                objArr2[i12] = objArr[i12 - size];
            }
        }
        if (!TextUtils.isEmpty(str)) {
            sb2.append(" WHERE ");
            sb2.append(str);
        }
        z3.h hVarY = Y(sb2.toString());
        z3.a.f76609c.b(hVarY, objArr2);
        return hVarY.F();
    }

    @Override
    public boolean isOpen() {
        return this.f131a.isOpen();
    }

    @Override
    public Cursor m0(String query) {
        Intrinsics.h(query, "query");
        return b0(new z3.a(query));
    }

    @Override
    public long n0(String table, int i10, ContentValues values) {
        Intrinsics.h(table, "table");
        Intrinsics.h(values, "values");
        return this.f131a.insertWithOnConflict(table, null, values, i10);
    }

    public void p(SQLiteTransactionListener transactionListener) {
        Intrinsics.h(transactionListener, "transactionListener");
        this.f131a.beginTransactionWithListener(transactionListener);
    }

    public final boolean s(SQLiteDatabase sqLiteDatabase) {
        Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
        return Intrinsics.c(this.f131a, sqLiteDatabase);
    }

    @Override
    public boolean v0() {
        return this.f131a.inTransaction();
    }

    @Override
    public boolean z0() {
        return this.f131a.isWriteAheadLoggingEnabled();
    }
}
