package com.transsion.shorttv.ui.dialog;

import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.ui.adapter.r;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import qr.s;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.ui.dialog.ShortTvEpisodeListDialog$showAllEpisodes$1$5", f = "ShortTvEpisodeListDialog.kt", l = {Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvEpisodeListDialog$showAllEpisodes$1$5 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final int $selectEp;
    final String $subjectId;
    int label;
    final ShortTvEpisodeListDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvEpisodeListDialog$showAllEpisodes$1$5(ShortTvEpisodeListDialog shortTvEpisodeListDialog, String str, int i10, Continuation<? super ShortTvEpisodeListDialog$showAllEpisodes$1$5> continuation) {
        super(2, continuation);
        this.this$0 = shortTvEpisodeListDialog;
        this.$subjectId = str;
        this.$selectEp = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvEpisodeListDialog$showAllEpisodes$1$5(this.this$0, this.$subjectId, this.$selectEp, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0035  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:21:0x005d  */
    /* JADX WARN: Code duplicated, block: B:24:0x0069  */
    /* JADX WARN: Code duplicated, block: B:28:0x0077  */
    /* JADX WARN: Code duplicated, block: B:31:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:56:0x0065 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0057 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x009c A[SYNTHETIC] */
    @Override
    public final Object invokeSuspend(Object obj) {
        List<ShortTVItem> arrayList;
        List list;
        Collection collectionL;
        s sVar;
        s sVar2;
        ProgressBar progressBar;
        RecyclerView recyclerView;
        Iterator it;
        Object next;
        nr.e eVar;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            ur.d dVarS0 = this.this$0.D0().s0();
            if (dVarS0 != null) {
                String str = this.$subjectId;
                this.label = 1;
                obj = dVarS0.b(str, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                arrayList = new ArrayList();
            }
            list = (List) this.this$0.D0().F0().f();
            if (list != null) {
                collectionL = new ArrayList();
                for (Object obj2 : list) {
                    if (obj2 instanceof nr.e) {
                        collectionL.add(obj2);
                    }
                }
            } else {
                collectionL = CollectionsKt.l();
            }
            for (ShortTVItem shortTVItem : arrayList) {
                it = collectionL.iterator();
                do {
                    if (it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((nr.e) next).c() != shortTVItem.getEp());
                eVar = (nr.e) next;
                if (eVar == null && eVar.d() == null) {
                    eVar.h(shortTVItem);
                }
            }
            sVar = this.this$0.dramaDialogEpisodeListBinding;
            if (sVar != null && (recyclerView = sVar.f70162d) != null) {
                r rVarB0 = this.this$0.B0();
                ShortTvEpisodeListDialog shortTvEpisodeListDialog = this.this$0;
                int i11 = this.$selectEp;
                rVarB0.q1(CollectionsKt.U0(collectionL));
                rVarB0.w1(shortTvEpisodeListDialog.com.google.android.gms.common.internal.ServiceSpecificExtraArgs.CastExtraArgs.LISTENER java.lang.String);
                rVarB0.D1(i11);
                recyclerView.setAdapter(rVarB0);
            }
            sVar2 = this.this$0.dramaDialogEpisodeListBinding;
            if (sVar2 != null && (progressBar = sVar2.f70161c) != null) {
                cr.b.b(progressBar);
            }
            this.this$0.D0().w0(this.$subjectId, 1);
            if (this.this$0.F0() > 20) {
                this.this$0.D0().w0(this.$subjectId, 21);
            }
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        arrayList = (List) obj;
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        list = (List) this.this$0.D0().F0().f();
        if (list != null) {
            collectionL = new ArrayList();
            while (r0.hasNext()) {
                if (obj2 instanceof nr.e) {
                    collectionL.add(obj2);
                }
            }
        } else {
            collectionL = CollectionsKt.l();
        }
        while (r8.hasNext()) {
            it = collectionL.iterator();
            do {
                if (it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((nr.e) next).c() != shortTVItem.getEp());
            eVar = (nr.e) next;
            if (eVar == null) {
            }
        }
        sVar = this.this$0.dramaDialogEpisodeListBinding;
        if (sVar != null) {
            r rVarB1 = this.this$0.B0();
            ShortTvEpisodeListDialog shortTvEpisodeListDialog2 = this.this$0;
            int i12 = this.$selectEp;
            rVarB1.q1(CollectionsKt.U0(collectionL));
            rVarB1.w1(shortTvEpisodeListDialog2.com.google.android.gms.common.internal.ServiceSpecificExtraArgs.CastExtraArgs.LISTENER java.lang.String);
            rVarB1.D1(i12);
            recyclerView.setAdapter(rVarB1);
        }
        sVar2 = this.this$0.dramaDialogEpisodeListBinding;
        if (sVar2 != null) {
            cr.b.b(progressBar);
        }
        this.this$0.D0().w0(this.$subjectId, 1);
        if (this.this$0.F0() > 20) {
            this.this$0.D0().w0(this.$subjectId, 21);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvEpisodeListDialog$showAllEpisodes$1$5) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
