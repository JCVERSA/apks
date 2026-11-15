package com.yandex.div.core.view2;

import com.yandex.div.internal.viewpool.optimization.ViewPreCreationProfileRepository;
import defpackage.ViewPreCreationProfile;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lddc;", "<anonymous>", "(Lnk1;)Lddc;"}, k = 3, mv = {1, 8, 0})
@nt1(c = "com.yandex.div.core.view2.DivViewCreator$viewPreCreationProfile$1$1", f = "DivViewCreator.kt", l = {54}, m = "invokeSuspend")
public final class DivViewCreator$viewPreCreationProfile$1$1 extends SuspendLambda implements s74 {
    final String $it;
    final ViewPreCreationProfileRepository $repository;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivViewCreator$viewPreCreationProfile$1$1(ViewPreCreationProfileRepository viewPreCreationProfileRepository, String str, wh1<? super DivViewCreator$viewPreCreationProfile$1$1> wh1Var) {
        super(2, wh1Var);
        this.$repository = viewPreCreationProfileRepository;
        this.$it = str;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new DivViewCreator$viewPreCreationProfile$1$1(this.$repository, this.$it, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super ViewPreCreationProfile> wh1Var) {
        return ((DivViewCreator$viewPreCreationProfile$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            ViewPreCreationProfileRepository viewPreCreationProfileRepository = this.$repository;
            String str = this.$it;
            this.label = 1;
            obj = viewPreCreationProfileRepository.e(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return obj;
    }
}
