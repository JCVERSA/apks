package com.transsion.usercenter.profile;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.profile.ProfileSubjectListViewModel$loadNewSubject$1", f = "ProfileSubjectListViewModel.kt", l = {139}, m = "invokeSuspend")
final class ProfileSubjectListViewModel$loadNewSubject$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final String $postId;
    int label;
    final ProfileSubjectListViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProfileSubjectListViewModel$loadNewSubject$1(ProfileSubjectListViewModel profileSubjectListViewModel, String str, Continuation<? super ProfileSubjectListViewModel$loadNewSubject$1> continuation) {
        super(2, continuation);
        this.this$0 = profileSubjectListViewModel;
        this.$postId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ProfileSubjectListViewModel$loadNewSubject$1(this.this$0, this.$postId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                b bVarA0 = this.this$0.a0();
                String str = this.$postId;
                this.label = 1;
                obj = b.a.e(bVarA0, str, null, this, 2, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            PostSubjectItem postSubjectItem = (PostSubjectItem) ((BaseDto) obj).getData();
            if (postSubjectItem != null) {
                this.this$0.o().q(CollectionsKt.h(postSubjectItem));
            }
        } catch (Exception unused) {
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ProfileSubjectListViewModel$loadNewSubject$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
