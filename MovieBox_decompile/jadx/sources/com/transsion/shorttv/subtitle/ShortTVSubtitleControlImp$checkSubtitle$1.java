package com.transsion.shorttv.subtitle;

import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import ur.h;
import yg.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.subtitle.ShortTVSubtitleControlImp$checkSubtitle$1", f = "ShortTVSubtitleControlImp.kt", l = {177, 179, 184}, m = "invokeSuspend")
final class ShortTVSubtitleControlImp$checkSubtitle$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final ShortTVSubtitleControlImp this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.subtitle.ShortTVSubtitleControlImp$checkSubtitle$1$1", f = "ShortTVSubtitleControlImp.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final ShortTvInnerPlayBean $history;
        final List<xr.b> $list;
        int label;
        final ShortTVSubtitleControlImp this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<xr.b> list, ShortTVSubtitleControlImp shortTVSubtitleControlImp, ShortTvInnerPlayBean shortTvInnerPlayBean, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$list = list;
            this.this$0 = shortTVSubtitleControlImp;
            this.$history = shortTvInnerPlayBean;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$list, this.this$0, this.$history, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            List<xr.b> list = this.$list;
            if (list != null && !list.isEmpty()) {
                List arrayList = (List) this.this$0.f51056h.d().f();
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.clear();
                arrayList.addAll(this.$list);
                wf.a.C0922a.g(wf.a.f74274a, "checkSubtitle setList, size:" + arrayList.size(), false, 2, null);
                this.this$0.f51056h.d().q(arrayList);
                ShortTVSubtitleControlImp shortTVSubtitleControlImp = this.this$0;
                ShortTvInnerPlayBean shortTvInnerPlayBean = this.$history;
                shortTVSubtitleControlImp.y(arrayList, shortTvInnerPlayBean != null ? shortTvInnerPlayBean.getSubtitleSelectId() : null);
            }
            if (l.f76264a.e()) {
                String strE = this.this$0.f51053e.e();
                String str = this.this$0.f51053e.e() + "_" + this.this$0.f51053e.c() + "short";
                ShortTVItem shortTVItemD = this.this$0.f51053e.d();
                String id2 = shortTVItemD != null ? shortTVItemD.getId() : null;
                int iC = this.this$0.f51053e.c();
                ShortTVItem shortTVItemD2 = this.this$0.f51053e.d();
                com.transsion.shorttv.subtitle.manager.b.C0635b.a(com.transsion.shorttv.subtitle.manager.b.f51081a.b(), new xr.a(strE, str, "", "", id2, iC, shortTVItemD2 != null ? shortTVItemD2.getSe() : 0, this.this$0.f51054f), null, 2, null);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTVSubtitleControlImp$checkSubtitle$1(ShortTVSubtitleControlImp shortTVSubtitleControlImp, Continuation<? super ShortTVSubtitleControlImp$checkSubtitle$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTVSubtitleControlImp;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTVSubtitleControlImp$checkSubtitle$1(this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x0076  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:38:0x00e8 A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        ShortTvInnerPlayBean shortTvInnerPlayBean;
        h hVarA0;
        List list;
        List list2;
        Integer numD;
        a2 a2VarC;
        AnonymousClass1 anonymousClass1;
        Function1 function1;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else if (i10 == 2) {
                shortTvInnerPlayBean = (ShortTvInnerPlayBean) this.L$0;
                ResultKt.b(obj);
                list = (List) obj;
                list2 = list;
                if (list2 != null && !list2.isEmpty() && (function1 = this.this$0.f51057i) != null) {
                    function1.invoke(Boxing.a(true));
                }
                wf.a.C0922a c0922a = wf.a.f74274a;
                String strF = this.this$0.f51053e.f();
                String strE = this.this$0.f51053e.e();
                if (list != null) {
                    numD = Boxing.d(list.size());
                } else {
                    numD = null;
                }
                wf.a.C0922a.g(c0922a, "checkSubtitle subtitleResId:" + strF + ", subjectId:" + strE + ", size:" + numD, false, 2, null);
                a2VarC = y0.c();
                anonymousClass1 = new AnonymousClass1(list, this.this$0, shortTvInnerPlayBean, null);
                this.L$0 = null;
                this.label = 3;
                if (i.g(a2VarC, anonymousClass1, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        ShortTvViewModel shortTvViewModel = this.this$0.f51052d;
        if (shortTvViewModel == null || (hVarA0 = shortTvViewModel.A0()) == null) {
            shortTvInnerPlayBean = null;
        } else {
            String strE2 = this.this$0.f51053e.e();
            this.label = 1;
            obj = hVarA0.c(strE2, this);
            if (obj == objF) {
                return objF;
            }
        }
        com.transsion.shorttv.subtitle.manager.b bVarB = com.transsion.shorttv.subtitle.manager.b.f51081a.b();
        String strF2 = this.this$0.f51053e.f();
        this.L$0 = shortTvInnerPlayBean;
        this.label = 2;
        obj = bVarB.a(strF2, this);
        if (obj == objF) {
            return objF;
        }
        list = (List) obj;
        list2 = list;
        if (list2 != null) {
            function1.invoke(Boxing.a(true));
        }
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        String strF3 = this.this$0.f51053e.f();
        String strE3 = this.this$0.f51053e.e();
        if (list != null) {
            numD = Boxing.d(list.size());
        } else {
            numD = null;
        }
        wf.a.C0922a.g(c0922a2, "checkSubtitle subtitleResId:" + strF3 + ", subjectId:" + strE3 + ", size:" + numD, false, 2, null);
        a2VarC = y0.c();
        anonymousClass1 = new AnonymousClass1(list, this.this$0, shortTvInnerPlayBean, null);
        this.L$0 = null;
        this.label = 3;
        if (i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
        shortTvInnerPlayBean = (ShortTvInnerPlayBean) obj;
        com.transsion.shorttv.subtitle.manager.b bVarB2 = com.transsion.shorttv.subtitle.manager.b.f51081a.b();
        String strF4 = this.this$0.f51053e.f();
        this.L$0 = shortTvInnerPlayBean;
        this.label = 2;
        obj = bVarB2.a(strF4, this);
        if (obj == objF) {
            return objF;
        }
        list = (List) obj;
        list2 = list;
        if (list2 != null) {
            function1.invoke(Boxing.a(true));
        }
        wf.a.C0922a c0922a3 = wf.a.f74274a;
        String strF5 = this.this$0.f51053e.f();
        String strE4 = this.this$0.f51053e.e();
        if (list != null) {
            numD = Boxing.d(list.size());
        } else {
            numD = null;
        }
        wf.a.C0922a.g(c0922a3, "checkSubtitle subtitleResId:" + strF5 + ", subjectId:" + strE4 + ", size:" + numD, false, 2, null);
        a2VarC = y0.c();
        anonymousClass1 = new AnonymousClass1(list, this.this$0, shortTvInnerPlayBean, null);
        this.L$0 = null;
        this.label = 3;
        if (i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTVSubtitleControlImp$checkSubtitle$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
