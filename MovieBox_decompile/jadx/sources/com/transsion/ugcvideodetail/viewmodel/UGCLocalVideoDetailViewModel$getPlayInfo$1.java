package com.transsion.ugcvideodetail.viewmodel;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCLocalVideoDetailViewModel$getPlayInfo$1", f = "UGCLocalVideoDetailViewModel.kt", l = {RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH}, m = "invokeSuspend")
final class UGCLocalVideoDetailViewModel$getPlayInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $resourceId;
    int label;
    final UGCLocalVideoDetailViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/baselib/db/download/DownloadBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCLocalVideoDetailViewModel$getPlayInfo$1$1", f = "UGCLocalVideoDetailViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION_VALUE, Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE, 61}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $resourceId;
        private Object L$0;
        Object L$1;
        int label;
        final UGCLocalVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, UGCLocalVideoDetailViewModel uGCLocalVideoDetailViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$resourceId = str;
            this.this$0 = uGCLocalVideoDetailViewModel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$resourceId, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:26:0x0074  */
        /* JADX WARN: Code duplicated, block: B:30:0x008a A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            DownloadBean downloadBean;
            String ugcVideoId;
            DownloadBean downloadBean2;
            kotlinx.coroutines.flow.b bVar2;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                } else if (i10 == 2) {
                    downloadBean2 = (DownloadBean) this.L$1;
                    bVar2 = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj;
                    if (uGCVideoDetailPlayBean != null) {
                        downloadBean2.setReadProgress(uGCVideoDetailPlayBean.getProgress());
                    }
                    downloadBean = downloadBean2;
                    bVar = bVar2;
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 3;
                    if (bVar.emit(downloadBean, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVar3 = (kotlinx.coroutines.flow.b) this.L$0;
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            String str = this.$resourceId;
            this.L$0 = bVar3;
            this.label = 1;
            Object objP = downloadEsHelperA.p(str, this);
            if (objP == objF) {
                return objF;
            }
            bVar = bVar3;
            obj = objP;
            downloadBean = (DownloadBean) obj;
            if (downloadBean != null && (ugcVideoId = downloadBean.getUgcVideoId()) != null) {
                UGCVideoDetailPlayDao uGCVideoDetailPlayDaoG = this.this$0.g();
                this.L$0 = bVar;
                this.L$1 = downloadBean;
                this.label = 2;
                Object objR = uGCVideoDetailPlayDaoG.r(ugcVideoId, this);
                if (objR == objF) {
                    return objF;
                }
                kotlinx.coroutines.flow.b bVar4 = bVar;
                downloadBean2 = downloadBean;
                obj = objR;
                bVar2 = bVar4;
                uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj;
                if (uGCVideoDetailPlayBean != null) {
                    downloadBean2.setReadProgress(uGCVideoDetailPlayBean.getProgress());
                }
                downloadBean = downloadBean2;
                bVar = bVar2;
            }
            this.L$0 = null;
            this.L$1 = null;
            this.label = 3;
            if (bVar.emit(downloadBean, this) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/baselib/db/download/DownloadBean;", "", "e", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCLocalVideoDetailViewModel$getPlayInfo$1$2", f = "UGCLocalVideoDetailViewModel.kt", l = {64}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        private Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
                this.label = 1;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = bVar;
            return anonymousClass2.invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        final UGCLocalVideoDetailViewModel f54364a;

        a(UGCLocalVideoDetailViewModel uGCLocalVideoDetailViewModel) {
            this.f54364a = uGCLocalVideoDetailViewModel;
        }

        @Override
        public final Object emit(DownloadBean downloadBean, Continuation continuation) {
            this.f54364a.i().q(downloadBean);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCLocalVideoDetailViewModel$getPlayInfo$1(String str, UGCLocalVideoDetailViewModel uGCLocalVideoDetailViewModel, Continuation<? super UGCLocalVideoDetailViewModel$getPlayInfo$1> continuation) {
        super(2, continuation);
        this.$resourceId = str;
        this.this$0 = uGCLocalVideoDetailViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCLocalVideoDetailViewModel$getPlayInfo$1(this.$resourceId, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$resourceId, this.this$0, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0);
            this.label = 1;
            if (aVarE.a(aVar, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCLocalVideoDetailViewModel$getPlayInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
