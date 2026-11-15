package com.transsion.ugcvideodetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoDetailBySubject$1", f = "UGCVideoDetailViewModel.kt", l = {Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 229}, m = "invokeSuspend")
final class UGCVideoDetailViewModel$getVideoDetailBySubject$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $subjectId;
    Object L$0;
    int label;
    final UGCVideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoDetailViewModel$getVideoDetailBySubject$1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, Continuation<? super UGCVideoDetailViewModel$getVideoDetailBySubject$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCVideoDetailViewModel;
        this.$subjectId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoDetailViewModel$getVideoDetailBySubject$1(this.this$0, this.$subjectId, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00e9 A[PHI: r1
      0x00e9: PHI (r1v10 java.lang.String) = (r1v9 java.lang.String), (r1v13 java.lang.String) binds: [B:50:0x00e0, B:52:0x00e6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:60:0x0103  */
    /* JADX WARN: Code duplicated, block: B:61:0x0107  */
    /* JADX WARN: Instruction removed from duplicated block: B:61:0x0107, please report this as an issue */
    @Override
    public final Object invokeSuspend(Object obj) {
        UGCVideo uGCVideo;
        String ugcVideoId;
        UGCVideo uGCVideo2;
        Object th2;
        UGCVideoBelongToCollection belongToCollection;
        UGCVideoDetailViewModel uGCVideoDetailViewModel;
        String collectionId;
        Integer position;
        int iIntValue;
        int iMax;
        int i10;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        UGCVideoPlayInfo uGCVideoPlayInfo = null;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                ju.a aVarF = this.this$0.F();
                String str = this.$subjectId;
                this.label = 1;
                obj = ju.a.C0777a.e(aVarF, str, null, this, 2, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    uGCVideo2 = (UGCVideo) this.L$0;
                    try {
                        ResultKt.b(obj);
                        uGCVideoPlayInfo = (UGCVideoPlayInfo) obj;
                        uGCVideo = uGCVideo2;
                        uGCVideo2 = uGCVideo;
                    } catch (Throwable th3) {
                        th2 = th3;
                        wf.a.C0922a.l(wf.a.f74274a, "UGCVideoDetailViewModel", "getVideoPlayInfoBySubject error:" + th2, false, 4, null);
                    }
                    this.this$0.f54379n.q(uGCVideo2);
                    this.this$0.f54381p.q(uGCVideoPlayInfo);
                    if (uGCVideo2 != null && (belongToCollection = uGCVideo2.getBelongToCollection()) != null) {
                        uGCVideoDetailViewModel = this.this$0;
                        collectionId = (String) uGCVideoDetailViewModel.B().f();
                        if (collectionId == null || (collectionId = belongToCollection.getCollectionId()) != null) {
                            position = belongToCollection.getPosition();
                            if (position != null) {
                                iIntValue = position.intValue();
                            } else {
                                iIntValue = 1;
                            }
                            iMax = Math.max(iIntValue - 5, 1);
                            i10 = iIntValue + 5;
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
            }
            BaseDto baseDto = (BaseDto) obj;
            uGCVideo = !Intrinsics.c(baseDto.getCode(), "0") ? null : (UGCVideo) baseDto.getData();
        } catch (Throwable th4) {
            wf.a.C0922a.l(wf.a.f74274a, "UGCVideoDetailViewModel", "getVideoDetailBySubject error:" + th4, false, 4, null);
        }
        if (uGCVideo != null) {
            try {
                ugcVideoId = uGCVideo.getUgcVideoId();
            } catch (Throwable th5) {
                uGCVideo2 = uGCVideo;
                th2 = th5;
                wf.a.C0922a.l(wf.a.f74274a, "UGCVideoDetailViewModel", "getVideoPlayInfoBySubject error:" + th2, false, 4, null);
            }
        } else {
            ugcVideoId = null;
        }
        if (ugcVideoId != null && ugcVideoId.length() != 0) {
            UGCVideoDetailViewModel uGCVideoDetailViewModel2 = this.this$0;
            this.L$0 = uGCVideo;
            this.label = 2;
            Object objY = uGCVideoDetailViewModel2.y(ugcVideoId, this);
            if (objY == objF) {
                return objF;
            }
            uGCVideo2 = uGCVideo;
            obj = objY;
            uGCVideoPlayInfo = (UGCVideoPlayInfo) obj;
            uGCVideo = uGCVideo2;
        }
        uGCVideo2 = uGCVideo;
        this.this$0.f54379n.q(uGCVideo2);
        this.this$0.f54381p.q(uGCVideoPlayInfo);
        if (uGCVideo2 != null) {
            uGCVideoDetailViewModel = this.this$0;
            collectionId = (String) uGCVideoDetailViewModel.B().f();
            if (collectionId == null) {
                position = belongToCollection.getPosition();
                if (position != null) {
                    iIntValue = position.intValue();
                } else {
                    iIntValue = 1;
                }
                iMax = Math.max(iIntValue - 5, 1);
                i10 = iIntValue + 5;
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
                iMax = Math.max(iIntValue - 5, 1);
                i10 = iIntValue + 5;
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
        return ((UGCVideoDetailViewModel$getVideoDetailBySubject$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
