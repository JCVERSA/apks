package androidx.room.driver;

import androidx.room.Transactor;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.coroutines.k;
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

final class SupportSQLitePooledConnection implements Transactor, k {

    private final androidx.room.driver.a f14321a;

    private Transactor.SQLiteTransactionType f14322b;

    private final class a implements p0, k {
        public a() {
        }

        @Override
        public y3.b c() {
            return SupportSQLitePooledConnection.this.c();
        }

        @Override
        public Object d(String str, Function1 function1, Continuation continuation) {
            return SupportSQLitePooledConnection.this.d(str, function1, continuation);
        }
    }

    public class b {

        public static final int[] f14324a;

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
            f14324a = iArr;
        }
    }

    public SupportSQLitePooledConnection(androidx.room.driver.a delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f14321a = delegate;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00af  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.room.Transactor$SQLiteTransactionType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v1, types: [z3.d] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r8v0, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.room.driver.SupportSQLitePooledConnection] */
    /* JADX WARN: Type inference failed for: r8v2 */
    public final Object f(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) throws Throwable {
        SupportSQLitePooledConnection$transaction$1 supportSQLitePooledConnection$transaction$1;
        SupportSQLitePooledConnection supportSQLitePooledConnection;
        ConnectionPool.RollbackException e10;
        z3.d dVar;
        if (continuation instanceof SupportSQLitePooledConnection$transaction$1) {
            supportSQLitePooledConnection$transaction$1 = (SupportSQLitePooledConnection$transaction$1) continuation;
            int i10 = supportSQLitePooledConnection$transaction$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                supportSQLitePooledConnection$transaction$1.label = i10 - Integer.MIN_VALUE;
            } else {
                supportSQLitePooledConnection$transaction$1 = new SupportSQLitePooledConnection$transaction$1(this, continuation);
            }
        } else {
            supportSQLitePooledConnection$transaction$1 = new SupportSQLitePooledConnection$transaction$1(this, continuation);
        }
        Object obj = supportSQLitePooledConnection$transaction$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = supportSQLitePooledConnection$transaction$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                z3.d dVarD = this.f14321a.d();
                if (!dVarD.v0()) {
                    this.f14322b = sQLiteTransactionType;
                }
                int i12 = b.f14324a[sQLiteTransactionType.ordinal()];
                if (i12 == 1) {
                    dVarD.c0();
                } else if (i12 == 2) {
                    dVarD.K();
                } else {
                    if (i12 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    dVarD.A();
                }
                try {
                    a aVar = new a();
                    supportSQLitePooledConnection$transaction$1.L$0 = this;
                    supportSQLitePooledConnection$transaction$1.L$1 = dVarD;
                    supportSQLitePooledConnection$transaction$1.label = 1;
                    Object objInvoke = function2.invoke(aVar, supportSQLitePooledConnection$transaction$1);
                    if (objInvoke == objF) {
                        return objF;
                    }
                    supportSQLitePooledConnection = this;
                    obj = objInvoke;
                    dVar = dVarD;
                } catch (ConnectionPool.RollbackException e11) {
                    supportSQLitePooledConnection = this;
                    e10 = e11;
                    dVar = dVarD;
                    Object result = e10.getResult();
                    dVar.L();
                    if (!dVar.v0()) {
                        supportSQLitePooledConnection.f14322b = null;
                    }
                    return result;
                } catch (Throwable th2) {
                    function2 = this;
                    th = th2;
                    sQLiteTransactionType = dVarD;
                    sQLiteTransactionType.L();
                    if (!sQLiteTransactionType.v0()) {
                        function2.f14322b = null;
                    }
                    throw th;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                dVar = (z3.d) supportSQLitePooledConnection$transaction$1.L$1;
                supportSQLitePooledConnection = (SupportSQLitePooledConnection) supportSQLitePooledConnection$transaction$1.L$0;
                try {
                    ResultKt.b(obj);
                } catch (ConnectionPool.RollbackException e12) {
                    e10 = e12;
                    Object result2 = e10.getResult();
                    dVar.L();
                    if (!dVar.v0()) {
                        supportSQLitePooledConnection.f14322b = null;
                    }
                    return result2;
                }
            }
            dVar.I();
            dVar.L();
            if (!dVar.v0()) {
                supportSQLitePooledConnection.f14322b = null;
            }
            return obj;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override
    public Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) {
        return f(sQLiteTransactionType, function2, continuation);
    }

    @Override
    public Object b(Continuation continuation) {
        return Boxing.a(this.f14321a.d().v0());
    }

    @Override
    public y3.b c() {
        return this.f14321a;
    }

    @Override
    public Object d(String str, Function1 function1, Continuation continuation) throws Exception {
        d dVarF0 = this.f14321a.F0(str);
        try {
            Object objInvoke = function1.invoke(dVarF0);
            AutoCloseableKt.a(dVarF0, null);
            return objInvoke;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(dVarF0, th2);
                throw th3;
            }
        }
    }
}
