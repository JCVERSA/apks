package androidx.sqlite.db.framework;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.Build;
import android.os.CancellationSignal;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteCompat;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.w74;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 k2\u00020\u0001:\u0002lkB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\rJ\u000f\u0010\u0015\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0015\u0010\rJ\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u0019\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ+\u0010#\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\"\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020&2\u0006\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b%\u0010'J)\u0010%\u001a\u00020&2\u0006\u0010%\u001a\u00020\u00062\u0010\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010!0 H\u0016¢\u0006\u0004\b%\u0010(J\u0017\u0010%\u001a\u00020&2\u0006\u0010%\u001a\u00020)H\u0016¢\u0006\u0004\b%\u0010*J!\u0010%\u001a\u00020&2\u0006\u0010%\u001a\u00020)2\b\u0010,\u001a\u0004\u0018\u00010+H\u0017¢\u0006\u0004\b%\u0010-J'\u00103\u001a\u00020\u001a2\u0006\u0010.\u001a\u00020\u00062\u0006\u00100\u001a\u00020/2\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J5\u00107\u001a\u00020/2\u0006\u0010.\u001a\u00020\u00062\b\u00105\u001a\u0004\u0018\u00010\u00062\u0012\u00106\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0016¢\u0006\u0004\b7\u00108JE\u00109\u001a\u00020/2\u0006\u0010.\u001a\u00020\u00062\u0006\u00100\u001a\u00020/2\u0006\u00102\u001a\u0002012\b\u00105\u001a\u0004\u0018\u00010\u00062\u0012\u00106\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0016¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b;\u0010<J)\u0010;\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0010\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010!0 H\u0016¢\u0006\u0004\b;\u0010$J\u0017\u0010>\u001a\u00020\u00162\u0006\u0010=\u001a\u00020/H\u0016¢\u0006\u0004\b>\u0010?J\u0017\u0010B\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020@H\u0016¢\u0006\u0004\bB\u0010CJ\u0017\u0010E\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020/H\u0016¢\u0006\u0004\bE\u0010FJ\u0017\u0010H\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u0016H\u0017¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\u0016H\u0016¢\u0006\u0004\bJ\u0010\u0018J\u000f\u0010K\u001a\u00020\u000bH\u0017¢\u0006\u0004\bK\u0010\rJ\u000f\u0010L\u001a\u00020\u000bH\u0016¢\u0006\u0004\bL\u0010\rJ\u0015\u0010N\u001a\u00020\u00162\u0006\u0010M\u001a\u00020\u0002¢\u0006\u0004\bN\u0010OR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010PR\u0014\u0010Q\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010\u0018R$\u0010V\u001a\u00020/2\u0006\u0010R\u001a\u00020/8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bS\u0010T\"\u0004\bU\u0010FR$\u0010Z\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001a8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bW\u0010X\"\u0004\b\u001e\u0010YR\u0014\u0010[\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b[\u0010\u0018R$\u0010^\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001a8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\\\u0010X\"\u0004\b]\u0010YR\u0014\u0010_\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b_\u0010\u0018R\u0014\u0010`\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b`\u0010\u0018R\u0016\u0010c\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\ba\u0010bR\u0014\u0010d\u001a\u00020\u00168WX\u0096\u0004¢\u0006\u0006\u001a\u0004\bd\u0010\u0018R(\u0010i\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060f\u0018\u00010e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bg\u0010hR\u0014\u0010j\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bj\u0010\u0018¨\u0006m"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "Landroid/database/sqlite/SQLiteDatabase;", "delegate", MethodDecl.initName, "(Landroid/database/sqlite/SQLiteDatabase;)V", "", "sql", "Landroidx/sqlite/db/SupportSQLiteStatement;", "compileStatement", "(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;", "Lzfb;", "beginTransaction", "()V", "beginTransactionNonExclusive", "Landroid/database/sqlite/SQLiteTransactionListener;", "transactionListener", "beginTransactionWithListener", "(Landroid/database/sqlite/SQLiteTransactionListener;)V", "beginTransactionWithListenerNonExclusive", "endTransaction", "setTransactionSuccessful", "", "inTransaction", "()Z", "yieldIfContendedSafely", "", "sleepAfterYieldDelayMillis", "(J)Z", "numBytes", "setMaximumSize", "(J)J", "", "", "bindArgs", "execPerConnectionSQL", "(Ljava/lang/String;[Ljava/lang/Object;)V", "query", "Landroid/database/Cursor;", "(Ljava/lang/String;)Landroid/database/Cursor;", "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;", "Landroid/os/CancellationSignal;", "cancellationSignal", "(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;", "table", "", "conflictAlgorithm", "Landroid/content/ContentValues;", "values", "insert", "(Ljava/lang/String;ILandroid/content/ContentValues;)J", "whereClause", "whereArgs", "delete", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I", "update", "(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I", "execSQL", "(Ljava/lang/String;)V", "newVersion", "needUpgrade", "(I)Z", "Ljava/util/Locale;", CommonUrlParts.LOCALE, "setLocale", "(Ljava/util/Locale;)V", "cacheSize", "setMaxSqlCacheSize", "(I)V", "enabled", "setForeignKeyConstraintsEnabled", "(Z)V", "enableWriteAheadLogging", "disableWriteAheadLogging", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "sqLiteDatabase", "isDelegate", "(Landroid/database/sqlite/SQLiteDatabase;)Z", "Landroid/database/sqlite/SQLiteDatabase;", "isDbLockedByCurrentThread", ES6Iterator.VALUE_PROPERTY, "getVersion", "()I", "setVersion", "version", "getMaximumSize", "()J", "(J)V", "maximumSize", "isExecPerConnectionSQLSupported", "getPageSize", "setPageSize", "pageSize", "isReadOnly", "isOpen", "getPath", "()Ljava/lang/String;", "path", "isWriteAheadLoggingEnabled", "", "Landroid/util/Pair;", "getAttachedDbs", "()Ljava/util/List;", "attachedDbs", "isDatabaseIntegrityOk", "Companion", "Api30Impl", "sqlite-framework_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FrameworkSQLiteDatabase implements SupportSQLiteDatabase {
    private final SQLiteDatabase delegate;
    private static final String[] CONFLICT_VALUES = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    private static final String[] EMPTY_STRING_ARRAY = new String[0];

    @RequiresApi(30)
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J3\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\t\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\bH\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$Api30Impl;", "", MethodDecl.initName, "()V", "Landroid/database/sqlite/SQLiteDatabase;", "sQLiteDatabase", "", "sql", "", "bindArgs", "Lzfb;", "execPerConnectionSQL", "(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V", "sqlite-framework_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api30Impl {
        public static final Api30Impl INSTANCE = new Api30Impl();

        private Api30Impl() {
        }

        @DoNotInline
        public final void execPerConnectionSQL(SQLiteDatabase sQLiteDatabase, String sql, Object[] bindArgs) {
            y45.j(sQLiteDatabase, "sQLiteDatabase");
            y45.j(sql, "sql");
            sQLiteDatabase.execPerConnectionSQL(sql, bindArgs);
        }
    }

    public FrameworkSQLiteDatabase(SQLiteDatabase sQLiteDatabase) {
        y45.j(sQLiteDatabase, "delegate");
        this.delegate = sQLiteDatabase;
    }

    public static final Cursor query$lambda$0(w74 w74Var, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        y45.j(w74Var, "$tmp0");
        return (Cursor) w74Var.invoke(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
    }

    public static final Cursor query$lambda$1(SupportSQLiteQuery supportSQLiteQuery, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        y45.j(supportSQLiteQuery, "$query");
        y45.g(sQLiteQuery);
        supportSQLiteQuery.bindTo(new FrameworkSQLiteProgram(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    @Override
    public void beginTransaction() {
        this.delegate.beginTransaction();
    }

    @Override
    public void beginTransactionNonExclusive() {
        this.delegate.beginTransactionNonExclusive();
    }

    @Override
    public void beginTransactionWithListener(SQLiteTransactionListener transactionListener) {
        y45.j(transactionListener, "transactionListener");
        this.delegate.beginTransactionWithListener(transactionListener);
    }

    @Override
    public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener transactionListener) {
        y45.j(transactionListener, "transactionListener");
        this.delegate.beginTransactionWithListenerNonExclusive(transactionListener);
    }

    @Override
    public void close() throws IOException {
        this.delegate.close();
    }

    @Override
    public SupportSQLiteStatement compileStatement(String sql) {
        y45.j(sql, "sql");
        SQLiteStatement sQLiteStatementCompileStatement = this.delegate.compileStatement(sql);
        y45.i(sQLiteStatementCompileStatement, "delegate.compileStatement(sql)");
        return new FrameworkSQLiteStatement(sQLiteStatementCompileStatement);
    }

    @Override
    public int delete(String table, String whereClause, Object[] whereArgs) {
        y45.j(table, "table");
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM ");
        sb.append(table);
        if (whereClause != null && whereClause.length() != 0) {
            sb.append(" WHERE ");
            sb.append(whereClause);
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = compileStatement(string);
        SimpleSQLiteQuery.INSTANCE.bind(supportSQLiteStatementCompileStatement, whereArgs);
        return supportSQLiteStatementCompileStatement.executeUpdateDelete();
    }

    @Override
    @RequiresApi(api = 16)
    public void disableWriteAheadLogging() {
        SupportSQLiteCompat.Api16Impl.disableWriteAheadLogging(this.delegate);
    }

    @Override
    public boolean enableWriteAheadLogging() {
        return this.delegate.enableWriteAheadLogging();
    }

    @Override
    public void endTransaction() {
        this.delegate.endTransaction();
    }

    @Override
    public void execPerConnectionSQL(String sql, Object[] bindArgs) {
        y45.j(sql, "sql");
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            Api30Impl.INSTANCE.execPerConnectionSQL(this.delegate, sql, bindArgs);
            return;
        }
        throw new UnsupportedOperationException("execPerConnectionSQL is not supported on a SDK version lower than 30, current version is: " + i);
    }

    @Override
    public void execSQL(String sql) throws SQLException {
        y45.j(sql, "sql");
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
    public long insert(String table, int conflictAlgorithm, ContentValues values) throws SQLException {
        y45.j(table, "table");
        y45.j(values, "values");
        return this.delegate.insertWithOnConflict(table, null, values, conflictAlgorithm);
    }

    @Override
    public boolean isDatabaseIntegrityOk() {
        return this.delegate.isDatabaseIntegrityOk();
    }

    @Override
    public boolean isDbLockedByCurrentThread() {
        return this.delegate.isDbLockedByCurrentThread();
    }

    public final boolean isDelegate(SQLiteDatabase sqLiteDatabase) {
        y45.j(sqLiteDatabase, "sqLiteDatabase");
        return y45.e(this.delegate, sqLiteDatabase);
    }

    @Override
    public boolean isExecPerConnectionSQLSupported() {
        return Build.VERSION.SDK_INT >= 30;
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
        return SupportSQLiteCompat.Api16Impl.isWriteAheadLoggingEnabled(this.delegate);
    }

    @Override
    public boolean needUpgrade(int newVersion) {
        return this.delegate.needUpgrade(newVersion);
    }

    @Override
    public Cursor query(String query) {
        y45.j(query, "query");
        return query(new SimpleSQLiteQuery(query));
    }

    @Override
    @RequiresApi(api = 16)
    public void setForeignKeyConstraintsEnabled(boolean enabled) {
        SupportSQLiteCompat.Api16Impl.setForeignKeyConstraintsEnabled(this.delegate, enabled);
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

    public void m55setMaximumSize(long j) {
        this.delegate.setMaximumSize(j);
    }

    @Override
    public void setPageSize(long j) {
        this.delegate.setPageSize(j);
    }

    @Override
    public void setTransactionSuccessful() {
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
        if (values.size() == 0) {
            throw new IllegalArgumentException("Empty values");
        }
        int size = values.size();
        int length = whereArgs == null ? size : whereArgs.length + size;
        Object[] objArr = new Object[length];
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE ");
        sb.append(CONFLICT_VALUES[conflictAlgorithm]);
        sb.append(table);
        sb.append(" SET ");
        int i = 0;
        for (String str : values.keySet()) {
            sb.append(i > 0 ? StringUtils.COMMA : "");
            sb.append(str);
            objArr[i] = values.get(str);
            sb.append("=?");
            i++;
        }
        if (whereArgs != null) {
            for (int i2 = size; i2 < length; i2++) {
                objArr[i2] = whereArgs[i2 - size];
            }
        }
        if (!TextUtils.isEmpty(whereClause)) {
            sb.append(" WHERE ");
            sb.append(whereClause);
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = compileStatement(string);
        SimpleSQLiteQuery.INSTANCE.bind(supportSQLiteStatementCompileStatement, objArr);
        return supportSQLiteStatementCompileStatement.executeUpdateDelete();
    }

    @Override
    public boolean yieldIfContendedSafely() {
        return this.delegate.yieldIfContendedSafely();
    }

    @Override
    public void execSQL(String sql, Object[] bindArgs) throws SQLException {
        y45.j(sql, "sql");
        y45.j(bindArgs, "bindArgs");
        this.delegate.execSQL(sql, bindArgs);
    }

    @Override
    public Cursor query(String query, Object[] bindArgs) {
        y45.j(query, "query");
        y45.j(bindArgs, "bindArgs");
        return query(new SimpleSQLiteQuery(query, bindArgs));
    }

    @Override
    public long setMaximumSize(long numBytes) {
        this.delegate.setMaximumSize(numBytes);
        return this.delegate.getMaximumSize();
    }

    @Override
    public boolean yieldIfContendedSafely(long sleepAfterYieldDelayMillis) {
        return this.delegate.yieldIfContendedSafely(sleepAfterYieldDelayMillis);
    }

    @Override
    public Cursor query(final SupportSQLiteQuery query) {
        y45.j(query, "query");
        final w74 w74Var = new w74() {
            {
                super(4);
            }

            @Override
            public final SQLiteCursor invoke(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                SupportSQLiteQuery supportSQLiteQuery = query;
                y45.g(sQLiteQuery);
                supportSQLiteQuery.bindTo(new FrameworkSQLiteProgram(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        };
        Cursor cursorRawQueryWithFactory = this.delegate.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() {
            @Override
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                return FrameworkSQLiteDatabase.query$lambda$0(w74Var, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, query.getQuery(), EMPTY_STRING_ARRAY, null);
        y45.i(cursorRawQueryWithFactory, "delegate.rawQueryWithFac…EMPTY_STRING_ARRAY, null)");
        return cursorRawQueryWithFactory;
    }

    @Override
    @RequiresApi(16)
    public Cursor query(final SupportSQLiteQuery query, CancellationSignal cancellationSignal) {
        y45.j(query, "query");
        SQLiteDatabase sQLiteDatabase = this.delegate;
        String query2 = query.getQuery();
        String[] strArr = EMPTY_STRING_ARRAY;
        y45.g(cancellationSignal);
        return SupportSQLiteCompat.Api16Impl.rawQueryWithFactory(sQLiteDatabase, query2, strArr, null, cancellationSignal, new SQLiteDatabase.CursorFactory() {
            @Override
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase2, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                return FrameworkSQLiteDatabase.query$lambda$1(query, sQLiteDatabase2, sQLiteCursorDriver, str, sQLiteQuery);
            }
        });
    }
}
