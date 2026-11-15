package com.transsion.security.aosp.hap.base.impl;

import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.pw4;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 6, 0})
@nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapCryptoManagerV2Impl$removeCKey$1", f = "TranHapCryptoManagerV2Impl.kt", l = {TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT}, m = "invokeSuspend")
public final class TranHapCryptoManagerV2Impl$removeCKey$1 extends SuspendLambda implements s74 {
    final String $alias;
    int label;
    final TranHapCryptoManagerV2Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranHapCryptoManagerV2Impl$removeCKey$1(TranHapCryptoManagerV2Impl tranHapCryptoManagerV2Impl, String str, wh1<? super TranHapCryptoManagerV2Impl$removeCKey$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = tranHapCryptoManagerV2Impl;
        this.$alias = str;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new TranHapCryptoManagerV2Impl$removeCKey$1(this.this$0, this.$alias, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((TranHapCryptoManagerV2Impl$removeCKey$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            pw4 pw4VarE = this.this$0.e();
            String str = this.$alias;
            this.label = 1;
            if (pw4VarE.e(str, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }
}
