package com.transsion.member.history;

import com.transsion.member.bean.PointsHistoryData;
import com.transsion.member.bean.PointsHistoryItem;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import java.util.List;
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
import yx.h;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.history.PointsHistoryViewModel$fetchHistory$1", f = "PointsHistoryViewModel.kt", l = {}, m = "invokeSuspend")
final class PointsHistoryViewModel$fetchHistory$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $page;
    int label;
    final PointsHistoryViewModel this$0;

    static final class a implements h {

        public static final a f45111a = new a();

        a() {
        }

        @Override
        public final m apply(Throwable it) {
            Intrinsics.h(it, "it");
            return j.l(it);
        }
    }

    public static final class b extends dg.a {

        final PointsHistoryViewModel f45112d;

        b(PointsHistoryViewModel pointsHistoryViewModel) {
            this.f45112d = pointsHistoryViewModel;
        }

        @Override
        public void a(String str, String str2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("error: ");
            sb2.append(str);
            sb2.append(", msg:");
            sb2.append(str2);
            this.f45112d.e().q(null);
        }

        @Override
        public void c(PointsHistoryData pointsHistoryData) {
            List<PointsHistoryItem> list;
            super.c(pointsHistoryData);
            Boolean boolValueOf = (pointsHistoryData == null || (list = pointsHistoryData.getList()) == null) ? null : Boolean.valueOf(list.isEmpty());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("list is empty: ");
            sb2.append(boolValueOf);
            this.f45112d.e().q(pointsHistoryData);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PointsHistoryViewModel$fetchHistory$1(PointsHistoryViewModel pointsHistoryViewModel, String str, Continuation<? super PointsHistoryViewModel$fetchHistory$1> continuation) {
        super(2, continuation);
        this.this$0 = pointsHistoryViewModel;
        this.$page = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PointsHistoryViewModel$fetchHistory$1(this.this$0, this.$page, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        fm.a.C0732a.d(this.this$0.f(), this.$page, 0, null, 6, null).v(ey.a.c()).x(a.f45111a).f(dg.d.f59034a.c()).subscribe(new b(this.this$0));
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PointsHistoryViewModel$fetchHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
