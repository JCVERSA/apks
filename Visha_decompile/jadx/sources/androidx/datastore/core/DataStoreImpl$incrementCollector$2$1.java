package androidx.datastore.core;

import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.datastore.core.DataStoreImpl$incrementCollector$2$1", f = "DataStoreImpl.kt", l = {134, 135}, m = "invokeSuspend")
public final class DataStoreImpl$incrementCollector$2$1 extends SuspendLambda implements s74 {
    int label;
    final DataStoreImpl<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$incrementCollector$2$1(DataStoreImpl<T> dataStoreImpl, wh1<? super DataStoreImpl$incrementCollector$2$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = dataStoreImpl;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new DataStoreImpl$incrementCollector$2$1(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((DataStoreImpl$incrementCollector$2$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                c.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
        c.b(obj);
        DataStoreImpl.InitDataStore initDataStore = ((DataStoreImpl) this.this$0).readAndInit;
        this.label = 1;
        if (initDataStore.awaitComplete(this) == objF) {
            return objF;
        }
        nz3 nz3VarH = sz3.h(this.this$0.getCoordinator().getUpdateNotifications());
        final DataStoreImpl<T> dataStoreImpl = this.this$0;
        oz3 oz3Var = new oz3() {
            @Override
            public Object emit(Object obj2, wh1 wh1Var) {
                return emit((zfb) obj2, (wh1<? super zfb>) wh1Var);
            }

            public final Object emit(zfb zfbVar, wh1<? super zfb> wh1Var) {
                if (((DataStoreImpl) dataStoreImpl).inMemoryCache.getCurrentState() instanceof Final) {
                    return zfb.a;
                }
                Object dataAndUpdateCache = dataStoreImpl.readDataAndUpdateCache(true, wh1Var);
                return dataAndUpdateCache == z45.f() ? dataAndUpdateCache : zfb.a;
            }
        };
        this.label = 2;
        if (nz3VarH.collect(oz3Var, this) == objF) {
            return objF;
        }
        return zfb.a;
    }
}
