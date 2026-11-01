package w0;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.FutureTask;

public final class b extends FutureTask<a.b> {

    public final c f2211a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar, Callable callable) {
        super(callable);
        this.f2211a = cVar;
    }

    @Override
    public final void done() {
        try {
            c cVar = this.f2211a;
            a.b bVar = get();
            a aVar = cVar.f2213a;
            if (aVar == null || bVar == null) {
                return;
            }
            aVar.b(bVar, false);
        } catch (CancellationException | Exception unused) {
        }
    }
}
