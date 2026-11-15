package com.transsion.home.adapter.suboperate.provider;

import com.transsion.edcation.CourseManager;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.KotlinNothingValueException;
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
import kotlinx.coroutines.flow.w0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubFeedsEducationProvider$MyViewHolder$registerCourse$1", f = "SubFeedsEducationProvider.kt", l = {168}, m = "invokeSuspend")
final class SubFeedsEducationProvider$MyViewHolder$registerCourse$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final SubFeedsEducationProvider.MyViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubFeedsEducationProvider$MyViewHolder$registerCourse$1(SubFeedsEducationProvider.MyViewHolder myViewHolder, Continuation<? super SubFeedsEducationProvider$MyViewHolder$registerCourse$1> continuation) {
        super(2, continuation);
        this.this$0 = myViewHolder;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubFeedsEducationProvider$MyViewHolder$registerCourse$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            w0 w0VarJ = CourseManager.f42905a.j();
            final SubFeedsEducationProvider.MyViewHolder myViewHolder = this.this$0;
            kotlinx.coroutines.flow.b bVar = new kotlinx.coroutines.flow.b() {

                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
                @DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubFeedsEducationProvider$MyViewHolder$registerCourse$1$1$1", f = "SubFeedsEducationProvider.kt", l = {}, m = "invokeSuspend")
                static final class C05981 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
                    int label;
                    final SubFeedsEducationProvider.MyViewHolder this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C05981(SubFeedsEducationProvider.MyViewHolder myViewHolder, Continuation<? super C05981> continuation) {
                        super(2, continuation);
                        this.this$0 = myViewHolder;
                    }

                    @Override
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C05981(this.this$0, continuation);
                    }

                    @Override
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.f();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                        this.this$0.k();
                        return Unit.f64096a;
                    }

                    @Override
                    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
                        return ((C05981) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                    }
                }

                @Override
                public final Object emit(CourseBean courseBean, Continuation continuation) {
                    Subject feedsSubject;
                    Subject feedsSubject2;
                    OperateItem operateItem = myViewHolder.mCurrentItem;
                    if (!Intrinsics.c((operateItem == null || (feedsSubject2 = operateItem.getFeedsSubject()) == null) ? null : feedsSubject2.getSubjectId(), courseBean.getSubjectId())) {
                        return Unit.f64096a;
                    }
                    OperateItem operateItem2 = myViewHolder.mCurrentItem;
                    if (operateItem2 != null && (feedsSubject = operateItem2.getFeedsSubject()) != null) {
                        feedsSubject.setSeenStatus(Boxing.d(courseBean.getSeenStatus()));
                    }
                    Object objG = kotlinx.coroutines.i.g(y0.c(), new C05981(myViewHolder, null), continuation);
                    return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
                }
            };
            this.label = 1;
            if (w0VarJ.a(bVar, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        throw new KotlinNothingValueException();
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubFeedsEducationProvider$MyViewHolder$registerCourse$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
