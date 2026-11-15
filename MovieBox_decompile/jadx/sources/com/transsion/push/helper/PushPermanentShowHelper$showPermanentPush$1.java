package com.transsion.push.helper;

import android.content.Context;
import android.graphics.Bitmap;
import com.transsion.push.bean.PermanentItemBean;
import com.transsion.push.bean.PushConfigHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.helper.PushPermanentShowHelper$showPermanentPush$1", f = "PushPermanentShowHelper.kt", l = {353, 369}, m = "invokeSuspend")
@SourceDebugExtension
final class PushPermanentShowHelper$showPermanentPush$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Context $context;
    final List<PermanentItemBean> $msgList;
    int I$0;
    private Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PushPermanentShowHelper$showPermanentPush$1(List<PermanentItemBean> list, Context context, Continuation<? super PushPermanentShowHelper$showPermanentPush$1> continuation) {
        super(2, continuation);
        this.$msgList = list;
        this.$context = context;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PushPermanentShowHelper$showPermanentPush$1 pushPermanentShowHelper$showPermanentPush$1 = new PushPermanentShowHelper$showPermanentPush$1(this.$msgList, this.$context, continuation);
        pushPermanentShowHelper$showPermanentPush$1.L$0 = obj;
        return pushPermanentShowHelper$showPermanentPush$1;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x019d  */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x019d, please report this as an issue */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        Object objA;
        List list;
        List<PermanentItemBean> list2;
        int i10;
        List list3;
        Context context;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        Continuation continuation = null;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    int i12 = this.I$0;
                    List list4 = (List) this.L$3;
                    List list5 = (List) this.L$2;
                    Context context2 = (Context) this.L$1;
                    list2 = (List) this.L$0;
                    ResultKt.b(obj);
                    list3 = list4;
                    list = list5;
                    context = context2;
                    i10 = i12;
                    objA = obj;
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    wf.a.f74274a.c("PUSH_SHOW", "load complete-error:" + thM456exceptionOrNullimpl.getMessage(), true);
                    thM456exceptionOrNullimpl.printStackTrace();
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            List<PermanentItemBean> list6 = this.$msgList;
            Context context3 = this.$context;
            Result.Companion companion = Result.INSTANCE;
            int curAbType = PushConfigHelper.INSTANCE.getCurAbType();
            List listSynchronizedList = Collections.synchronizedList(new ArrayList());
            List listSynchronizedList2 = Collections.synchronizedList(new ArrayList());
            int iH = curAbType != 1 ? curAbType != 2 ? 1 : RangesKt.h(list6.size(), 4) : RangesKt.h(list6.size(), 10);
            wf.a.C0922a.f(wf.a.f74274a, "PUSH_SHOW", "postPushPermanent, curAbType:" + curAbType, false, 4, null);
            IntRange intRangeS = RangesKt.s(0, iH);
            ArrayList arrayList = new ArrayList(CollectionsKt.v(intRangeS, 10));
            Iterator<Integer> it = intRangeS.iterator();
            while (it.hasNext()) {
                ArrayList arrayList2 = arrayList;
                arrayList2.add(k.b(n0Var, null, null, new PushPermanentShowHelper$showPermanentPush$1$1$deferredList$1$1(list6, ((IntIterator) it).a(), context3, continuation), 3, null));
                arrayList = arrayList2;
                listSynchronizedList2 = listSynchronizedList2;
                listSynchronizedList = listSynchronizedList;
                continuation = null;
            }
            List list7 = listSynchronizedList2;
            List list8 = listSynchronizedList;
            this.L$0 = list6;
            this.L$1 = context3;
            this.L$2 = list8;
            this.L$3 = list7;
            this.I$0 = curAbType;
            this.label = 1;
            objA = kotlinx.coroutines.f.a(arrayList, this);
            if (objA == objF) {
                return objF;
            }
            list = list8;
            list2 = list6;
            i10 = curAbType;
            list3 = list7;
            context = context3;
            for (Pair pair : (Iterable) objA) {
                Bitmap bitmap = (Bitmap) pair.component1();
                PermanentItemBean permanentItemBean = (PermanentItemBean) CollectionsKt.l0(list2, ((Number) pair.component2()).intValue());
                if (permanentItemBean != null) {
                    if (bitmap == null) {
                        PushPermanentShowHelper.f48757d = 0L;
                        if (list.size() < 5) {
                            list.add(null);
                            list3.add(permanentItemBean);
                        }
                    } else {
                        list.add(bitmap);
                        Boxing.a(list3.add(permanentItemBean));
                    }
                }
            }
            wf.a.f74274a.c("PUSH_SHOW", "load complete-size:" + list.size(), true);
            a2 a2VarC = y0.c();
            PushPermanentShowHelper$showPermanentPush$1$1$2 pushPermanentShowHelper$showPermanentPush$1$1$2 = new PushPermanentShowHelper$showPermanentPush$1$1$2(context, list3, list, i10, null);
            this.L$0 = null;
            this.L$1 = null;
            this.L$2 = null;
            this.L$3 = null;
            this.label = 2;
            if (kotlinx.coroutines.i.g(a2VarC, pushPermanentShowHelper$showPermanentPush$1$1$2, this) == objF) {
                return objF;
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.f74274a.c("PUSH_SHOW", "load complete-error:" + thM456exceptionOrNullimpl.getMessage(), true);
            thM456exceptionOrNullimpl.printStackTrace();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PushPermanentShowHelper$showPermanentPush$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
