package androidx.core.os;

import android.os.OutcomeReceiver;
import kotlin.coroutines.Continuation;

public abstract class r {
    public static final OutcomeReceiver a(Continuation continuation) {
        return q.a(new ContinuationOutcomeReceiver(continuation));
    }
}
