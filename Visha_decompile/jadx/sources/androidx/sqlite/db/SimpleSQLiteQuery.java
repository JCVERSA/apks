package androidx.sqlite.db;

import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000fR \u0010\u0006\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Landroidx/sqlite/db/SimpleSQLiteQuery;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "", "query", "", "", "bindArgs", MethodDecl.initName, "(Ljava/lang/String;[Ljava/lang/Object;)V", "(Ljava/lang/String;)V", "Landroidx/sqlite/db/SupportSQLiteProgram;", "statement", "Lzfb;", "bindTo", "(Landroidx/sqlite/db/SupportSQLiteProgram;)V", "Ljava/lang/String;", "[Ljava/lang/Object;", "getSql", "()Ljava/lang/String;", "sql", "", "getArgCount", "()I", "argCount", "Companion", "sqlite_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {

    public static final Companion INSTANCE = new Companion(null);
    private final Object[] bindArgs;
    private final String query;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\r\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\fH\u0007¢\u0006\u0004\b\n\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;", "", MethodDecl.initName, "()V", "Landroidx/sqlite/db/SupportSQLiteProgram;", "statement", "", "index", "arg", "Lzfb;", "bind", "(Landroidx/sqlite/db/SupportSQLiteProgram;ILjava/lang/Object;)V", "", "bindArgs", "(Landroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V", "sqlite_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void bind(SupportSQLiteProgram statement, Object[] bindArgs) {
            y45.j(statement, "statement");
            if (bindArgs == null) {
                return;
            }
            int length = bindArgs.length;
            int i = 0;
            while (i < length) {
                Object obj = bindArgs[i];
                i++;
                bind(statement, i, obj);
            }
        }

        private Companion() {
        }

        private final void bind(SupportSQLiteProgram statement, int index, Object arg) {
            if (arg == null) {
                statement.bindNull(index);
                return;
            }
            if (arg instanceof byte[]) {
                statement.bindBlob(index, (byte[]) arg);
                return;
            }
            if (arg instanceof Float) {
                statement.bindDouble(index, ((Number) arg).floatValue());
                return;
            }
            if (arg instanceof Double) {
                statement.bindDouble(index, ((Number) arg).doubleValue());
                return;
            }
            if (arg instanceof Long) {
                statement.bindLong(index, ((Number) arg).longValue());
                return;
            }
            if (arg instanceof Integer) {
                statement.bindLong(index, ((Number) arg).intValue());
                return;
            }
            if (arg instanceof Short) {
                statement.bindLong(index, ((Number) arg).shortValue());
                return;
            }
            if (arg instanceof Byte) {
                statement.bindLong(index, ((Number) arg).byteValue());
                return;
            }
            if (arg instanceof String) {
                statement.bindString(index, (String) arg);
                return;
            }
            if (arg instanceof Boolean) {
                statement.bindLong(index, ((Boolean) arg).booleanValue() ? 1L : 0L);
                return;
            }
            throw new IllegalArgumentException("Cannot bind " + arg + " at index " + index + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
        }
    }

    public SimpleSQLiteQuery(String str, Object[] objArr) {
        y45.j(str, "query");
        this.query = str;
        this.bindArgs = objArr;
    }

    public static final void bind(SupportSQLiteProgram supportSQLiteProgram, Object[] objArr) {
        INSTANCE.bind(supportSQLiteProgram, objArr);
    }

    @Override
    public void bindTo(SupportSQLiteProgram statement) {
        y45.j(statement, "statement");
        INSTANCE.bind(statement, this.bindArgs);
    }

    @Override
    public int getArgCount() {
        Object[] objArr = this.bindArgs;
        if (objArr != null) {
            return objArr.length;
        }
        return 0;
    }

    @Override
    public String getQuery() {
        return this.query;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SimpleSQLiteQuery(String str) {
        this(str, null);
        y45.j(str, "query");
    }
}
