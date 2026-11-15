package androidx.room;

import androidx.room.QueryInterceptorStatement;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0017H\u0016¢\u0006\u0004\b \u0010!J\u001f\u0010#\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$J\u001f\u0010%\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b%\u0010&J\u001f\u0010(\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u000fH\u0016¢\u0006\u0004\b*\u0010\u0013R\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010+R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010,R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010-R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010.R\u001c\u00100\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101¨\u00062"}, d2 = {"Landroidx/room/QueryInterceptorStatement;", "Landroidx/sqlite/db/SupportSQLiteStatement;", "delegate", "", "sqlStatement", "Ljava/util/concurrent/Executor;", "queryCallbackExecutor", "Landroidx/room/RoomDatabase$QueryCallback;", "queryCallback", MethodDecl.initName, "(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V", "", "bindIndex", "", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "saveArgsToCache", "(ILjava/lang/Object;)V", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "()V", "execute", "executeUpdateDelete", "()I", "", "executeInsert", "()J", "simpleQueryForLong", "simpleQueryForString", "()Ljava/lang/String;", "index", "bindNull", "(I)V", "bindLong", "(IJ)V", "", "bindDouble", "(ID)V", "bindString", "(ILjava/lang/String;)V", "", "bindBlob", "(I[B)V", "clearBindings", "Landroidx/sqlite/db/SupportSQLiteStatement;", "Ljava/lang/String;", "Ljava/util/concurrent/Executor;", "Landroidx/room/RoomDatabase$QueryCallback;", "", "bindArgsCache", "Ljava/util/List;", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class QueryInterceptorStatement implements SupportSQLiteStatement {
    private final List<Object> bindArgsCache;
    private final SupportSQLiteStatement delegate;
    private final RoomDatabase.QueryCallback queryCallback;
    private final Executor queryCallbackExecutor;
    private final String sqlStatement;

    public QueryInterceptorStatement(SupportSQLiteStatement supportSQLiteStatement, String str, Executor executor, RoomDatabase.QueryCallback queryCallback) {
        y45.j(supportSQLiteStatement, "delegate");
        y45.j(str, "sqlStatement");
        y45.j(executor, "queryCallbackExecutor");
        y45.j(queryCallback, "queryCallback");
        this.delegate = supportSQLiteStatement;
        this.sqlStatement = str;
        this.queryCallbackExecutor = executor;
        this.queryCallback = queryCallback;
        this.bindArgsCache = new ArrayList();
    }

    public static final void execute$lambda$0(QueryInterceptorStatement queryInterceptorStatement) {
        y45.j(queryInterceptorStatement, "this$0");
        queryInterceptorStatement.queryCallback.onQuery(queryInterceptorStatement.sqlStatement, queryInterceptorStatement.bindArgsCache);
    }

    public static final void executeInsert$lambda$2(QueryInterceptorStatement queryInterceptorStatement) {
        y45.j(queryInterceptorStatement, "this$0");
        queryInterceptorStatement.queryCallback.onQuery(queryInterceptorStatement.sqlStatement, queryInterceptorStatement.bindArgsCache);
    }

    public static final void executeUpdateDelete$lambda$1(QueryInterceptorStatement queryInterceptorStatement) {
        y45.j(queryInterceptorStatement, "this$0");
        queryInterceptorStatement.queryCallback.onQuery(queryInterceptorStatement.sqlStatement, queryInterceptorStatement.bindArgsCache);
    }

    private final void saveArgsToCache(int bindIndex, Object value) {
        int i = bindIndex - 1;
        if (i >= this.bindArgsCache.size()) {
            int size = (i - this.bindArgsCache.size()) + 1;
            for (int i2 = 0; i2 < size; i2++) {
                this.bindArgsCache.add(null);
            }
        }
        this.bindArgsCache.set(i, value);
    }

    public static final void simpleQueryForLong$lambda$3(QueryInterceptorStatement queryInterceptorStatement) {
        y45.j(queryInterceptorStatement, "this$0");
        queryInterceptorStatement.queryCallback.onQuery(queryInterceptorStatement.sqlStatement, queryInterceptorStatement.bindArgsCache);
    }

    public static final void simpleQueryForString$lambda$4(QueryInterceptorStatement queryInterceptorStatement) {
        y45.j(queryInterceptorStatement, "this$0");
        queryInterceptorStatement.queryCallback.onQuery(queryInterceptorStatement.sqlStatement, queryInterceptorStatement.bindArgsCache);
    }

    @Override
    public void bindBlob(int index, byte[] value) {
        y45.j(value, ES6Iterator.VALUE_PROPERTY);
        saveArgsToCache(index, value);
        this.delegate.bindBlob(index, value);
    }

    @Override
    public void bindDouble(int index, double value) {
        saveArgsToCache(index, Double.valueOf(value));
        this.delegate.bindDouble(index, value);
    }

    @Override
    public void bindLong(int index, long value) {
        saveArgsToCache(index, Long.valueOf(value));
        this.delegate.bindLong(index, value);
    }

    @Override
    public void bindNull(int index) {
        saveArgsToCache(index, null);
        this.delegate.bindNull(index);
    }

    @Override
    public void bindString(int index, String value) {
        y45.j(value, ES6Iterator.VALUE_PROPERTY);
        saveArgsToCache(index, value);
        this.delegate.bindString(index, value);
    }

    @Override
    public void clearBindings() {
        this.bindArgsCache.clear();
        this.delegate.clearBindings();
    }

    @Override
    public void close() throws IOException {
        this.delegate.close();
    }

    @Override
    public void execute() {
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorStatement.execute$lambda$0(this.b);
            }
        });
        this.delegate.execute();
    }

    @Override
    public long executeInsert() {
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorStatement.executeInsert$lambda$2(this.b);
            }
        });
        return this.delegate.executeInsert();
    }

    @Override
    public int executeUpdateDelete() {
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorStatement.executeUpdateDelete$lambda$1(this.b);
            }
        });
        return this.delegate.executeUpdateDelete();
    }

    @Override
    public long simpleQueryForLong() {
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorStatement.simpleQueryForLong$lambda$3(this.b);
            }
        });
        return this.delegate.simpleQueryForLong();
    }

    @Override
    public String simpleQueryForString() {
        this.queryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorStatement.simpleQueryForString$lambda$4(this.b);
            }
        });
        return this.delegate.simpleQueryForString();
    }
}
