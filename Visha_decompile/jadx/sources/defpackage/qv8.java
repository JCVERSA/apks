package defpackage;

import freemarker.core.Environment;
import freemarker.debug.Breakpoint;
import freemarker.debug.EnvironmentSuspendedEvent;
import freemarker.debug.impl.DebuggerServer;
import freemarker.template.Template;
import freemarker.template.utility.UndeclaredThrowableException;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.rmi.RemoteException;
import java.rmi.server.RemoteObject;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class qv8 extends wt1 {
    public final Map b = new HashMap();
    public final HashSet c = new HashSet();
    public final Map d = new HashMap();
    public final ReferenceQueue e = new ReferenceQueue();
    public final ov8 f;
    public DebuggerServer g;

    public static final class a {
        public final List a;
        public final List b;

        public a() {
            this.a = new ArrayList();
            this.b = new ArrayList();
        }

        public boolean a() {
            return this.a.isEmpty() && this.b.isEmpty();
        }
    }

    public static final class b extends WeakReference {
        public final String a;

        public b(String str, Template template, ReferenceQueue referenceQueue) {
            super(template, referenceQueue);
            this.a = str;
        }
    }

    public qv8() {
        try {
            ov8 ov8Var = new ov8(this);
            this.f = ov8Var;
            DebuggerServer debuggerServer = new DebuggerServer(RemoteObject.toStub(ov8Var));
            this.g = debuggerServer;
            debuggerServer.f();
        } catch (RemoteException e) {
            e.printStackTrace();
            throw new UndeclaredThrowableException(e);
        }
    }

    public static ifa h(ifa ifaVar, int i) {
        ifa ifaVar2 = null;
        if (ifaVar.n() > i || ifaVar.q() < i) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Enumeration enumerationI = ifaVar.I();
        while (enumerationI.hasMoreElements()) {
            ifa ifaVarH = h((ifa) enumerationI.nextElement(), i);
            if (ifaVarH != null) {
                arrayList.add(ifaVarH);
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ifa ifaVar3 = (ifa) arrayList.get(i2);
            if (ifaVar2 == null) {
                ifaVar2 = ifaVar3;
            }
            if (ifaVar3.n() == i && ifaVar3.q() > i) {
                ifaVar2 = ifaVar3;
            }
            if (ifaVar3.n() == ifaVar3.q() && ifaVar3.n() == i) {
                ifaVar2 = ifaVar3;
                break;
            }
        }
        return ifaVar2 != null ? ifaVar2 : ifaVar;
    }

    public static void i(Template template, Breakpoint breakpoint) {
        ifa ifaVarH = h(template.C0(), breakpoint.getLine());
        if (ifaVarH == null) {
            return;
        }
        ifa ifaVar = (ifa) ifaVarH.T();
        ifaVar.h0(ifaVar.P(ifaVarH), new lt1(ifaVarH));
    }

    @Override
    public void c(Template template) {
        String strY0 = template.y0();
        synchronized (this.b) {
            try {
                a aVarF = f(strY0);
                aVarF.a.add(new b(strY0, template, this.e));
                Iterator it = aVarF.b.iterator();
                while (it.hasNext()) {
                    i(template, (Breakpoint) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean e(Environment environment, String str, int i) {
        lv8 lv8Var = (lv8) lv8.b(environment);
        synchronized (this.c) {
            this.c.add(lv8Var);
        }
        try {
            new EnvironmentSuspendedEvent(this, str, i, lv8Var);
            synchronized (this.d) {
                Iterator it = this.d.values().iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
            }
            synchronized (lv8Var) {
                try {
                    lv8Var.wait();
                } catch (InterruptedException unused) {
                }
            }
            boolean zC = lv8Var.c();
            synchronized (this.c) {
                this.c.remove(lv8Var);
            }
            return zC;
        } catch (Throwable th) {
            synchronized (this.c) {
                this.c.remove(lv8Var);
                throw th;
            }
        }
    }

    public final a f(String str) {
        a aVarG = g(str);
        if (aVarG != null) {
            return aVarG;
        }
        a aVar = new a();
        this.b.put(str, aVar);
        return aVar;
    }

    public final a g(String str) {
        j();
        return (a) this.b.get(str);
    }

    public final void j() {
        while (true) {
            b bVar = (b) this.e.poll();
            if (bVar == null) {
                return;
            }
            a aVarG = g(bVar.a);
            if (aVarG != null) {
                aVarG.a.remove(bVar);
                if (aVarG.a()) {
                    this.b.remove(bVar.a);
                }
            }
        }
    }
}
