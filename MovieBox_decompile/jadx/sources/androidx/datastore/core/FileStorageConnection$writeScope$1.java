package androidx.datastore.core;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.datastore.core.FileStorageConnection", f = "FileStorage.kt", l = {Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE}, m = "writeScope")
final class FileStorageConnection$writeScope$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    Object result;
    final FileStorageConnection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FileStorageConnection$writeScope$1(FileStorageConnection fileStorageConnection, Continuation<? super FileStorageConnection$writeScope$1> continuation) {
        super(continuation);
        this.this$0 = fileStorageConnection;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.b(null, this);
    }
}
