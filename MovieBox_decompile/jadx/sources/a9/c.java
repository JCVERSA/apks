package a9;

import b9.u;
import com.google.android.datatransport.runtime.o;
import com.google.android.datatransport.runtime.t;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import t8.j;
import v8.k;

public class c implements e {

    private static final Logger f242f = Logger.getLogger(t.class.getName());

    private final u f243a;

    private final Executor f244b;

    private final v8.d f245c;

    private final c9.d f246d;

    private final d9.a f247e;

    public c(Executor executor, v8.d dVar, u uVar, c9.d dVar2, d9.a aVar) {
        this.f244b = executor;
        this.f245c = dVar;
        this.f243a = uVar;
        this.f246d = dVar2;
        this.f247e = aVar;
    }

    public Object d(o oVar, com.google.android.datatransport.runtime.i iVar) {
        this.f246d.w0(oVar, iVar);
        this.f243a.a(oVar, 1);
        return null;
    }

    public void e(final o oVar, j jVar, com.google.android.datatransport.runtime.i iVar) {
        try {
            k kVarA = this.f245c.a(oVar.b());
            if (kVarA == null) {
                String str = String.format("Transport backend '%s' is not registered", oVar.b());
                f242f.warning(str);
                jVar.a(new IllegalArgumentException(str));
            } else {
                final com.google.android.datatransport.runtime.i iVarA = kVarA.a(iVar);
                this.f247e.b(new d9.a.InterfaceC0702a() {
                    @Override
                    public final Object execute() {
                        return this.f239a.d(oVar, iVarA);
                    }
                });
                jVar.a(null);
            }
        } catch (Exception e10) {
            f242f.warning("Error scheduling event " + e10.getMessage());
            jVar.a(e10);
        }
    }

    @Override
    public void a(final o oVar, final com.google.android.datatransport.runtime.i iVar, final j jVar) {
        this.f244b.execute(new Runnable() {
            @Override
            public final void run() {
                this.f235a.e(oVar, jVar, iVar);
            }
        });
    }
}
