package androidx.datastore.core;

import androidx.core.app.NotificationCompat;
import com.hunantv.media.drm.IDrmSession;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Landroidx/datastore/core/Message$Update;", NotificationCompat.CATEGORY_MESSAGE, "Lzfb;", "<anonymous>", "(Landroidx/datastore/core/Message$Update;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.datastore.core.DataStoreImpl$writeActor$3", f = "DataStoreImpl.kt", l = {IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY}, m = "invokeSuspend")
public final class DataStoreImpl$writeActor$3 extends SuspendLambda implements s74 {
    Object L$0;
    int label;
    final DataStoreImpl<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$writeActor$3(DataStoreImpl<T> dataStoreImpl, wh1<? super DataStoreImpl$writeActor$3> wh1Var) {
        super(2, wh1Var);
        this.this$0 = dataStoreImpl;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        DataStoreImpl$writeActor$3 dataStoreImpl$writeActor$3 = new DataStoreImpl$writeActor$3(this.this$0, wh1Var);
        dataStoreImpl$writeActor$3.L$0 = obj;
        return dataStoreImpl$writeActor$3;
    }

    @Override
    public final Object invoke(Message.Update<T> update, wh1<? super zfb> wh1Var) {
        return ((DataStoreImpl$writeActor$3) create(update, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            Message.Update update = (Message.Update) this.L$0;
            DataStoreImpl<T> dataStoreImpl = this.this$0;
            this.label = 1;
            if (dataStoreImpl.handleUpdate(update, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }
}
