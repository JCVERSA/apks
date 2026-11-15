package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;

public interface r {
    Object c();

    void cancel(CancellationException cancellationException);

    Object e(Continuation continuation);

    Object g(Continuation continuation);

    f iterator();
}
