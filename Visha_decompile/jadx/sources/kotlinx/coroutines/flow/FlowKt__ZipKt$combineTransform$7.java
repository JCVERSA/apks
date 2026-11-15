package kotlinx.coroutines.flow;

import defpackage.c74;
import defpackage.j05;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.u74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.flow.internal.CombineKt;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Loz3;", "Lzfb;", "<anonymous>", "(Loz3;)V"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7", f = "Zip.kt", l = {304}, m = "invokeSuspend")
public final class FlowKt__ZipKt$combineTransform$7 extends SuspendLambda implements s74 {
    final nz3[] $flowArray;
    final u74 $transform;
    private Object L$0;
    int label;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Loz3;", "", "it", "Lzfb;", "<anonymous>", "(Loz3;Lkotlin/Array;)V"}, k = 3, mv = {2, 0, 0})
    @nt1(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$2", f = "Zip.kt", l = {304}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements u74 {
        final u74 $transform;
        private Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(u74 u74Var, wh1<? super AnonymousClass2> wh1Var) {
            super(3, wh1Var);
            this.$transform = u74Var;
        }

        @Override
        public final Object invoke(oz3 oz3Var, Object[] objArr, wh1<? super zfb> wh1Var) {
            y45.o();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, wh1Var);
            anonymousClass2.L$0 = oz3Var;
            anonymousClass2.L$1 = objArr;
            return anonymousClass2.invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                oz3 oz3Var = (oz3) this.L$0;
                Object[] objArr = (Object[]) this.L$1;
                u74 u74Var = this.$transform;
                this.L$0 = null;
                this.label = 1;
                if (u74Var.invoke(oz3Var, objArr, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            this.$transform.invoke((oz3) this.L$0, (Object[]) this.L$1, this);
            return zfb.a;
        }
    }

    public static final class a implements c74 {
        public final nz3[] b;

        public a(nz3[] nz3VarArr) {
            this.b = nz3VarArr;
        }

        @Override
        public final Object[] invoke() {
            int length = this.b.length;
            y45.p(0, "T?");
            return new Object[length];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combineTransform$7(nz3[] nz3VarArr, u74 u74Var, wh1<? super FlowKt__ZipKt$combineTransform$7> wh1Var) {
        super(2, wh1Var);
        this.$flowArray = nz3VarArr;
        this.$transform = u74Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        FlowKt__ZipKt$combineTransform$7 flowKt__ZipKt$combineTransform$7 = new FlowKt__ZipKt$combineTransform$7(this.$flowArray, this.$transform, wh1Var);
        flowKt__ZipKt$combineTransform$7.L$0 = obj;
        return flowKt__ZipKt$combineTransform$7;
    }

    @Override
    public final Object invoke(oz3 oz3Var, wh1<? super zfb> wh1Var) {
        return ((FlowKt__ZipKt$combineTransform$7) create(oz3Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            oz3 oz3Var = (oz3) this.L$0;
            nz3[] nz3VarArr = this.$flowArray;
            y45.o();
            a aVar = new a(this.$flowArray);
            y45.o();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, null);
            this.label = 1;
            if (CombineKt.a(oz3Var, nz3VarArr, aVar, anonymousClass2, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        oz3 oz3Var = (oz3) this.L$0;
        nz3[] nz3VarArr = this.$flowArray;
        y45.o();
        a aVar = new a(this.$flowArray);
        y45.o();
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, null);
        j05.c(0);
        CombineKt.a(oz3Var, nz3VarArr, aVar, anonymousClass2, this);
        j05.c(1);
        return zfb.a;
    }
}
