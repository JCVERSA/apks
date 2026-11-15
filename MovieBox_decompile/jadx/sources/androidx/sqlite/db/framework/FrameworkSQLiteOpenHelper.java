package androidx.sqlite.db.framework;

import a4.f;
import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import z3.d;
import z3.e;

public final class FrameworkSQLiteOpenHelper implements e {

    public static final a f14554h = new a(null);

    private final Context f14555a;

    private final String f14556b;

    private final e.a f14557c;

    private final boolean f14558d;

    private final boolean f14559e;

    private final Lazy f14560f;

    private boolean f14561g;

    public static final class OpenHelper extends SQLiteOpenHelper {

        public static final a f14562h = new a(null);

        private final Context f14563a;

        private final b f14564b;

        private final e.a f14565c;

        private final boolean f14566d;

        private boolean f14567e;

        private final c4.a f14568f;

        private boolean f14569g;

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "callbackName", "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "cause", "", "<init>", "(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;Ljava/lang/Throwable;)V", "getCallbackName", "()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "getCause", "()Ljava/lang/Throwable;", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        private static final class CallbackException extends RuntimeException {
            private final CallbackName callbackName;
            private final Throwable cause;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CallbackException(CallbackName callbackName, Throwable cause) {
                super(cause);
                Intrinsics.h(callbackName, "callbackName");
                Intrinsics.h(cause, "cause");
                this.callbackName = callbackName;
                this.cause = cause;
            }

            public final CallbackName getCallbackName() {
                return this.callbackName;
            }

            @Override
            public Throwable getCause() {
                return this.cause;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "", "<init>", "(Ljava/lang/String;I)V", "ON_CONFIGURE", "ON_CREATE", "ON_UPGRADE", "ON_DOWNGRADE", "ON_OPEN", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public enum CallbackName {
            ON_CONFIGURE,
            ON_CREATE,
            ON_UPGRADE,
            ON_DOWNGRADE,
            ON_OPEN;

            private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());

            public static EnumEntries<CallbackName> getEntries() {
                return $ENTRIES;
            }
        }

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final f a(b refHolder, SQLiteDatabase sqLiteDatabase) {
                Intrinsics.h(refHolder, "refHolder");
                Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
                f fVarA = refHolder.a();
                if (fVarA != null && fVarA.s(sqLiteDatabase)) {
                    return fVarA;
                }
                f fVar = new f(sqLiteDatabase);
                refHolder.b(fVar);
                return fVar;
            }

            private a() {
            }
        }

        public class b {

            public static final int[] f14570a;

