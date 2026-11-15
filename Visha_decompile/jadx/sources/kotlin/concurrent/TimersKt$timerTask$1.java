package kotlin.concurrent;

import defpackage.e74;
import java.util.TimerTask;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"kotlin/concurrent/TimersKt$timerTask$1", "Ljava/util/TimerTask;", "Lzfb;", "run", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 176)
public final class TimersKt$timerTask$1 extends TimerTask {
    final e74 $action;

    public TimersKt$timerTask$1(e74 e74Var) {
        this.$action = e74Var;
    }

    @Override
    public void run() {
        this.$action.invoke(this);
    }
}
