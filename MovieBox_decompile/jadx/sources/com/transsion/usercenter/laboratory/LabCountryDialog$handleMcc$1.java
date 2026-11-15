package com.transsion.usercenter.laboratory;

import com.transsion.ad.db.mcc.LocalMcc;
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
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.laboratory.LabCountryDialog$handleMcc$1", f = "LabCountryDialog.kt", l = {73}, m = "invokeSuspend")
final class LabCountryDialog$handleMcc$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final String $text;
    Object L$0;
    int label;
    final LabCountryDialog this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.usercenter.laboratory.LabCountryDialog$handleMcc$1$1", f = "LabCountryDialog.kt", l = {74}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final Ref.ObjectRef<LocalMcc> $localMcc;
        final String $text;
        int label;
        final LabCountryDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LabCountryDialog labCountryDialog, String str, Ref.ObjectRef<LocalMcc> objectRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = labCountryDialog;
            this.$text = str;
            this.$localMcc = objectRef;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$text, this.$localMcc, continuation);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                th.a aVarV0 = this.this$0.v0();
                String str = this.$text;
                this.label = 1;
                obj = aVarV0.a(str, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            List list = (List) obj;
            this.$localMcc.element = list != null ? (LocalMcc) CollectionsKt.k0(list) : 0;
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LabCountryDialog$handleMcc$1(LabCountryDialog labCountryDialog, String str, Continuation<? super LabCountryDialog$handleMcc$1> continuation) {
        super(2, continuation);
        this.this$0 = labCountryDialog;
        this.$text = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LabCountryDialog$handleMcc$1(this.this$0, this.$text, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object invokeSuspend(Object obj) {
        Ref.ObjectRef objectRef;
        String mcc;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            kotlinx.coroutines.i0 i0VarB = kotlinx.coroutines.y0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$text, objectRef2, null);
            this.L$0 = objectRef2;
            this.label = 1;
            if (kotlinx.coroutines.i.g(i0VarB, anonymousClass1, this) == objF) {
                return objF;
            }
            objectRef = objectRef2;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) this.L$0;
            ResultKt.b(obj);
        }
        LabCountryDialog labCountryDialog = this.this$0;
        String str = this.$text;
        LocalMcc localMcc = (LocalMcc) objectRef.element;
        if (localMcc == null || (mcc = localMcc.getMcc()) == null) {
            mcc = "";
        }
        labCountryDialog.D0(str, mcc);
        this.this$0.dismiss();
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LabCountryDialog$handleMcc$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
