package androidx.core.content;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public abstract class UnusedAppRestrictionsBackportService extends Service {

    private w0.b.a f7827a = new a();

    class a extends w0.b.a {
        a() {
        }

        @Override
        public void I0(w0.a aVar) {
            if (aVar == null) {
                return;
            }
            UnusedAppRestrictionsBackportService.this.a(new g(aVar));
        }
    }

    protected abstract void a(g gVar);

    @Override
    public IBinder onBind(Intent intent) {
        return this.f7827a;
    }
}
