package kotlinx.coroutines;

import defpackage.wh1;
import defpackage.x29;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\n\b\u0001\u0010\u0002 \u0000*\u00028\u00002\b\u0012\u0004\u0012\u00028\u00010\u00032\u00060\u0004j\u0002`\u0005B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u000fH\u0010¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0013¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/TimeoutCoroutine;", "U", "T", "Lx29;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "time", "Lwh1;", "uCont", MethodDecl.initName, "(JLwh1;)V", "Lzfb;", "run", "()V", "", "nameString$kotlinx_coroutines_core", "()Ljava/lang/String;", "nameString", "J", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class TimeoutCoroutine<U, T extends U> extends x29 implements Runnable {
    public final long time;

    public TimeoutCoroutine(long j, wh1<? super U> wh1Var) {
        super(wh1Var.getContext(), wh1Var);
        this.time = j;
    }

    @Override
    public String nameString$kotlinx_coroutines_core() {
        return super.nameString$kotlinx_coroutines_core() + "(timeMillis=" + this.time + ')';
    }

    @Override
    public void run() {
        cancelCoroutine(TimeoutKt.a(this.time, DelayKt.c(getContext()), this));
    }
}
