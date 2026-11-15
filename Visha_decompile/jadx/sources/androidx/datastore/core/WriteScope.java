package androidx.datastore.core;

import defpackage.wh1;
import defpackage.zfb;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H¦@¢\u0006\u0004\b\u0005\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Landroidx/datastore/core/WriteScope;", "T", "Landroidx/datastore/core/ReadScope;", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "writeData", "(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface WriteScope<T> extends ReadScope<T> {
    Object writeData(T t, wh1<? super zfb> wh1Var);
}
