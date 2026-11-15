package androidx.room.coroutines;

import android.database.SQLException;
import androidx.room.Transactor;
import androidx.room.p0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

final class PooledConnectionImpl implements Transactor, k {

    private final i f14292a;

    private final boolean f14293b;

    private final ArrayDeque f14294c;

    private final AtomicBoolean f14295d;

    private final class a implements y3.e {

        private final y3.e f14296a;

        private final long f14297b;

        final PooledConnectionImpl f14298c;

        public a(PooledConnectionImpl pooledConnectionImpl, y3.e delegate) {
            Intrinsics.h(delegate, "delegate");
            this.f14298c = pooledConnectionImpl;
            this.f14296a = delegate;
            this.f14297b = w3.d.b();
        }

        @Override
        public boolean C0() {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                return this.f14296a.C0();
            }
            y3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override
        public void a(int i10, double d10) {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                this.f14296a.a(i10, d10);
            } else {
                y3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override
        public void c(int i10, long j10) {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                this.f14296a.c(i10, j10);
            } else {
                y3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override
        public void close() {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                this.f14296a.close();
            } else {
                y3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override
        public void g(int i10) {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                this.f14296a.g(i10);
            } else {
                y3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override
        public boolean getBoolean(int i10) {
            return y3.d.a(this, i10);
        }

        @Override
        public int getColumnCount() {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                return this.f14296a.getColumnCount();
            }
            y3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override
        public String getColumnName(int i10) {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                return this.f14296a.getColumnName(i10);
            }
            y3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override
        public double getDouble(int i10) {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                return this.f14296a.getDouble(i10);
            }
            y3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override
        public long getLong(int i10) {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                return this.f14296a.getLong(i10);
            }
            y3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override
        public void i(int i10, String value) {
            Intrinsics.h(value, "value");
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                this.f14296a.i(i10, value);
            } else {
                y3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override
        public boolean isNull(int i10) {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                return this.f14296a.isNull(i10);
            }
            y3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override
        public String q0(int i10) {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                return this.f14296a.q0(i10);
            }
            y3.a.b(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override
        public void reset() {
            if (this.f14298c.m()) {
                y3.a.b(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.f14297b == w3.d.b()) {
                this.f14296a.reset();
            } else {
                y3.a.b(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }
    }

    private final class b implements p0, k {
        public b() {
        }

        @Override
        public y3.b c() {
            return PooledConnectionImpl.this.c();
        }

        @Override
        public Object d(String str, Function1 function1, Continuation continuation) {
            return PooledConnectionImpl.this.d(str, function1, continuation);
        }
    }

    private static final class c {

        private final int f14300a;

        private boolean f14301b;

        public c(int i10, boolean z10) {
            this.f14300a = i10;
            this.f14301b = z10;
        }

        public final int a() {
            return this.f14300a;
        }

        public final boolean b() {
            return this.f14301b;
        }
    }

    public class d {

        public static final int[] f14302a;

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
            f14302a = iArr;
        }
    }

    public PooledConnectionImpl(i delegate, boolean z10) {
        Intrinsics.h(delegate, "delegate");
        this.f14292a = delegate;
        this.f14293b = z10;
        this.f14294c = new ArrayDeque();
        this.f14295d = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(Transactor.SQLiteTransactionType sQLiteTransactionType, Continuation continuation) {
        PooledConnectionImpl$beginTransaction$1 pooledConnectionImpl$beginTransaction$1;
        kotlinx.coroutines.sync.a aVar;
        PooledConnectionImpl pooledConnectionImpl;
        if (continuation instanceof PooledConnectionImpl$beginTransaction$1) {
            pooledConnectionImpl$beginTransaction$1 = (PooledConnectionImpl$beginTransaction$1) continuation;
            int i10 = pooledConnectionImpl$beginTransaction$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$beginTransaction$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$beginTransaction$1 = new PooledConnectionImpl$beginTransaction$1(this, continuation);
            }
        } else {
            pooledConnectionImpl$beginTransaction$1 = new PooledConnectionImpl$beginTransaction$1(this, continuation);
        }
        Object obj = pooledConnectionImpl$beginTransaction$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = pooledConnectionImpl$beginTransaction$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            aVar = this.f14292a;
            pooledConnectionImpl$beginTransaction$1.L$0 = this;
            pooledConnectionImpl$beginTransaction$1.L$1 = sQLiteTransactionType;
            pooledConnectionImpl$beginTransaction$1.L$2 = aVar;
            pooledConnectionImpl$beginTransaction$1.label = 1;
            if (aVar.f(null, pooledConnectionImpl$beginTransaction$1) == objF) {
                return objF;
            }
            pooledConnectionImpl = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlinx.coroutines.sync.a aVar2 = (kotlinx.coroutines.sync.a) pooledConnectionImpl$beginTransaction$1.L$2;
            Transactor.SQLiteTransactionType sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) pooledConnectionImpl$beginTransaction$1.L$1;
            pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$beginTransaction$1.L$0;
            ResultKt.b(obj);
            aVar = aVar2;
            sQLiteTransactionType = sQLiteTransactionType2;
        }
        try {
            int size = pooledConnectionImpl.f14294c.size();
            if (pooledConnectionImpl.f14294c.isEmpty()) {
                int i12 = d.f14302a[sQLiteTransactionType.ordinal()];
                if (i12 == 1) {
                    y3.a.a(pooledConnectionImpl.f14292a, "BEGIN DEFERRED TRANSACTION");
                } else if (i12 == 2) {
                    y3.a.a(pooledConnectionImpl.f14292a, "BEGIN IMMEDIATE TRANSACTION");
                } else {
                    if (i12 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    y3.a.a(pooledConnectionImpl.f14292a, "BEGIN EXCLUSIVE TRANSACTION");
                }
            } else {
                y3.a.a(pooledConnectionImpl.f14292a, "SAVEPOINT '" + size + '\'');
            }
            pooledConnectionImpl.f14294c.addLast(new c(size, false));
            Unit unit = Unit.f64096a;
            aVar.unlock(null);
            return unit;
        } catch (Throwable th2) {
            aVar.unlock(null);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(boolean z10, Continuation continuation) {
        PooledConnectionImpl$endTransaction$1 pooledConnectionImpl$endTransaction$1;
        PooledConnectionImpl pooledConnectionImpl;
        kotlinx.coroutines.sync.a aVar;
        if (continuation instanceof PooledConnectionImpl$endTransaction$1) {
            pooledConnectionImpl$endTransaction$1 = (PooledConnectionImpl$endTransaction$1) continuation;
            int i10 = pooledConnectionImpl$endTransaction$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$endTransaction$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$endTransaction$1 = new PooledConnectionImpl$endTransaction$1(this, continuation);
            }
        } else {
            pooledConnectionImpl$endTransaction$1 = new PooledConnectionImpl$endTransaction$1(this, continuation);
        }
        Object obj = pooledConnectionImpl$endTransaction$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = pooledConnectionImpl$endTransaction$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            i iVar = this.f14292a;
            pooledConnectionImpl$endTransaction$1.L$0 = this;
            pooledConnectionImpl$endTransaction$1.L$1 = iVar;
            pooledConnectionImpl$endTransaction$1.Z$0 = z10;
            pooledConnectionImpl$endTransaction$1.label = 1;
            if (iVar.f(null, pooledConnectionImpl$endTransaction$1) == objF) {
                return objF;
            }
            pooledConnectionImpl = this;
            aVar = iVar;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z10 = pooledConnectionImpl$endTransaction$1.Z$0;
            aVar = (kotlinx.coroutines.sync.a) pooledConnectionImpl$endTransaction$1.L$1;
            pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$endTransaction$1.L$0;
            ResultKt.b(obj);
        }
        try {
            if (pooledConnectionImpl.f14294c.isEmpty()) {
                throw new IllegalStateException("Not in a transaction");
            }
            c cVar = (c) CollectionsKt.L(pooledConnectionImpl.f14294c);
            if (!z10 || cVar.b()) {
                if (pooledConnectionImpl.f14294c.isEmpty()) {
                    y3.a.a(pooledConnectionImpl.f14292a, "ROLLBACK TRANSACTION");
                } else {
                    y3.a.a(pooledConnectionImpl.f14292a, "ROLLBACK TRANSACTION TO SAVEPOINT '" + cVar.a() + '\'');
                }
            } else if (pooledConnectionImpl.f14294c.isEmpty()) {
                y3.a.a(pooledConnectionImpl.f14292a, "END TRANSACTION");
            } else {
                y3.a.a(pooledConnectionImpl.f14292a, "RELEASE SAVEPOINT '" + cVar.a() + '\'');
            }
            Unit unit = Unit.f64096a;
            aVar.unlock(null);
            return unit;
        } catch (Throwable th2) {
            aVar.unlock(null);
            throw th2;
        }
    }

    public final boolean m() {
        return this.f14295d.get();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009e  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b4 A[Catch: all -> 0x00c8, TRY_LEAVE, TryCatch #3 {, blocks: (B:50:0x00b0, B:52:0x00b4), top: B:77:0x00b0 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00c6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x00da A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:68:0x00df  */
    /* JADX WARN: Code duplicated, block: B:70:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:84:? A[RETURN, SYNTHETIC] */
    public final Object o(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) throws Throwable {
        PooledConnectionImpl$transaction$1 pooledConnectionImpl$transaction$1;
        PooledConnectionImpl pooledConnectionImpl;
        PooledConnectionImpl pooledConnectionImpl2;
        ConnectionPool.RollbackException th2;
        int i10;
        Throwable th3;
        Object result;
        boolean z10;
        if (continuation instanceof PooledConnectionImpl$transaction$1) {
            pooledConnectionImpl$transaction$1 = (PooledConnectionImpl$transaction$1) continuation;
            int i11 = pooledConnectionImpl$transaction$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$transaction$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$transaction$1 = new PooledConnectionImpl$transaction$1(this, continuation);
            }
        } else {
            pooledConnectionImpl$transaction$1 = new PooledConnectionImpl$transaction$1(this, continuation);
        }
        Object objInvoke = pooledConnectionImpl$transaction$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pooledConnectionImpl$transaction$1.label;
        ConnectionPool.RollbackException rollbackException = null;
        try {
            if (i12 == 0) {
                ResultKt.b(objInvoke);
                if (sQLiteTransactionType == null) {
                    sQLiteTransactionType = Transactor.SQLiteTransactionType.DEFERRED;
                }
                pooledConnectionImpl$transaction$1.L$0 = this;
                pooledConnectionImpl$transaction$1.L$1 = function2;
                pooledConnectionImpl$transaction$1.label = 1;
                if (i(sQLiteTransactionType, pooledConnectionImpl$transaction$1) == objF) {
                    return objF;
                }
                pooledConnectionImpl = this;
            } else {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 == 3) {
                            Object obj = pooledConnectionImpl$transaction$1.L$0;
                            ResultKt.b(objInvoke);
                            return obj;
                        }
                        if (i12 == 4) {
                            Object obj2 = pooledConnectionImpl$transaction$1.L$0;
                            ResultKt.b(objInvoke);
                            return obj2;
                        }
                        if (i12 != 5) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        th = (Throwable) pooledConnectionImpl$transaction$1.L$1;
                        th3 = (Throwable) pooledConnectionImpl$transaction$1.L$0;
                        try {
                            ResultKt.b(objInvoke);
                        } catch (SQLException e10) {
                            e = e10;
                            if (th3 != null) {
                                throw e;
                            }
                            ExceptionsKt.a(th3, e);
                        }
                        throw th;
                    }
                    i10 = pooledConnectionImpl$transaction$1.I$0;
                    pooledConnectionImpl2 = (PooledConnectionImpl) pooledConnectionImpl$transaction$1.L$0;
                    try {
                        ResultKt.b(objInvoke);
                        z10 = i10 != 0;
                        pooledConnectionImpl$transaction$1.L$0 = objInvoke;
                        pooledConnectionImpl$transaction$1.label = 3;
                        if (pooledConnectionImpl2.j(z10, pooledConnectionImpl$transaction$1) == objF) {
                            return objF;
                        }
                        return objInvoke;
                    } catch (Throwable th4) {
                        th2 = th4;
                        if (!(th2 instanceof ConnectionPool.RollbackException)) {
                            result = th2.getResult();
                            pooledConnectionImpl$transaction$1.L$0 = result;
                            pooledConnectionImpl$transaction$1.L$1 = null;
                            pooledConnectionImpl$transaction$1.label = 4;
                            if (pooledConnectionImpl2.j(false, pooledConnectionImpl$transaction$1) == objF) {
                                return objF;
                            }
                            return result;
                        }
                        try {
                            throw th2;
                        } catch (Throwable th5) {
                            rollbackException = th2;
                            th = th5;
                            pooledConnectionImpl$transaction$1.L$0 = rollbackException;
                            pooledConnectionImpl$transaction$1.L$1 = th;
                            pooledConnectionImpl$transaction$1.label = 5;
                            if (pooledConnectionImpl2.j(false, pooledConnectionImpl$transaction$1) == objF) {
                                return objF;
                            }
                            throw th;
                        }
                        try {
                            pooledConnectionImpl$transaction$1.L$0 = rollbackException;
                            pooledConnectionImpl$transaction$1.L$1 = th;
                            pooledConnectionImpl$transaction$1.label = 5;
                            if (pooledConnectionImpl2.j(false, pooledConnectionImpl$transaction$1) == objF) {
                                return objF;
                            }
                        } catch (SQLException e11) {
                            e = e11;
                            th3 = rollbackException;
                            if (th3 != null) {
                                throw e;
                            }
                            ExceptionsKt.a(th3, e);
                        }
                        throw th;
                    }
                }
                function2 = (Function2) pooledConnectionImpl$transaction$1.L$1;
                pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$transaction$1.L$0;
                ResultKt.b(objInvoke);
            }
            b bVar = pooledConnectionImpl.new b();
            pooledConnectionImpl$transaction$1.L$0 = pooledConnectionImpl;
            pooledConnectionImpl$transaction$1.L$1 = null;
            pooledConnectionImpl$transaction$1.I$0 = 1;
            pooledConnectionImpl$transaction$1.label = 2;
            objInvoke = function2.invoke(bVar, pooledConnectionImpl$transaction$1);
            if (objInvoke == objF) {
                return objF;
            }
            pooledConnectionImpl2 = pooledConnectionImpl;
            i10 = 1;
            if (i10 != 0) {
            }
            pooledConnectionImpl$transaction$1.L$0 = objInvoke;
            pooledConnectionImpl$transaction$1.label = 3;
            if (pooledConnectionImpl2.j(z10, pooledConnectionImpl$transaction$1) == objF) {
                return objF;
            }
            return objInvoke;
        } catch (Throwable th6) {
            pooledConnectionImpl2 = pooledConnectionImpl;
            th2 = th6;
            if (!(th2 instanceof ConnectionPool.RollbackException)) {
                throw th2;
            }
            result = th2.getResult();
            pooledConnectionImpl$transaction$1.L$0 = result;
            pooledConnectionImpl$transaction$1.L$1 = null;
            pooledConnectionImpl$transaction$1.label = 4;
            if (pooledConnectionImpl2.j(false, pooledConnectionImpl$transaction$1) == objF) {
                return objF;
            }
            return result;
            pooledConnectionImpl$transaction$1.L$0 = rollbackException;
            pooledConnectionImpl$transaction$1.L$1 = th;
            pooledConnectionImpl$transaction$1.label = 5;
            if (pooledConnectionImpl2.j(false, pooledConnectionImpl$transaction$1) == objF) {
                return objF;
            }
            throw th;
        }
    }

    @Override
    public Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) {
        if (m()) {
            y3.a.b(21, "Connection is recycled");
            throw new KotlinNothingValueException();
        }
        androidx.room.coroutines.c cVar = (androidx.room.coroutines.c) continuation.getF64063a().get(androidx.room.coroutines.c.f14307b);
        if (cVar != null && cVar.a() == this) {
            return o(sQLiteTransactionType, function2, continuation);
        }
        y3.a.b(21, "Attempted to use connection on a different coroutine");
        throw new KotlinNothingValueException();
    }

    @Override
    public Object b(Continuation continuation) {
        if (m()) {
            y3.a.b(21, "Connection is recycled");
            throw new KotlinNothingValueException();
        }
        androidx.room.coroutines.c cVar = (androidx.room.coroutines.c) continuation.getF64063a().get(androidx.room.coroutines.c.f14307b);
        if (cVar != null && cVar.a() == this) {
            return Boxing.a(!this.f14294c.isEmpty());
        }
        y3.a.b(21, "Attempted to use connection on a different coroutine");
        throw new KotlinNothingValueException();
    }

    @Override
    public y3.b c() {
        return this.f14292a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object d(String str, Function1 function1, Continuation continuation) {
        PooledConnectionImpl$usePrepared$1 pooledConnectionImpl$usePrepared$1;
        kotlinx.coroutines.sync.a aVar;
        PooledConnectionImpl pooledConnectionImpl;
        if (continuation instanceof PooledConnectionImpl$usePrepared$1) {
            pooledConnectionImpl$usePrepared$1 = (PooledConnectionImpl$usePrepared$1) continuation;
            int i10 = pooledConnectionImpl$usePrepared$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$usePrepared$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$usePrepared$1 = new PooledConnectionImpl$usePrepared$1(this, continuation);
            }
        } else {
            pooledConnectionImpl$usePrepared$1 = new PooledConnectionImpl$usePrepared$1(this, continuation);
        }
        Object obj = pooledConnectionImpl$usePrepared$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = pooledConnectionImpl$usePrepared$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (m()) {
                y3.a.b(21, "Connection is recycled");
                throw new KotlinNothingValueException();
            }
            androidx.room.coroutines.c cVar = (androidx.room.coroutines.c) pooledConnectionImpl$usePrepared$1.getF64063a().get(androidx.room.coroutines.c.f14307b);
            if (cVar == null || cVar.a() != this) {
                y3.a.b(21, "Attempted to use connection on a different coroutine");
                throw new KotlinNothingValueException();
            }
            aVar = this.f14292a;
            pooledConnectionImpl$usePrepared$1.L$0 = this;
            pooledConnectionImpl$usePrepared$1.L$1 = str;
            pooledConnectionImpl$usePrepared$1.L$2 = function1;
            pooledConnectionImpl$usePrepared$1.L$3 = aVar;
            pooledConnectionImpl$usePrepared$1.label = 1;
            if (aVar.f(null, pooledConnectionImpl$usePrepared$1) == objF) {
                return objF;
            }
            pooledConnectionImpl = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlinx.coroutines.sync.a aVar2 = (kotlinx.coroutines.sync.a) pooledConnectionImpl$usePrepared$1.L$3;
            function1 = (Function1) pooledConnectionImpl$usePrepared$1.L$2;
            String str2 = (String) pooledConnectionImpl$usePrepared$1.L$1;
            pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$usePrepared$1.L$0;
            ResultKt.b(obj);
            aVar = aVar2;
            str = str2;
        }
        try {
            a aVar3 = new a(pooledConnectionImpl, pooledConnectionImpl.f14292a.F0(str));
            try {
                Object objInvoke = function1.invoke(aVar3);
                AutoCloseableKt.a(aVar3, null);
                aVar.unlock(null);
                return objInvoke;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    AutoCloseableKt.a(aVar3, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            aVar.unlock(null);
            throw th4;
        }
    }

    public final i k() {
        return this.f14292a;
    }

    public final boolean l() {
        return this.f14293b;
    }

    public final void n() throws Exception {
        if (this.f14295d.compareAndSet(false, true)) {
            try {
                y3.a.a(this.f14292a, "ROLLBACK TRANSACTION");
            } catch (SQLException unused) {
            }
        }
    }
}
