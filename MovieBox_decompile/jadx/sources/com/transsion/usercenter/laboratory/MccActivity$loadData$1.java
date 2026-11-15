package com.transsion.usercenter.laboratory;

import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.db.mcc.LocalMcc;
import com.transsion.ad.strategy.NationalInformationManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.laboratory.MccActivity$loadData$1", f = "MccActivity.kt", l = {Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 129}, m = "invokeSuspend")
@SourceDebugExtension
final class MccActivity$loadData$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final MccActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MccActivity$loadData$1(MccActivity mccActivity, Continuation<? super MccActivity$loadData$1> continuation) {
        super(2, continuation);
        this.this$0 = mccActivity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MccActivity$loadData$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        String string;
        xu.g gVar;
        RecyclerView recyclerView;
        RecyclerView.m layoutManager;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            gVar = this.this$0.binding;
            if (gVar != null && (recyclerView = gVar.f75572f) != null && (layoutManager = recyclerView.getLayoutManager()) != null) {
                layoutManager.scrollToPosition(this.this$0.checkedPosition);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        NationalInformationManager nationalInformationManager = NationalInformationManager.f41173a;
        this.label = 1;
        obj = nationalInformationManager.b(this);
        if (obj == objF) {
            return objF;
        }
        List list = (List) obj;
        ArrayList arrayList = new ArrayList();
        MMKV mmkvC = mg.a.f66402a.c();
        String str = "";
        if (mmkvC != null && (string = mmkvC.getString("sp_code", "")) != null) {
            str = string;
        }
        this.this$0.f0(null);
        MccActivity mccActivity = this.this$0;
        int i11 = 0;
        for (Object obj2 : list) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            LocalMcc localMcc = (LocalMcc) obj2;
            if (TextUtils.equals(localMcc.getMcc(), str)) {
                arrayList.add(new g1(true, localMcc));
                mccActivity.f0(localMcc);
                mccActivity.checkedPosition = i11;
            } else {
                Boxing.a(arrayList.add(new g1(false, localMcc)));
            }
            i11 = i12;
        }
        f1 f1Var = this.this$0.nationalInformationAdapter;
        if (f1Var != null) {
            f1Var.n1(arrayList);
        }
        this.label = 2;
        if (kotlinx.coroutines.u0.a(2000L, this) == objF) {
            return objF;
        }
        gVar = this.this$0.binding;
        if (gVar != null) {
            layoutManager.scrollToPosition(this.this$0.checkedPosition);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MccActivity$loadData$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
