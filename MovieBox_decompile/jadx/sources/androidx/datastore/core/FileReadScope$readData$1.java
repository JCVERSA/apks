package androidx.datastore.core;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.datastore.core.FileReadScope", f = "FileStorage.kt", l = {169, 178}, m = "readData$suspendImpl")
final class FileReadScope$readData$1<T> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    Object result;
    final FileReadScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FileReadScope$readData$1(FileReadScope fileReadScope, Continuation<? super FileReadScope$readData$1> continuation) {
        super(continuation);
        this.this$0 = fileReadScope;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FileReadScope.i(this.this$0, this);
    }
}
