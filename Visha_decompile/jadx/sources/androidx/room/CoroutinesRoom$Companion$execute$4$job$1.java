package androidx.room;

import defpackage.cr0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.room.CoroutinesRoom$Companion$execute$4$job$1", f = "CoroutinesRoom.kt", l = {}, m = "invokeSuspend")
public final class CoroutinesRoom$Companion$execute$4$job$1 extends SuspendLambda implements s74 {
    final Callable<R> $callable;
    final cr0 $continuation;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutinesRoom$Companion$execute$4$job$1(Callable<R> callable, cr0 cr0Var, wh1<? super CoroutinesRoom$Companion$execute$4$job$1> wh1Var) {
        super(2, wh1Var);
        this.$callable = callable;
        this.$continuation = cr0Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CoroutinesRoom$Companion$execute$4$job$1(this.$callable, this.$continuation, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CoroutinesRoom$Companion$execute$4$job$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        try {
            this.$continuation.resumeWith(Result.m279constructorimpl(this.$callable.call()));
        } catch (Throwable th) {
            cr0 cr0Var = this.$continuation;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(c.a(th)));
        }
        return zfb.a;
    }
}
