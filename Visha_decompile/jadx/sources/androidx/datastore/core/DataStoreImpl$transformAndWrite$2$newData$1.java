package androidx.datastore.core;

import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lnk1;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1", f = "DataStoreImpl.kt", l = {331}, m = "invokeSuspend")
public final class DataStoreImpl$transformAndWrite$2$newData$1 extends SuspendLambda implements s74 {
    final Data<T> $curData;
    final s74 $transform;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$transformAndWrite$2$newData$1(s74 s74Var, Data<T> data, wh1<? super DataStoreImpl$transformAndWrite$2$newData$1> wh1Var) {
        super(2, wh1Var);
        this.$transform = s74Var;
        this.$curData = data;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new DataStoreImpl$transformAndWrite$2$newData$1(this.$transform, this.$curData, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super T> wh1Var) {
        return ((DataStoreImpl$transformAndWrite$2$newData$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            s74 s74Var = this.$transform;
            Object value = this.$curData.getValue();
            this.label = 1;
            obj = s74Var.invoke(value, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return obj;
    }
}
