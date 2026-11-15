package com.wecloud.load.lib;

import android.os.SystemClock;
import android.util.Log;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "", "Lcom/wecloud/load/lib/n;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/util/List;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.wecloud.load.lib.StProbeIntegration$probeAllFromStProbe$2", f = "StProbeIntegration.kt", l = {303, Sdk$SDKError.Reason.LINK_COMMAND_OPEN_FAILED_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class StProbeIntegration$probeAllFromStProbe$2 extends SuspendLambda implements Function2<n0, Continuation<? super List<? extends n>>, Object> {
    final boolean $ensureInit;
    final int $maxConcurrency;
    long J$0;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StProbeIntegration$probeAllFromStProbe$2(boolean z10, int i10, Continuation<? super StProbeIntegration$probeAllFromStProbe$2> continuation) {
        super(2, continuation);
        this.$ensureInit = z10;
        this.$maxConcurrency = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        StProbeIntegration$probeAllFromStProbe$2 stProbeIntegration$probeAllFromStProbe$2 = new StProbeIntegration$probeAllFromStProbe$2(this.$ensureInit, this.$maxConcurrency, continuation);
        stProbeIntegration$probeAllFromStProbe$2.L$0 = obj;
        return stProbeIntegration$probeAllFromStProbe$2;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:41:0x00f1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:50:0x010c  */
    /* JADX WARN: Code duplicated, block: B:53:0x012e  */
    /* JADX WARN: Code duplicated, block: B:58:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x010c, please report this as an issue */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        long jElapsedRealtime;
        StProbeIntegration.StProbeConfigs stProbeConfigsH;
        String strC;
        long j10;
        Object objM453constructorimpl2;
        Throwable thM456exceptionOrNullimpl;
        List listL;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                if (!l.f58612a.d()) {
                    return CollectionsKt.l();
                }
                jElapsedRealtime = SystemClock.elapsedRealtime();
                boolean z10 = this.$ensureInit;
                int i11 = this.$maxConcurrency;
                boolean z11 = StProbeIntegration.f58600c;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("probeAllFromStProbe() start, ensureInit=");
                sb2.append(z10);
                sb2.append(", maxConcurrency=");
                sb2.append(i11);
                sb2.append(", isDebugMode=");
                sb2.append(z11);
                if (this.$ensureInit) {
                    Result.Companion companion = Result.INSTANCE;
                    StProbeIntegration stProbeIntegration = StProbeIntegration.f58598a;
                    this.L$0 = n0Var;
                    this.J$0 = jElapsedRealtime;
                    this.label = 1;
                    if (StProbeIntegration.g(stProbeIntegration, null, this, 1, null) == objF) {
                        return objF;
                    }
                }
                StProbeIntegration stProbeIntegration2 = StProbeIntegration.f58598a;
                stProbeConfigsH = stProbeIntegration2.h();
                strC = stProbeIntegration2.c(stProbeConfigsH, this.$maxConcurrency);
                if (strC == null) {
                    Log.w("StProbeIntegration", "probeAllFromStProbe(): No proberLinks found in ST_PROBER configs, configsVersion=" + (stProbeConfigsH != null ? stProbeConfigsH.getVersion() : null));
                    return CollectionsKt.l();
                }
                try {
                    Result.Companion companion2 = Result.INSTANCE;
                    NetworkProbeRunner networkProbeRunner = NetworkProbeRunner.f58576a;
                    this.L$0 = null;
                    this.J$0 = jElapsedRealtime;
                    this.label = 2;
                    obj = NetworkProbeRunner.f(networkProbeRunner, strC, null, this, 2, null);
                    if (obj == objF) {
                        return objF;
                    }
                    j10 = jElapsedRealtime;
                    objM453constructorimpl2 = Result.m453constructorimpl((List) obj);
                    thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl2);
                    if (thM456exceptionOrNullimpl != null) {
                        Log.w("StProbeIntegration", "Group1KotlinRunner failed: " + thM456exceptionOrNullimpl.getMessage(), thM456exceptionOrNullimpl);
                    }
                    listL = CollectionsKt.l();
                    if (Result.m459isFailureimpl(objM453constructorimpl2)) {
                        objM453constructorimpl2 = listL;
                    }
                    List list = (List) objM453constructorimpl2;
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime() - j10;
                    int size = list.size();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("probeAllFromStProbe() finished, size=");
                    sb3.append(size);
                    sb3.append(", totalDurationMs=");
                    sb3.append(jElapsedRealtime2);
                    return list;
                } catch (Throwable th2) {
                    th = th2;
                    j10 = jElapsedRealtime;
                    Result.Companion companion3 = Result.INSTANCE;
                    objM453constructorimpl2 = Result.m453constructorimpl(ResultKt.a(th));
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    j10 = this.J$0;
                    try {
                        ResultKt.b(obj);
                        objM453constructorimpl2 = Result.m453constructorimpl((List) obj);
                    } catch (Throwable th3) {
                        th = th3;
                        Result.Companion companion4 = Result.INSTANCE;
                        objM453constructorimpl2 = Result.m453constructorimpl(ResultKt.a(th));
                    }
                    thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl2);
                    if (thM456exceptionOrNullimpl != null) {
                        Log.w("StProbeIntegration", "Group1KotlinRunner failed: " + thM456exceptionOrNullimpl.getMessage(), thM456exceptionOrNullimpl);
                    }
                    listL = CollectionsKt.l();
                    if (Result.m459isFailureimpl(objM453constructorimpl2)) {
                        objM453constructorimpl2 = listL;
                    }
                    List list2 = (List) objM453constructorimpl2;
                    long jElapsedRealtime3 = SystemClock.elapsedRealtime() - j10;
                    int size2 = list2.size();
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("probeAllFromStProbe() finished, size=");
                    sb4.append(size2);
                    sb4.append(", totalDurationMs=");
                    sb4.append(jElapsedRealtime3);
                    return list2;
                }
                jElapsedRealtime = this.J$0;
                ResultKt.b(obj);
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th4) {
            Result.Companion companion5 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th4));
        }
        Throwable thM456exceptionOrNullimpl2 = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl2 != null) {
            Log.w("StProbeIntegration", "initStProberConfig before probe failed: " + thM456exceptionOrNullimpl2.getMessage(), thM456exceptionOrNullimpl2);
        }
        StProbeIntegration stProbeIntegration3 = StProbeIntegration.f58598a;
        stProbeConfigsH = stProbeIntegration3.h();
        strC = stProbeIntegration3.c(stProbeConfigsH, this.$maxConcurrency);
        if (strC == null) {
            if (stProbeConfigsH != null) {
            }
            Log.w("StProbeIntegration", "probeAllFromStProbe(): No proberLinks found in ST_PROBER configs, configsVersion=" + (stProbeConfigsH != null ? stProbeConfigsH.getVersion() : null));
            return CollectionsKt.l();
        }
        Result.Companion companion6 = Result.INSTANCE;
        NetworkProbeRunner networkProbeRunner2 = NetworkProbeRunner.f58576a;
        this.L$0 = null;
        this.J$0 = jElapsedRealtime;
        this.label = 2;
        obj = NetworkProbeRunner.f(networkProbeRunner2, strC, null, this, 2, null);
        if (obj == objF) {
            return objF;
        }
        j10 = jElapsedRealtime;
        objM453constructorimpl2 = Result.m453constructorimpl((List) obj);
        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl2);
        if (thM456exceptionOrNullimpl != null) {
            Log.w("StProbeIntegration", "Group1KotlinRunner failed: " + thM456exceptionOrNullimpl.getMessage(), thM456exceptionOrNullimpl);
        }
        listL = CollectionsKt.l();
        if (Result.m459isFailureimpl(objM453constructorimpl2)) {
            objM453constructorimpl2 = listL;
        }
        List list3 = (List) objM453constructorimpl2;
        long jElapsedRealtime4 = SystemClock.elapsedRealtime() - j10;
        int size3 = list3.size();
        StringBuilder sb5 = new StringBuilder();
        sb5.append("probeAllFromStProbe() finished, size=");
        sb5.append(size3);
        sb5.append(", totalDurationMs=");
        sb5.append(jElapsedRealtime4);
        return list3;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super List<n>> continuation) {
        return ((StProbeIntegration$probeAllFromStProbe$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
