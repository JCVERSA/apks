package com.transsion.playercommon.vishaapis.cloud;

import android.util.Log;
import defpackage.hk1;
import kotlin.Metadata;
import kotlin.coroutines.a;
import kotlin.coroutines.d;

@Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"com/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$special$$inlined$CoroutineExceptionHandler$1", "Lkotlin/coroutines/a;", "Lhk1;", "Lkotlin/coroutines/d;", "context", "", "exception", "Lzfb;", "handleException", "(Lkotlin/coroutines/d;Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RegionHostCacheInterceptor$special$$inlined$CoroutineExceptionHandler$1 extends a implements hk1 {
    public RegionHostCacheInterceptor$special$$inlined$CoroutineExceptionHandler$1(hk1.b bVar) {
        super(bVar);
    }

    @Override
    public void handleException(d context, Throwable exception) {
        Log.e("RegionHostInterceptor", "Coroutine Exception: " + exception.getMessage());
    }
}
