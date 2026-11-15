package com.transsion.mediationads.manager;

import android.util.Log;
import com.transsion.mediationads.beans.AdDisplayResponse;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.fi1;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.mediationads.manager.MediaTionADMangerCore$cacheAdStrategy$1", f = "MediaTionADMangerCore.kt", l = {}, m = "invokeSuspend")
public final class MediaTionADMangerCore$cacheAdStrategy$1 extends SuspendLambda implements s74 {
    final AdDisplayResponse $adDisplayResponse;
    int label;
    final MediaTionADMangerCore this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaTionADMangerCore$cacheAdStrategy$1(AdDisplayResponse adDisplayResponse, MediaTionADMangerCore mediaTionADMangerCore, wh1<? super MediaTionADMangerCore$cacheAdStrategy$1> wh1Var) {
        super(2, wh1Var);
        this.$adDisplayResponse = adDisplayResponse;
        this.this$0 = mediaTionADMangerCore;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new MediaTionADMangerCore$cacheAdStrategy$1(this.$adDisplayResponse, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((MediaTionADMangerCore$cacheAdStrategy$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        try {
            CacheManager.getInstance().lambda$setCache$0("visha_ad_strategy_cache", fi1.e(this.$adDisplayResponse));
        } catch (Exception e) {
            Log.e(this.this$0.a, "Failed to cache ad strategy with CacheManager: " + e.getMessage());
        }
        return zfb.a;
    }
}
