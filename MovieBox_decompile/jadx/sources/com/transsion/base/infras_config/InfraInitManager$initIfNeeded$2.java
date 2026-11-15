package com.transsion.base.infras_config;

import com.transsion.base.infras_config.model.ConfigInitData;
import com.transsion.base.infras_config.model.ConfigLocalState;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import pi.b;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/Result;", "Lcom/transsion/base/infras_config/model/ConfigInitData;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlin/Result;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.base.infras_config.InfraInitManager$initIfNeeded$2", f = "InfraInitManager.kt", l = {154}, m = "invokeSuspend")
final class InfraInitManager$initIfNeeded$2 extends SuspendLambda implements Function2<n0, Continuation<? super Result<? extends ConfigInitData>>, Object> {
    final String $baseUrl;
    final long $minIntervalMs;
    final List<ConfigLocalState> $sourceVersions;
    final String $version;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InfraInitManager$initIfNeeded$2(long j10, List<ConfigLocalState> list, String str, String str2, Continuation<? super InfraInitManager$initIfNeeded$2> continuation) {
        super(2, continuation);
        this.$minIntervalMs = j10;
        this.$sourceVersions = list;
        this.$version = str;
        this.$baseUrl = str2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new InfraInitManager$initIfNeeded$2(this.$minIntervalMs, this.$sourceVersions, this.$version, this.$baseUrl, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            long jCurrentTimeMillis = System.currentTimeMillis();
            b bVar = b.f69171a;
            long jD = bVar.d();
            if (jD <= 0 || jCurrentTimeMillis - jD >= this.$minIntervalMs) {
                wf.a.C0922a.f(wf.a.f74274a, "InfraInitManager", "initIfNeeded() expired or never initialized, will request from network", false, 4, null);
            } else {
                ConfigInitData configInitDataB = bVar.b(this.$sourceVersions);
                if (configInitDataB != null) {
                    wf.a.C0922a.z(wf.a.f74274a, "InfraInitManager", "initIfNeeded() hit cache, sourceCount=" + this.$sourceVersions.size() + ", version=" + this.$version, false, 4, null);
                    return Result.m452boximpl(Result.m453constructorimpl(configInitDataB));
                }
                wf.a.C0922a.z(wf.a.f74274a, "InfraInitManager", "initIfNeeded() cache miss, will request from network", false, 4, null);
            }
            InfraInitManager infraInitManager = InfraInitManager.f41870a;
            List<ConfigLocalState> list = this.$sourceVersions;
            String str = this.$version;
            String str2 = this.$baseUrl;
            this.label = 1;
            Object objE = infraInitManager.e(list, str, str2, this);
            if (objE == objF) {
                return objF;
            }
            value = objE;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            value = ((Result) obj).getValue();
        }
        return Result.m452boximpl(value);
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Result<ConfigInitData>> continuation) {
        return ((InfraInitManager$initIfNeeded$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
