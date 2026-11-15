package com.transsion.room.sub.viewmodel.likes;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import mg.b;
import okhttp3.RequestBody;
import op.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.sub.viewmodel.likes.UgcLikesViewModel$postLikeUgcVideo$1", f = "UgcLikesViewModel.kt", l = {100}, m = "invokeSuspend")
final class UgcLikesViewModel$postLikeUgcVideo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isLike;
    final String $ugcVideoId;
    Object L$0;
    int label;
    final UgcLikesViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UgcLikesViewModel$postLikeUgcVideo$1(String str, boolean z10, UgcLikesViewModel ugcLikesViewModel, Continuation<? super UgcLikesViewModel$postLikeUgcVideo$1> continuation) {
        super(2, continuation);
        this.$ugcVideoId = str;
        this.$isLike = z10;
        this.this$0 = ugcLikesViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UgcLikesViewModel$postLikeUgcVideo$1(this.$ugcVideoId, this.$isLike, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        UgcLikesViewModel ugcLikesViewModel;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("ugcVideoId", this.$ugcVideoId);
                jsonObject.addProperty("reqType", Boxing.d(!this.$isLike ? 1 : 0));
                b.a aVar = b.f66404a;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    UgcLikesViewModel ugcLikesViewModel2 = this.this$0;
                    a aVar2 = ugcLikesViewModel2.f49762d;
                    String strA = gg.a.f61067a.a();
                    this.L$0 = ugcLikesViewModel2;
                    this.label = 1;
                    obj = aVar2.a(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    ugcLikesViewModel = ugcLikesViewModel2;
                }
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ugcLikesViewModel = (UgcLikesViewModel) this.L$0;
            ResultKt.b(obj);
            ugcLikesViewModel.e().n(((BaseDto) obj).getData());
        } catch (Exception e10) {
            e10.printStackTrace();
            wf.a.C0922a c0922a = wf.a.f74274a;
            String simpleName = UgcLikesViewModel.class.getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            c0922a.i(simpleName, "exceptionHandler " + e10.getMessage(), true);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UgcLikesViewModel$postLikeUgcVideo$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
