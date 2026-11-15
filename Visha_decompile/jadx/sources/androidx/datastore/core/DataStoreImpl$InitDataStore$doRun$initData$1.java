package androidx.datastore.core;

import com.chad.library.adapter.base.BaseQuickAdapter;
import defpackage.e74;
import defpackage.nt1;
import defpackage.nw6;
import defpackage.s74;
import defpackage.sw6;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.lang.reflect.InvocationTargetException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/core/Data;", "T"}, k = 3, mv = {1, 8, 0}, xi = 48)
@nt1(c = "androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1", f = "DataStoreImpl.kt", l = {437, 458, BaseQuickAdapter.LOADING_VIEW, 468}, m = "invokeSuspend")
public final class DataStoreImpl$InitDataStore$doRun$initData$1 extends SuspendLambda implements e74 {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final DataStoreImpl<T> this$0;
    final DataStoreImpl<T>.InitDataStore this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$InitDataStore$doRun$initData$1(DataStoreImpl<T> dataStoreImpl, DataStoreImpl<T>.InitDataStore initDataStore, wh1<? super DataStoreImpl$InitDataStore$doRun$initData$1> wh1Var) {
        super(1, wh1Var);
        this.this$0 = dataStoreImpl;
        this.this$1 = initDataStore;
    }

    @Override
    public final wh1<zfb> create(wh1<?> wh1Var) {
        return new DataStoreImpl$InitDataStore$doRun$initData$1(this.this$0, this.this$1, wh1Var);
    }

