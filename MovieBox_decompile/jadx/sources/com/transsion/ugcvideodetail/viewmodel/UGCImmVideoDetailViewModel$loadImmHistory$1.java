package com.transsion.ugcvideodetail.viewmodel;

import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$loadImmHistory$1", f = "UGCImmVideoDetailViewModel.kt", l = {Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE}, m = "invokeSuspend")
final class UGCImmVideoDetailViewModel$loadImmHistory$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $shouldRequestDetail;
    final String $ugcVideoId;
    int label;
    final UGCImmVideoDetailViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$loadImmHistory$1$1", f = "UGCImmVideoDetailViewModel.kt", l = {104, 106, 107, 109, 111, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $ugcVideoId;
        private Object L$0;
        int label;
        final UGCImmVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCImmVideoDetailViewModel;
            this.$ugcVideoId = str;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$ugcVideoId, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0053  */
        /* JADX WARN: Code duplicated, block: B:18:0x0066 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:21:0x006b  */
        /* JADX WARN: Code duplicated, block: B:23:0x007c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:26:0x0081  */
        /* JADX WARN: Code duplicated, block: B:28:0x008c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:29:0x008d  */
        /* JADX WARN: Code duplicated, block: B:31:0x0098 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:32:0x0099  */
        /* JADX WARN: Code duplicated, block: B:34:0x00a4 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:35:0x00a5  */
        /* JADX WARN: Code duplicated, block: B:37:0x00b0 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
            String str;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean2;
            Object objF = IntrinsicsKt.f();
            switch (this.label) {
                case 0:
                    ResultKt.b(obj);
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK = this.this$0.K();
                    String str2 = this.$ugcVideoId;
                    this.L$0 = bVar;
                    this.label = 1;
                    obj = uGCVideoDetailPlayDaoK.r(str2, this);
                    if (obj == objF) {
                        return objF;
                    }
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj;
                    if (uGCVideoDetailPlayBean == null) {
                        UGCCollectionVideoGroupDao uGCCollectionVideoGroupDaoZ = this.this$0.z();
                        String str3 = this.$ugcVideoId;
                        this.L$0 = bVar;
                        this.label = 2;
                        obj = uGCCollectionVideoGroupDaoZ.c(str3, this);
                        if (obj == objF) {
                            return objF;
                        }
                        str = (String) obj;
                        if (str != null) {
                            UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK2 = this.this$0.K();
                            this.L$0 = bVar;
                            this.label = 3;
                            obj = uGCVideoDetailPlayDaoK2.c(str, this);
                            if (obj == objF) {
                                return objF;
                            }
                            uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
                            if (uGCVideoDetailPlayBean2 == null) {
                                this.L$0 = bVar;
                                this.label = 4;
                                if (bVar.emit(null, this) == objF) {
                                    return objF;
                                }
                            } else {
                                this.L$0 = bVar;
                                this.label = 5;
                                if (bVar.emit(uGCVideoDetailPlayBean2, this) == objF) {
                                    return objF;
                                }
                            }
                        } else {
                            this.L$0 = null;
                            this.label = 6;
                            if (bVar.emit(null, this) == objF) {
                                return objF;
                            }
                        }
                    } else {
                        this.L$0 = null;
                        this.label = 7;
                        if (bVar.emit(uGCVideoDetailPlayBean, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f64096a;
                case 1:
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj;
                    if (uGCVideoDetailPlayBean == null) {
                        UGCCollectionVideoGroupDao uGCCollectionVideoGroupDaoZ2 = this.this$0.z();
                        String str4 = this.$ugcVideoId;
                        this.L$0 = bVar;
                        this.label = 2;
                        obj = uGCCollectionVideoGroupDaoZ2.c(str4, this);
                        if (obj == objF) {
                            return objF;
                        }
                        str = (String) obj;
                        if (str != null) {
                            UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK3 = this.this$0.K();
                            this.L$0 = bVar;
                            this.label = 3;
                            obj = uGCVideoDetailPlayDaoK3.c(str, this);
                            if (obj == objF) {
                                return objF;
                            }
                            uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
                            if (uGCVideoDetailPlayBean2 == null) {
                                this.L$0 = bVar;
                                this.label = 4;
                                if (bVar.emit(null, this) == objF) {
                                    return objF;
                                }
                            } else {
                                this.L$0 = bVar;
                                this.label = 5;
                                if (bVar.emit(uGCVideoDetailPlayBean2, this) == objF) {
                                    return objF;
                                }
                            }
                        } else {
                            this.L$0 = null;
                            this.label = 6;
                            if (bVar.emit(null, this) == objF) {
                                return objF;
                            }
                        }
                    } else {
                        this.L$0 = null;
                        this.label = 7;
                        if (bVar.emit(uGCVideoDetailPlayBean, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f64096a;
                case 2:
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                    str = (String) obj;
                    if (str != null) {
                        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK4 = this.this$0.K();
                        this.L$0 = bVar;
                        this.label = 3;
                        obj = uGCVideoDetailPlayDaoK4.c(str, this);
                        if (obj == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
                        if (uGCVideoDetailPlayBean2 == null) {
                            this.L$0 = bVar;
                            this.label = 4;
                            if (bVar.emit(null, this) == objF) {
                                return objF;
                            }
                        } else {
                            this.L$0 = bVar;
                            this.label = 5;
                            if (bVar.emit(uGCVideoDetailPlayBean2, this) == objF) {
                                return objF;
                            }
                        }
                    } else {
                        this.L$0 = null;
                        this.label = 6;
                        if (bVar.emit(null, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f64096a;
                case 3:
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                    uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
                    if (uGCVideoDetailPlayBean2 == null) {
                        this.L$0 = bVar;
                        this.label = 4;
                        if (bVar.emit(null, this) == objF) {
                            return objF;
                        }
                    } else {
                        this.L$0 = bVar;
                        this.label = 5;
                        if (bVar.emit(uGCVideoDetailPlayBean2, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f64096a;
                case 4:
                case 5:
                case 6:
                case 7:
                    ResultKt.b(obj);
                    return Unit.f64096a;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$loadImmHistory$1$2", f = "UGCImmVideoDetailViewModel.kt", l = {Sdk$SDKError.Reason.TPAT_ERROR_VALUE}, m = "invokeSuspend")
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

        final UGCImmVideoDetailViewModel f54355a;

        final boolean f54356b;

        a(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, boolean z10) {
            this.f54355a = uGCImmVideoDetailViewModel;
            this.f54356b = z10;
        }

        @Override
        public final Object emit(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation) {
            this.f54355a.c1(this.f54356b);
            this.f54355a.Y().q(uGCVideoDetailPlayBean);
            this.f54355a.H().q(uGCVideoDetailPlayBean);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$loadImmHistory$1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, boolean z10, Continuation<? super UGCImmVideoDetailViewModel$loadImmHistory$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoDetailViewModel;
        this.$ugcVideoId = str;
        this.$shouldRequestDetail = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$loadImmHistory$1(this.this$0, this.$ugcVideoId, this.$shouldRequestDetail, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$ugcVideoId, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0, this.$shouldRequestDetail);
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
        return ((UGCImmVideoDetailViewModel$loadImmHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
