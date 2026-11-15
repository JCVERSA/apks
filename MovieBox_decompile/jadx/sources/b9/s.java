package b9;

import java.util.Iterator;
import java.util.concurrent.Executor;

public class s {

    private final Executor f15666a;

    private final c9.d f15667b;

    private final u f15668c;

    private final d9.a f15669d;

    s(Executor executor, c9.d dVar, u uVar, d9.a aVar) {
        this.f15666a = executor;
        this.f15667b = dVar;
        this.f15668c = uVar;
        this.f15669d = aVar;
    }

    public Object d() {
        Iterator it = this.f15667b.H().iterator();
        while (it.hasNext()) {
            this.f15668c.a((com.google.android.datatransport.runtime.o) it.next(), 1);
        }
        return null;
    }

    public void e() {
        this.f15669d.b(new d9.a.InterfaceC0702a() {
            @Override
            public final Object execute() {
                return this.f15665a.d();
            }
        });
    }

    public void c() {
        this.f15666a.execute(new Runnable() {
            @Override
            public final void run() {
                this.f15664a.e();
            }
        });
    }
}
