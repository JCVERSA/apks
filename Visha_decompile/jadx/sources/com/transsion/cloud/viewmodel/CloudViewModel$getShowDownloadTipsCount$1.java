package com.transsion.cloud.viewmodel;

import com.tencent.mmkv.MMKV;
import defpackage.cl0;
import defpackage.e74;
import defpackage.mc2;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getShowDownloadTipsCount$1", f = "CloudViewModel.kt", l = {764}, m = "invokeSuspend")
public final class CloudViewModel$getShowDownloadTipsCount$1 extends SuspendLambda implements s74 {
    final e74 $onCallback;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getShowDownloadTipsCount$1$1", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final e74 $onCallback;
        final int $showCount;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(e74 e74Var, int i, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$onCallback = e74Var;
            this.$showCount = i;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$onCallback, this.$showCount, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            this.$onCallback.invoke(mk0.b(this.$showCount));
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$getShowDownloadTipsCount$1(e74 e74Var, wh1<? super CloudViewModel$getShowDownloadTipsCount$1> wh1Var) {
        super(2, wh1Var);
        this.$onCallback = e74Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$getShowDownloadTipsCount$1(this.$onCallback, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$getShowDownloadTipsCount$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            kotlin.c.b(obj);
            int iF = MMKV.p().f("cloud_show_download_tip_count");
            if (iF < 2) {
                MMKV.p().t("cloud_show_download_tip_count", iF + 1);
            }
            rx5 rx5VarC = mc2.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onCallback, iF, null);
            this.label = 1;
            if (cl0.g(rx5VarC, anonymousClass1, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        return zfb.a;
    }
}
