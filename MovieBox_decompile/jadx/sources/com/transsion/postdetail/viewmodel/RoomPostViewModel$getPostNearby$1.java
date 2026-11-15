package com.transsion.postdetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getPostNearby$1", f = "RoomPostViewModel.kt", l = {Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE}, m = "invokeSuspend")
final class RoomPostViewModel$getPostNearby$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isRefresh;
    final double $lat;
    final double $lon;
    final String $page;
    final int $perPage;
    int label;
    final RoomPostViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getPostNearby$1$1", f = "RoomPostViewModel.kt", l = {294, 296, 298}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final double $lat;
        final double $lon;
        final String $page;
        final int $perPage;
        private Object L$0;
        int label;
        final RoomPostViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RoomPostViewModel roomPostViewModel, String str, int i10, double d10, double d11, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = roomPostViewModel;
            this.$page = str;
            this.$perPage = i10;
            this.$lon = d10;
            this.$lat = d11;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$page, this.$perPage, this.$lon, this.$lat, continuation);
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
            ao.c cVarM = this.this$0.M();
            String strA = gg.a.f61067a.a();
            String str = this.$page;
            int i11 = this.$perPage;
            double d10 = this.$lon;
            double d11 = this.$lat;
            this.L$0 = bVar;
            this.label = 1;
            obj = cVarM.d(strA, str, i11, d10, d11, this);
            if (obj == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) obj;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                Object data = baseDto.getData();
                this.L$0 = null;
                this.label = 3;
                if (bVar.emit(data, this) == objF) {
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getPostNearby$1$2", f = "RoomPostViewModel.kt", l = {Sdk$SDKError.Reason.MRAID_ERROR_VALUE}, m = "invokeSuspend")
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

        final boolean f48157a;

        final RoomPostViewModel f48158b;

        final double f48159c;

        final double f48160d;

        a(boolean z10, RoomPostViewModel roomPostViewModel, double d10, double d11) {
            this.f48157a = z10;
            this.f48158b = roomPostViewModel;
            this.f48159c = d10;
            this.f48160d = d11;
        }

        @Override
        public final Object emit(PostSubjectBean postSubjectBean, Continuation continuation) {
            List<PostSubjectItem> items;
            if (postSubjectBean != null) {
                postSubjectBean.setRefresh(this.f48157a);
            }
            if (postSubjectBean != null && (items = postSubjectBean.getItems()) != null) {
                double d10 = this.f48159c;
                double d11 = this.f48160d;
                for (Iterator it = items.iterator(); it.hasNext(); it = it) {
                    PostSubjectItem postSubjectItem = (PostSubjectItem) it.next();
                    if (postSubjectItem.getLat() != null && postSubjectItem.getLon() != null) {
                        ij.s sVar = ij.s.f62120a;
                        Float lat = postSubjectItem.getLat();
                        Intrinsics.e(lat);
                        double dFloatValue = lat.floatValue();
                        Float lon = postSubjectItem.getLon();
                        Intrinsics.e(lon);
                        postSubjectItem.setDistanceStr(sVar.a(d10, d11, dFloatValue, lon.floatValue()));
                    }
                }
            }
            this.f48158b.f48142f.n(postSubjectBean);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomPostViewModel$getPostNearby$1(RoomPostViewModel roomPostViewModel, String str, int i10, double d10, double d11, boolean z10, Continuation<? super RoomPostViewModel$getPostNearby$1> continuation) {
        super(2, continuation);
        this.this$0 = roomPostViewModel;
        this.$page = str;
        this.$perPage = i10;
        this.$lon = d10;
        this.$lat = d11;
        this.$isRefresh = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomPostViewModel$getPostNearby$1(this.this$0, this.$page, this.$perPage, this.$lon, this.$lat, this.$isRefresh, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$page, this.$perPage, this.$lon, this.$lat, null)), new AnonymousClass2(null));
            a aVar = new a(this.$isRefresh, this.this$0, this.$lat, this.$lon);
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
        return ((RoomPostViewModel$getPostNearby$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
