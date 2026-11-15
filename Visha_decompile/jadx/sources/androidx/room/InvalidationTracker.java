package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.p004lifecycle.LiveData;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import defpackage.d81;
import defpackage.g1a;
import defpackage.i81;
import defpackage.ly0;
import defpackage.x71;
import defpackage.xe9;
import defpackage.y45;
import defpackage.ye9;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.collections.a;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u0000 w2\u00020\u0001:\u0005wxyz{BS\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00070\u0004\u0012\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\t\"\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fB%\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\t\"\u00020\u0005¢\u0006\u0004\b\u000b\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0017\u0010\u0016J'\u0010\u0018\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\t2\u000e\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\tH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\t2\u000e\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\tH\u0002¢\u0006\u0004\b\u001b\u0010\u0019J\u0017\u0010 \u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010#\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0011H\u0000¢\u0006\u0004\b!\u0010\"J'\u0010+\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u00052\u0006\u0010(\u001a\u00020'H\u0000¢\u0006\u0004\b)\u0010*J\u000f\u0010-\u001a\u00020\u000eH\u0000¢\u0006\u0004\b,\u0010\u0010J\u0017\u00100\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020.H\u0017¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020.H\u0017¢\u0006\u0004\b2\u00101J\u0017\u00103\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020.H\u0017¢\u0006\u0004\b3\u00101J\u000f\u00107\u001a\u000204H\u0000¢\u0006\u0004\b5\u00106J\u000f\u00108\u001a\u00020\u000eH\u0016¢\u0006\u0004\b8\u0010\u0010J\u000f\u00109\u001a\u00020\u000eH\u0017¢\u0006\u0004\b9\u0010\u0010J#\u0010;\u001a\u00020\u000e2\u0012\u0010:\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\t\"\u00020\u0005H\u0007¢\u0006\u0004\b;\u0010<J\u0017\u0010>\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0011H\u0000¢\u0006\u0004\b=\u0010\"J\u000f\u0010>\u001a\u00020\u000eH\u0000¢\u0006\u0004\b=\u0010\u0010J;\u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000B\"\u0004\b\u0000\u0010?2\u000e\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\t2\u000e\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000@H\u0017¢\u0006\u0004\bC\u0010DJC\u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000B\"\u0004\b\u0000\u0010?2\u000e\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\t2\u0006\u0010E\u001a\u0002042\u000e\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000@H\u0017¢\u0006\u0004\bC\u0010FR\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010G\u001a\u0004\bH\u0010IR \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010JR&\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00070\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010JR&\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00130\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\bK\u0010J\u001a\u0004\bL\u0010MR\"\u0010N\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\t8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bN\u0010O\u001a\u0004\bP\u0010QR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010RR\u001a\u0010T\u001a\u00020S8GX\u0087\u0004¢\u0006\f\n\u0004\bT\u0010U\u001a\u0004\bV\u0010WR\u0016\u0010X\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR$\u0010[\u001a\u0004\u0018\u00010Z8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u0014\u0010b\u001a\u00020a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010cR\u0014\u0010e\u001a\u00020d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010fR&\u0010i\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020h0g8\u0000X\u0081\u0004¢\u0006\f\n\u0004\bi\u0010j\u001a\u0004\bk\u0010lR\u0018\u0010n\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0014\u0010p\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bp\u0010qR\u0014\u0010r\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\br\u0010qR\u001a\u0010t\u001a\u00020s8\u0006X\u0087\u0004¢\u0006\f\n\u0004\bt\u0010u\u0012\u0004\bv\u0010\u0010¨\u0006|"}, d2 = {"Landroidx/room/InvalidationTracker;", "", "Landroidx/room/RoomDatabase;", "database", "", "", "shadowTablesMap", "", "viewTables", "", "tableNames", MethodDecl.initName, "(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V", "(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V", "Lzfb;", "onAutoCloseCallback", "()V", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "db", "", "tableId", "stopTrackingTable", "(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V", "startTrackingTable", "validateAndResolveTableNames", "([Ljava/lang/String;)[Ljava/lang/String;", "names", "resolveViews", "Landroidx/room/AutoCloser;", "autoCloser", "setAutoCloser$room_runtime_release", "(Landroidx/room/AutoCloser;)V", "setAutoCloser", "internalInit$room_runtime_release", "(Landroidx/sqlite/db/SupportSQLiteDatabase;)V", "internalInit", "Landroid/content/Context;", "context", "name", "Landroid/content/Intent;", "serviceIntent", "startMultiInstanceInvalidation$room_runtime_release", "(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V", "startMultiInstanceInvalidation", "stopMultiInstanceInvalidation$room_runtime_release", "stopMultiInstanceInvalidation", "Landroidx/room/InvalidationTracker$Observer;", "observer", "addObserver", "(Landroidx/room/InvalidationTracker$Observer;)V", "addWeakObserver", "removeObserver", "", "ensureInitialization$room_runtime_release", "()Z", "ensureInitialization", "refreshVersionsAsync", "refreshVersionsSync", "tables", "notifyObserversByTableNames", "([Ljava/lang/String;)V", "syncTriggers$room_runtime_release", "syncTriggers", "T", "Ljava/util/concurrent/Callable;", "computeFunction", "Landroidx/lifecycle/LiveData;", "createLiveData", "([Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;", "inTransaction", "([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;", "Landroidx/room/RoomDatabase;", "getDatabase$room_runtime_release", "()Landroidx/room/RoomDatabase;", "Ljava/util/Map;", "tableIdLookup", "getTableIdLookup$room_runtime_release", "()Ljava/util/Map;", "tablesNames", "[Ljava/lang/String;", "getTablesNames$room_runtime_release", "()[Ljava/lang/String;", "Landroidx/room/AutoCloser;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "pendingRefresh", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getPendingRefresh", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "initialized", "Z", "Landroidx/sqlite/db/SupportSQLiteStatement;", "cleanupStatement", "Landroidx/sqlite/db/SupportSQLiteStatement;", "getCleanupStatement$room_runtime_release", "()Landroidx/sqlite/db/SupportSQLiteStatement;", "setCleanupStatement$room_runtime_release", "(Landroidx/sqlite/db/SupportSQLiteStatement;)V", "Landroidx/room/InvalidationTracker$ObservedTableTracker;", "observedTableTracker", "Landroidx/room/InvalidationTracker$ObservedTableTracker;", "Landroidx/room/InvalidationLiveDataContainer;", "invalidationLiveDataContainer", "Landroidx/room/InvalidationLiveDataContainer;", "Landroidx/arch/core/internal/SafeIterableMap;", "Landroidx/room/InvalidationTracker$ObserverWrapper;", "observerMap", "Landroidx/arch/core/internal/SafeIterableMap;", "getObserverMap$room_runtime_release", "()Landroidx/arch/core/internal/SafeIterableMap;", "Landroidx/room/MultiInstanceInvalidationClient;", "multiInstanceInvalidationClient", "Landroidx/room/MultiInstanceInvalidationClient;", "syncTriggersLock", "Ljava/lang/Object;", "trackerLock", "Ljava/lang/Runnable;", "refreshRunnable", "Ljava/lang/Runnable;", "getRefreshRunnable$annotations", "Companion", "ObservedTableTracker", "Observer", "ObserverWrapper", "WeakObserver", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class InvalidationTracker {
    private static final String CREATE_TRACKING_TABLE_SQL = "CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)";
    private static final String INVALIDATED_COLUMN_NAME = "invalidated";
    public static final String RESET_UPDATED_TABLES_SQL = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1";
    public static final String SELECT_UPDATED_TABLES_SQL = "SELECT * FROM room_table_modification_log WHERE invalidated = 1;";
    private static final String TABLE_ID_COLUMN_NAME = "table_id";
    private static final String UPDATE_TABLE_NAME = "room_table_modification_log";
    private AutoCloser autoCloser;
    private volatile SupportSQLiteStatement cleanupStatement;
    private final RoomDatabase database;
    private volatile boolean initialized;
    private final InvalidationLiveDataContainer invalidationLiveDataContainer;
    private MultiInstanceInvalidationClient multiInstanceInvalidationClient;
    private final ObservedTableTracker observedTableTracker;

    @GuardedBy("observerMap")
    private final SafeIterableMap<Observer, ObserverWrapper> observerMap;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    private final AtomicBoolean pendingRefresh;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final Runnable refreshRunnable;
    private final Map<String, String> shadowTablesMap;
    private final Object syncTriggersLock;
    private final Map<String, Integer> tableIdLookup;
    private final String[] tablesNames;
    private final Object trackerLock;
    private final Map<String, Set<String>> viewTables;

    public static final Companion INSTANCE = new Companion(null);
    private static final String[] TRIGGERS = {"UPDATE", "DELETE", "INSERT"};

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u00048\u0000X\u0081T¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0012\u0010\u0003R\u001a\u0010\u0013\u001a\u00020\u00048\u0000X\u0081T¢\u0006\f\n\u0004\b\u0013\u0010\u0011\u0012\u0004\b\u0014\u0010\u0003R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0011¨\u0006\u001c"}, d2 = {"Landroidx/room/InvalidationTracker$Companion;", "", MethodDecl.initName, "()V", "", "tableName", "triggerType", "getTriggerName$room_runtime_release", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "getTriggerName", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "database", "Lzfb;", "beginTransactionInternal$room_runtime_release", "(Landroidx/sqlite/db/SupportSQLiteDatabase;)V", "beginTransactionInternal", "RESET_UPDATED_TABLES_SQL", "Ljava/lang/String;", "getRESET_UPDATED_TABLES_SQL$room_runtime_release$annotations", "SELECT_UPDATED_TABLES_SQL", "getSELECT_UPDATED_TABLES_SQL$room_runtime_release$annotations", "CREATE_TRACKING_TABLE_SQL", "INVALIDATED_COLUMN_NAME", "TABLE_ID_COLUMN_NAME", "", "TRIGGERS", "[Ljava/lang/String;", "UPDATE_TABLE_NAME", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @VisibleForTesting
        public static void getRESET_UPDATED_TABLES_SQL$room_runtime_release$annotations() {
        }

        @VisibleForTesting
        public static void getSELECT_UPDATED_TABLES_SQL$room_runtime_release$annotations() {
        }

        public final void beginTransactionInternal$room_runtime_release(SupportSQLiteDatabase database) {
            y45.j(database, "database");
            if (database.isWriteAheadLoggingEnabled()) {
                database.beginTransactionNonExclusive();
            } else {
                database.beginTransaction();
            }
        }

        public final String getTriggerName$room_runtime_release(String tableName, String triggerType) {
            y45.j(tableName, "tableName");
            y45.j(triggerType, "triggerType");
            return "`room_table_modification_trigger_" + tableName + '_' + triggerType + '`';
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0016\n\u0002\b\u0004\n\u0002\u0010\u0018\n\u0002\b\f\b\u0000\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\n\u0010\u0007\u001a\u00020\u0006\"\u00020\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000b\u001a\u00020\b2\n\u0010\u0007\u001a\u00020\u0006\"\u00020\u0002¢\u0006\u0004\b\u000b\u0010\nJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0012\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Landroidx/room/InvalidationTracker$ObservedTableTracker;", "", "", "tableCount", MethodDecl.initName, "(I)V", "", "tableIds", "", "onAdded", "([I)Z", "onRemoved", "Lzfb;", "resetTriggerState", "()V", "getTablesToSync", "()[I", "", "tableObservers", "[J", "getTableObservers", "()[J", "", "triggerStates", "[Z", "triggerStateChanges", "[I", "needsSync", "Z", "getNeedsSync", "()Z", "setNeedsSync", "(Z)V", "Companion", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ObservedTableTracker {
        public static final int ADD = 1;
        public static final int NO_OP = 0;
        public static final int REMOVE = 2;
        private boolean needsSync;
        private final long[] tableObservers;
        private final int[] triggerStateChanges;
        private final boolean[] triggerStates;

        public ObservedTableTracker(int i) {
            this.tableObservers = new long[i];
            this.triggerStates = new boolean[i];
            this.triggerStateChanges = new int[i];
        }

        public final boolean getNeedsSync() {
            return this.needsSync;
        }

        public final long[] getTableObservers() {
            return this.tableObservers;
        }

        @VisibleForTesting
        public final int[] getTablesToSync() {
            synchronized (this) {
                try {
                    if (!this.needsSync) {
                        return null;
                    }
                    long[] jArr = this.tableObservers;
                    int length = jArr.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        int i3 = i2 + 1;
                        int i4 = 1;
                        boolean z = jArr[i] > 0;
                        boolean[] zArr = this.triggerStates;
                        if (z != zArr[i2]) {
                            int[] iArr = this.triggerStateChanges;
                            if (!z) {
                                i4 = 2;
                            }
                            iArr[i2] = i4;
                        } else {
                            this.triggerStateChanges[i2] = 0;
                        }
                        zArr[i2] = z;
                        i++;
                        i2 = i3;
                    }
                    this.needsSync = false;
                    return (int[]) this.triggerStateChanges.clone();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final boolean onAdded(int... tableIds) {
            boolean z;
            y45.j(tableIds, "tableIds");
            synchronized (this) {
                try {
                    z = false;
                    for (int i : tableIds) {
                        long[] jArr = this.tableObservers;
                        long j = jArr[i];
                        jArr[i] = 1 + j;
                        if (j == 0) {
                            this.needsSync = true;
                            z = true;
                        }
                    }
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z;
        }

        public final boolean onRemoved(int... tableIds) {
            boolean z;
            y45.j(tableIds, "tableIds");
            synchronized (this) {
                try {
                    z = false;
                    for (int i : tableIds) {
                        long[] jArr = this.tableObservers;
                        long j = jArr[i];
                        jArr[i] = j - 1;
                        if (j == 1) {
                            this.needsSync = true;
                            z = true;
                        }
                    }
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z;
        }

        public final void resetTriggerState() {
            synchronized (this) {
                Arrays.fill(this.triggerStates, false);
                this.needsSync = true;
                zfb zfbVar = zfb.a;
            }
        }

        public final void setNeedsSync(boolean z) {
            this.needsSync = z;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B%\b\u0014\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\"\u00020\u0003¢\u0006\u0004\b\u0005\u0010\tJ\u001d\u0010\f\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\nH&¢\u0006\u0004\b\f\u0010\rR\"\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Landroidx/room/InvalidationTracker$Observer;", "", "", "", "tables", MethodDecl.initName, "([Ljava/lang/String;)V", "firstTable", "rest", "(Ljava/lang/String;[Ljava/lang/String;)V", "", "Lzfb;", "onInvalidated", "(Ljava/util/Set;)V", "[Ljava/lang/String;", "getTables$room_runtime_release", "()[Ljava/lang/String;", "", "isRemote$room_runtime_release", "()Z", "isRemote", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static abstract class Observer {
        private final String[] tables;

        public Observer(String[] strArr) {
            y45.j(strArr, "tables");
            this.tables = strArr;
        }

        public final String[] getTables() {
            return this.tables;
        }

        public boolean isRemote$room_runtime_release() {
            return false;
        }

        public abstract void onInvalidated(Set<String> tables);

        /* JADX WARN: Illegal instructions before constructor call */
        public Observer(String str, String... strArr) {
            y45.j(str, "firstTable");
            y45.j(strArr, "rest");
            List listC = x71.c();
            d81.D(listC, strArr);
            listC.add(str);
            this((String[]) x71.a(listC).toArray(new String[0]));
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0011\u001a\u00020\u000e2\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bH\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006H\u0000¢\u0006\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001cR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Landroidx/room/InvalidationTracker$ObserverWrapper;", "", "Landroidx/room/InvalidationTracker$Observer;", "observer", "", "tableIds", "", "", "tableNames", MethodDecl.initName, "(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V", "", "", "invalidatedTablesIds", "Lzfb;", "notifyByTableInvalidStatus$room_runtime_release", "(Ljava/util/Set;)V", "notifyByTableInvalidStatus", "tables", "notifyByTableNames$room_runtime_release", "([Ljava/lang/String;)V", "notifyByTableNames", "Landroidx/room/InvalidationTracker$Observer;", "getObserver$room_runtime_release", "()Landroidx/room/InvalidationTracker$Observer;", "[I", "getTableIds$room_runtime_release", "()[I", "[Ljava/lang/String;", "singleTableSet", "Ljava/util/Set;", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ObserverWrapper {
        private final Observer observer;
        private final Set<String> singleTableSet;
        private final int[] tableIds;
        private final String[] tableNames;

        public ObserverWrapper(Observer observer, int[] iArr, String[] strArr) {
            y45.j(observer, "observer");
            y45.j(iArr, "tableIds");
            y45.j(strArr, "tableNames");
            this.observer = observer;
            this.tableIds = iArr;
            this.tableNames = strArr;
            this.singleTableSet = !(strArr.length == 0) ? xe9.d(strArr[0]) : ye9.f();
            if (iArr.length != strArr.length) {
                throw new IllegalStateException("Check failed.");
            }
        }

        public final Observer getObserver() {
            return this.observer;
        }

        public final int[] getTableIds() {
            return this.tableIds;
        }

        public final void notifyByTableInvalidStatus$room_runtime_release(Set<Integer> invalidatedTablesIds) {
            Set<String> setF;
            y45.j(invalidatedTablesIds, "invalidatedTablesIds");
            int[] iArr = this.tableIds;
            int length = iArr.length;
            if (length != 0) {
                int i = 0;
                if (length != 1) {
                    Set setB = xe9.b();
                    int[] iArr2 = this.tableIds;
                    int length2 = iArr2.length;
                    int i2 = 0;
                    while (i < length2) {
                        int i3 = i2 + 1;
                        if (invalidatedTablesIds.contains(Integer.valueOf(iArr2[i]))) {
                            setB.add(this.tableNames[i2]);
                        }
                        i++;
                        i2 = i3;
                    }
                    setF = xe9.a(setB);
                } else {
                    setF = invalidatedTablesIds.contains(Integer.valueOf(iArr[0])) ? this.singleTableSet : ye9.f();
                }
            } else {
                setF = ye9.f();
            }
            if (setF.isEmpty()) {
                return;
            }
            this.observer.onInvalidated(setF);
        }

        public final void notifyByTableNames$room_runtime_release(String[] tables) {
            Set<String> setF;
            y45.j(tables, "tables");
            int length = this.tableNames.length;
            if (length == 0) {
                setF = ye9.f();
            } else if (length == 1) {
                int length2 = tables.length;
                int i = 0;
                while (true) {
                    if (i >= length2) {
                        setF = ye9.f();
                        break;
                    } else {
                        if (g1a.E(tables[i], this.tableNames[0], true)) {
                            setF = this.singleTableSet;
                            break;
                        }
                        i++;
                    }
                }
            } else {
                Set setB = xe9.b();
                for (String str : tables) {
                    for (String str2 : this.tableNames) {
                        if (g1a.E(str2, str, true)) {
                            setB.add(str2);
                        }
                    }
                }
                setF = xe9.a(setB);
            }
            if (setF.isEmpty()) {
                return;
            }
            this.observer.onInvalidated(setF);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\u000b\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/room/InvalidationTracker$WeakObserver;", "Landroidx/room/InvalidationTracker$Observer;", "Landroidx/room/InvalidationTracker;", "tracker", "delegate", MethodDecl.initName, "(Landroidx/room/InvalidationTracker;Landroidx/room/InvalidationTracker$Observer;)V", "", "", "tables", "Lzfb;", "onInvalidated", "(Ljava/util/Set;)V", "Landroidx/room/InvalidationTracker;", "getTracker", "()Landroidx/room/InvalidationTracker;", "Ljava/lang/ref/WeakReference;", "delegateRef", "Ljava/lang/ref/WeakReference;", "getDelegateRef", "()Ljava/lang/ref/WeakReference;", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class WeakObserver extends Observer {
        private final WeakReference<Observer> delegateRef;
        private final InvalidationTracker tracker;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WeakObserver(InvalidationTracker invalidationTracker, Observer observer) {
            super(observer.getTables());
            y45.j(invalidationTracker, "tracker");
            y45.j(observer, "delegate");
            this.tracker = invalidationTracker;
            this.delegateRef = new WeakReference<>(observer);
        }

        public final WeakReference<Observer> getDelegateRef() {
            return this.delegateRef;
        }

        public final InvalidationTracker getTracker() {
            return this.tracker;
        }

        @Override
        public void onInvalidated(Set<String> tables) {
            y45.j(tables, "tables");
            Observer observer = this.delegateRef.get();
            if (observer == null) {
                this.tracker.removeObserver(this);
            } else {
                observer.onInvalidated(tables);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public InvalidationTracker(RoomDatabase roomDatabase, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        String lowerCase;
        y45.j(roomDatabase, "database");
        y45.j(map, "shadowTablesMap");
        y45.j(map2, "viewTables");
        y45.j(strArr, "tableNames");
        this.database = roomDatabase;
        this.shadowTablesMap = map;
        this.viewTables = map2;
        this.pendingRefresh = new AtomicBoolean(false);
        this.observedTableTracker = new ObservedTableTracker(strArr.length);
        this.invalidationLiveDataContainer = new InvalidationLiveDataContainer(roomDatabase);
        this.observerMap = new SafeIterableMap<>();
        this.syncTriggersLock = new Object();
        this.trackerLock = new Object();
        this.tableIdLookup = new LinkedHashMap();
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            y45.i(locale, "US");
            String lowerCase2 = str.toLowerCase(locale);
            y45.i(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            this.tableIdLookup.put(lowerCase2, Integer.valueOf(i));
            String str2 = this.shadowTablesMap.get(strArr[i]);
            if (str2 != null) {
                y45.i(locale, "US");
                lowerCase = str2.toLowerCase(locale);
                y45.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr2[i] = lowerCase2;
        }
        this.tablesNames = strArr2;
        for (Map.Entry<String, String> entry : this.shadowTablesMap.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            y45.i(locale2, "US");
            String lowerCase3 = value.toLowerCase(locale2);
            y45.i(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
            if (this.tableIdLookup.containsKey(lowerCase3)) {
                String key = entry.getKey();
                y45.i(locale2, "US");
                String lowerCase4 = key.toLowerCase(locale2);
                y45.i(lowerCase4, "this as java.lang.String).toLowerCase(locale)");
                Map<String, Integer> map3 = this.tableIdLookup;
                map3.put(lowerCase4, (Integer) a.m(map3, lowerCase3));
            }
        }
        this.refreshRunnable = new Runnable() {
            private final Set<Integer> checkUpdatedTable() {
                InvalidationTracker invalidationTracker = this.this$0;
                Set setB = xe9.b();
                Cursor cursorQuery$default = RoomDatabase.query$default(invalidationTracker.getDatabase(), new SimpleSQLiteQuery(InvalidationTracker.SELECT_UPDATED_TABLES_SQL), null, 2, null);
                try {
                    Cursor cursor = cursorQuery$default;
                    while (cursor.moveToNext()) {
                        setB.add(Integer.valueOf(cursor.getInt(0)));
                    }
                    zfb zfbVar = zfb.a;
                    ly0.a(cursorQuery$default, null);
                    Set<Integer> setA = xe9.a(setB);
                    if (!setA.isEmpty()) {
                        if (this.this$0.getCleanupStatement() == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        SupportSQLiteStatement cleanupStatement = this.this$0.getCleanupStatement();
                        if (cleanupStatement == null) {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                        cleanupStatement.executeUpdateDelete();
                    }
                    return setA;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ly0.a(cursorQuery$default, th);
                        throw th2;
                    }
                }
            }

            @Override
            public void run() {
                Set<Integer> setF;
                AutoCloser autoCloser;
                Lock closeLock$room_runtime_release = this.this$0.getDatabase().getCloseLock$room_runtime_release();
                closeLock$room_runtime_release.lock();
                try {
                    try {
                        if (!this.this$0.ensureInitialization$room_runtime_release()) {
                            closeLock$room_runtime_release.unlock();
                            AutoCloser autoCloser2 = this.this$0.autoCloser;
                            if (autoCloser2 != null) {
                                autoCloser2.decrementCountAndScheduleClose();
                                return;
                            }
                            return;
                        }
                        if (!this.this$0.getPendingRefresh().compareAndSet(true, false)) {
                            closeLock$room_runtime_release.unlock();
                            AutoCloser autoCloser3 = this.this$0.autoCloser;
                            if (autoCloser3 != null) {
                                autoCloser3.decrementCountAndScheduleClose();
                                return;
                            }
                            return;
                        }
                        if (this.this$0.getDatabase().inTransaction()) {
                            closeLock$room_runtime_release.unlock();
                            AutoCloser autoCloser4 = this.this$0.autoCloser;
                            if (autoCloser4 != null) {
                                autoCloser4.decrementCountAndScheduleClose();
                                return;
                            }
                            return;
                        }
                        SupportSQLiteDatabase writableDatabase = this.this$0.getDatabase().getOpenHelper().getWritableDatabase();
                        writableDatabase.beginTransactionNonExclusive();
                        try {
                            setF = checkUpdatedTable();
                            writableDatabase.setTransactionSuccessful();
                            writableDatabase.endTransaction();
                            closeLock$room_runtime_release.unlock();
                            autoCloser = this.this$0.autoCloser;
                            if (autoCloser != null) {
                                autoCloser.decrementCountAndScheduleClose();
                            }
                            if (setF.isEmpty()) {
                                return;
                            }
                            SafeIterableMap<InvalidationTracker.Observer, InvalidationTracker.ObserverWrapper> observerMap$room_runtime_release = this.this$0.getObserverMap$room_runtime_release();
                            InvalidationTracker invalidationTracker = this.this$0;
                            synchronized (observerMap$room_runtime_release) {
                                try {
                                    Iterator<Map.Entry<K, V>> it = invalidationTracker.getObserverMap$room_runtime_release().iterator();
                                    while (it.hasNext()) {
                                        ((InvalidationTracker.ObserverWrapper) ((Map.Entry) it.next()).getValue()).notifyByTableInvalidStatus$room_runtime_release(setF);
                                    }
                                    zfb zfbVar = zfb.a;
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            writableDatabase.endTransaction();
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        closeLock$room_runtime_release.unlock();
                        AutoCloser autoCloser5 = this.this$0.autoCloser;
                        if (autoCloser5 != null) {
                            autoCloser5.decrementCountAndScheduleClose();
                        }
                        throw th3;
                    }
                } catch (SQLiteException e) {
                    Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e);
                    setF = ye9.f();
                    closeLock$room_runtime_release.unlock();
                    autoCloser = this.this$0.autoCloser;
                    if (autoCloser != null) {
                    }
                } catch (IllegalStateException e2) {
                    Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e2);
                    setF = ye9.f();
                    closeLock$room_runtime_release.unlock();
                    autoCloser = this.this$0.autoCloser;
                    if (autoCloser != null) {
                    }
                }
            }
        };
    }

    @VisibleForTesting
    public static void getRefreshRunnable$annotations() {
    }

    public final void onAutoCloseCallback() {
        synchronized (this.trackerLock) {
            this.initialized = false;
            this.observedTableTracker.resetTriggerState();
            SupportSQLiteStatement supportSQLiteStatement = this.cleanupStatement;
            if (supportSQLiteStatement != null) {
                supportSQLiteStatement.close();
                zfb zfbVar = zfb.a;
            }
        }
    }

    private final String[] resolveViews(String[] names) {
        Set setB = xe9.b();
        for (String str : names) {
            Map<String, Set<String>> map = this.viewTables;
            Locale locale = Locale.US;
            y45.i(locale, "US");
            String lowerCase = str.toLowerCase(locale);
            y45.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (map.containsKey(lowerCase)) {
                Map<String, Set<String>> map2 = this.viewTables;
                y45.i(locale, "US");
                String lowerCase2 = str.toLowerCase(locale);
                y45.i(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                Set<String> set = map2.get(lowerCase2);
                y45.g(set);
                setB.addAll(set);
            } else {
                setB.add(str);
            }
        }
        return (String[]) xe9.a(setB).toArray(new String[0]);
    }

    private final void startTrackingTable(SupportSQLiteDatabase db, int tableId) {
        db.execSQL("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + tableId + ", 0)");
        String str = this.tablesNames[tableId];
        for (String str2 : TRIGGERS) {
            String str3 = "CREATE TEMP TRIGGER IF NOT EXISTS " + INSTANCE.getTriggerName$room_runtime_release(str, str2) + " AFTER " + str2 + " ON `" + str + "` BEGIN UPDATE " + UPDATE_TABLE_NAME + " SET " + INVALIDATED_COLUMN_NAME + " = 1 WHERE " + TABLE_ID_COLUMN_NAME + " = " + tableId + " AND " + INVALIDATED_COLUMN_NAME + " = 0; END";
            y45.i(str3, "StringBuilder().apply(builderAction).toString()");
            db.execSQL(str3);
        }
    }

    private final void stopTrackingTable(SupportSQLiteDatabase db, int tableId) {
        String str = this.tablesNames[tableId];
        for (String str2 : TRIGGERS) {
            String str3 = "DROP TRIGGER IF EXISTS " + INSTANCE.getTriggerName$room_runtime_release(str, str2);
            y45.i(str3, "StringBuilder().apply(builderAction).toString()");
            db.execSQL(str3);
        }
    }

    private final String[] validateAndResolveTableNames(String[] tableNames) {
        String[] strArrResolveViews = resolveViews(tableNames);
        for (String str : strArrResolveViews) {
            Map<String, Integer> map = this.tableIdLookup;
            Locale locale = Locale.US;
            y45.i(locale, "US");
            String lowerCase = str.toLowerCase(locale);
            y45.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (!map.containsKey(lowerCase)) {
                throw new IllegalArgumentException(("There is no table with name " + str).toString());
            }
        }
        return strArrResolveViews;
    }

    @SuppressLint({"RestrictedApi"})
    @WorkerThread
    public void addObserver(Observer observer) {
        ObserverWrapper observerWrapperPutIfAbsent;
        y45.j(observer, "observer");
        String[] strArrResolveViews = resolveViews(observer.getTables());
        ArrayList arrayList = new ArrayList(strArrResolveViews.length);
        for (String str : strArrResolveViews) {
            Map<String, Integer> map = this.tableIdLookup;
            Locale locale = Locale.US;
            y45.i(locale, "US");
            String lowerCase = str.toLowerCase(locale);
            y45.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            Integer num = map.get(lowerCase);
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
            arrayList.add(num);
        }
        int[] iArrA1 = i81.a1(arrayList);
        ObserverWrapper observerWrapper = new ObserverWrapper(observer, iArrA1, strArrResolveViews);
        synchronized (this.observerMap) {
            observerWrapperPutIfAbsent = this.observerMap.putIfAbsent(observer, observerWrapper);
        }
        if (observerWrapperPutIfAbsent == null && this.observedTableTracker.onAdded(Arrays.copyOf(iArrA1, iArrA1.length))) {
            syncTriggers$room_runtime_release();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void addWeakObserver(Observer observer) {
        y45.j(observer, "observer");
        addObserver(new WeakObserver(this, observer));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public <T> LiveData<T> createLiveData(String[] tableNames, Callable<T> computeFunction) {
        y45.j(tableNames, "tableNames");
        y45.j(computeFunction, "computeFunction");
        return createLiveData(tableNames, false, computeFunction);
    }

    public final boolean ensureInitialization$room_runtime_release() {
        if (!this.database.isOpenInternal()) {
            return false;
        }
        if (!this.initialized) {
            this.database.getOpenHelper().getWritableDatabase();
        }
        if (this.initialized) {
            return true;
        }
        Log.e(Room.LOG_TAG, "database is not initialized even though it is open");
        return false;
    }

    public final SupportSQLiteStatement getCleanupStatement() {
        return this.cleanupStatement;
    }

    public final RoomDatabase getDatabase() {
        return this.database;
    }

    public final SafeIterableMap<Observer, ObserverWrapper> getObserverMap$room_runtime_release() {
        return this.observerMap;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final AtomicBoolean getPendingRefresh() {
        return this.pendingRefresh;
    }

    public final Map<String, Integer> getTableIdLookup$room_runtime_release() {
        return this.tableIdLookup;
    }

    public final String[] getTablesNames() {
        return this.tablesNames;
    }

    public final void internalInit$room_runtime_release(SupportSQLiteDatabase database) {
        y45.j(database, "database");
        synchronized (this.trackerLock) {
            if (this.initialized) {
                Log.e(Room.LOG_TAG, "Invalidation tracker is initialized twice :/.");
                return;
            }
            database.execSQL("PRAGMA temp_store = MEMORY;");
            database.execSQL("PRAGMA recursive_triggers='ON';");
            database.execSQL(CREATE_TRACKING_TABLE_SQL);
            syncTriggers$room_runtime_release(database);
            this.cleanupStatement = database.compileStatement(RESET_UPDATED_TABLES_SQL);
            this.initialized = true;
            zfb zfbVar = zfb.a;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final void notifyObserversByTableNames(String... tables) {
        y45.j(tables, "tables");
        synchronized (this.observerMap) {
            try {
                Iterator<Map.Entry<K, V>> it = this.observerMap.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    y45.i(entry, "(observer, wrapper)");
                    Observer observer = (Observer) entry.getKey();
                    ObserverWrapper observerWrapper = (ObserverWrapper) entry.getValue();
                    if (!observer.isRemote$room_runtime_release()) {
                        observerWrapper.notifyByTableNames$room_runtime_release(tables);
                    }
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void refreshVersionsAsync() {
        if (this.pendingRefresh.compareAndSet(false, true)) {
            AutoCloser autoCloser = this.autoCloser;
            if (autoCloser != null) {
                autoCloser.incrementCountAndEnsureDbIsOpen();
            }
            this.database.getQueryExecutor().execute(this.refreshRunnable);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @WorkerThread
    public void refreshVersionsSync() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            autoCloser.incrementCountAndEnsureDbIsOpen();
        }
        syncTriggers$room_runtime_release();
        this.refreshRunnable.run();
    }

    @SuppressLint({"RestrictedApi"})
    @WorkerThread
    public void removeObserver(Observer observer) {
        ObserverWrapper observerWrapperRemove;
        y45.j(observer, "observer");
        synchronized (this.observerMap) {
            observerWrapperRemove = this.observerMap.remove(observer);
        }
        if (observerWrapperRemove != null) {
            ObservedTableTracker observedTableTracker = this.observedTableTracker;
            int[] tableIds = observerWrapperRemove.getTableIds();
            if (observedTableTracker.onRemoved(Arrays.copyOf(tableIds, tableIds.length))) {
                syncTriggers$room_runtime_release();
            }
        }
    }

    public final void setAutoCloser$room_runtime_release(AutoCloser autoCloser) {
        y45.j(autoCloser, "autoCloser");
        this.autoCloser = autoCloser;
        autoCloser.setAutoCloseCallback(new Runnable() {
            @Override
            public final void run() {
                this.b.onAutoCloseCallback();
            }
        });
    }

    public final void setCleanupStatement$room_runtime_release(SupportSQLiteStatement supportSQLiteStatement) {
        this.cleanupStatement = supportSQLiteStatement;
    }

    public final void startMultiInstanceInvalidation$room_runtime_release(Context context, String name, Intent serviceIntent) {
        y45.j(context, "context");
        y45.j(name, "name");
        y45.j(serviceIntent, "serviceIntent");
        this.multiInstanceInvalidationClient = new MultiInstanceInvalidationClient(context, name, serviceIntent, this, this.database.getQueryExecutor());
    }

    public final void stopMultiInstanceInvalidation$room_runtime_release() {
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.stop();
        }
        this.multiInstanceInvalidationClient = null;
    }

    public final void syncTriggers$room_runtime_release(SupportSQLiteDatabase database) {
        y45.j(database, "database");
        if (database.inTransaction()) {
            return;
        }
        try {
            Lock closeLock$room_runtime_release = this.database.getCloseLock$room_runtime_release();
            closeLock$room_runtime_release.lock();
            try {
                synchronized (this.syncTriggersLock) {
                    int[] tablesToSync = this.observedTableTracker.getTablesToSync();
                    if (tablesToSync == null) {
                        closeLock$room_runtime_release.unlock();
                        return;
                    }
                    INSTANCE.beginTransactionInternal$room_runtime_release(database);
                    try {
                        int length = tablesToSync.length;
                        int i = 0;
                        int i2 = 0;
                        while (i < length) {
                            int i3 = tablesToSync[i];
                            int i4 = i2 + 1;
                            if (i3 == 1) {
                                startTrackingTable(database, i2);
                            } else if (i3 == 2) {
                                stopTrackingTable(database, i2);
                            }
                            i++;
                            i2 = i4;
                        }
                        database.setTransactionSuccessful();
                        database.endTransaction();
                        zfb zfbVar = zfb.a;
                        closeLock$room_runtime_release.unlock();
                    } catch (Throwable th) {
                        database.endTransaction();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                closeLock$room_runtime_release.unlock();
                throw th2;
            }
        } catch (SQLiteException e) {
            Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e);
        } catch (IllegalStateException e2) {
            Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e2);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public <T> LiveData<T> createLiveData(String[] tableNames, boolean inTransaction, Callable<T> computeFunction) {
        y45.j(tableNames, "tableNames");
        y45.j(computeFunction, "computeFunction");
        return this.invalidationLiveDataContainer.create(validateAndResolveTableNames(tableNames), inTransaction, computeFunction);
    }

    public final void syncTriggers$room_runtime_release() {
        if (this.database.isOpenInternal()) {
            syncTriggers$room_runtime_release(this.database.getOpenHelper().getWritableDatabase());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public InvalidationTracker(RoomDatabase roomDatabase, String... strArr) {
        this(roomDatabase, a.l(), a.l(), (String[]) Arrays.copyOf(strArr, strArr.length));
        y45.j(roomDatabase, "database");
        y45.j(strArr, "tableNames");
    }
}
