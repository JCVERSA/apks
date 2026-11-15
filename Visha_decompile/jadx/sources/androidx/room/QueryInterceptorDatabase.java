package androidx.room;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import androidx.room.QueryInterceptorDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.d81;
import defpackage.hi;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0018\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tH\u0096\u0001¢\u0006\u0004\b\n\u0010\u000bJ6\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0012\u0010\u0011\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u000fH\u0096\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\tH\u0097\u0001¢\u0006\u0004\b\u0015\u0010\u000bJ\u0010\u0010\u0017\u001a\u00020\u0016H\u0096\u0001¢\u0006\u0004\b\u0017\u0010\u0018J.\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\f2\u0014\b\u0001\u0010\u001a\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u000fH\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0016H\u0096\u0001¢\u0006\u0004\b\u001d\u0010\u0018J(\u0010\"\u001a\u00020!2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u001fH\u0096\u0001¢\u0006\u0004\b\"\u0010#J\u0018\u0010%\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0012H\u0096\u0001¢\u0006\u0004\b%\u0010&J\u0018\u0010(\u001a\u00020\t2\u0006\u0010'\u001a\u00020\u0016H\u0097\u0001¢\u0006\u0004\b(\u0010)J\u0018\u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020*H\u0096\u0001¢\u0006\u0004\b,\u0010-J\u0018\u0010/\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0012H\u0096\u0001¢\u0006\u0004\b/\u00100J\u0018\u00102\u001a\u00020!2\u0006\u00101\u001a\u00020!H\u0096\u0001¢\u0006\u0004\b2\u00103JF\u00104\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u001f2\b\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0012\u0010\u0011\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u000fH\u0096\u0001¢\u0006\u0004\b4\u00105J\u0010\u00106\u001a\u00020\u0016H\u0096\u0001¢\u0006\u0004\b6\u0010\u0018J\u0018\u00106\u001a\u00020\u00162\u0006\u00107\u001a\u00020!H\u0096\u0001¢\u0006\u0004\b6\u00108J\u0017\u0010:\u001a\u0002092\u0006\u0010\u0019\u001a\u00020\fH\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\tH\u0016¢\u0006\u0004\b<\u0010\u000bJ\u000f\u0010=\u001a\u00020\tH\u0016¢\u0006\u0004\b=\u0010\u000bJ\u0017\u0010@\u001a\u00020\t2\u0006\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b@\u0010AJ\u0017\u0010B\u001a\u00020\t2\u0006\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\bB\u0010AJ\u000f\u0010C\u001a\u00020\tH\u0016¢\u0006\u0004\bC\u0010\u000bJ\u000f\u0010D\u001a\u00020\tH\u0016¢\u0006\u0004\bD\u0010\u000bJ\u0017\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020\fH\u0016¢\u0006\u0004\bE\u0010GJ)\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020\f2\u0010\u0010\u001a\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00100\u000fH\u0016¢\u0006\u0004\bE\u0010HJ\u0017\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020IH\u0016¢\u0006\u0004\bE\u0010JJ!\u0010E\u001a\u00020F2\u0006\u0010E\u001a\u00020I2\b\u0010L\u001a\u0004\u0018\u00010KH\u0016¢\u0006\u0004\bE\u0010MJ\u0017\u0010N\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\fH\u0016¢\u0006\u0004\bN\u0010OJ)\u0010N\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\f2\u0010\u0010\u001a\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00100\u000fH\u0016¢\u0006\u0004\bN\u0010\u001cR\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010PR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010QR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010RR(\u0010W\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0T\u0018\u00010S8VX\u0096\u0005¢\u0006\u0006\u001a\u0004\bU\u0010VR\u0014\u0010X\u001a\u00020\u00168\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bX\u0010\u0018R\u0014\u0010Y\u001a\u00020\u00168\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bY\u0010\u0018R\u0014\u0010Z\u001a\u00020\u00168VX\u0096\u0005¢\u0006\u0006\u001a\u0004\bZ\u0010\u0018R\u0014\u0010[\u001a\u00020\u00168\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b[\u0010\u0018R\u0014\u0010\\\u001a\u00020\u00168\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\\\u0010\u0018R\u0014\u0010]\u001a\u00020\u00168WX\u0096\u0005¢\u0006\u0006\u001a\u0004\b]\u0010\u0018R\u0014\u0010`\u001a\u00020!8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b^\u0010_R\u001c\u0010d\u001a\u00020!8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\ba\u0010_\"\u0004\bb\u0010cR\u0016\u0010g\u001a\u0004\u0018\u00010\f8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\be\u0010fR\u001c\u0010k\u001a\u00020\u00128\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bh\u0010i\"\u0004\bj\u00100¨\u0006l"}, d2 = {"Landroidx/room/QueryInterceptorDatabase;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "delegate", "Ljava/util/concurrent/Executor;", "queryCallbackExecutor", "Landroidx/room/RoomDatabase$QueryCallback;", "queryCallback", MethodDecl.initName, "(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V", "Lzfb;", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "()V", "", "table", "whereClause", "", "", "whereArgs", "", "delete", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I", "disableWriteAheadLogging", "", "enableWriteAheadLogging", "()Z", "sql", "bindArgs", "execPerConnectionSQL", "(Ljava/lang/String;[Ljava/lang/Object;)V", "inTransaction", "conflictAlgorithm", "Landroid/content/ContentValues;", "values", "", "insert", "(Ljava/lang/String;ILandroid/content/ContentValues;)J", "newVersion", "needUpgrade", "(I)Z", "enabled", "setForeignKeyConstraintsEnabled", "(Z)V", "Ljava/util/Locale;", CommonUrlParts.LOCALE, "setLocale", "(Ljava/util/Locale;)V", "cacheSize", "setMaxSqlCacheSize", "(I)V", "numBytes", "setMaximumSize", "(J)J", "update", "(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I", "yieldIfContendedSafely", "sleepAfterYieldDelayMillis", "(J)Z", "Landroidx/sqlite/db/SupportSQLiteStatement;", "compileStatement", "(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;", "beginTransaction", "beginTransactionNonExclusive", "Landroid/database/sqlite/SQLiteTransactionListener;", "transactionListener", "beginTransactionWithListener", "(Landroid/database/sqlite/SQLiteTransactionListener;)V", "beginTransactionWithListenerNonExclusive", "endTransaction", "setTransactionSuccessful", "query", "Landroid/database/Cursor;", "(Ljava/lang/String;)Landroid/database/Cursor;", "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;", "Landroid/os/CancellationSignal;", "cancellationSignal", "(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;", "execSQL", "(Ljava/lang/String;)V", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "Ljava/util/concurrent/Executor;", "Landroidx/room/RoomDatabase$QueryCallback;", "", "Landroid/util/Pair;", "getAttachedDbs", "()Ljava/util/List;", "attachedDbs", "isDatabaseIntegrityOk", "isDbLockedByCurrentThread", "isExecPerConnectionSQLSupported", "isOpen", "isReadOnly", "isWriteAheadLoggingEnabled", "getMaximumSize", "()J", "maximumSize", "getPageSize", "setPageSize", "(J)V", "pageSize", "getPath", "()Ljava/lang/String;", "path", "getVersion", "()I", "setVersion", "version", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class QueryInterceptorDatabase implements SupportSQLiteDatabase {
    private final SupportSQLiteDatabase delegate;
    private final RoomDatabase.QueryCallback queryCallback;
    private final Executor queryCallbackExecutor;

    public QueryInterceptorDatabase(SupportSQLiteDatabase supportSQLiteDatabase, Executor executor, RoomDatabase.QueryCallback queryCallback) {
        y45.j(supportSQLiteDatabase, "delegate");
        y45.j(executor, "queryCallbackExecutor");
        y45.j(queryCallback, "queryCallback");
        this.delegate = supportSQLiteDatabase;
        this.queryCallbackExecutor = executor;
        this.queryCallback = queryCallback;
    }

    public static final void beginTransaction$lambda$0(QueryInterceptorDatabase queryInterceptorDatabase) {
        y45.j(queryInterceptorDatabase, "this$0");
        queryInterceptorDatabase.queryCallback.onQuery("BEGIN EXCLUSIVE TRANSACTION", y71.k());
    }

    public static final void beginTransactionNonExclusive$lambda$1(QueryInterceptorDatabase queryInterceptorDatabase) {
        y45.j(queryInterceptorDatabase, "this$0");
        queryInterceptorDatabase.queryCallback.onQuery("BEGIN DEFERRED TRANSACTION", y71.k());
    }

    public static final void beginTransactionWithListener$lambda$2(QueryInterceptorDatabase queryInterceptorDatabase) {
        y45.j(queryInterceptorDatabase, "this$0");
        queryInterceptorDatabase.queryCallback.onQuery("BEGIN EXCLUSIVE TRANSACTION", y71.k());
    }

    public static final void beginTransactionWithListenerNonExclusive$lambda$3(QueryInterceptorDatabase queryInterceptorDatabase) {
        y45.j(queryInterceptorDatabase, "this$0");
        queryInterceptorDatabase.queryCallback.onQuery("BEGIN DEFERRED TRANSACTION", y71.k());
    }

    public static final void endTransaction$lambda$4(QueryInterceptorDatabase queryInterceptorDatabase) {
        y45.j(queryInterceptorDatabase, "this$0");
        queryInterceptorDatabase.queryCallback.onQuery("END TRANSACTION", y71.k());
    }

    public static final void execSQL$lambda$10(QueryInterceptorDatabase queryInterceptorDatabase, String str) {
        y45.j(queryInterceptorDatabase, "this$0");
        y45.j(str, "$sql");
        queryInterceptorDatabase.queryCallback.onQuery(str, y71.k());
    }

    public static final void execSQL$lambda$12(QueryInterceptorDatabase queryInterceptorDatabase, String str, List list) {
        y45.j(queryInterceptorDatabase, "this$0");
        y45.j(str, "$sql");
        y45.j(list, "$inputArguments");
        queryInterceptorDatabase.queryCallback.onQuery(str, list);
    }

    public static final void query$lambda$6(QueryInterceptorDatabase queryInterceptorDatabase, String str) {
        y45.j(queryInterceptorDatabase, "this$0");
        y45.j(str, "$query");
        queryInterceptorDatabase.queryCallback.onQuery(str, y71.k());
    }

    public static final void query$lambda$7(QueryInterceptorDatabase queryInterceptorDatabase, String str, Object[] objArr) {
        y45.j(queryInterceptorDatabase, "this$0");
        y45.j(str, "$query");
        y45.j(objArr, "$bindArgs");
        queryInterceptorDatabase.queryCallback.onQuery(str, hi.c1(objArr));
    }

    public static final void query$lambda$8(QueryInterceptorDatabase queryInterceptorDatabase, SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram) {
        y45.j(queryInterceptorDatabase, "this$0");
        y45.j(supportSQLiteQuery, "$query");
        y45.j(queryInterceptorProgram, "$queryInterceptorProgram");
        queryInterceptorDatabase.queryCallback.onQuery(supportSQLiteQuery.getQuery(), queryInterceptorProgram.getBindArgsCache$room_runtime_release());
    }

    public static final void query$lambda$9(QueryInterceptorDatabase queryInterceptorDatabase, SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram) {
        y45.j(queryInterceptorDatabase, "this$0");
        y45.j(supportSQLiteQuery, "$query");
        y45.j(queryInterceptorProgram, "$queryInterceptorProgram");
        queryInterceptorDatabase.queryCallback.onQuery(supportSQLiteQuery.getQuery(), queryInterceptorProgram.getBindArgsCache$room_runtime_release());
    }

    public static final void setTransactionSuccessful$lambda$5(QueryInterceptorDatabase queryInterceptorDatabase) {
        y45.j(queryInterceptorDatabase, "this$0");
        queryInterceptorDatabase.queryCallback.onQuery("TRANSACTION SUCCESSFUL", y71.k());
    }

    @Override
    public void beginTransaction() {
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.beginTransaction$lambda$0(this.b);
            }
        });
        this.delegate.beginTransaction();
    }

    @Override
    public void beginTransactionNonExclusive() {
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.beginTransactionNonExclusive$lambda$1(this.b);
            }
        });
        this.delegate.beginTransactionNonExclusive();
    }

    @Override
    public void beginTransactionWithListener(SQLiteTransactionListener transactionListener) {
        y45.j(transactionListener, "transactionListener");
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.beginTransactionWithListener$lambda$2(this.b);
            }
        });
        this.delegate.beginTransactionWithListener(transactionListener);
    }

    @Override
    public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener transactionListener) {
        y45.j(transactionListener, "transactionListener");
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.beginTransactionWithListenerNonExclusive$lambda$3(this.b);
            }
        });
        this.delegate.beginTransactionWithListenerNonExclusive(transactionListener);
    }

    @Override
    public void close() throws IOException {
        this.delegate.close();
    }

    @Override
    public SupportSQLiteStatement compileStatement(String sql) {
        y45.j(sql, "sql");
        return new QueryInterceptorStatement(this.delegate.compileStatement(sql), sql, this.queryCallbackExecutor, this.queryCallback);
    }

    @Override
    public int delete(String table, String whereClause, Object[] whereArgs) {
        y45.j(table, "table");
        return this.delegate.delete(table, whereClause, whereArgs);
    }

    @Override
    @RequiresApi(api = 16)
    public void disableWriteAheadLogging() {
        this.delegate.disableWriteAheadLogging();
    }

    @Override
    public boolean enableWriteAheadLogging() {
        return this.delegate.enableWriteAheadLogging();
    }

    @Override
    public void endTransaction() {
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.endTransaction$lambda$4(this.b);
            }
        });
        this.delegate.endTransaction();
    }

    @Override
    public void execPerConnectionSQL(String sql, @SuppressLint({"ArrayReturn"}) Object[] bindArgs) {
        y45.j(sql, "sql");
        this.delegate.execPerConnectionSQL(sql, bindArgs);
    }

    @Override
    public void execSQL(final String sql) {
        y45.j(sql, "sql");
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.execSQL$lambda$10(this.b, sql);
            }
        });
        this.delegate.execSQL(sql);
    }

    @Override
    public List<Pair<String, String>> getAttachedDbs() {
        return this.delegate.getAttachedDbs();
    }

    @Override
    public long getMaximumSize() {
        return this.delegate.getMaximumSize();
    }

    @Override
    public long getPageSize() {
        return this.delegate.getPageSize();
    }

    @Override
    public String getPath() {
        return this.delegate.getPath();
    }

    @Override
    public int getVersion() {
        return this.delegate.getVersion();
    }

    @Override
    public boolean inTransaction() {
        return this.delegate.inTransaction();
    }

    @Override
    public long insert(String table, int conflictAlgorithm, ContentValues values) {
        y45.j(table, "table");
        y45.j(values, "values");
        return this.delegate.insert(table, conflictAlgorithm, values);
    }

    @Override
    public boolean isDatabaseIntegrityOk() {
        return this.delegate.isDatabaseIntegrityOk();
    }

    @Override
    public boolean isDbLockedByCurrentThread() {
        return this.delegate.isDbLockedByCurrentThread();
    }

    @Override
    public boolean isExecPerConnectionSQLSupported() {
        return this.delegate.isExecPerConnectionSQLSupported();
    }

    @Override
    public boolean isOpen() {
        return this.delegate.isOpen();
    }

    @Override
    public boolean isReadOnly() {
        return this.delegate.isReadOnly();
    }

    @Override
    @RequiresApi(api = 16)
    public boolean isWriteAheadLoggingEnabled() {
        return this.delegate.isWriteAheadLoggingEnabled();
    }

    @Override
    public boolean needUpgrade(int newVersion) {
        return this.delegate.needUpgrade(newVersion);
    }

    @Override
    public Cursor query(final String query) {
        y45.j(query, "query");
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.query$lambda$6(this.b, query);
            }
        });
        return this.delegate.query(query);
    }

    @Override
    @RequiresApi(api = 16)
    public void setForeignKeyConstraintsEnabled(boolean enabled) {
        this.delegate.setForeignKeyConstraintsEnabled(enabled);
    }

    @Override
    public void setLocale(Locale locale) {
        y45.j(locale, CommonUrlParts.LOCALE);
        this.delegate.setLocale(locale);
    }

    @Override
    public void setMaxSqlCacheSize(int cacheSize) {
        this.delegate.setMaxSqlCacheSize(cacheSize);
    }

    @Override
    public long setMaximumSize(long numBytes) {
        return this.delegate.setMaximumSize(numBytes);
    }

    @Override
    public void setPageSize(long j) {
        this.delegate.setPageSize(j);
    }

    @Override
    public void setTransactionSuccessful() {
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.setTransactionSuccessful$lambda$5(this.b);
            }
        });
        this.delegate.setTransactionSuccessful();
    }

    @Override
    public void setVersion(int i) {
        this.delegate.setVersion(i);
    }

    @Override
    public int update(String table, int conflictAlgorithm, ContentValues values, String whereClause, Object[] whereArgs) {
        y45.j(table, "table");
        y45.j(values, "values");
        return this.delegate.update(table, conflictAlgorithm, values, whereClause, whereArgs);
    }

    @Override
    public boolean yieldIfContendedSafely() {
        return this.delegate.yieldIfContendedSafely();
    }

    @Override
    public boolean yieldIfContendedSafely(long sleepAfterYieldDelayMillis) {
        return this.delegate.yieldIfContendedSafely(sleepAfterYieldDelayMillis);
    }

    @Override
    public void execSQL(final String sql, Object[] bindArgs) {
        y45.j(sql, "sql");
        y45.j(bindArgs, "bindArgs");
        List listC = x71.c();
        d81.D(listC, bindArgs);
        final List listA = x71.a(listC);
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.execSQL$lambda$12(this.b, sql, listA);
            }
        });
        this.delegate.execSQL(sql, listA.toArray(new Object[0]));
    }

    @Override
    public Cursor query(final String query, final Object[] bindArgs) {
        y45.j(query, "query");
        y45.j(bindArgs, "bindArgs");
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.query$lambda$7(this.b, query, bindArgs);
            }
        });
        return this.delegate.query(query, bindArgs);
    }

    @Override
    public Cursor query(final SupportSQLiteQuery query) {
        y45.j(query, "query");
        final QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.bindTo(queryInterceptorProgram);
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.query$lambda$8(this.b, query, queryInterceptorProgram);
            }
        });
        return this.delegate.query(query);
    }

    @Override
    public Cursor query(final SupportSQLiteQuery query, CancellationSignal cancellationSignal) {
        y45.j(query, "query");
        final QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.bindTo(queryInterceptorProgram);
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.query$lambda$9(this.b, query, queryInterceptorProgram);
            }
        });
        return this.delegate.query(query);
    }
}
