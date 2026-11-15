package androidx.datastore.core;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0004\u0012\u00020\u00010\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T", "", "locked", "Lkotlin/Pair;", "Landroidx/datastore/core/v;", "<anonymous>", "(Z)Lkotlin/Pair;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4", f = "DataStoreImpl.kt", l = {306, Sdk$SDKError.Reason.ASSET_FAILED_TO_DELETE_VALUE}, m = "invokeSuspend")
final class DataStoreImpl$readDataAndUpdateCache$4 extends SuspendLambda implements Function2<Boolean, Continuation<? super Pair<? extends v, ? extends Boolean>>, Object> {
    final int $cachedVersion;
    Object L$0;
    boolean Z$0;
    int label;
    final DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$readDataAndUpdateCache$4(DataStoreImpl dataStoreImpl, int i10, Continuation<? super DataStoreImpl$readDataAndUpdateCache$4> continuation) {
        super(2, continuation);
        this.this$0 = dataStoreImpl;
        this.$cachedVersion = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DataStoreImpl$readDataAndUpdateCache$4 dataStoreImpl$readDataAndUpdateCache$4 = new DataStoreImpl$readDataAndUpdateCache$4(this.this$0, this.$cachedVersion, continuation);
        dataStoreImpl$readDataAndUpdateCache$4.Z$0 = ((Boolean) obj).booleanValue();
        return dataStoreImpl$readDataAndUpdateCache$4;
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return invoke(((Boolean) obj).booleanValue(), (Continuation<? super Pair<? extends v, Boolean>>) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    @Override
    public final Object invokeSuspend(Object obj) {
        Throwable th2;
        int iIntValue;
        ?? r10;
        ?? r11;
        v vVar;
        ?? r12;
        Object objF = IntrinsicsKt.f();
        ?? r13 = this.label;
        try {
            if (r13 == 0) {
                ResultKt.b(obj);
                boolean z10 = this.Z$0;
                DataStoreImpl dataStoreImpl = this.this$0;
                this.Z$0 = z10;
                this.label = 1;
                obj = dataStoreImpl.y(z10, this);
                r13 = z10;
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (r13 != 1) {
                    if (r13 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    boolean z11 = this.Z$0;
                    th2 = (Throwable) this.L$0;
                    ResultKt.b(obj);
                    r11 = z11;
                    iIntValue = ((Number) obj).intValue();
                    r10 = r11;
                    r rVar = new r(th2, iIntValue);
                    r12 = r10;
                    vVar = rVar;
                    return TuplesKt.a(vVar, Boxing.a(r12));
                }
                boolean z12 = this.Z$0;
                ResultKt.b(obj);
                r13 = z12;
            }
            vVar = (v) obj;
            r12 = r13;
        } catch (Throwable th3) {
            if (r13 != 0) {
                m mVarR = this.this$0.r();
                this.L$0 = th3;
                this.Z$0 = r13;
                this.label = 2;
                Object objA = mVarR.a(this);
                if (objA == objF) {
                    return objF;
                }
                r11 = r13;
                th2 = th3;
                obj = objA;
            } else {
                ?? r14 = r13;
                th2 = th3;
                iIntValue = this.$cachedVersion;
                r10 = r14 == true ? 1 : 0;
            }
            r rVar2 = new r(th2, iIntValue);
            r12 = r10;
            vVar = rVar2;
            return TuplesKt.a(vVar, Boxing.a(r12));
        }
        return TuplesKt.a(vVar, Boxing.a(r12));
    }

    public final Object invoke(boolean z10, Continuation<? super Pair<? extends v, Boolean>> continuation) {
        return ((DataStoreImpl$readDataAndUpdateCache$4) create(Boolean.valueOf(z10), continuation)).invokeSuspend(Unit.f64096a);
    }
}
