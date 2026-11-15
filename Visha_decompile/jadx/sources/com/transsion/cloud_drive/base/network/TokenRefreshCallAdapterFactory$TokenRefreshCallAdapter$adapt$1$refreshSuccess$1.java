package com.transsion.cloud_drive.base.network;

import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.oq5;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)Z"}, k = 3, mv = {1, 9, 0})
@nt1(c = "com.transsion.cloud_drive.base.network.TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1", f = "TokenRefreshCallAdapterFactory.kt", l = {}, m = "invokeSuspend")
public final class TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1 extends SuspendLambda implements s74 {
    int label;
    final TokenRefreshCallAdapterFactory.TokenRefreshCallAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1(TokenRefreshCallAdapterFactory.TokenRefreshCallAdapter tokenRefreshCallAdapter, wh1<? super TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = tokenRefreshCallAdapter;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Boolean> wh1Var) {
        return ((TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        boolean zA;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        try {
            zA = this.this$0.b.a();
        } catch (Exception e) {
            oq5.a.b(this.this$0.c, "Token refresh failed", e);
            zA = false;
        }
        return mk0.a(zA);
    }
}