    @Override
    public final Object invoke(wh1<? super Data<T>> wh1Var) {
        return ((DataStoreImpl$InitDataStore$doRun$initData$1) create(wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:30:0x00e6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:38:0x010d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x010e  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:? A[LOOP:0: B:21:0x00aa->B:50:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v5, types: [T, java.lang.Object] */
    @Override
    public final Object invokeSuspend(Object obj) throws CorruptionException, IllegalAccessException, InvocationTargetException {
        nw6 nw6VarB;
        Ref$BooleanRef ref$BooleanRef;
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        Ref$BooleanRef ref$BooleanRef2;
        nw6 nw6Var;
        Iterator it;
        nw6 nw6Var2;
        Ref$BooleanRef ref$BooleanRef3;
        Ref$ObjectRef ref$ObjectRef3;
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
        Ref$ObjectRef ref$ObjectRef4;
        s74 s74Var;
        Object obj2;
        int iHashCode;
        Object version;
        int i;
        Object obj3;
        Object objF = z45.f();
        int i2 = this.label;
        if (i2 != 0) {
            if (i2 == 1) {
                ref$ObjectRef = (Ref$ObjectRef) this.L$3;
                ref$ObjectRef2 = (Ref$ObjectRef) this.L$2;
                ref$BooleanRef = (Ref$BooleanRef) this.L$1;
                nw6VarB = (nw6) this.L$0;
                c.b(obj);
            } else if (i2 == 2) {
                it = (Iterator) this.L$4;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1) this.L$3;
                ref$ObjectRef3 = (Ref$ObjectRef) this.L$2;
                ref$BooleanRef3 = (Ref$BooleanRef) this.L$1;
                nw6Var2 = (nw6) this.L$0;
                c.b(obj);
                while (it.hasNext()) {
                    s74Var = (s74) it.next();
                    this.L$0 = nw6Var2;
                    this.L$1 = ref$BooleanRef3;
                    this.L$2 = ref$ObjectRef3;
                    this.L$3 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                    this.L$4 = it;
                    this.label = 2;
                    if (s74Var.invoke(dataStoreImpl$InitDataStore$doRun$initData$1$api$1, this) == objF) {
                        return objF;
                    }
                }
                ref$ObjectRef2 = ref$ObjectRef3;
                ref$BooleanRef2 = ref$BooleanRef3;
                nw6Var = nw6Var2;
                ((DataStoreImpl.InitDataStore) this.this$1).initTasks = null;
                this.L$0 = ref$BooleanRef2;
                this.L$1 = ref$ObjectRef2;
                this.L$2 = nw6Var;
                this.L$3 = null;
                this.L$4 = null;
                this.label = 3;
                if (nw6Var.c(null, this) == objF) {
                    return objF;
                }
                ref$ObjectRef4 = ref$ObjectRef2;
                ref$BooleanRef2.element = true;
                zfb zfbVar = zfb.a;
                nw6Var.b(null);
                obj2 = ref$ObjectRef4.element;
                if (obj2 != null) {
                }
                InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                this.L$0 = obj2;
                this.L$1 = null;
                this.L$2 = null;
                this.I$0 = iHashCode;
                this.label = 4;
                version = coordinator.getVersion(this);
                if (version == objF) {
                    return objF;
                }
                i = iHashCode;
                obj = version;
                obj3 = obj2;
            } else if (i2 == 3) {
                nw6Var = (nw6) this.L$2;
                ref$ObjectRef4 = (Ref$ObjectRef) this.L$1;
                ref$BooleanRef2 = (Ref$BooleanRef) this.L$0;
                c.b(obj);
                try {
                    ref$BooleanRef2.element = true;
                    zfb zfbVar2 = zfb.a;
                    nw6Var.b(null);
                    obj2 = ref$ObjectRef4.element;
                    iHashCode = obj2 != null ? obj2.hashCode() : 0;
                    InterProcessCoordinator coordinator2 = this.this$0.getCoordinator();
                    this.L$0 = obj2;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.I$0 = iHashCode;
                    this.label = 4;
                    version = coordinator2.getVersion(this);
                    if (version == objF) {
                        return objF;
                    }
                    i = iHashCode;
                    obj = version;
                    obj3 = obj2;
                } catch (Throwable th) {
                    nw6Var.b(null);
                    throw th;
                }
            } else {
                if (i2 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i = this.I$0;
                obj3 = this.L$0;
                c.b(obj);
            }
            return new Data(obj3, i, ((Number) obj).intValue());
        }
        c.b(obj);
        nw6VarB = sw6.b(false, 1, null);
        ref$BooleanRef = new Ref$BooleanRef();
        ref$ObjectRef = new Ref$ObjectRef();
        DataStoreImpl<T> dataStoreImpl = this.this$0;
        this.L$0 = nw6VarB;
        this.L$1 = ref$BooleanRef;
        this.L$2 = ref$ObjectRef;
        this.L$3 = ref$ObjectRef;
        this.label = 1;
        obj = dataStoreImpl.readDataOrHandleCorruption(true, this);
        if (obj == objF) {
            return objF;
        }
        ref$ObjectRef2 = ref$ObjectRef;
        ref$ObjectRef.element = ((Data) obj).getValue();
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$2 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1(nw6VarB, ref$BooleanRef, ref$ObjectRef2, this.this$0);
        List list = ((DataStoreImpl.InitDataStore) this.this$1).initTasks;
        if (list != null) {
            it = list.iterator();
            nw6Var2 = nw6VarB;
            ref$BooleanRef3 = ref$BooleanRef;
            ref$ObjectRef3 = ref$ObjectRef2;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = dataStoreImpl$InitDataStore$doRun$initData$1$api$2;
            while (it.hasNext()) {
                s74Var = (s74) it.next();
                this.L$0 = nw6Var2;
                this.L$1 = ref$BooleanRef3;
                this.L$2 = ref$ObjectRef3;
                this.L$3 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                this.L$4 = it;
                this.label = 2;
                if (s74Var.invoke(dataStoreImpl$InitDataStore$doRun$initData$1$api$1, this) == objF) {
                    return objF;
                }
            }
            ref$ObjectRef2 = ref$ObjectRef3;
            ref$BooleanRef2 = ref$BooleanRef3;
            nw6Var = nw6Var2;
        } else {
            ref$BooleanRef2 = ref$BooleanRef;
            nw6Var = nw6VarB;
        }
        ((DataStoreImpl.InitDataStore) this.this$1).initTasks = null;
        this.L$0 = ref$BooleanRef2;
        this.L$1 = ref$ObjectRef2;
        this.L$2 = nw6Var;
        this.L$3 = null;
        this.L$4 = null;
        this.label = 3;
        if (nw6Var.c(null, this) == objF) {
            return objF;
        }
        ref$ObjectRef4 = ref$ObjectRef2;
        ref$BooleanRef2.element = true;
        zfb zfbVar3 = zfb.a;
        nw6Var.b(null);
        obj2 = ref$ObjectRef4.element;
        if (obj2 != null) {
        }
        InterProcessCoordinator coordinator3 = this.this$0.getCoordinator();
        this.L$0 = obj2;
        this.L$1 = null;
        this.L$2 = null;
        this.I$0 = iHashCode;
        this.label = 4;
        version = coordinator3.getVersion(this);
        if (version == objF) {
            return objF;
        }
        i = iHashCode;
        obj = version;
        obj3 = obj2;
        return new Data(obj3, i, ((Number) obj).intValue());
    }
}
