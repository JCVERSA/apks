package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import j4.x;
import java.util.UUID;

public class WorkForegroundUpdater implements androidx.work.f {

    private static final String f15330d = androidx.work.j.i("WMFgUpdater");

    private final k4.c f15331a;

    final androidx.work.impl.foreground.a f15332b;

    final j4.v f15333c;

    public WorkForegroundUpdater(WorkDatabase workDatabase, androidx.work.impl.foreground.a aVar, k4.c cVar) {
        this.f15332b = aVar;
        this.f15331a = cVar;
        this.f15333c = workDatabase.n0();
    }

    @Override
    public com.google.common.util.concurrent.r a(final Context context, final UUID uuid, final androidx.work.e eVar) {
        final androidx.work.impl.utils.futures.a aVarX = androidx.work.impl.utils.futures.a.x();
        this.f15331a.c(new Runnable() {
            @Override
            public void run() {
                try {
                    if (!aVarX.isCancelled()) {
                        String string = uuid.toString();
                        j4.u uVarJ = WorkForegroundUpdater.this.f15333c.j(string);
                        if (uVarJ == null || uVarJ.f62988b.isFinished()) {
                            throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                        }
                        WorkForegroundUpdater.this.f15332b.c(string, eVar);
                        context.startService(SystemForegroundDispatcher.c(context, x.a(uVarJ), eVar));
                    }
                    aVarX.t(null);
                } catch (Throwable th2) {
                    aVarX.u(th2);
                }
            }
        });
        return aVarX;
    }
}
