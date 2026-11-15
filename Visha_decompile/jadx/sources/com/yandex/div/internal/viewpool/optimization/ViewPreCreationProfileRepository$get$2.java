package com.yandex.div.internal.viewpool.optimization;

import android.util.Log;
import com.yandex.div.logging.Severity;
import defpackage.ViewPreCreationProfile;
import defpackage.ne5;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lddc;", "<anonymous>", "(Lnk1;)Lddc;"}, k = 3, mv = {1, 8, 0})
@nt1(c = "com.yandex.div.internal.viewpool.optimization.ViewPreCreationProfileRepository$get$2", f = "ViewPreCreationProfileRepository.kt", l = {33}, m = "invokeSuspend")
public final class ViewPreCreationProfileRepository$get$2 extends SuspendLambda implements s74 {
    final String $id;
    private Object L$0;
    int label;
    final ViewPreCreationProfileRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPreCreationProfileRepository$get$2(ViewPreCreationProfileRepository viewPreCreationProfileRepository, String str, wh1<? super ViewPreCreationProfileRepository$get$2> wh1Var) {
        super(2, wh1Var);
        this.this$0 = viewPreCreationProfileRepository;
        this.$id = str;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        ViewPreCreationProfileRepository$get$2 viewPreCreationProfileRepository$get$2 = new ViewPreCreationProfileRepository$get$2(this.this$0, this.$id, wh1Var);
        viewPreCreationProfileRepository$get$2.L$0 = obj;
        return viewPreCreationProfileRepository$get$2;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super ViewPreCreationProfile> wh1Var) {
        return ((ViewPreCreationProfileRepository$get$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM279constructorimpl;
        Object objO;
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i == 0) {
                c.b(obj);
                ViewPreCreationProfileRepository viewPreCreationProfileRepository = this.this$0;
                String str = this.$id;
                Result.Companion companion = Result.INSTANCE;
                nz3 data = ViewPreCreationProfileRepository.c.a(viewPreCreationProfileRepository.a, str).getData();
                this.label = 1;
                objO = sz3.o(data, this);
                if (objO == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                objO = obj;
            }
            objM279constructorimpl = Result.m279constructorimpl((ViewPreCreationProfile) objO);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null && ne5.a.a(Severity.ERROR)) {
            Log.e("OptimizedViewPreCreationProfileRepository", "", thM282exceptionOrNullimpl);
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        ViewPreCreationProfile viewPreCreationProfile = (ViewPreCreationProfile) objM279constructorimpl;
        if (viewPreCreationProfile != null) {
            return viewPreCreationProfile;
        }
        ViewPreCreationProfile viewPreCreationProfile2 = this.this$0.b;
        return viewPreCreationProfile2.a((524286 & 1) != 0 ? viewPreCreationProfile2.id : this.$id, (524286 & 2) != 0 ? viewPreCreationProfile2.text : null, (524286 & 4) != 0 ? viewPreCreationProfile2.image : null, (524286 & 8) != 0 ? viewPreCreationProfile2.gifImage : null, (524286 & 16) != 0 ? viewPreCreationProfile2.overlapContainer : null, (524286 & 32) != 0 ? viewPreCreationProfile2.linearContainer : null, (524286 & 64) != 0 ? viewPreCreationProfile2.wrapContainer : null, (524286 & 128) != 0 ? viewPreCreationProfile2.grid : null, (524286 & 256) != 0 ? viewPreCreationProfile2.gallery : null, (524286 & 512) != 0 ? viewPreCreationProfile2.pager : null, (524286 & 1024) != 0 ? viewPreCreationProfile2.tab : null, (524286 & 2048) != 0 ? viewPreCreationProfile2.state : null, (524286 & 4096) != 0 ? viewPreCreationProfile2.custom : null, (524286 & 8192) != 0 ? viewPreCreationProfile2.indicator : null, (524286 & 16384) != 0 ? viewPreCreationProfile2.slider : null, (524286 & 32768) != 0 ? viewPreCreationProfile2.input : null, (524286 & 65536) != 0 ? viewPreCreationProfile2.select : null, (524286 & 131072) != 0 ? viewPreCreationProfile2.video : null, (524286 & 262144) != 0 ? viewPreCreationProfile2.com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt.SWITCH java.lang.String : null);
    }
}
