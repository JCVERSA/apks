package androidx.room;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import app.fast.ssh.ProtectedFastSSH;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020(H\u0016J\u0010\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0016J\t\u0010.\u001a\u00020(H\u0096\u0001J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u000bH\u0016J4\u00102\u001a\u00020\"2\u0006\u00103\u001a\u00020\u000b2\b\u00104\u001a\u0004\u0018\u00010\u000b2\u0012\u00105\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u000107\u0018\u000106H\u0096\u0001¢\u0006\u0002\u00108J\t\u00109\u001a\u00020(H\u0097\u0001J\t\u0010:\u001a\u00020\u000fH\u0096\u0001J\b\u0010;\u001a\u00020(H\u0016J,\u0010<\u001a\u00020(2\u0006\u00101\u001a\u00020\u000b2\u0014\b\u0001\u0010=\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u000107\u0018\u000106H\u0096\u0001¢\u0006\u0002\u0010>J\u0010\u0010?\u001a\u00020(2\u0006\u00101\u001a\u00020\u000bH\u0016J'\u0010?\u001a\u00020(2\u0006\u00101\u001a\u00020\u000b2\u0010\u0010=\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010706H\u0016¢\u0006\u0002\u0010>J\t\u0010@\u001a\u00020\u000fH\u0096\u0001J!\u0010A\u001a\u00020\u00172\u0006\u00103\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\"2\u0006\u0010C\u001a\u00020DH\u0096\u0001J\u0011\u0010E\u001a\u00020\u000f2\u0006\u0010F\u001a\u00020\"H\u0096\u0001J\u0010\u0010G\u001a\u00020H2\u0006\u0010G\u001a\u00020IH\u0016J\u001a\u0010G\u001a\u00020H2\u0006\u0010G\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010KH\u0016J\u0010\u0010G\u001a\u00020H2\u0006\u0010G\u001a\u00020\u000bH\u0016J'\u0010G\u001a\u00020H2\u0006\u0010G\u001a\u00020\u000b2\u0010\u0010=\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010706H\u0016¢\u0006\u0002\u0010LJ\u0011\u0010M\u001a\u00020(2\u0006\u0010N\u001a\u00020\u000fH\u0097\u0001J\u0011\u0010O\u001a\u00020(2\u0006\u0010P\u001a\u00020QH\u0096\u0001J\u0011\u0010R\u001a\u00020(2\u0006\u0010S\u001a\u00020\"H\u0096\u0001J\u0011\u0010T\u001a\u00020\u00172\u0006\u0010U\u001a\u00020\u0017H\u0096\u0001J\b\u0010V\u001a\u00020(H\u0016JD\u0010W\u001a\u00020\"2\u0006\u00103\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\"2\u0006\u0010C\u001a\u00020D2\b\u00104\u001a\u0004\u0018\u00010\u000b2\u0012\u00105\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u000107\u0018\u000106H\u0096\u0001¢\u0006\u0002\u0010XJ\t\u0010Y\u001a\u00020\u000fH\u0096\u0001J\u0011\u0010Y\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020\u0017H\u0096\u0001R(\u0010\b\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n\u0018\u00010\t8VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000fX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u000fX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u0012\u0010\u0013\u001a\u00020\u000fX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0010R\u0012\u0010\u0014\u001a\u00020\u000fX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u000f8WX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0010R\u0012\u0010\u0016\u001a\u00020\u0017X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u00020\u0017X\u0096\u000f¢\u0006\f\u001a\u0004\b\u001b\u0010\u0019\"\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u000bX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010!\u001a\u00020\"X\u0096\u000f¢\u0006\f\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006["}, d2 = {"Landroidx/room/QueryInterceptorDatabase;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "delegate", "queryCallbackExecutor", "Ljava/util/concurrent/Executor;", "queryCallback", "Landroidx/room/RoomDatabase$QueryCallback;", "(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V", "attachedDbs", "", "Landroid/util/Pair;", "", "getAttachedDbs", "()Ljava/util/List;", "isDatabaseIntegrityOk", "", "()Z", "isDbLockedByCurrentThread", "isExecPerConnectionSQLSupported", "isOpen", "isReadOnly", "isWriteAheadLoggingEnabled", "maximumSize", "", "getMaximumSize", "()J", "pageSize", "getPageSize", "setPageSize", "(J)V", "path", "getPath", "()Ljava/lang/String;", "version", "", "getVersion", "()I", "setVersion", "(I)V", "beginTransaction", "", "beginTransactionNonExclusive", "beginTransactionWithListener", "transactionListener", "Landroid/database/sqlite/SQLiteTransactionListener;", "beginTransactionWithListenerNonExclusive", "close", "compileStatement", "Landroidx/sqlite/db/SupportSQLiteStatement;", "sql", "delete", "table", "whereClause", "whereArgs", "", "", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I", "disableWriteAheadLogging", "enableWriteAheadLogging", "endTransaction", "execPerConnectionSQL", "bindArgs", "(Ljava/lang/String;[Ljava/lang/Object;)V", "execSQL", "inTransaction", "insert", "conflictAlgorithm", "values", "Landroid/content/ContentValues;", "needUpgrade", "newVersion", "query", "Landroid/database/Cursor;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "cancellationSignal", "Landroid/os/CancellationSignal;", "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;", "setForeignKeyConstraintsEnabled", "enabled", "setLocale", "locale", "Ljava/util/Locale;", "setMaxSqlCacheSize", "cacheSize", "setMaximumSize", "numBytes", "setTransactionSuccessful", "update", "(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I", "yieldIfContendedSafely", "sleepAfterYieldDelayMillis", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class QueryInterceptorDatabase implements SupportSQLiteDatabase {
    private final SupportSQLiteDatabase delegate;
    private final RoomDatabase.QueryCallback queryCallback;
    private final Executor queryCallbackExecutor;

    public static void $r8$lambda$1b2mlPIXK1QKY1GFTSkGFjFbW9Q(QueryInterceptorDatabase queryInterceptorDatabase, String str, List list) {
        execSQL$lambda$11(queryInterceptorDatabase, str, list);
    }

    public static void $r8$lambda$Gpv4YX3WjGu4lYmzQMFlRiM3TyU(QueryInterceptorDatabase queryInterceptorDatabase, String str) {
        execSQL$lambda$10(queryInterceptorDatabase, str);
    }

    public static void $r8$lambda$Hdz_kxLXk_fdpg858Woqgj6Wpl4(QueryInterceptorDatabase queryInterceptorDatabase) {
        endTransaction$lambda$4(queryInterceptorDatabase);
    }

    public static void $r8$lambda$LxAqO_0_6Y5x4BgHz0eOQmKBSA4(QueryInterceptorDatabase queryInterceptorDatabase) {
        setTransactionSuccessful$lambda$5(queryInterceptorDatabase);
    }

    public static void $r8$lambda$QU6zQplx56XQWVhMrp9t0Sxs8q4(QueryInterceptorDatabase queryInterceptorDatabase) {
        beginTransaction$lambda$0(queryInterceptorDatabase);
    }

    public static void $r8$lambda$ZY_QqK5qsDepoudiZla9n6BurTg(QueryInterceptorDatabase queryInterceptorDatabase) {
        beginTransactionNonExclusive$lambda$1(queryInterceptorDatabase);
    }

    public static void m275$r8$lambda$enW6rOeweRF_oHxol1VabKBiFs(QueryInterceptorDatabase queryInterceptorDatabase, String str, Object[] objArr) {
        query$lambda$7(queryInterceptorDatabase, str, objArr);
    }

    public static void m276$r8$lambda$lAHuasulg2DyrvKuMpTKbtkx3o(QueryInterceptorDatabase queryInterceptorDatabase) {
        beginTransactionWithListener$lambda$2(queryInterceptorDatabase);
    }

    public static void $r8$lambda$lkbJOCqPf2ekCup0X6Wp_UIujto(QueryInterceptorDatabase queryInterceptorDatabase, String str) {
        query$lambda$6(queryInterceptorDatabase, str);
    }

    public static void $r8$lambda$mNMi8pDs4uUaIm9xv34iTMdA8Ps(QueryInterceptorDatabase queryInterceptorDatabase) {
        beginTransactionWithListenerNonExclusive$lambda$3(queryInterceptorDatabase);
    }

    public static void $r8$lambda$oAPj04hNrFgSXf1M8bF3PBNtVCU(QueryInterceptorDatabase queryInterceptorDatabase, SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram) {
        query$lambda$8(queryInterceptorDatabase, supportSQLiteQuery, queryInterceptorProgram);
    }

    public static void $r8$lambda$prMsYExJmC2Ba76XNqf6fSt02_s(QueryInterceptorDatabase queryInterceptorDatabase, SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram) {
        query$lambda$9(queryInterceptorDatabase, supportSQLiteQuery, queryInterceptorProgram);
    }

    public QueryInterceptorDatabase(SupportSQLiteDatabase supportSQLiteDatabase, Executor executor, RoomDatabase.QueryCallback queryCallback) {
        Intrinsics.checkNotNullParameter(supportSQLiteDatabase, ProtectedFastSSH.s("≉"));
        Intrinsics.checkNotNullParameter(executor, ProtectedFastSSH.s("≊"));
        Intrinsics.checkNotNullParameter(queryCallback, ProtectedFastSSH.s("≋"));
        this.delegate = supportSQLiteDatabase;
        this.queryCallbackExecutor = executor;
        this.queryCallback = queryCallback;
    }

    private static final void beginTransaction$lambda$0(QueryInterceptorDatabase queryInterceptorDatabase) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        queryInterceptorDatabase.queryCallback.onQuery(ProtectedFastSSH.s("≍"), CollectionsKt.emptyList());
    }

    private static final void beginTransactionNonExclusive$lambda$1(QueryInterceptorDatabase queryInterceptorDatabase) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        queryInterceptorDatabase.queryCallback.onQuery(ProtectedFastSSH.s("≎"), CollectionsKt.emptyList());
    }

    private static final void beginTransactionWithListener$lambda$2(QueryInterceptorDatabase queryInterceptorDatabase) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        queryInterceptorDatabase.queryCallback.onQuery(ProtectedFastSSH.s("≍"), CollectionsKt.emptyList());
    }

    private static final void beginTransactionWithListenerNonExclusive$lambda$3(QueryInterceptorDatabase queryInterceptorDatabase) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        queryInterceptorDatabase.queryCallback.onQuery(ProtectedFastSSH.s("≎"), CollectionsKt.emptyList());
    }

    private static final void endTransaction$lambda$4(QueryInterceptorDatabase queryInterceptorDatabase) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        queryInterceptorDatabase.queryCallback.onQuery(ProtectedFastSSH.s("≏"), CollectionsKt.emptyList());
    }

    private static final void execSQL$lambda$10(QueryInterceptorDatabase queryInterceptorDatabase, String str) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        Intrinsics.checkNotNullParameter(str, ProtectedFastSSH.s("≐"));
        queryInterceptorDatabase.queryCallback.onQuery(str, CollectionsKt.emptyList());
    }

    private static final void execSQL$lambda$11(QueryInterceptorDatabase queryInterceptorDatabase, String str, List list) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        Intrinsics.checkNotNullParameter(str, ProtectedFastSSH.s("≐"));
        Intrinsics.checkNotNullParameter(list, ProtectedFastSSH.s("≑"));
        queryInterceptorDatabase.queryCallback.onQuery(str, list);
    }

    private static final void query$lambda$6(QueryInterceptorDatabase queryInterceptorDatabase, String str) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        Intrinsics.checkNotNullParameter(str, ProtectedFastSSH.s("≒"));
        queryInterceptorDatabase.queryCallback.onQuery(str, CollectionsKt.emptyList());
    }

    private static final void query$lambda$7(QueryInterceptorDatabase queryInterceptorDatabase, String str, Object[] objArr) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        Intrinsics.checkNotNullParameter(str, ProtectedFastSSH.s("≒"));
        Intrinsics.checkNotNullParameter(objArr, ProtectedFastSSH.s("≓"));
        queryInterceptorDatabase.queryCallback.onQuery(str, ArraysKt.toList(objArr));
    }

    private static final void query$lambda$8(QueryInterceptorDatabase queryInterceptorDatabase, SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        Intrinsics.checkNotNullParameter(supportSQLiteQuery, ProtectedFastSSH.s("≒"));
        Intrinsics.checkNotNullParameter(queryInterceptorProgram, ProtectedFastSSH.s("≔"));
        queryInterceptorDatabase.queryCallback.onQuery(supportSQLiteQuery.getQuery(), queryInterceptorProgram.getBindArgsCache$room_runtime_release());
    }

    private static final void query$lambda$9(QueryInterceptorDatabase queryInterceptorDatabase, SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        Intrinsics.checkNotNullParameter(supportSQLiteQuery, ProtectedFastSSH.s("≒"));
        Intrinsics.checkNotNullParameter(queryInterceptorProgram, ProtectedFastSSH.s("≔"));
        queryInterceptorDatabase.queryCallback.onQuery(supportSQLiteQuery.getQuery(), queryInterceptorProgram.getBindArgsCache$room_runtime_release());
    }

    private static final void setTransactionSuccessful$lambda$5(QueryInterceptorDatabase queryInterceptorDatabase) {
        Intrinsics.checkNotNullParameter(queryInterceptorDatabase, ProtectedFastSSH.s("≌"));
        queryInterceptorDatabase.queryCallback.onQuery(ProtectedFastSSH.s("≕"), CollectionsKt.emptyList());
    }

    @Override
    public void beginTransaction() {
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda5(this));
        this.delegate.beginTransaction();
    }

    @Override
    public void beginTransactionNonExclusive() {
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda7(this));
        this.delegate.beginTransactionNonExclusive();
    }

    @Override
    public void beginTransactionWithListener(SQLiteTransactionListener transactionListener) {
        Intrinsics.checkNotNullParameter(transactionListener, ProtectedFastSSH.s("≖"));
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda10(this));
        this.delegate.beginTransactionWithListener(transactionListener);
    }

    @Override
    public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener transactionListener) {
        Intrinsics.checkNotNullParameter(transactionListener, ProtectedFastSSH.s("≖"));
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda1(this));
        this.delegate.beginTransactionWithListenerNonExclusive(transactionListener);
    }

    @Override
    public void close() {
        this.delegate.close();
    }

    @Override
    public SupportSQLiteStatement compileStatement(String sql) {
        Intrinsics.checkNotNullParameter(sql, ProtectedFastSSH.s("≗"));
        return new QueryInterceptorStatement(this.delegate.compileStatement(sql), sql, this.queryCallbackExecutor, this.queryCallback);
    }

    @Override
    public int delete(String table, String whereClause, Object[] whereArgs) {
        Intrinsics.checkNotNullParameter(table, ProtectedFastSSH.s("≘"));
        return this.delegate.delete(table, whereClause, whereArgs);
    }

    @Override
    public void disableWriteAheadLogging() {
        this.delegate.disableWriteAheadLogging();
    }

    @Override
    public boolean enableWriteAheadLogging() {
        return this.delegate.enableWriteAheadLogging();
    }

    @Override
    public void endTransaction() {
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda0(this));
        this.delegate.endTransaction();
    }

    @Override
    public void execPerConnectionSQL(String sql, Object[] bindArgs) {
        Intrinsics.checkNotNullParameter(sql, ProtectedFastSSH.s("≗"));
        this.delegate.execPerConnectionSQL(sql, bindArgs);
    }

    @Override
    public void execSQL(String sql) {
        Intrinsics.checkNotNullParameter(sql, ProtectedFastSSH.s("≗"));
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda4(this, sql));
        this.delegate.execSQL(sql);
    }

    @Override
    public void execSQL(String sql, Object[] bindArgs) {
        Intrinsics.checkNotNullParameter(sql, ProtectedFastSSH.s("≗"));
        Intrinsics.checkNotNullParameter(bindArgs, ProtectedFastSSH.s("≙"));
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(CollectionsKt.listOf(bindArgs));
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda8(this, sql, arrayList));
        this.delegate.execSQL(sql, new List[]{arrayList});
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
        Intrinsics.checkNotNullParameter(table, ProtectedFastSSH.s("≘"));
        Intrinsics.checkNotNullParameter(values, ProtectedFastSSH.s("≚"));
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
    public boolean isWriteAheadLoggingEnabled() {
        return this.delegate.isWriteAheadLoggingEnabled();
    }

    @Override
    public boolean needUpgrade(int newVersion) {
        return this.delegate.needUpgrade(newVersion);
    }

    @Override
    public Cursor query(SupportSQLiteQuery query) {
        Intrinsics.checkNotNullParameter(query, ProtectedFastSSH.s("≛"));
        QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.bindTo(queryInterceptorProgram);
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda9(this, query, queryInterceptorProgram));
        return this.delegate.query(query);
    }

    @Override
    public Cursor query(SupportSQLiteQuery query, CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(query, ProtectedFastSSH.s("≛"));
        QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.bindTo(queryInterceptorProgram);
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda11(this, query, queryInterceptorProgram));
        return this.delegate.query(query);
    }

    @Override
    public Cursor query(String query) {
        Intrinsics.checkNotNullParameter(query, ProtectedFastSSH.s("≛"));
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda2(this, query));
        return this.delegate.query(query);
    }

    @Override
    public Cursor query(String query, Object[] bindArgs) {
        Intrinsics.checkNotNullParameter(query, ProtectedFastSSH.s("≛"));
        Intrinsics.checkNotNullParameter(bindArgs, ProtectedFastSSH.s("≙"));
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda3(this, query, bindArgs));
        return this.delegate.query(query, bindArgs);
    }

    @Override
    public void setForeignKeyConstraintsEnabled(boolean enabled) {
        this.delegate.setForeignKeyConstraintsEnabled(enabled);
    }

    @Override
    public void setLocale(Locale locale) {
        Intrinsics.checkNotNullParameter(locale, ProtectedFastSSH.s("≜"));
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
        this.queryCallbackExecutor.execute(new QueryInterceptorDatabase$$ExternalSyntheticLambda6(this));
        this.delegate.setTransactionSuccessful();
    }

    @Override
    public void setVersion(int i) {
        this.delegate.setVersion(i);
    }

    @Override
    public int update(String table, int conflictAlgorithm, ContentValues values, String whereClause, Object[] whereArgs) {
        Intrinsics.checkNotNullParameter(table, ProtectedFastSSH.s("≘"));
        Intrinsics.checkNotNullParameter(values, ProtectedFastSSH.s("≚"));
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
}
