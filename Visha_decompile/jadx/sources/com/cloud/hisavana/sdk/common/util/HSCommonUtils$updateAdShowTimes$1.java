package com.cloud.hisavana.sdk.common.util;

import com.cloud.hisavana.sdk.C0520g0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.i;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.spc;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
@nt1(c = "com.cloud.hisavana.sdk.common.util.HSCommonUtils$updateAdShowTimes$1", f = "HSCommonUtils.kt", l = {}, m = "invokeSuspend")
public final class HSCommonUtils$updateAdShowTimes$1 extends SuspendLambda implements s74 {
    final AdsDTO $adsDTO;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HSCommonUtils$updateAdShowTimes$1(AdsDTO adsDTO, wh1<? super HSCommonUtils$updateAdShowTimes$1> wh1Var) {
        super(2, wh1Var);
        this.$adsDTO = adsDTO;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new HSCommonUtils$updateAdShowTimes$1(this.$adsDTO, wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        spc.f().j(this.$adsDTO.getCodeSeatId());
        if (this.$adsDTO.getSource() == 4) {
            C0520g0 c0520g0 = C0520g0.a;
            String adCreativeId = this.$adsDTO.getAdCreativeId();
            y45.i(adCreativeId, "getAdCreativeId(...)");
            String codeSeatId = this.$adsDTO.getCodeSeatId();
            y45.i(codeSeatId, "getCodeSeatId(...)");
            c0520g0.p(adCreativeId, codeSeatId);
        } else if (this.$adsDTO.isOfflineAd()) {
            i.M().s(this.$adsDTO);
        }
        return zfb.a;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((HSCommonUtils$updateAdShowTimes$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }
}
