package com.transsion.ugcvideodetail.viewmodel;

import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoDetail$1", f = "UGCVideoDetailViewModel.kt", l = {264}, m = "invokeSuspend")
final class UGCVideoDetailViewModel$getVideoDetail$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $collectionId;
    final String $ugcVideoId;
    int label;
    final UGCVideoDetailViewModel this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoDetail$1$1", f = "UGCVideoDetailViewModel.kt", l = {288, 289}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final String $collectionId;
        final String $ugcVideoId;
        private Object L$0;
        int label;
        final UGCVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCVideoDetailViewModel;
            this.$ugcVideoId = str;
            this.$collectionId = str2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$ugcVideoId, this.$collectionId, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x00a6 A[PHI: r1
          0x00a6: PHI (r1v14 java.lang.String) = (r1v13 java.lang.String), (r1v16 java.lang.String) binds: [B:23:0x009d, B:25:0x00a3] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:29:0x00ac  */
        /* JADX WARN: Code duplicated, block: B:30:0x00b1  */
        /* JADX WARN: Code duplicated, block: B:33:0x00c0  */
        /* JADX WARN: Code duplicated, block: B:34:0x00c4  */
        /* JADX WARN: Instruction removed from duplicated block: B:34:0x00c4, please report this as an issue */
        @Override
        public final Object invokeSuspend(Object obj) {
            r0 r0Var;
            UGCVideo uGCVideo;
            UGCVideoBelongToCollection belongToCollection;
            UGCVideoDetailViewModel uGCVideoDetailViewModel;
            String collectionId;
            Integer position;
            int iIntValue;
            int iMax;
            int i10;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    r0Var = (r0) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    uGCVideo = (UGCVideo) this.L$0;
                    ResultKt.b(obj);
                }
                this.this$0.f54379n.q(uGCVideo);
                this.this$0.f54381p.q((UGCVideoPlayInfo) obj);
                if (uGCVideo != null && (belongToCollection = uGCVideo.getBelongToCollection()) != null) {
                    uGCVideoDetailViewModel = this.this$0;
                    collectionId = (String) uGCVideoDetailViewModel.B().f();
                    if (collectionId == null || (collectionId = belongToCollection.getCollectionId()) != null) {
                        position = belongToCollection.getPosition();
                        if (position != null) {
                            iIntValue = position.intValue();
                        } else {
                            iIntValue = 1;
                        }
                        iMax = Math.max(iIntValue - 4, 1);
                        i10 = iMax + 7;
                        if (uGCVideoDetailViewModel.k0(collectionId, iMax, i10)) {
                            uGCVideoDetailViewModel.X(collectionId, iMax, i10, true);
                        } else {
                            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDetailViewModel", "Skip duplicate playList request: collectionId=" + collectionId + ", start=" + iMax + ", end=" + i10, false, 4, null);
                        }
                    }
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            r0 r0VarB = k.b(n0Var, y0.b(), null, new UGCVideoDetailViewModel$getVideoDetail$1$1$detailDeferred$1(this.this$0, this.$ugcVideoId, this.$collectionId, null), 2, null);
            r0 r0VarB2 = k.b(n0Var, y0.b(), null, new UGCVideoDetailViewModel$getVideoDetail$1$1$playInfoDeferred$1(this.this$0, this.$ugcVideoId, null), 2, null);
            this.L$0 = r0VarB2;
            this.label = 1;
            Object objF2 = r0VarB.f(this);
            if (objF2 == objF) {
                return objF;
            }
            r0Var = r0VarB2;
            obj = objF2;
            UGCVideo uGCVideo2 = (UGCVideo) obj;
            this.L$0 = uGCVideo2;
            this.label = 2;
            Object objF3 = r0Var.f(this);
            if (objF3 == objF) {
                return objF;
            }
            uGCVideo = uGCVideo2;
            obj = objF3;
            this.this$0.f54379n.q(uGCVideo);
            this.this$0.f54381p.q((UGCVideoPlayInfo) obj);
            if (uGCVideo != null) {
                uGCVideoDetailViewModel = this.this$0;
                collectionId = (String) uGCVideoDetailViewModel.B().f();
                if (collectionId == null) {
                    position = belongToCollection.getPosition();
                    if (position != null) {
                        iIntValue = position.intValue();
                    } else {
                        iIntValue = 1;
                    }
                    iMax = Math.max(iIntValue - 4, 1);
                    i10 = iMax + 7;
                    if (uGCVideoDetailViewModel.k0(collectionId, iMax, i10)) {
                        uGCVideoDetailViewModel.X(collectionId, iMax, i10, true);
                    } else {
                        wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDetailViewModel", "Skip duplicate playList request: collectionId=" + collectionId + ", start=" + iMax + ", end=" + i10, false, 4, null);
                    }
                } else {
                    position = belongToCollection.getPosition();
                    if (position != null) {
                        iIntValue = position.intValue();
                    } else {
                        iIntValue = 1;
                    }
                    iMax = Math.max(iIntValue - 4, 1);
                    i10 = iMax + 7;
                    if (uGCVideoDetailViewModel.k0(collectionId, iMax, i10)) {
                        uGCVideoDetailViewModel.X(collectionId, iMax, i10, true);
                    } else {
                        wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDetailViewModel", "Skip duplicate playList request: collectionId=" + collectionId + ", start=" + iMax + ", end=" + i10, false, 4, null);
                    }
                }
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoDetailViewModel$getVideoDetail$1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, String str2, Continuation<? super UGCVideoDetailViewModel$getVideoDetail$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCVideoDetailViewModel;
        this.$ugcVideoId = str;
        this.$collectionId = str2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoDetailViewModel$getVideoDetail$1(this.this$0, this.$ugcVideoId, this.$collectionId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$ugcVideoId, this.$collectionId, null);
            this.label = 1;
            if (o0.e(anonymousClass1, this) == objF) {
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
        return ((UGCVideoDetailViewModel$getVideoDetail$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
