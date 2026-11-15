package androidx.room.coroutines;

import android.database.SQLException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

public final class ConnectionPoolImpl implements ConnectionPool {

    private final y3.c f14277a;

    private final Pool f14278b;

    private final Pool f14279c;

    private final ThreadLocal f14280d;

    private final AtomicBoolean f14281e;

    private long f14282f;

    private boolean f14283g;

    public ConnectionPoolImpl(final y3.c driver, final String fileName) {
        Intrinsics.h(driver, "driver");
        Intrinsics.h(fileName, "fileName");
        this.f14280d = new ThreadLocal();
        this.f14281e = new AtomicBoolean(false);
        Duration.Companion companion = Duration.INSTANCE;
        this.f14282f = DurationKt.s(30, DurationUnit.SECONDS);
        this.f14277a = driver;
        Pool pool = new Pool(1, new Function0() {
            @Override
            public final Object invoke() {
                return ConnectionPoolImpl.j(driver, fileName);
            }
        });
        this.f14278b = pool;
        this.f14279c = pool;
    }

    private final boolean isClosed() {
        return this.f14281e.get();
    }

    public static final y3.b j(y3.c cVar, String str) {
        return cVar.open(str);
    }

    public static final y3.b k(y3.c cVar, String str) throws Exception {
        y3.b bVarOpen = cVar.open(str);
        y3.a.a(bVarOpen, "PRAGMA query_only = 1");
        return bVarOpen;
    }

    public static final y3.b l(y3.c cVar, String str) {
        return cVar.open(str);
    }

    private final CoroutineContext m(PooledConnectionImpl pooledConnectionImpl) {
        return new c(pooledConnectionImpl).plus(w3.d.a(this.f14280d, pooledConnectionImpl));
    }

    private final void n(boolean z10) {
        String str = z10 ? "reader" : "writer";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Timed out attempting to acquire a " + str + " connection.");
        sb2.append('\n');
        sb2.append('\n');
        sb2.append("Writer pool:");
        sb2.append('\n');
        this.f14279c.d(sb2);
        sb2.append("Reader pool:");
        sb2.append('\n');
        this.f14278b.d(sb2);
        try {
            y3.a.b(5, sb2.toString());
            throw new KotlinNothingValueException();
        } catch (SQLException e10) {
            if (this.f14283g) {
                throw e10;
            }
            e10.printStackTrace();
        }
    }

    public static final Unit o(ConnectionPoolImpl connectionPoolImpl, boolean z10) {
        connectionPoolImpl.n(z10);
        return Unit.f64096a;
    }

