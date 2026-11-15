package zt;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.http.b0;
import com.transsion.transfer.androidasync.http.server.AsyncHttpServer;
import com.transsion.transfer.impl.PingPongHelper;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.entity.FileData;
import com.transsion.transfer.impl.i;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class h implements com.transsion.transfer.impl.h {

    public static final a f76907s = new a(null);

    private static final String f76908t = h.class.getName();

    private static volatile com.transsion.transfer.impl.h f76909u;

    private final Context f76910a;

    private boolean f76911b;

    private String f76912c;

    private com.transsion.transfer.impl.g f76913d;

    private boolean f76914e;

    private final Handler f76915f;

    private d f76916g;

    private final AsyncHttpServer f76917h;

    private final CopyOnWriteArrayList f76918i;

    private final CopyOnWriteArrayList f76919j;

    private final Lazy f76920k;

    private final PingPongHelper.a f76921l;

    private final Runnable f76922m;

    private final ConcurrentHashMap f76923n;

    private final ConcurrentHashMap f76924o;

    private final ConcurrentHashMap f76925p;

    private final ConcurrentHashMap f76926q;

    private final CopyOnWriteArrayList f76927r;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            com.transsion.transfer.impl.h hVar = h.f76909u;
            if (hVar != null) {
                hVar.d();
            }
            h.f76909u = null;
        }

        public final com.transsion.transfer.impl.h b(Context context) {
            Intrinsics.h(context, "context");
            com.transsion.transfer.impl.h hVar = h.f76909u;
            if (hVar == null) {
                synchronized (this) {
                    hVar = new h(context, null);
                    h.f76909u = hVar;
                }
            }
            return hVar;
        }

        private a() {
        }
    }

    public static final class b implements i {
        b() {
        }

        @Override
        public void L(String clientIp, String remoteFilePath, TaskState state, long j10, long j11) {
            Object obj;
            Object next;
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Intrinsics.h(state, "state");
            Iterator it = eu.b.f59817a.d().iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(remoteFilePath, ((FileData) next).getFileRemotePath()));
            FileData fileData = (FileData) next;
            if (fileData != null) {
                h hVar = h.this;
                if (fileData.getState() != 5 && fileData.getState() != 6 && fileData.getState() != 3 && fileData.getState() != 4) {
                    fileData.setState(FileData.INSTANCE.a(state));
                    fileData.setDownloadSize(j10);
                    fileData.setFileSize(j11);
                }
                Iterator it2 = hVar.f76918i.iterator();
                while (it2.hasNext()) {
                    ((i) it2.next()).L(clientIp, remoteFilePath, state, j10, j11);
                }
            }
            for (Object obj2 : eu.b.f59817a.d()) {
                if (Intrinsics.c(remoteFilePath, ((FileData) obj2).getCoverUrl())) {
                    obj = obj2;
                    break;
                }
            }
            if (((FileData) obj) != null) {
                Iterator it3 = h.this.f76918i.iterator();
                while (it3.hasNext()) {
                    ((i) it3.next()).L(clientIp, remoteFilePath, state, j10, j11);
                }
            }
        }

        @Override
        public void d(String clientIp) {
            Intrinsics.h(clientIp, "clientIp");
            Iterator it = h.this.f76918i.iterator();
            while (it.hasNext()) {
                ((i) it.next()).d(clientIp);
            }
        }

        @Override
        public void j(String clientIp, String remoteFilePath, long j10, long j11) {
            Object next;
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Iterator it = eu.b.f59817a.d().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((FileData) next).getFileRemotePath(), remoteFilePath));
            FileData fileData = (FileData) next;
            if (fileData != null) {
                fileData.setState(2);
                fileData.setDownloadSize(j10);
                fileData.setFileSize(j11);
            }
            Iterator it2 = h.this.f76918i.iterator();
            while (it2.hasNext()) {
                ((i) it2.next()).j(clientIp, remoteFilePath, j10, j11);
            }
        }

        @Override
        public void o(String clientIp) {
            Object next;
            Intrinsics.h(clientIp, "clientIp");
            Iterator it = h.this.f76918i.iterator();
            while (it.hasNext()) {
                ((i) it.next()).o(clientIp);
            }
            Iterator it2 = eu.b.f59817a.d().iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (((FileData) next).getState() != 2);
            FileData fileData = (FileData) next;
            if (fileData != null) {
                fileData.setState(4);
            }
        }

        @Override
        public void p(String clientIp, List files) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(files, "files");
            Iterator it = h.this.f76918i.iterator();
            while (it.hasNext()) {
                ((i) it.next()).p(clientIp, files);
            }
        }

        @Override
        public void r(String clientIp) {
            Intrinsics.h(clientIp, "clientIp");
            for (FileData fileData : eu.b.f59817a.d()) {
                if (fileData.getState() != 4 && fileData.getState() != 3 && fileData.getState() != 7) {
                    fileData.setState(5);
                }
            }
            b0 b0Var = (b0) h.this.f76923n.get(clientIp);
            if (b0Var != null) {
                b0Var.close();
            }
            Iterator it = h.this.f76918i.iterator();
            while (it.hasNext()) {
                ((i) it.next()).r(clientIp);
            }
        }
    }

    public static final class c implements PingPongHelper.a {
        c() {
        }

        @Override
        public void a(String remoteIp, b0 socket) {
            Intrinsics.h(remoteIp, "remoteIp");
            Intrinsics.h(socket, "socket");
            String unused = h.f76908t;
            int iHashCode = h.this.hashCode();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("server detach socket has closed, clientIp: ");
            sb2.append(remoteIp);
            sb2.append(", ");
            sb2.append(iHashCode);
            sb2.append(", delay check again");
            if (h.this.f76914e) {
                h.this.f76927r.add(remoteIp);
                h.this.f76915f.postDelayed(h.this.f76922m, 3000L);
            }
        }
    }

    public static final class d implements com.transsion.transfer.impl.g {
        d() {
        }

        @Override
        public void a(String clientIp, String clientDeviceName) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(clientDeviceName, "clientDeviceName");
            String unused = h.f76908t;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("notifyClientInfoUpdate:clientIp:");
            sb2.append(clientIp);
            sb2.append(", clientDeviceName:");
            sb2.append(clientDeviceName);
            com.transsion.transfer.impl.g gVar = h.this.f76913d;
            if (gVar != null) {
                gVar.a(clientIp, clientDeviceName);
            }
        }

        @Override
        public String b() {
            String strB;
            com.transsion.transfer.impl.g gVar = h.this.f76913d;
            if (gVar != null && (strB = gVar.b()) != null) {
                return strB;
            }
            String MODEL = Build.MODEL;
            Intrinsics.g(MODEL, "MODEL");
            return MODEL;
        }
    }

    public h(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private final zt.c A() {
        return (zt.c) this.f76920k.getValue();
    }

    private final void B(String str) throws UnsupportedEncodingException {
        b0 b0Var = (b0) this.f76923n.get(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("notifyClientCMD: clientIp:");
        sb2.append(str);
        sb2.append(" , socket:");
        sb2.append(b0Var);
        if (b0Var != null) {
            b0Var.send("cmd=-2?deviceName=" + au.a.b(this.f76916g.b()));
        }
    }

    public static final void C(final h hVar, final b0 b0Var, com.transsion.transfer.androidasync.http.server.b bVar) throws UnsupportedEncodingException {
        b0 b0Var2;
        final String string = bVar.j().getString("clientIp");
        final String string2 = bVar.j().getString("transferId");
        Intrinsics.e(string2);
        hVar.f76912c = string2;
        String string3 = bVar.j().getString("deviceName");
        Intrinsics.g(string3, "getString(...)");
        String strA = au.a.a(string3);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("find client connect, clientIp:");
        sb2.append(string);
        sb2.append(", clientDeviceName");
        sb2.append(strA);
        sb2.append(", transferId:");
        sb2.append(string2);
        int size = hVar.f76923n.size();
        ConcurrentHashMap concurrentHashMap = hVar.f76923n;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("find client connect, clientSocketMap: ");
        sb3.append(size);
        sb3.append(", ");
        sb3.append(concurrentHashMap);
        hVar.f76927r.remove(string);
        hVar.f76914e = true;
        hVar.f76915f.removeCallbacks(hVar.f76922m);
        if (hVar.f76923n.contains(string) && (b0Var2 = (b0) hVar.f76923n.remove(string)) != null) {
            PingPongHelper.a aVar = (PingPongHelper.a) hVar.f76925p.remove(b0Var2);
            if (aVar != null) {
                Intrinsics.e(string);
                aVar.a(string, b0Var2);
            }
            b0Var2.close();
        }
        int size2 = hVar.f76919j.size();
        CopyOnWriteArrayList copyOnWriteArrayList = hVar.f76919j;
        StringBuilder sb4 = new StringBuilder();
        sb4.append("find client connect, clientConnectListeners:");
        sb4.append(size2);
        sb4.append(", ");
        sb4.append(copyOnWriteArrayList);
        sb4.append(" , ");
        sb4.append(hVar);
        for (Function4 function4 : hVar.f76919j) {
            Intrinsics.e(string);
            Intrinsics.e(string2);
            function4.invoke(string, string2, Boolean.TRUE, null);
        }
        hVar.f76924o.put(string, strA);
        hVar.f76923n.put(string, b0Var);
        d dVar = hVar.f76916g;
        StringBuilder sb5 = new StringBuilder();
        sb5.append("find client connect, proxyFileHandler:");
        sb5.append(dVar);
        d dVar2 = hVar.f76916g;
        Intrinsics.e(string);
        dVar2.a(string, strA);
        ConcurrentHashMap concurrentHashMap2 = hVar.f76926q;
        Intrinsics.e(b0Var);
        PingPongHelper pingPongHelper = new PingPongHelper(string, true, b0Var, hVar.f76921l);
        pingPongHelper.n();
        concurrentHashMap2.put(b0Var, pingPongHelper);
        b0Var.i(new st.a() {
            @Override
            public final void g(Exception exc) {
                h.D(string, hVar, b0Var, string2, exc);
            }
        });
        hVar.B(string);
        hVar.f76911b = true;
    }

    public static final void D(String str, h hVar, b0 b0Var, String str2, Exception exc) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("server socket close callback ip: ");
        sb2.append(str);
        PingPongHelper.a aVar = hVar.f76921l;
        Intrinsics.e(str);
        Intrinsics.e(b0Var);
        aVar.a(str, b0Var);
        for (Function4 function4 : hVar.f76919j) {
            Intrinsics.e(str2);
            function4.invoke(str, str2, Boolean.FALSE, "normal");
        }
    }

    public static final void y(h hVar) {
        if (hVar.f76927r.isEmpty()) {
            return;
        }
        for (i iVar : hVar.f76918i) {
            String str = (String) CollectionsKt.i0(hVar.f76927r);
            if (str == null) {
                str = "";
            }
            iVar.r(str);
        }
        f76907s.a();
        hVar.f76914e = false;
    }

    public static final zt.c z(h hVar) {
        return new zt.c(hVar.f76916g, hVar.new b());
    }

    @Override
    public void a(i listener) {
        Intrinsics.h(listener, "listener");
        this.f76918i.remove(listener);
        this.f76918i.add(listener);
    }

    @Override
    public void b(Function4 listener) {
        Intrinsics.h(listener, "listener");
        this.f76919j.remove(listener);
        this.f76919j.add(listener);
    }

    @Override
    public List c() {
        Set setKeySet = this.f76923n.keySet();
        Intrinsics.g(setKeySet, "<get-keys>(...)");
        return CollectionsKt.U0(CollectionsKt.R0(setKeySet));
    }

    @Override
    public void d() {
        for (Map.Entry entry : this.f76923n.entrySet()) {
            ((b0) entry.getValue()).send("cmd=-1");
            ((b0) entry.getValue()).close();
        }
        this.f76923n.clear();
        this.f76924o.clear();
        this.f76925p.clear();
        for (Map.Entry entry2 : this.f76926q.entrySet()) {
            ((b0) entry2.getKey()).close();
            ((PingPongHelper) entry2.getValue()).o();
        }
        this.f76926q.clear();
        this.f76919j.clear();
        AsyncServer.r().L();
        this.f76917h.u();
        this.f76911b = false;
    }

    @Override
    public void e(com.transsion.transfer.impl.g gVar) {
        this.f76913d = gVar;
    }

    @Override
    public void f(String clientIp, int i10) {
        Intrinsics.h(clientIp, "clientIp");
        b0 b0Var = (b0) this.f76923n.get(clientIp);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("notifyClientCMD: clientIp:");
        sb2.append(clientIp);
        sb2.append(" , socket:");
        sb2.append(b0Var);
        sb2.append(", cmd:");
        sb2.append(i10);
        if (b0Var != null) {
            b0Var.send("cmd=" + i10);
        }
    }

    @Override
    public void g(i listener) {
        Intrinsics.h(listener, "listener");
        this.f76918i.remove(listener);
    }

    @Override
    public void h(Function4 listener) {
        Intrinsics.h(listener, "listener");
        this.f76919j.remove(listener);
    }

    @Override
    public List i() {
        Collection collectionValues = this.f76924o.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        return CollectionsKt.U0(CollectionsKt.R0(collectionValues));
    }

    @Override
    public boolean isRunning() {
        return this.f76911b;
    }

    @Override
    public String j() {
        return this.f76912c;
    }

    @Override
    public void open() {
        if (this.f76911b) {
            return;
        }
        for (zt.c.b bVar : A().e()) {
            String strA = bVar.a();
            String strB = bVar.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("open: ");
            sb2.append(strA);
            sb2.append(", ");
            sb2.append(strB);
            if (Intrinsics.c(bVar.a(), "get")) {
                this.f76917h.f(bVar.b(), bVar.c());
            } else if (Intrinsics.c(bVar.a(), "post")) {
                this.f76917h.i(bVar.b(), bVar.c());
            }
        }
        this.f76917h.o(AsyncServer.r(), 9890);
    }

    private h(Context context) {
        this.f76910a = context;
        this.f76912c = "";
        this.f76915f = new Handler(Looper.getMainLooper());
        this.f76916g = new d();
        AsyncHttpServer asyncHttpServer = new AsyncHttpServer();
        asyncHttpServer.j("/pingpong*", "socket_connect", new AsyncHttpServer.a() {
            @Override
            public final void a(b0 b0Var, com.transsion.transfer.androidasync.http.server.b bVar) throws UnsupportedEncodingException {
                h.C(this.f76900a, b0Var, bVar);
            }
        });
        this.f76917h = asyncHttpServer;
        this.f76918i = new CopyOnWriteArrayList();
        this.f76919j = new CopyOnWriteArrayList();
        this.f76920k = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return h.z(this.f76901a);
            }
        });
        this.f76921l = new c();
        this.f76922m = new Runnable() {
            @Override
            public final void run() {
                h.y(this.f76902a);
            }
        };
        this.f76923n = new ConcurrentHashMap();
        this.f76924o = new ConcurrentHashMap();
        this.f76925p = new ConcurrentHashMap();
        this.f76926q = new ConcurrentHashMap();
        this.f76927r = new CopyOnWriteArrayList();
    }
}
