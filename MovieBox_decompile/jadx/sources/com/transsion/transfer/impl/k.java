package com.transsion.transfer.impl;

import android.app.Application;
import android.os.Build;
import androidx.p009lifecycle.LiveData;
import java.util.List;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

public final class k extends androidx.p009lifecycle.b {

    private final androidx.p009lifecycle.b0 f53684b;

    private final androidx.p009lifecycle.b0 f53685c;

    private final au.b f53686d;

    private final au.b f53687e;

    private final androidx.p009lifecycle.b0 f53688f;

    private g f53689g;

    private final g f53690h;

    private final Function4 f53691i;

    private final c f53692j;

    public static final class a implements Function4 {
        a() {
        }

        public void a(String clientIp, String transferId, boolean z10, String str) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(transferId, "transferId");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("invoke: clientIp:");
            sb2.append(clientIp);
            sb2.append(", transferId:");
            sb2.append(transferId);
            sb2.append(", isConnect:");
            sb2.append(z10);
            k.this.f53684b.n(new Pair(clientIp, Boolean.valueOf(z10)));
            if (z10) {
                return;
            }
            cu.b.f58655a.s(str, k.this.t());
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
            a((String) obj, (String) obj2, ((Boolean) obj3).booleanValue(), (String) obj4);
            return Unit.f64096a;
        }
    }

    public static final class b implements g {
        b() {
        }

        @Override
        public void a(String clientIp, String clientDeviceName) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(clientDeviceName, "clientDeviceName");
            k.this.f53685c.n(clientDeviceName);
            g gVar = k.this.f53689g;
            if (gVar != null) {
                gVar.a(clientIp, clientDeviceName);
            }
        }

        @Override
        public String b() {
            return k.this.q();
        }
    }

    public static final class c implements i {
        c() {
        }

        @Override
        public void L(String clientIp, String remoteFilePath, TaskState state, long j10, long j11) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Intrinsics.h(state, "state");
            k.this.f53686d.n(new Triple(clientIp, remoteFilePath, new Triple(state, Long.valueOf(j10), Long.valueOf(j11))));
        }

        @Override
        public void d(String clientIp) {
            Intrinsics.h(clientIp, "clientIp");
            k.this.f53688f.n(clientIp);
        }

        @Override
        public void j(String clientIp, String remoteFilePath, long j10, long j11) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            k.this.f53686d.n(new Triple(clientIp, remoteFilePath, new Triple(TaskState.TRANSFERRING, Long.valueOf(j10), Long.valueOf(j11))));
        }

        @Override
        public void o(String clientIp) {
            Intrinsics.h(clientIp, "clientIp");
        }

        @Override
        public void p(String clientIp, List files) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(files, "files");
            k.this.f53687e.n(new Pair(clientIp, files));
        }

        @Override
        public void r(String clientIp) {
            Intrinsics.h(clientIp, "clientIp");
            k.this.f53684b.n(new Pair(clientIp, Boolean.FALSE));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f53684b = new androidx.p009lifecycle.b0();
        this.f53685c = new androidx.p009lifecycle.b0();
        this.f53686d = new au.b();
        this.f53687e = new au.b();
        this.f53688f = new androidx.p009lifecycle.b0();
        this.f53690h = new b();
        this.f53691i = new a();
        this.f53692j = new c();
    }

    public final String q() {
        String MODEL = Build.MODEL;
        Intrinsics.g(MODEL, "MODEL");
        return MODEL;
    }

    public final void A() {
        h hVarB = zt.h.f76907s.b(b());
        hVarB.e(this.f53690h);
        hVarB.a(this.f53692j);
        hVarB.b(this.f53691i);
        hVarB.open();
        cu.b.f58655a.r();
    }

    public final void B(g gVar) {
        this.f53689g = gVar;
    }

    public final void C() {
        h hVarB = zt.h.f76907s.b(b());
        hVarB.e(this.f53690h);
        hVarB.a(this.f53692j);
        hVarB.b(this.f53691i);
        hVarB.d();
    }

    public final boolean j() {
        h hVarB = zt.h.f76907s.b(b());
        hVarB.e(this.f53690h);
        hVarB.a(this.f53692j);
        hVarB.b(this.f53691i);
        return !hVarB.c().isEmpty();
    }

    public final LiveData k() {
        return this.f53685c;
    }

    public final List l() {
        h hVarB = zt.h.f76907s.b(b());
        hVarB.e(this.f53690h);
        hVarB.a(this.f53692j);
        hVarB.b(this.f53691i);
        return hVarB.c();
    }

    public final List m() {
        h hVarB = zt.h.f76907s.b(b());
        hVarB.e(this.f53690h);
        hVarB.a(this.f53692j);
        hVarB.b(this.f53691i);
        return hVarB.i();
    }

    public final LiveData n() {
        return this.f53688f;
    }

    public final LiveData o() {
        return this.f53684b;
    }

    @Override
    protected void onCleared() {
        super.onCleared();
        zt.h.a aVar = zt.h.f76907s;
        aVar.b(b()).g(this.f53692j);
        aVar.b(b()).h(this.f53691i);
        aVar.b(b()).e(null);
    }

    public final String p() {
        h hVarB = zt.h.f76907s.b(b());
        hVarB.e(this.f53690h);
        hVarB.a(this.f53692j);
        hVarB.b(this.f53691i);
        List listI = hVarB.i();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getCurClientName: getCurClientName:");
        sb2.append(listI);
        if (listI.isEmpty()) {
            return null;
        }
        return (String) listI.get(0);
    }

    public final Function4 r() {
        return this.f53691i;
    }

    public final int s() {
        return eu.b.f59817a.f().size();
    }

    public final String t() {
        h hVarB = zt.h.f76907s.b(b());
        hVarB.e(this.f53690h);
        hVarB.b(this.f53691i);
        return hVarB.j();
    }

    public final LiveData u() {
        return this.f53687e;
    }

    public final LiveData v() {
        return this.f53686d;
    }

    public final int w() {
        eu.b bVar = eu.b.f59817a;
        return bVar.g().size() + bVar.h().size();
    }

    public final void x() {
        h hVarB = zt.h.f76907s.b(b());
        hVarB.e(this.f53690h);
        hVarB.a(this.f53692j);
        hVarB.b(this.f53691i);
    }

    public final boolean y() {
        h hVarB = zt.h.f76907s.b(b());
        hVarB.e(this.f53690h);
        hVarB.b(this.f53691i);
        return hVarB.isRunning();
    }

    public final void z(int i10) {
        zt.h.a aVar = zt.h.f76907s;
        List listC = aVar.b(b()).c();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("notifyClientCMD: clientIps:");
        sb2.append(listC);
        if (listC.isEmpty()) {
            return;
        }
        h hVarB = aVar.b(b());
        hVarB.e(this.f53690h);
        hVarB.a(this.f53692j);
        hVarB.b(this.f53691i);
        hVarB.f((String) listC.get(0), i10);
    }
}
