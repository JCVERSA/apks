package androidx.datastore.core;

import defpackage.wh1;
import defpackage.zfb;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H¦@¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0000H¦@¢\u0006\u0004\b\u0007\u0010\u0006J\u0010\u0010\t\u001a\u00020\bH¦@¢\u0006\u0004\b\t\u0010\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/datastore/core/DataMigration;", "T", "", "currentData", "", "shouldMigrate", "(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;", "migrate", "Lzfb;", "cleanUp", "(Lwh1;)Ljava/lang/Object;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface DataMigration<T> {
    Object cleanUp(wh1<? super zfb> wh1Var);

    Object migrate(T t, wh1<? super T> wh1Var);

    Object shouldMigrate(T t, wh1<? super Boolean> wh1Var);
}