    @Override
    public void close() {
        if (this.f14281e.compareAndSet(false, true)) {
            this.f14278b.c();
            this.f14279c.c();
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0137 A[Catch: all -> 0x0171, TRY_LEAVE, TryCatch #1 {all -> 0x0171, blocks: (B:60:0x011d, B:64:0x012c, B:66:0x0137, B:76:0x0176, B:77:0x017d), top: B:95:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0156 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:69:0x0157  */
    /* JADX WARN: Code duplicated, block: B:72:0x015f A[Catch: all -> 0x0170, TRY_LEAVE, TryCatch #0 {all -> 0x0170, blocks: (B:70:0x0159, B:72:0x015f), top: B:93:0x0159 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0176 A[Catch: all -> 0x0171, TRY_ENTER, TryCatch #1 {all -> 0x0171, blocks: (B:60:0x011d, B:64:0x012c, B:66:0x0137, B:76:0x0176, B:77:0x017d), top: B:95:0x011d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [T, androidx.room.coroutines.PooledConnectionImpl] */
    @Override
    public Object e(boolean z10, Function2 function2, Continuation continuation) {
        ConnectionPoolImpl$useConnection$1 connectionPoolImpl$useConnection$1;
        Ref.ObjectRef objectRef;
        Pool pool;
        Ref.ObjectRef objectRef2;
        ConnectionPoolImpl connectionPoolImpl;
        Function2 function3;
        Ref.ObjectRef objectRef3;
        Pool pool2;
        CoroutineContext coroutineContext;
        Throwable th2;
        T t10;
        PooledConnectionImpl pooledConnectionImpl;
        final boolean z11 = z10;
        if (continuation instanceof ConnectionPoolImpl$useConnection$1) {
            connectionPoolImpl$useConnection$1 = (ConnectionPoolImpl$useConnection$1) continuation;
            int i10 = connectionPoolImpl$useConnection$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                connectionPoolImpl$useConnection$1.label = i10 - Integer.MIN_VALUE;
            } else {
                connectionPoolImpl$useConnection$1 = new ConnectionPoolImpl$useConnection$1(this, continuation);
            }
        } else {
            connectionPoolImpl$useConnection$1 = new ConnectionPoolImpl$useConnection$1(this, continuation);
        }
        Object objInvoke = connectionPoolImpl$useConnection$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = connectionPoolImpl$useConnection$1.label;
        boolean z12 = false;
        if (i11 != 0) {
            if (i11 == 1 || i11 == 2) {
                ResultKt.b(objInvoke);
                return objInvoke;
            }
            if (i11 == 3) {
                z11 = connectionPoolImpl$useConnection$1.Z$0;
                objectRef3 = (Ref.ObjectRef) connectionPoolImpl$useConnection$1.L$5;
                CoroutineContext coroutineContext2 = (CoroutineContext) connectionPoolImpl$useConnection$1.L$4;
                Ref.ObjectRef objectRef4 = (Ref.ObjectRef) connectionPoolImpl$useConnection$1.L$3;
                pool2 = (Pool) connectionPoolImpl$useConnection$1.L$2;
                function3 = (Function2) connectionPoolImpl$useConnection$1.L$1;
                connectionPoolImpl = (ConnectionPoolImpl) connectionPoolImpl$useConnection$1.L$0;
                try {
                    ResultKt.b(objInvoke);
                    coroutineContext = coroutineContext2;
                    objectRef = objectRef4;
                    try {
                        i iVarJ = ((i) objInvoke).j(coroutineContext);
                        if (connectionPoolImpl.f14278b != connectionPoolImpl.f14279c && z11) {
                            z12 = true;
                        }
                        objectRef3.element = new PooledConnectionImpl(iVarJ, z12);
                        t10 = objectRef.element;
                        if (t10 != 0) {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                        CoroutineContext coroutineContextM = connectionPoolImpl.m((PooledConnectionImpl) t10);
                        ConnectionPoolImpl$useConnection$4 connectionPoolImpl$useConnection$4 = new ConnectionPoolImpl$useConnection$4(function3, objectRef, null);
                        connectionPoolImpl$useConnection$1.L$0 = pool2;
                        connectionPoolImpl$useConnection$1.L$1 = objectRef;
                        connectionPoolImpl$useConnection$1.L$2 = null;
                        connectionPoolImpl$useConnection$1.L$3 = null;
                        connectionPoolImpl$useConnection$1.L$4 = null;
                        connectionPoolImpl$useConnection$1.L$5 = null;
                        connectionPoolImpl$useConnection$1.label = 4;
                        objInvoke = kotlinx.coroutines.i.g(coroutineContextM, connectionPoolImpl$useConnection$4, connectionPoolImpl$useConnection$1);
                        if (objInvoke == objF) {
                            return objF;
                        }
                        objectRef2 = objectRef;
                        pool = pool2;
                    } catch (Throwable th3) {
                        th2 = th3;
                        objectRef2 = objectRef;
                        pool = pool2;
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    objectRef2 = objectRef4;
                    pool = pool2;
                    throw th2;
                }
            } else {
                if (i11 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                objectRef2 = (Ref.ObjectRef) connectionPoolImpl$useConnection$1.L$1;
                pool = (Pool) connectionPoolImpl$useConnection$1.L$0;
                try {
                    ResultKt.b(objInvoke);
                } catch (Throwable th5) {
                    th = th5;
                    th2 = th;
                    throw th2;
                }
            }
            try {
                pooledConnectionImpl = (PooledConnectionImpl) objectRef2.element;
                if (pooledConnectionImpl != null) {
                    pooledConnectionImpl.n();
                    pooledConnectionImpl.k().k();
                    pool.e(pooledConnectionImpl.k());
                }
            } catch (Throwable unused) {
            }
            return objInvoke;
        }
        ResultKt.b(objInvoke);
        if (isClosed()) {
            y3.a.b(21, "Connection pool is closed");
            throw new KotlinNothingValueException();
        }
        PooledConnectionImpl pooledConnectionImplA = (PooledConnectionImpl) this.f14280d.get();
        if (pooledConnectionImplA == null) {
            c cVar = (c) connectionPoolImpl$useConnection$1.getF64214a().get(c.f14307b);
            pooledConnectionImplA = cVar != null ? cVar.a() : null;
        }
        if (pooledConnectionImplA != null) {
            if (!z11 && pooledConnectionImplA.l()) {
                y3.a.b(1, "Cannot upgrade connection from reader to writer");
                throw new KotlinNothingValueException();
            }
            if (connectionPoolImpl$useConnection$1.getF64214a().get(c.f14307b) == null) {
                CoroutineContext coroutineContextM2 = m(pooledConnectionImplA);
                ConnectionPoolImpl$useConnection$2 connectionPoolImpl$useConnection$2 = new ConnectionPoolImpl$useConnection$2(function2, pooledConnectionImplA, null);
                connectionPoolImpl$useConnection$1.label = 1;
                objInvoke = kotlinx.coroutines.i.g(coroutineContextM2, connectionPoolImpl$useConnection$2, connectionPoolImpl$useConnection$1);
                if (objInvoke == objF) {
                    return objF;
                }
            } else {
                connectionPoolImpl$useConnection$1.label = 2;
                objInvoke = function2.invoke(pooledConnectionImplA, connectionPoolImpl$useConnection$1);
                if (objInvoke == objF) {
                    return objF;
                }
            }
            return objInvoke;
        }
        Pool pool3 = z11 ? this.f14278b : this.f14279c;
        objectRef = new Ref.ObjectRef();
        try {
            CoroutineContext f64214a = connectionPoolImpl$useConnection$1.getF64214a();
            long j10 = this.f14282f;
            Function0 function0 = new Function0() {
                @Override
                public final Object invoke() {
                    return ConnectionPoolImpl.o(this.f14315a, z11);
                }
            };
            connectionPoolImpl$useConnection$1.L$0 = this;
            connectionPoolImpl$useConnection$1.L$1 = function2;
            connectionPoolImpl$useConnection$1.L$2 = pool3;
            connectionPoolImpl$useConnection$1.L$3 = objectRef;
            connectionPoolImpl$useConnection$1.L$4 = f64214a;
            connectionPoolImpl$useConnection$1.L$5 = objectRef;
            connectionPoolImpl$useConnection$1.Z$0 = z11;
            connectionPoolImpl$useConnection$1.label = 3;
            Object objB = pool3.b(j10, function0, connectionPoolImpl$useConnection$1);
            if (objB == objF) {
                return objF;
            }
            connectionPoolImpl = this;
            function3 = function2;
            objectRef3 = objectRef;
            pool2 = pool3;
            objInvoke = objB;
            coroutineContext = f64214a;
            i iVarJ2 = ((i) objInvoke).j(coroutineContext);
            if (connectionPoolImpl.f14278b != connectionPoolImpl.f14279c) {
                z12 = true;
            }
            objectRef3.element = new PooledConnectionImpl(iVarJ2, z12);
            t10 = objectRef.element;
            if (t10 != 0) {
                throw new IllegalArgumentException("Required value was null.");
            }
            CoroutineContext coroutineContextM3 = connectionPoolImpl.m((PooledConnectionImpl) t10);
            ConnectionPoolImpl$useConnection$4 connectionPoolImpl$useConnection$5 = new ConnectionPoolImpl$useConnection$4(function3, objectRef, null);
            connectionPoolImpl$useConnection$1.L$0 = pool2;
            connectionPoolImpl$useConnection$1.L$1 = objectRef;
            connectionPoolImpl$useConnection$1.L$2 = null;
            connectionPoolImpl$useConnection$1.L$3 = null;
            connectionPoolImpl$useConnection$1.L$4 = null;
            connectionPoolImpl$useConnection$1.L$5 = null;
            connectionPoolImpl$useConnection$1.label = 4;
            objInvoke = kotlinx.coroutines.i.g(coroutineContextM3, connectionPoolImpl$useConnection$5, connectionPoolImpl$useConnection$1);
            if (objInvoke == objF) {
                return objF;
            }
            objectRef2 = objectRef;
            pool = pool2;
            pooledConnectionImpl = (PooledConnectionImpl) objectRef2.element;
            if (pooledConnectionImpl != null) {
                pooledConnectionImpl.n();
                pooledConnectionImpl.k().k();
                pool.e(pooledConnectionImpl.k());
            }
            return objInvoke;
        } catch (Throwable th6) {
            th = th6;
            pool = pool3;
            objectRef2 = objectRef;
            th2 = th;
            throw th2;
        }
        try {
            throw th2;
        } catch (Throwable th7) {
            try {
                PooledConnectionImpl pooledConnectionImpl2 = (PooledConnectionImpl) objectRef2.element;
                if (pooledConnectionImpl2 == null) {
                    throw th7;
                }
                pooledConnectionImpl2.n();
                pooledConnectionImpl2.k().k();
                pool.e(pooledConnectionImpl2.k());
                throw th7;
            } catch (Throwable th8) {
                ExceptionsKt.a(th2, th8);
                throw th7;
            }
        }
    }

    public ConnectionPoolImpl(final y3.c driver, final String fileName, int i10, int i11) {
        Intrinsics.h(driver, "driver");
        Intrinsics.h(fileName, "fileName");
        this.f14280d = new ThreadLocal();
        this.f14281e = new AtomicBoolean(false);
        Duration.Companion companion = Duration.INSTANCE;
        this.f14282f = DurationKt.s(30, DurationUnit.SECONDS);
        if (i10 <= 0) {
            throw new IllegalArgumentException("Maximum number of readers must be greater than 0");
        }
        if (i11 > 0) {
            this.f14277a = driver;
            this.f14278b = new Pool(i10, new Function0() {
                @Override
                public final Object invoke() {
                    return ConnectionPoolImpl.k(driver, fileName);
                }
            });
            this.f14279c = new Pool(i11, new Function0() {
                @Override
                public final Object invoke() {
                    return ConnectionPoolImpl.l(driver, fileName);
                }
            });
            return;
        }
        throw new IllegalArgumentException("Maximum number of writers must be greater than 0");
    }
}
