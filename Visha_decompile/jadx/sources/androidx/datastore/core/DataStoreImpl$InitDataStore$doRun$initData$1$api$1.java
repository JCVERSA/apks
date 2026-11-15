package androidx.datastore.core;

import defpackage.nw6;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;

@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J4\u0010\u0006\u001a\u00028\u00002\"\u0010\u0005\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002H\u0096@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"androidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1", "Landroidx/datastore/core/InitializerApi;", "Lkotlin/Function2;", "Lwh1;", "", "transform", "updateData", "(Ls74;Lwh1;)Ljava/lang/Object;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DataStoreImpl$InitDataStore$doRun$initData$1$api$1<T> implements InitializerApi<T> {
    final Ref$ObjectRef<T> $currentData;
    final Ref$BooleanRef $initializationComplete;
    final nw6 $updateLock;
    final DataStoreImpl<T> this$0;

    public DataStoreImpl$InitDataStore$doRun$initData$1$api$1(nw6 nw6Var, Ref$BooleanRef ref$BooleanRef, Ref$ObjectRef<T> ref$ObjectRef, DataStoreImpl<T> dataStoreImpl) {
        this.$updateLock = nw6Var;
        this.$initializationComplete = ref$BooleanRef;
        this.$currentData = ref$ObjectRef;
        this.this$0 = dataStoreImpl;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b8 A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #1 {all -> 0x0056, blocks: (B:21:0x0052, B:35:0x00b0, B:37:0x00b8), top: B:53:0x0052 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object updateData(s74 s74Var, wh1<? super T> wh1Var) throws Throwable {
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;
        nw6 nw6Var;
        Ref$BooleanRef ref$BooleanRef;
        Ref$ObjectRef<T> ref$ObjectRef;
        DataStoreImpl dataStoreImpl;
        DataStoreImpl dataStoreImpl2;
        nw6 nw6Var2;
        nw6 nw6Var3;
        Ref$ObjectRef<T> ref$ObjectRef2;
        DataStoreImpl dataStoreImpl3;
        T t;
        if (wh1Var instanceof DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) {
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) wh1Var;
            int i = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = i - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1(this, wh1Var);
            }
        } else {
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1(this, wh1Var);
        }
        Object obj = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.result;
        Object objF = z45.f();
        int i2 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label;
        try {
            if (i2 == 0) {
                c.b(obj);
                nw6Var = this.$updateLock;
                ref$BooleanRef = this.$initializationComplete;
                ref$ObjectRef = this.$currentData;
                dataStoreImpl = (DataStoreImpl<T>) this.this$0;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = s74Var;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = nw6Var;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = ref$BooleanRef;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3 = ref$ObjectRef;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4 = dataStoreImpl;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 1;
                if (nw6Var.c(null, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) == objF) {
                    dataStoreImpl2 = dataStoreImpl;
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        t = (T) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
                        ref$ObjectRef2 = (Ref$ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
                        nw6Var2 = (nw6) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
                        try {
                            c.b(obj);
                            ref$ObjectRef2.element = t;
                            T t2 = ref$ObjectRef2.element;
                            nw6Var2.b(null);
                            return t2;
                        } catch (Throwable th) {
                            th = th;
                            nw6Var2.b(null);
                            throw th;
                        }
                    }
                    DataStoreImpl dataStoreImpl4 = (DataStoreImpl) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
                    ref$ObjectRef2 = (Ref$ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
                    nw6Var3 = (nw6) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
                    try {
                        c.b(obj);
                        dataStoreImpl3 = dataStoreImpl4;
                        if (y45.e(obj, ref$ObjectRef2.element)) {
                            nw6Var2 = nw6Var3;
                        } else {
                            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = nw6Var3;
                            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = ref$ObjectRef2;
                            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = obj;
                            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 3;
                            if (dataStoreImpl3.writeData$datastore_core_release(obj, false, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) == objF) {
                                return objF;
                            }
                            t = (T) obj;
                            nw6Var2 = nw6Var3;
                            ref$ObjectRef2.element = t;
                        }
                        T t3 = ref$ObjectRef2.element;
                        nw6Var2.b(null);
                        return t3;
                    } catch (Throwable th2) {
                        th = th2;
                        nw6Var2 = nw6Var3;
                        nw6Var2.b(null);
                        throw th;
                    }
                }
                DataStoreImpl dataStoreImpl5 = (DataStoreImpl<T>) ((DataStoreImpl) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4);
                Ref$ObjectRef<T> ref$ObjectRef3 = (Ref$ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3;
                ref$BooleanRef = (Ref$BooleanRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
                nw6 nw6Var4 = (nw6) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
                s74 s74Var2 = (s74) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
                c.b(obj);
                nw6Var = nw6Var4;
                ref$ObjectRef = ref$ObjectRef3;
                s74Var = s74Var2;
                dataStoreImpl2 = dataStoreImpl5;
            }
            dataStoreImpl2 = dataStoreImpl;
            if (ref$BooleanRef.element) {
                throw new IllegalStateException("InitializerApi.updateData should not be called after initialization is complete.");
            }
            T t4 = ref$ObjectRef.element;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = nw6Var;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = ref$ObjectRef;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = dataStoreImpl2;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3 = null;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4 = null;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 2;
            Object objInvoke = s74Var.invoke(t4, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1);
            if (objInvoke == objF) {
                return objF;
            }
            nw6Var3 = nw6Var;
            obj = objInvoke;
            ref$ObjectRef2 = ref$ObjectRef;
            dataStoreImpl3 = dataStoreImpl2;
            if (y45.e(obj, ref$ObjectRef2.element)) {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = nw6Var3;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = ref$ObjectRef2;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = obj;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 3;
                if (dataStoreImpl3.writeData$datastore_core_release(obj, false, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) == objF) {
                    return objF;
                }
                t = (T) obj;
                nw6Var2 = nw6Var3;
                ref$ObjectRef2.element = t;
            } else {
                nw6Var2 = nw6Var3;
            }
            T t5 = ref$ObjectRef2.element;
            nw6Var2.b(null);
            return t5;
        } catch (Throwable th3) {
            th = th3;
            nw6Var2 = nw6Var;
            nw6Var2.b(null);
            throw th;
        }
    }
}
