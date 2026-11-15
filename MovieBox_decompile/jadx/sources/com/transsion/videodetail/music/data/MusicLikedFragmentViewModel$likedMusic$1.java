package com.transsion.videodetail.music.data;

import com.cloud.tmc.integration.event.EventConstants;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.videodetail.music.bean.LikeListActionEnum;
import com.transsion.videodetail.music.bean.MusicLikedRemoteActionBean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$likedMusic$1", f = "MusicLikedFragmentViewModel.kt", l = {66}, m = "invokeSuspend")
final class MusicLikedFragmentViewModel$likedMusic$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final LikeListActionEnum $action;
    final String $subjectId;
    private Object L$0;
    int label;
    final MusicLikedFragmentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MusicLikedFragmentViewModel$likedMusic$1(String str, LikeListActionEnum likeListActionEnum, MusicLikedFragmentViewModel musicLikedFragmentViewModel, Continuation<? super MusicLikedFragmentViewModel$likedMusic$1> continuation) {
        super(2, continuation);
        this.$subjectId = str;
        this.$action = likeListActionEnum;
        this.this$0 = musicLikedFragmentViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MusicLikedFragmentViewModel$likedMusic$1 musicLikedFragmentViewModel$likedMusic$1 = new MusicLikedFragmentViewModel$likedMusic$1(this.$subjectId, this.$action, this.this$0, continuation);
        musicLikedFragmentViewModel$likedMusic$1.L$0 = obj;
        return musicLikedFragmentViewModel$likedMusic$1;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0083  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        MusicLikedFragmentViewModel musicLikedFragmentViewModel;
        String str;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                String str2 = this.$subjectId;
                LikeListActionEnum likeListActionEnum = this.$action;
                MusicLikedFragmentViewModel musicLikedFragmentViewModel2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("subjectId", str2);
                jSONObject.put(EventConstants.KEY_ACTION, likeListActionEnum.getValue());
                a aVarZ = musicLikedFragmentViewModel2.z();
                mg.b.a aVar = mg.b.f66404a;
                String string = jSONObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                this.L$0 = musicLikedFragmentViewModel2;
                this.label = 1;
                obj = a.C0661a.b(aVarZ, requestBodyA, null, this, 2, null);
                if (obj == objF) {
                    return objF;
                }
                musicLikedFragmentViewModel = musicLikedFragmentViewModel2;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                musicLikedFragmentViewModel = (MusicLikedFragmentViewModel) this.L$0;
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            MusicLikedRemoteActionBean musicLikedRemoteActionBean = (MusicLikedRemoteActionBean) baseDto.getData();
            if (musicLikedRemoteActionBean != null) {
                Integer action = musicLikedRemoteActionBean.getAction();
                int value = LikeListActionEnum.ADD.getValue();
                if (action != null && action.intValue() == value) {
                    str = "收藏";
                } else {
                    str = "取消";
                }
            } else {
                str = "取消";
            }
            yv.a.f76396a.a(musicLikedFragmentViewModel.t() + " --> likedMusic() --> " + str + "成功,同步本地数据库 --> likeMusic = " + baseDto.getData());
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        MusicLikedFragmentViewModel musicLikedFragmentViewModel3 = this.this$0;
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            yv.a.f76396a.b(musicLikedFragmentViewModel3.t() + " --> likedMusic() --> it = " + thM456exceptionOrNullimpl);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MusicLikedFragmentViewModel$likedMusic$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
