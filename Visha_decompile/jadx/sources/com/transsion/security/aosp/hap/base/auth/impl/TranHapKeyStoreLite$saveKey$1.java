package com.transsion.security.aosp.hap.base.auth.impl;

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
@nt1(c = "com.transsion.security.aosp.hap.base.auth.impl.TranHapKeyStoreLite$saveKey$1", f = "TranHapKeyStoreLite.kt", l = {43}, m = "invokeSuspend")
public final class TranHapKeyStoreLite$saveKey$1 extends SuspendLambda implements s74 {
    public final String $alias;
    public final byte[] $keyBuffer;
    public int label;
    public final TranHapKeyStoreLite this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranHapKeyStoreLite$saveKey$1(TranHapKeyStoreLite tranHapKeyStoreLite, String str, byte[] bArr, wh1<? super TranHapKeyStoreLite$saveKey$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = tranHapKeyStoreLite;
        this.$alias = str;
        this.$keyBuffer = bArr;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new TranHapKeyStoreLite$saveKey$1(this.this$0, this.$alias, this.$keyBuffer, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((TranHapKeyStoreLite$saveKey$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            pw4 pw4Var = this.this$0.a;
            String str = this.$alias;
            byte[] bArr = this.$keyBuffer;
            this.label = 1;
            if (pw4Var.d(str, bArr, this) == objF) {
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
