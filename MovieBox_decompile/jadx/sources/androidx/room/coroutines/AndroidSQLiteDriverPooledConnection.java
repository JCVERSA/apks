package androidx.room.coroutines;

import android.database.sqlite.SQLiteDatabase;
import androidx.room.Transactor;
import androidx.room.p0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

final class AndroidSQLiteDriverPooledConnection implements Transactor, k {

    private final b4.a f14273a;

    private Transactor.SQLiteTransactionType f14274b;

    private final class a implements p0, k {
        public a() {
        }

        @Override
        public y3.b c() {
            return AndroidSQLiteDriverPooledConnection.this.c();
        }

        @Override
        public Object d(String str, Function1 function1, Continuation continuation) {
            return AndroidSQLiteDriverPooledConnection.this.d(str, function1, continuation);
        }
    }

    public class b {

        public static final int[] f14276a;

        static {
            int[] iArr = new int[Transactor.SQLiteTransactionType.values().length];
            try {
                iArr[Transactor.SQLiteTransactionType.DEFERRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.IMMEDIATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.EXCLUSIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f14276a = iArr;
        }
    }

    public AndroidSQLiteDriverPooledConnection(b4.a delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f14273a = delegate;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00af  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r8v2 */
    public final Object g(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) throws Throwable {
        AndroidSQLiteDriverPooledConnection$transaction$1 androidSQLiteDriverPooledConnection$transaction$1;
        AndroidSQLiteDriverPooledConnection androidSQLiteDriverPooledConnection;
        ConnectionPool.RollbackException e10;
        SQLiteDatabase sQLiteDatabase;
        if (continuation instanceof AndroidSQLiteDriverPooledConnection$transaction$1) {
            androidSQLiteDriverPooledConnection$transaction$1 = (AndroidSQLiteDriverPooledConnection$transaction$1) continuation;
            int i10 = androidSQLiteDriverPooledConnection$transaction$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                androidSQLiteDriverPooledConnection$transaction$1.label = i10 - Integer.MIN_VALUE;
            } else {
                androidSQLiteDriverPooledConnection$transaction$1 = new AndroidSQLiteDriverPooledConnection$transaction$1(this, continuation);
            }
        } else {
            androidSQLiteDriverPooledConnection$transaction$1 = new AndroidSQLiteDriverPooledConnection$transaction$1(this, continuation);
        }
        Object obj = androidSQLiteDriverPooledConnection$transaction$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = androidSQLiteDriverPooledConnection$transaction$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                SQLiteDatabase sQLiteDatabaseD = this.f14273a.d();
                if (!sQLiteDatabaseD.inTransaction()) {
                    this.f14274b = sQLiteTransactionType;
                }
                int i12 = b.f14276a[sQLiteTransactionType.ordinal()];
                if (i12 == 1 || i12 == 2) {
                    sQLiteDatabaseD.beginTransactionNonExclusive();
                } else {
                    if (i12 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    sQLiteDatabaseD.beginTransaction();
                }
                try {
                    a aVar = new a();
                    androidSQLiteDriverPooledConnection$transaction$1.L$0 = this;
                    androidSQLiteDriverPooledConnection$transaction$1.L$1 = sQLiteDatabaseD;
                    androidSQLiteDriverPooledConnection$transaction$1.label = 1;
                    Object objInvoke = function2.invoke(aVar, androidSQLiteDriverPooledConnection$transaction$1);
                    if (objInvoke == objF) {
                        return objF;
                    }
                    androidSQLiteDriverPooledConnection = this;
                    obj = objInvoke;
                    sQLiteDatabase = sQLiteDatabaseD;
                } catch (ConnectionPool.RollbackException e11) {
                    androidSQLiteDriverPooledConnection = this;
                    e10 = e11;
                    sQLiteDatabase = sQLiteDatabaseD;
                    Object result = e10.getResult();
                    sQLiteDatabase.endTransaction();
                    if (!sQLiteDatabase.inTransaction()) {
                        androidSQLiteDriverPooledConnection.f14274b = null;
                    }
                    return result;
                } catch (Throwable th2) {
                    function2 = this;
                    th = th2;
                    sQLiteTransactionType = sQLiteDatabaseD;
                    sQLiteTransactionType.endTransaction();
                    if (!sQLiteTransactionType.inTransaction()) {
                        function2.f14274b = null;
                    }
                    throw th;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                sQLiteDatabase = (SQLiteDatabase) androidSQLiteDriverPooledConnection$transaction$1.L$1;
                androidSQLiteDriverPooledConnection = (AndroidSQLiteDriverPooledConnection) androidSQLiteDriverPooledConnection$transaction$1.L$0;
                try {
                    ResultKt.b(obj);
                } catch (ConnectionPool.RollbackException e12) {
                    e10 = e12;
                    Object result2 = e10.getResult();
                    sQLiteDatabase.endTransaction();
                    if (!sQLiteDatabase.inTransaction()) {
                        androidSQLiteDriverPooledConnection.f14274b = null;
                    }
                    return result2;
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            if (!sQLiteDatabase.inTransaction()) {
                androidSQLiteDriverPooledConnection.f14274b = null;
            }
            return obj;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override
    public Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) {
        return g(sQLiteTransactionType, function2, continuation);
    }

    @Override
    public Object b(Continuation continuation) {
        return Boxing.a(this.f14273a.d().inTransaction());
    }

    @Override
    public y3.b c() {
        return this.f14273a;
    }

    @Override
    public Object d(String str, Function1 function1, Continuation continuation) throws Exception {
        y3.e eVarF0 = this.f14273a.F0(str);
        try {
            Object objInvoke = function1.invoke(eVarF0);
            AutoCloseableKt.a(eVarF0, null);
            return objInvoke;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarF0, th2);
                throw th3;
            }
        }
    }

    public final b4.a f() {
        return this.f14273a;
    }
}
