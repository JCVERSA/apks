package com.transsion.base.infras_config;

import com.google.gson.Gson;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.base.infras_config.api.InfraInitApi;
import com.transsion.base.infras_config.model.ConfigInitData;
import com.transsion.base.infras_config.model.ConfigInitDataItem;
import com.transsion.base.infras_config.model.ConfigInitMobileInfraReq;
import com.transsion.base.infras_config.model.ConfigInitRspCode;
import com.transsion.base.infras_config.model.InfrasSourceType;
import io.reactivex.rxjava3.core.j;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.y0;
import yx.d;
import yx.f;
import yx.h;

public final class InfraInitManager {

    public static final InfraInitManager f41870a = new InfraInitManager();

    private static final Lazy f41871b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return InfraInitManager.b();
        }
    });

    static final class a implements d {

        public static final a f41872a = new a();

        a() {
        }

        @Override
        public final boolean a(Integer count, Throwable th2) {
            Intrinsics.h(count, "count");
            Intrinsics.h(th2, "<unused var>");
            return count.intValue() <= 1;
        }
    }

    static final class b implements h {

        final long f41873a;

        public class a {

            public static final int[] f41874a;

            static {
                int[] iArr = new int[ConfigInitRspCode.values().length];
                try {
                    iArr[ConfigInitRspCode.IRC_MODIFIED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ConfigInitRspCode.IRC_NOT_MODIFIED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ConfigInitRspCode.IRC_UNKNOWN.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f41874a = iArr;
            }
        }

        b(long j10) {
            this.f41873a = j10;
        }

        @Override
        public final ConfigInitData apply(BaseDto response) {
            Intrinsics.h(response, "response");
            ConfigInitData configInitData = (ConfigInitData) response.getData();
            if (configInitData == null) {
                throw new IllegalStateException("init response data is null");
            }
            ConfigInitRspCode code = configInitData.getCode();
            int i10 = code == null ? -1 : a.f41874a[code.ordinal()];
            if (i10 != -1 && i10 != 1 && i10 != 2) {
                if (i10 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                throw new IllegalStateException("init failed, code=" + configInitData.getCode());
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            pi.b.f69171a.j(configInitData, jCurrentTimeMillis);
            long j10 = jCurrentTimeMillis - this.f41873a;
            wf.a.C0922a c0922a = wf.a.f74274a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initRx() success, code=");
            sb2.append(configInitData.getCode());
            sb2.append(", items=");
            List<ConfigInitDataItem> items = configInitData.getItems();
            sb2.append(items != null ? items.size() : 0);
            sb2.append(", version=");
            sb2.append(configInitData.getVersion());
            sb2.append(", cost=");
            sb2.append(j10);
            sb2.append("ms");
            wf.a.C0922a.f(c0922a, "InfraInitManager", sb2.toString(), false, 4, null);
            return configInitData;
        }
    }

    static final class c implements f {

        final long f41875a;

        c(long j10) {
            this.f41875a = j10;
        }

        @Override
        public final void accept(Throwable t10) {
            Intrinsics.h(t10, "t");
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f41875a;
            wf.a.C0922a c0922a = wf.a.f74274a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initRx() failed, cost=");
            sb2.append(jCurrentTimeMillis);
            sb2.append("ms, msg=");
            String message = t10.getMessage();
            if (message == null) {
                message = t10.getClass().getSimpleName();
            }
            sb2.append(message);
            wf.a.C0922a.k(c0922a, "InfraInitManager", sb2.toString(), t10, false, 8, null);
        }
    }

    private InfraInitManager() {
    }

    public static final InfraInitApi b() {
        return (InfraInitApi) kg.c.f63982e.a().h(InfraInitApi.class);
    }

    private final InfraInitApi c() {
        return (InfraInitApi) f41871b.getValue();
    }

    public final ConfigInitDataItem d(InfrasSourceType sourceType) {
        Intrinsics.h(sourceType, "sourceType");
        return pi.b.f69171a.c(sourceType);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(List list, String str, String str2, Continuation continuation) {
        InfraInitManager$init$1 infraInitManager$init$1;
        if (continuation instanceof InfraInitManager$init$1) {
            infraInitManager$init$1 = (InfraInitManager$init$1) continuation;
            int i10 = infraInitManager$init$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                infraInitManager$init$1.label = i10 - Integer.MIN_VALUE;
            } else {
                infraInitManager$init$1 = new InfraInitManager$init$1(this, continuation);
            }
        } else {
            infraInitManager$init$1 = new InfraInitManager$init$1(this, continuation);
        }
        Object objG = infraInitManager$init$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = infraInitManager$init$1.label;
        if (i11 == 0) {
            ResultKt.b(objG);
            i0 i0VarB = y0.b();
            InfraInitManager$init$2 infraInitManager$init$2 = new InfraInitManager$init$2(list, str, str2, null);
            infraInitManager$init$1.label = 1;
            objG = i.g(i0VarB, infraInitManager$init$2, infraInitManager$init$1);
            if (objG == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objG);
        }
        return ((Result) objG).getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public final Object f(List list, String str, long j10, String str2, Continuation continuation) {
        InfraInitManager$initIfNeeded$1 infraInitManager$initIfNeeded$1;
        if (continuation instanceof InfraInitManager$initIfNeeded$1) {
            infraInitManager$initIfNeeded$1 = (InfraInitManager$initIfNeeded$1) continuation;
            int i10 = infraInitManager$initIfNeeded$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                infraInitManager$initIfNeeded$1.label = i10 - Integer.MIN_VALUE;
            } else {
                infraInitManager$initIfNeeded$1 = new InfraInitManager$initIfNeeded$1(this, continuation);
            }
        } else {
            infraInitManager$initIfNeeded$1 = new InfraInitManager$initIfNeeded$1(this, continuation);
        }
        Object objG = infraInitManager$initIfNeeded$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = infraInitManager$initIfNeeded$1.label;
        if (i11 == 0) {
            ResultKt.b(objG);
            i0 i0VarB = y0.b();
            InfraInitManager$initIfNeeded$2 infraInitManager$initIfNeeded$2 = new InfraInitManager$initIfNeeded$2(j10, list, str, str2, null);
            infraInitManager$initIfNeeded$1.label = 1;
            objG = i.g(i0VarB, infraInitManager$initIfNeeded$2, infraInitManager$initIfNeeded$1);
            if (objG == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objG);
        }
        return ((Result) objG).getValue();
    }

    public final j h(List sourceVersions, String str, String str2) {
        Intrinsics.h(sourceVersions, "sourceVersions");
        long jCurrentTimeMillis = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, "InfraInitManager", "initRx() start, sourceCount=" + sourceVersions.size() + ", version=" + str + ", baseUrl=" + str2, false, 4, null);
        List list = sourceVersions;
        pi.b.f69171a.l(list.isEmpty() ? null : list);
        if (list.isEmpty()) {
            list = null;
        }
        ConfigInitMobileInfraReq configInitMobileInfraReq = new ConfigInitMobileInfraReq(list, str);
        new Gson().toJson(configInitMobileInfraReq);
        j jVarJ = c().initMobileInfra(str2, configInitMobileInfraReq).f(dg.d.f59034a.e()).y(a.f41872a).u(new b(jCurrentTimeMillis)).j(new c(jCurrentTimeMillis));
        Intrinsics.g(jVarJ, "doOnError(...)");
        return jVarJ;
    }
}