            static {
                int[] iArr = new int[CallbackName.values().length];
                try {
                    iArr[CallbackName.ON_CONFIGURE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[CallbackName.ON_CREATE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[CallbackName.ON_UPGRADE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[CallbackName.ON_DOWNGRADE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[CallbackName.ON_OPEN.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                f14570a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenHelper(Context context, String str, final b dbRef, final e.a callback, boolean z10) {
            super(context, str, null, callback.f76614a, new DatabaseErrorHandler() {
                @Override
                public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    FrameworkSQLiteOpenHelper.OpenHelper.d(callback, dbRef, sQLiteDatabase);
                }
            });
            Intrinsics.h(context, "context");
            Intrinsics.h(dbRef, "dbRef");
            Intrinsics.h(callback, "callback");
            this.f14563a = context;
            this.f14564b = dbRef;
            this.f14565c = callback;
            this.f14566d = z10;
            if (str == null) {
                str = UUID.randomUUID().toString();
                Intrinsics.g(str, "toString(...)");
            }
            this.f14568f = new c4.a(str, context.getCacheDir(), false);
        }

        public static final void d(e.a aVar, b bVar, SQLiteDatabase sQLiteDatabase) {
            a aVar2 = f14562h;
            Intrinsics.e(sQLiteDatabase);
            aVar.c(aVar2.a(bVar, sQLiteDatabase));
        }

        private final SQLiteDatabase j(boolean z10) {
            if (z10) {
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                Intrinsics.e(writableDatabase);
                return writableDatabase;
            }
            SQLiteDatabase readableDatabase = super.getReadableDatabase();
            Intrinsics.e(readableDatabase);
            return readableDatabase;
        }

        private final SQLiteDatabase k(boolean z10) throws Throwable {
            File parentFile;
            String databaseName = getDatabaseName();
            boolean z11 = this.f14569g;
            if (databaseName != null && !z11 && (parentFile = this.f14563a.getDatabasePath(databaseName).getParentFile()) != null) {
                parentFile.mkdirs();
                if (!parentFile.isDirectory()) {
                    Log.w("SupportSQLite", "Invalid database parent file, not a directory: " + parentFile);
                }
            }
            try {
                return j(z10);
            } catch (Throwable unused) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused2) {
                }
                try {
                    return j(z10);
                } catch (Throwable th2) {
                    th = th2;
                    if (th instanceof CallbackException) {
                        CallbackException callbackException = (CallbackException) th;
                        Throwable cause = callbackException.getCause();
                        int i10 = b.f14570a[callbackException.getCallbackName().ordinal()];
                        if (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4) {
                            throw cause;
                        }
                        if (i10 != 5) {
                            throw new NoWhenBranchMatchedException();
                        }
                        if (!(cause instanceof SQLiteException)) {
                            throw cause;
                        }
                        th = cause;
                    }
                    if (!(th instanceof SQLiteException) || databaseName == null || !this.f14566d) {
                        throw th;
                    }
                    this.f14563a.deleteDatabase(databaseName);
                    try {
                        return j(z10);
                    } catch (CallbackException e10) {
                        throw e10.getCause();
                    }
                }
            }
        }

        @Override
        public void close() {
            try {
                c4.a.c(this.f14568f, false, 1, null);
                super.close();
                this.f14564b.b(null);
                this.f14569g = false;
            } finally {
                this.f14568f.d();
            }
        }

        public final d f(boolean z10) {
            try {
                this.f14568f.b((this.f14569g || getDatabaseName() == null) ? false : true);
                this.f14567e = false;
                SQLiteDatabase sQLiteDatabaseK = k(z10);
                if (!this.f14567e) {
                    return h(sQLiteDatabaseK);
                }
                close();
                return f(z10);
            } finally {
                this.f14568f.d();
            }
        }

        public final f h(SQLiteDatabase sqLiteDatabase) {
            Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
            return f14562h.a(this.f14564b, sqLiteDatabase);
        }

        @Override
        public void onConfigure(SQLiteDatabase db2) {
            Intrinsics.h(db2, "db");
            if (!this.f14567e && this.f14565c.f76614a != db2.getVersion()) {
                db2.setMaxSqlCacheSize(1);
            }
            try {
                this.f14565c.b(h(db2));
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_CONFIGURE, th2);
            }
        }

        @Override
        public void onCreate(SQLiteDatabase sqLiteDatabase) {
            Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
            try {
                this.f14565c.d(h(sqLiteDatabase));
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_CREATE, th2);
            }
        }

        @Override
        public void onDowngrade(SQLiteDatabase db2, int i10, int i11) {
            Intrinsics.h(db2, "db");
            this.f14567e = true;
            try {
                this.f14565c.e(h(db2), i10, i11);
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_DOWNGRADE, th2);
            }
        }

        @Override
        public void onOpen(SQLiteDatabase db2) {
            Intrinsics.h(db2, "db");
            if (!this.f14567e) {
                try {
                    this.f14565c.f(h(db2));
                } catch (Throwable th2) {
                    throw new CallbackException(CallbackName.ON_OPEN, th2);
                }
            }
            this.f14569g = true;
        }

        @Override
        public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i10, int i11) {
            Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
            this.f14567e = true;
            try {
                this.f14565c.g(h(sqLiteDatabase), i10, i11);
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_UPGRADE, th2);
            }
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b {

        private f f14571a;

        public b(f fVar) {
            this.f14571a = fVar;
        }

        public final f a() {
            return this.f14571a;
        }

        public final void b(f fVar) {
            this.f14571a = fVar;
        }
    }

    public FrameworkSQLiteOpenHelper(Context context, String str, e.a callback, boolean z10, boolean z11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(callback, "callback");
        this.f14555a = context;
        this.f14556b = str;
        this.f14557c = callback;
        this.f14558d = z10;
        this.f14559e = z11;
        this.f14560f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return FrameworkSQLiteOpenHelper.f(this.f132a);
            }
        });
    }

    private final OpenHelper d() {
        return (OpenHelper) this.f14560f.getValue();
    }

    public static final OpenHelper f(FrameworkSQLiteOpenHelper frameworkSQLiteOpenHelper) {
        OpenHelper openHelper;
        if (frameworkSQLiteOpenHelper.f14556b == null || !frameworkSQLiteOpenHelper.f14558d) {
            openHelper = new OpenHelper(frameworkSQLiteOpenHelper.f14555a, frameworkSQLiteOpenHelper.f14556b, new b(null), frameworkSQLiteOpenHelper.f14557c, frameworkSQLiteOpenHelper.f14559e);
        } else {
            openHelper = new OpenHelper(frameworkSQLiteOpenHelper.f14555a, new File(z3.b.a(frameworkSQLiteOpenHelper.f14555a), frameworkSQLiteOpenHelper.f14556b).getAbsolutePath(), new b(null), frameworkSQLiteOpenHelper.f14557c, frameworkSQLiteOpenHelper.f14559e);
        }
        openHelper.setWriteAheadLoggingEnabled(frameworkSQLiteOpenHelper.f14561g);
        return openHelper;
    }

    @Override
    public void close() {
        if (this.f14560f.isInitialized()) {
            d().close();
        }
    }

    @Override
    public String getDatabaseName() {
        return this.f14556b;
    }

    @Override
    public d getReadableDatabase() {
        return d().f(false);
    }

    @Override
    public d getWritableDatabase() {
        return d().f(true);
    }

    @Override
    public void setWriteAheadLoggingEnabled(boolean z10) {
        if (this.f14560f.isInitialized()) {
            d().setWriteAheadLoggingEnabled(z10);
        }
        this.f14561g = z10;
    }
}
