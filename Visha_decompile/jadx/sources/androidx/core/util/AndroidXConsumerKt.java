package androidx.core.util;

import defpackage.wh1;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a#\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"T", "Lwh1;", "Landroidx/core/util/Consumer;", "asAndroidXConsumer", "(Lwh1;)Landroidx/core/util/Consumer;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class AndroidXConsumerKt {
    public static final <T> Consumer<T> asAndroidXConsumer(wh1<? super T> wh1Var) {
        return new ContinuationConsumer(wh1Var);
    }
}
