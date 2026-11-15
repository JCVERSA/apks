package com.transsion.audio.viewmodel;

import com.transsion.baselib.db.audio.AudioBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.audio.viewmodel.HistoryListManager$addToList$1", f = "HistoryListManager.kt", l = {101}, m = "invokeSuspend")
final class HistoryListManager$addToList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final AudioBean $audioBean;
    int label;
    final HistoryListManager this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.viewmodel.HistoryListManager$addToList$1$1", f = "HistoryListManager.kt", l = {103, 105, 107}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final AudioBean $audioBean;
        int label;
        final HistoryListManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AudioBean audioBean, HistoryListManager historyListManager, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$audioBean = audioBean;
            this.this$0 = historyListManager;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$audioBean, this.this$0, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:31:0x0082 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            List list;
            si.a aVarQ;
            AudioBean audioBean;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.b(obj);
                } else if (i10 == 2) {
                    ResultKt.b(obj);
                    list = (List) obj;
                    if (list != null && list.size() > 30 && (aVarQ = this.this$0.q()) != null) {
                        audioBean = (AudioBean) list.get(list.size() - 1);
                        this.label = 3;
                        if (aVarQ.b(audioBean, this) == objF) {
                            return objF;
                        }
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
            this.$audioBean.setUpdateTimeStamp(Boxing.e(System.currentTimeMillis()));
            si.a aVarQ2 = this.this$0.q();
            if (aVarQ2 != null) {
                AudioBean audioBean2 = this.$audioBean;
                this.label = 1;
                if (aVarQ2.h(audioBean2, this) == objF) {
                    return objF;
                }
            }
            si.a aVarQ3 = this.this$0.q();
            if (aVarQ3 != null) {
                this.label = 2;
                obj = aVarQ3.e(this);
                if (obj == objF) {
                    return objF;
                }
                list = (List) obj;
            } else {
                list = null;
            }
            if (list != null) {
                audioBean = (AudioBean) list.get(list.size() - 1);
                this.label = 3;
                if (aVarQ.b(audioBean, this) == objF) {
                    return objF;
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
    HistoryListManager$addToList$1(AudioBean audioBean, HistoryListManager historyListManager, Continuation<? super HistoryListManager$addToList$1> continuation) {
        super(2, continuation);
        this.$audioBean = audioBean;
        this.this$0 = historyListManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HistoryListManager$addToList$1(this.$audioBean, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            i0 i0VarB = y0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$audioBean, this.this$0, null);
            this.label = 1;
            if (i.g(i0VarB, anonymousClass1, this) == objF) {
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
        return ((HistoryListManager$addToList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
