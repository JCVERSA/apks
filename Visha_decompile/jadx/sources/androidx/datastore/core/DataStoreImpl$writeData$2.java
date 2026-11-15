package androidx.datastore.core;

import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$IntRef;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Landroidx/datastore/core/WriteScope;", "Lzfb;", "<anonymous>", "(Landroidx/datastore/core/WriteScope;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.datastore.core.DataStoreImpl$writeData$2", f = "DataStoreImpl.kt", l = {TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_1, TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_2}, m = "invokeSuspend")
public final class DataStoreImpl$writeData$2 extends SuspendLambda implements s74 {
    final T $newData;
    final Ref$IntRef $newVersion;
    final boolean $updateCache;
    private Object L$0;
    Object L$1;
    int label;
    final DataStoreImpl<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$writeData$2(Ref$IntRef ref$IntRef, DataStoreImpl<T> dataStoreImpl, T t, boolean z, wh1<? super DataStoreImpl$writeData$2> wh1Var) {
        super(2, wh1Var);
        this.$newVersion = ref$IntRef;
        this.this$0 = dataStoreImpl;
        this.$newData = t;
        this.$updateCache = z;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(this.$newVersion, this.this$0, this.$newData, this.$updateCache, wh1Var);
        dataStoreImpl$writeData$2.L$0 = obj;
        return dataStoreImpl$writeData$2;
    }

    @Override
    public final Object invoke(WriteScope<T> writeScope, wh1<? super zfb> wh1Var) {
        return ((DataStoreImpl$writeData$2) create(writeScope, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0061  */
    /* JADX WARN: Code duplicated, block: B:21:0x006d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Ref$IntRef ref$IntRef;
        WriteScope writeScope;
        T t;
        int iHashCode;
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ref$IntRef = (Ref$IntRef) this.L$1;
                writeScope = (WriteScope) this.L$0;
                c.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            if (this.$updateCache) {
                DataStoreInMemoryCache dataStoreInMemoryCache = ((DataStoreImpl) this.this$0).inMemoryCache;
                t = this.$newData;
                if (t != 0) {
                    iHashCode = t.hashCode();
                } else {
                    iHashCode = 0;
                }
                dataStoreInMemoryCache.tryUpdate(new Data(t, iHashCode, this.$newVersion.element));
            }
            return zfb.a;
        }
        c.b(obj);
        WriteScope writeScope2 = (WriteScope) this.L$0;
        ref$IntRef = this.$newVersion;
        InterProcessCoordinator coordinator = this.this$0.getCoordinator();
        this.L$0 = writeScope2;
        this.L$1 = ref$IntRef;
        this.label = 1;
        Object objIncrementAndGetVersion = coordinator.incrementAndGetVersion(this);
        if (objIncrementAndGetVersion == objF) {
            return objF;
        }
        writeScope = writeScope2;
        obj = objIncrementAndGetVersion;
        ref$IntRef.element = ((Number) obj).intValue();
        T t2 = this.$newData;
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
        if (writeScope.writeData(t2, this) == objF) {
            return objF;
        }
        if (this.$updateCache) {
            DataStoreInMemoryCache dataStoreInMemoryCache2 = ((DataStoreImpl) this.this$0).inMemoryCache;
            t = this.$newData;
            if (t != 0) {
                iHashCode = t.hashCode();
            } else {
                iHashCode = 0;
            }
            dataStoreInMemoryCache2.tryUpdate(new Data(t, iHashCode, this.$newVersion.element));
        }
        return zfb.a;
    }
}
