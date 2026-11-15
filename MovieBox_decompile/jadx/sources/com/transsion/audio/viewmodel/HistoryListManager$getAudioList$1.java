package com.transsion.audio.viewmodel;

import android.text.TextUtils;
import com.transsion.audio.player.AudioPlayer;
import com.transsion.baselib.db.audio.AudioBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
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
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.audio.viewmodel.HistoryListManager$getAudioList$1", f = "HistoryListManager.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE, 67}, m = "invokeSuspend")
final class HistoryListManager$getAudioList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final HistoryListManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoryListManager$getAudioList$1(HistoryListManager historyListManager, Continuation<? super HistoryListManager$getAudioList$1> continuation) {
        super(2, continuation);
        this.this$0 = historyListManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HistoryListManager$getAudioList$1(this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0066  */
    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:27:0x007a  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0060 A[SYNTHETIC] */
    @Override
    public final Object invokeSuspend(Object obj) {
        List list;
        List list2;
        AudioBean audioBeanT;
        Iterator it;
        Integer numD;
        AudioBean audioBean;
        String audioUrl;
        si.a aVarQ;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.L$2;
                audioBeanT = (AudioBean) this.L$1;
                list2 = (List) this.L$0;
                ResultKt.b(obj);
            }
            while (it.hasNext()) {
                audioBean = (AudioBean) it.next();
                if (audioBean.getStatus() == 3) {
                    if (audioBeanT != null) {
                        audioUrl = audioBeanT.getAudioUrl();
                    } else {
                        audioUrl = null;
                    }
                    if (TextUtils.equals(audioUrl, audioBean.getAudioUrl())) {
                        continue;
                    } else {
                        audioBean.setStatus(4);
                        aVarQ = this.this$0.q();
                        if (aVarQ != null) {
                            this.L$0 = list2;
                            this.L$1 = audioBeanT;
                            this.L$2 = it;
                            this.label = 2;
                            if (aVarQ.h(audioBean, this) == objF) {
                                return objF;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            list = list2;
            this.this$0.p().q(list);
            wf.a.C0922a c0922a = wf.a.f74274a;
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            wf.a.C0922a.g(c0922a, "get getAudioList success" + numD, false, 2, null);
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        si.a aVarQ2 = this.this$0.q();
        if (aVarQ2 != null) {
            this.label = 1;
            obj = aVarQ2.e(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            list = null;
        }
        if (list != null && !list.isEmpty()) {
            list2 = list;
            audioBeanT = AudioPlayer.f41764i.a().t();
            it = list.iterator();
            while (it.hasNext()) {
                audioBean = (AudioBean) it.next();
                if (audioBean.getStatus() == 3) {
                    if (audioBeanT != null) {
                        audioUrl = audioBeanT.getAudioUrl();
                    } else {
                        audioUrl = null;
                    }
                    if (TextUtils.equals(audioUrl, audioBean.getAudioUrl())) {
                        audioBean.setStatus(4);
                        aVarQ = this.this$0.q();
                        if (aVarQ != null) {
                            this.L$0 = list2;
                            this.L$1 = audioBeanT;
                            this.L$2 = it;
                            this.label = 2;
                            if (aVarQ.h(audioBean, this) == objF) {
                                return objF;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
            }
            list = list2;
        }
        this.this$0.p().q(list);
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        if (list != null) {
            numD = Boxing.d(list.size());
        } else {
            numD = null;
        }
        wf.a.C0922a.g(c0922a2, "get getAudioList success" + numD, false, 2, null);
        return Unit.f64096a;
        list = (List) obj;
        if (list != null) {
            list2 = list;
            audioBeanT = AudioPlayer.f41764i.a().t();
            it = list.iterator();
            while (it.hasNext()) {
                audioBean = (AudioBean) it.next();
                if (audioBean.getStatus() == 3) {
                    if (audioBeanT != null) {
                        audioUrl = audioBeanT.getAudioUrl();
                    } else {
                        audioUrl = null;
                    }
                    if (TextUtils.equals(audioUrl, audioBean.getAudioUrl())) {
                        audioBean.setStatus(4);
                        aVarQ = this.this$0.q();
                        if (aVarQ != null) {
                            this.L$0 = list2;
                            this.L$1 = audioBeanT;
                            this.L$2 = it;
                            this.label = 2;
                            if (aVarQ.h(audioBean, this) == objF) {
                                return objF;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
            }
            list = list2;
        }
        this.this$0.p().q(list);
        wf.a.C0922a c0922a3 = wf.a.f74274a;
        if (list != null) {
            numD = Boxing.d(list.size());
        } else {
            numD = null;
        }
        wf.a.C0922a.g(c0922a3, "get getAudioList success" + numD, false, 2, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HistoryListManager$getAudioList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
