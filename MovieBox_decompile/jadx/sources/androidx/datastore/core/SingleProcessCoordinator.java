package androidx.datastore.core;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class SingleProcessCoordinator implements m {

    private final String f8292a;

    private final kotlinx.coroutines.sync.a f8293b;

    private final b f8294c;

    private final kotlinx.coroutines.flow.a f8295d;

    public SingleProcessCoordinator(String filePath) {
        Intrinsics.h(filePath, "filePath");
        this.f8292a = filePath;
        this.f8293b = kotlinx.coroutines.sync.g.b(false, 1, null);
        this.f8294c = new b(0);
        this.f8295d = kotlinx.coroutines.flow.c.r(new SingleProcessCoordinator$updateNotifications$1(null));
    }

    @Override
    public Object a(Continuation continuation) {
        return Boxing.d(this.f8294c.b());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object b(Function1 function1, Continuation continuation) throws Throwable {
        SingleProcessCoordinator$lock$1 singleProcessCoordinator$lock$1;
        kotlinx.coroutines.sync.a aVar;
        Throwable th2;
        kotlinx.coroutines.sync.a aVar2;
        if (continuation instanceof SingleProcessCoordinator$lock$1) {
            singleProcessCoordinator$lock$1 = (SingleProcessCoordinator$lock$1) continuation;
            int i10 = singleProcessCoordinator$lock$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessCoordinator$lock$1.label = i10 - Integer.MIN_VALUE;
            } else {
                singleProcessCoordinator$lock$1 = new SingleProcessCoordinator$lock$1(this, continuation);
            }
        } else {
            singleProcessCoordinator$lock$1 = new SingleProcessCoordinator$lock$1(this, continuation);
        }
        Object obj = singleProcessCoordinator$lock$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = singleProcessCoordinator$lock$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                aVar = this.f8293b;
                singleProcessCoordinator$lock$1.L$0 = function1;
                singleProcessCoordinator$lock$1.L$1 = aVar;
                singleProcessCoordinator$lock$1.label = 1;
                if (aVar.f(null, singleProcessCoordinator$lock$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    aVar2 = (kotlinx.coroutines.sync.a) singleProcessCoordinator$lock$1.L$0;
                    try {
                        ResultKt.b(obj);
                        aVar2.unlock(null);
                        return obj;
                    } catch (Throwable th3) {
                        th2 = th3;
                        aVar2.unlock(null);
                        throw th2;
                    }
                }
                kotlinx.coroutines.sync.a aVar3 = (kotlinx.coroutines.sync.a) singleProcessCoordinator$lock$1.L$1;
                Function1 function2 = (Function1) singleProcessCoordinator$lock$1.L$0;
                ResultKt.b(obj);
                aVar = aVar3;
                function1 = function2;
            }
            singleProcessCoordinator$lock$1.L$0 = aVar;
            singleProcessCoordinator$lock$1.L$1 = null;
            singleProcessCoordinator$lock$1.label = 2;
            Object objInvoke = function1.invoke(singleProcessCoordinator$lock$1);
            if (objInvoke == objF) {
                return objF;
            }
            kotlinx.coroutines.sync.a aVar4 = aVar;
            obj = objInvoke;
            aVar2 = aVar4;
            aVar2.unlock(null);
            return obj;
        } catch (Throwable th4) {
            kotlinx.coroutines.sync.a aVar5 = aVar;
            th2 = th4;
            aVar2 = aVar5;
            aVar2.unlock(null);
            throw th2;
        }
    }

    @Override
    public kotlinx.coroutines.flow.a c() {
        return this.f8295d;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0059  */
    /* JADX WARN: Code duplicated, block: B:29:0x0063  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object d(Function2 function2, Continuation continuation) throws Throwable {
        SingleProcessCoordinator$tryLock$1 singleProcessCoordinator$tryLock$1;
        kotlinx.coroutines.sync.a aVar;
        Throwable th2;
        boolean z10;
        if (continuation instanceof SingleProcessCoordinator$tryLock$1) {
            singleProcessCoordinator$tryLock$1 = (SingleProcessCoordinator$tryLock$1) continuation;
            int i10 = singleProcessCoordinator$tryLock$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessCoordinator$tryLock$1.label = i10 - Integer.MIN_VALUE;
            } else {
                singleProcessCoordinator$tryLock$1 = new SingleProcessCoordinator$tryLock$1(this, continuation);
            }
        } else {
            singleProcessCoordinator$tryLock$1 = new SingleProcessCoordinator$tryLock$1(this, continuation);
        }
        Object obj = singleProcessCoordinator$tryLock$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = singleProcessCoordinator$tryLock$1.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z10 = singleProcessCoordinator$tryLock$1.Z$0;
            aVar = (kotlinx.coroutines.sync.a) singleProcessCoordinator$tryLock$1.L$0;
            try {
                ResultKt.b(obj);
                if (z10) {
                    aVar.unlock(null);
                }
                return obj;
            } catch (Throwable th3) {
                th2 = th3;
                if (z10) {
                    aVar.unlock(null);
                }
                throw th2;
            }
        }
        ResultKt.b(obj);
        kotlinx.coroutines.sync.a aVar2 = this.f8293b;
        boolean zB = aVar2.b(null);
        try {
            Object objA = Boxing.a(zB);
            singleProcessCoordinator$tryLock$1.L$0 = aVar2;
            singleProcessCoordinator$tryLock$1.Z$0 = zB;
            singleProcessCoordinator$tryLock$1.label = 1;
            Object objInvoke = function2.invoke(objA, singleProcessCoordinator$tryLock$1);
            if (objInvoke == objF) {
                return objF;
            }
            aVar = aVar2;
            obj = objInvoke;
            z10 = zB;
            if (z10) {
                aVar.unlock(null);
            }
            return obj;
        } catch (Throwable th4) {
            aVar = aVar2;
            th2 = th4;
            z10 = zB;
            if (z10) {
                aVar.unlock(null);
            }
            throw th2;
        }
    }

    @Override
    public Object e(Continuation continuation) {
        return Boxing.d(this.f8294c.d());
    }
}
