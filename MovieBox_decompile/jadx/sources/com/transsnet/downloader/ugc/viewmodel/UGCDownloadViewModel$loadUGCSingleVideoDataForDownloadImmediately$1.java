package com.transsnet.downloader.ugc.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownload;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadResource;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCSingleVideoDataForDownloadImmediately$1", f = "UGCDownloadViewModel.kt", l = {267}, m = "invokeSuspend")
final class UGCDownloadViewModel$loadUGCSingleVideoDataForDownloadImmediately$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $ugcVideoId;
    int label;
    final UGCDownloadViewModel this$0;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCSingleVideoDataForDownloadImmediately$1$1", f = "UGCDownloadViewModel.kt", l = {258, 260, 262}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $ugcVideoId;
        private Object L$0;
        int label;
        final UGCDownloadViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCDownloadViewModel uGCDownloadViewModel, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCDownloadViewModel;
            this.$ugcVideoId = str;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$ugcVideoId, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2 && i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            fx.a aVarR = this.this$0.r();
            String str = this.$ugcVideoId;
            this.L$0 = bVar;
            this.label = 1;
            obj = fx.a.C0735a.c(aVarR, str, null, this, 2, null);
            if (obj == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) obj;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                this.L$0 = null;
                this.label = 3;
                if (bVar.emit(baseDto, this) == objF) {
                    return objF;
                }
            } else {
                this.L$0 = null;
                this.label = 2;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005*\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;", "", "e", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadUGCSingleVideoDataForDownloadImmediately$1$2", f = "UGCDownloadViewModel.kt", l = {266}, m = "invokeSuspend")
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

        final UGCDownloadViewModel f57656a;

        a(UGCDownloadViewModel uGCDownloadViewModel) {
            this.f57656a = uGCDownloadViewModel;
        }

        @Override
        public final Object emit(BaseDto baseDto, Continuation continuation) {
            List<UGCVideoDownload> listL;
            UGCVideoDownloadList uGCVideoDownloadList = baseDto != null ? (UGCVideoDownloadList) baseDto.getData() : null;
            if (uGCVideoDownloadList == null || (listL = uGCVideoDownloadList.getItems()) == null) {
                listL = CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : listL) {
                List<UGCVideoDownloadResource> resources = ((UGCVideoDownload) obj).getResources();
                if (!(resources == null || resources.isEmpty())) {
                    arrayList.add(obj);
                }
            }
            this.f57656a.f57638i.q((UGCVideoDownload) CollectionsKt.k0(arrayList));
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCDownloadViewModel$loadUGCSingleVideoDataForDownloadImmediately$1(UGCDownloadViewModel uGCDownloadViewModel, String str, Continuation<? super UGCDownloadViewModel$loadUGCSingleVideoDataForDownloadImmediately$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCDownloadViewModel;
        this.$ugcVideoId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCDownloadViewModel$loadUGCSingleVideoDataForDownloadImmediately$1(this.this$0, this.$ugcVideoId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$ugcVideoId, null)), y0.b()), new AnonymousClass2(null));
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
        return ((UGCDownloadViewModel$loadUGCSingleVideoDataForDownloadImmediately$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
