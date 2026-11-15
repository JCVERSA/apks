package com.transsion.home.viewmodel;

import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.SubOperateData;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.r0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.SubTabViewModel$fetchOperateData$1", f = "SubTabViewModel.kt", l = {72}, m = "invokeSuspend")
final class SubTabViewModel$fetchOperateData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $grade;
    final boolean $isRefresh;
    final Ref.ObjectRef<SubOperateData> $operateData;
    final int $tabId;
    int label;
    final SubTabViewModel this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.viewmodel.SubTabViewModel$fetchOperateData$1$1", f = "SubTabViewModel.kt", l = {76}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final String $grade;
        final boolean $isRefresh;
        final Ref.ObjectRef<SubOperateData> $operateData;
        final int $tabId;
        private Object L$0;
        int label;
        final SubTabViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<SubOperateData> objectRef, SubTabViewModel subTabViewModel, int i10, boolean z10, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$operateData = objectRef;
            this.this$0 = subTabViewModel;
            this.$tabId = i10;
            this.$isRefresh = z10;
            this.$grade = str;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$operateData, this.this$0, this.$tabId, this.$isRefresh, this.$grade, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final Object invokeSuspend(Object obj) {
            Ref.ObjectRef<SubOperateData> objectRef;
            T t10;
            List<OperateItem> items;
            List listI0;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            List<OperateItem> listU0 = null;
            if (i10 == 0) {
                ResultKt.b(obj);
                r0 r0VarB = kotlinx.coroutines.k.b((n0) this.L$0, null, null, new SubTabViewModel$fetchOperateData$1$1$operationTask$1(this.this$0, this.$tabId, this.$grade, null), 3, null);
                Ref.ObjectRef<SubOperateData> objectRef2 = this.$operateData;
                this.L$0 = objectRef2;
                this.label = 1;
                Object objF2 = r0VarB.f(this);
                if (objF2 == objF) {
                    return objF;
                }
                objectRef = objectRef2;
                t10 = objF2;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                objectRef = (Ref.ObjectRef) this.L$0;
                ResultKt.b(obj);
                t10 = obj;
            }
            objectRef.element = t10;
            SubOperateData subOperateData = this.$operateData.element;
            SubOperateData subOperateData2 = subOperateData;
            if (subOperateData2 != null) {
                SubOperateData subOperateData3 = subOperateData;
                if (subOperateData3 != null && (items = subOperateData3.getItems()) != null && (listI0 = CollectionsKt.I0(items, new Comparator() {
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public final int compare(T t11, T t12) {
                        return ComparisonsKt.d(((OperateItem) t11).getPosition(), ((OperateItem) t12).getPosition());
                    }
                })) != null) {
                    listU0 = CollectionsKt.U0(listI0);
                }
                subOperateData2.setItems(listU0);
            }
            this.this$0.u(this.$operateData.element);
            this.this$0.v(this.$tabId, this.$operateData.element);
            if (this.$isRefresh) {
                this.this$0.q().n(this.$operateData.element);
                this.this$0.f44484f = 1;
            } else {
                this.this$0.p().n(this.$operateData.element);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubTabViewModel$fetchOperateData$1(boolean z10, SubTabViewModel subTabViewModel, Ref.ObjectRef<SubOperateData> objectRef, int i10, String str, Continuation<? super SubTabViewModel$fetchOperateData$1> continuation) {
        super(2, continuation);
        this.$isRefresh = z10;
        this.this$0 = subTabViewModel;
        this.$operateData = objectRef;
        this.$tabId = i10;
        this.$grade = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubTabViewModel$fetchOperateData$1(this.$isRefresh, this.this$0, this.$operateData, this.$tabId, this.$grade, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List<OperateItem> items;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$operateData, this.this$0, this.$tabId, this.$isRefresh, this.$grade, null);
                this.label = 1;
                if (l2.c(anonymousClass1, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            wf.a.f74274a.i("SubTabFragment", "exceptionHandler " + e10.getMessage(), true);
            if (this.$isRefresh) {
                this.this$0.q().n(null);
            } else {
                SubOperateData subOperateData = this.$operateData.element;
                if (((subOperateData == null || (items = subOperateData.getItems()) == null) ? 0 : items.size()) > 0) {
                    this.this$0.p().n(this.$operateData.element);
                } else {
                    this.this$0.p().n(null);
                }
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubTabViewModel$fetchOperateData$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
