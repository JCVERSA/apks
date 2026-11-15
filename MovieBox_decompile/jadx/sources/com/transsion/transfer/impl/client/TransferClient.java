package com.transsion.transfer.impl.client;

import android.os.Build;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.transfer.androidasync.http.AsyncHttpClient;
import com.transsion.transfer.androidasync.http.b0;
import com.transsion.transfer.impl.PingPongHelper;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.entity.FileData;
import com.transsion.transfer.impl.entity.TransferResponse;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class TransferClient implements com.transsion.transfer.impl.e {

    public static final a f53593t = new a(null);

    private static final String f53594u;

    private static volatile com.transsion.transfer.impl.e f53595v;

    private static String f53596w;

    private static String f53597x;

    private static String f53598y;

    private final String f53599a;

    private final String f53600b;

    private final String f53601c;

    private final Lazy f53602d;

    private final Lazy f53603e;

    private final Lazy f53604f;

    private final Lazy f53605g;

    private volatile b0 f53606h;

    private boolean f53607i;

    private final Lazy f53608j;

    private PingPongHelper f53609k;

    private final Lazy f53610l;

    private String f53611m;

    private Function3 f53612n;

    private boolean f53613o;

    private final PingPongHelper.a f53614p;

    private final b f53615q;

    private final CopyOnWriteArrayList f53616r;

    private final h f53617s;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final Unit f(Function0 function0) {
            if (function0 != null) {
                function0.invoke();
            }
            return Unit.f64096a;
        }

        private final String h() {
            return au.d.b(System.currentTimeMillis() + "&1000&" + Build.BRAND + UrlUtils.AND_MARK + Build.MODEL + UrlUtils.AND_MARK + Build.PRODUCT);
        }

        public static void m(a aVar, String str, String str2, String str3, Function0 function0, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                str3 = aVar.h();
            }
            aVar.l(str, str2, str3, function0);
        }

        public static final Unit n(Function0 function0) {
            function0.invoke();
            TransferClient.f53595v = null;
            return Unit.f64096a;
        }

        public final com.transsion.transfer.androidasync.http.h c(String url, String clientIp, String transferId) {
            Intrinsics.h(url, "url");
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(transferId, "transferId");
            com.transsion.transfer.androidasync.http.h hVar = new com.transsion.transfer.androidasync.http.h(url);
            hVar.c("clientIp", clientIp);
            hVar.c("transferId", transferId);
            hVar.c("transferProtocolVersion", "1");
            hVar.y(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
            return hVar;
        }

        public final com.transsion.transfer.androidasync.http.i d(String url, String clientIp, String transferId) {
            Intrinsics.h(url, "url");
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(transferId, "transferId");
            com.transsion.transfer.androidasync.http.i iVar = new com.transsion.transfer.androidasync.http.i(url);
            iVar.c("clientIp", clientIp);
            iVar.c("transferId", transferId);
            iVar.c("transferProtocolVersion", "1");
            iVar.y(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
            return iVar;
        }

        public final void e(final Function0 function0) {
            TransferClient.f53596w = null;
            TransferClient.f53597x = null;
            TransferClient.f53598y = null;
            eu.a.f59815a.b();
            if (TransferClient.f53595v == null) {
                if (function0 != null) {
                    function0.invoke();
                }
            } else {
                com.transsion.transfer.impl.e eVar = TransferClient.f53595v;
                if (eVar != null) {
                    eVar.c(new Function0() {
                        @Override
                        public final Object invoke() {
                            return TransferClient.a.f(function0);
                        }
                    });
                }
                TransferClient.f53595v = null;
            }
        }

        public final boolean g() {
            String str;
            String str2;
            String str3 = TransferClient.f53596w;
            if (str3 == null) {
                return false;
            }
            if (!(!(str3.length() == 0)) || (str = TransferClient.f53597x) == null) {
                return false;
            }
            if (!(!(str.length() == 0)) || (str2 = TransferClient.f53598y) == null) {
                return false;
            }
            return (str2.length() == 0) ^ true;
        }

        public final com.transsion.transfer.impl.e i() {
            com.transsion.transfer.impl.e transferClient = TransferClient.f53595v;
            if (transferClient == null) {
                synchronized (this) {
                    String str = TransferClient.f53596w;
                    Intrinsics.e(str);
                    String str2 = TransferClient.f53597x;
                    Intrinsics.e(str2);
                    String str3 = TransferClient.f53598y;
                    Intrinsics.e(str3);
                    transferClient = new TransferClient(str, str2, str3, null);
                    TransferClient.f53595v = transferClient;
                }
            }
            return transferClient;
        }

        public final String j() {
            return TransferClient.f53594u;
        }

        public final String k() {
            return TransferClient.f53598y;
        }

        public final void l(String serverIpNew, String clientIpNew, String transferIdNew, final Function0 callback) {
            Intrinsics.h(serverIpNew, "serverIpNew");
            Intrinsics.h(clientIpNew, "clientIpNew");
            Intrinsics.h(transferIdNew, "transferIdNew");
            Intrinsics.h(callback, "callback");
            TransferClient.f53596w = serverIpNew;
            TransferClient.f53597x = clientIpNew;
            TransferClient.f53598y = transferIdNew;
            if (TransferClient.f53595v == null) {
                callback.invoke();
                return;
            }
            com.transsion.transfer.impl.e eVar = TransferClient.f53595v;
            if (eVar != null) {
                eVar.c(new Function0() {
                    @Override
                    public final Object invoke() {
                        return TransferClient.a.n(callback);
                    }
                });
            }
        }

        private a() {
        }
    }

    public static final class b implements Function2 {
        b() {
        }

        public void a(List list, boolean z10) {
            Intrinsics.h(list, "list");
            TransferClient.this.o0(list);
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            a((List) obj, ((Boolean) obj2).booleanValue());
            return Unit.f64096a;
        }
    }

    public static final class c extends AsyncHttpClient.j {

        final Function0 f53619a;

        c(Function0 function0) {
            this.f53619a = function0;
        }

        @Override
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, String str) {
            this.f53619a.invoke();
            TransferClient.f53593t.j();
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCompleted: notifyServerClientClose ,");
            sb2.append(message);
        }
    }

    public static final class d extends AsyncHttpClient.j {

        final Function1 f53620a;

        d(Function1 function1) {
            this.f53620a = function1;
        }

        @Override
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, String str) {
            TransferClient.f53593t.j();
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCompleted: sendServerCreateNotify , e:");
            sb2.append(message);
            this.f53620a.invoke(exc);
        }
    }

    public static final class e extends AsyncHttpClient.j {
        e() {
        }

        @Override
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, String str) {
            TransferClient.f53593t.j();
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCompleted: notifyServerClientSpaceLimit ,");
            sb2.append(message);
        }
    }

    public static final class f extends AsyncHttpClient.j {

        final List f53621a;

        f(List list) {
            this.f53621a = list;
        }

        @Override
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, String str) {
            TransferClient.f53593t.j();
            List list = this.f53621a;
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCompleted: notifyServerTaskFinish:");
            sb2.append(list);
            sb2.append(" ,");
            sb2.append(message);
        }
    }

    public static final class g implements PingPongHelper.a {
        g() {
        }

        public static final Unit c(TransferClient transferClient, boolean z10, String error) {
            Intrinsics.h(error, "error");
            if (z10) {
                TransferClient.f53593t.j();
            } else {
                TransferClient.f53593t.j();
                transferClient.f53606h = null;
                transferClient.f53617s.N();
                transferClient.e0().q();
                transferClient.f53611m = null;
            }
            return Unit.f64096a;
        }

        @Override
        public void a(String remoteIp, b0 socket) throws UnsupportedEncodingException {
            Intrinsics.h(remoteIp, "remoteIp");
            Intrinsics.h(socket, "socket");
            TransferClient.f53593t.j();
            boolean z10 = TransferClient.this.f53613o;
            String str = TransferClient.this.f53599a;
            String str2 = TransferClient.this.f53600b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("client detach socket has closed, disconnectByUser:");
            sb2.append(z10);
            sb2.append(", serverIp: ");
            sb2.append(str);
            sb2.append(", clientIp: ");
            sb2.append(str2);
            sb2.append(", start auto connect");
            socket.close();
            PingPongHelper pingPongHelper = TransferClient.this.f53609k;
            if (pingPongHelper != null) {
                pingPongHelper.o();
            }
            TransferClient.this.f53609k = null;
            if (TransferClient.this.f53613o) {
                return;
            }
            final TransferClient transferClient = TransferClient.this;
            transferClient.W(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return TransferClient.g.c(transferClient, ((Boolean) obj).booleanValue(), (String) obj2);
                }
            });
        }
    }

    public static final class h implements com.transsion.transfer.impl.f {
        h() {
        }

        @Override
        public void C(String remoteFilePath, long j10, long j11) {
            Object next;
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Iterator it = eu.a.f59815a.d().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(remoteFilePath, ((FileData) next).getFileRemotePath()));
            FileData fileData = (FileData) next;
            if (fileData != null) {
                fileData.setState(2);
                fileData.setDownloadSize(j10);
                fileData.setFileSize(j11);
            }
            Iterator it2 = TransferClient.this.f53616r.iterator();
            while (it2.hasNext()) {
                ((com.transsion.transfer.impl.f) it2.next()).C(remoteFilePath, j10, j11);
            }
        }

        @Override
        public void J(String remoteFilePath, TaskState state, long j10, long j11, long j12, String str) {
            Object next;
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Intrinsics.h(state, "state");
            Iterator it = eu.a.f59815a.d().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(remoteFilePath, ((FileData) next).getFileRemotePath()));
            FileData fileData = (FileData) next;
            if (fileData != null && fileData.getState() != 5 && fileData.getState() != 6 && fileData.getState() != 3 && fileData.getState() != 4 && fileData.getState() != 7) {
                fileData.setState(FileData.INSTANCE.a(state));
                fileData.setDownloadSize(j10);
                fileData.setFileSize(j11);
            }
            Iterator it2 = TransferClient.this.f53616r.iterator();
            while (it2.hasNext()) {
                ((com.transsion.transfer.impl.f) it2.next()).J(remoteFilePath, state, j10, j11, j12, str);
            }
            if (state == TaskState.SPACE_LIMIT) {
                TransferClient.this.n0(remoteFilePath, 7);
            }
        }

        @Override
        public void N() {
            for (FileData fileData : eu.a.f59815a.d()) {
                if (fileData.getState() != 4 && fileData.getState() != 3 && fileData.getState() != 7) {
                    fileData.setState(5);
                }
            }
            Iterator it = TransferClient.this.f53616r.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.impl.f) it.next()).N();
            }
        }

        @Override
        public void l(int i10) {
            Iterator it = TransferClient.this.f53616r.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.impl.f) it.next()).l(i10);
            }
        }

        @Override
        public void q(String remoteFilePath) {
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Iterator it = TransferClient.this.f53616r.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.impl.f) it.next()).q(remoteFilePath);
            }
        }
    }

    static {
        String name = TransferClient.class.getName();
        Intrinsics.g(name, "getName(...)");
        f53594u = name;
    }

    public TransferClient(String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3);
    }

    public static final AsyncHttpClient S() {
        return AsyncHttpClient.w();
    }

    public static final n T(TransferClient transferClient) {
        AsyncHttpClient asyncHttpClientB0 = transferClient.b0();
        Intrinsics.g(asyncHttpClientB0, "<get-client>(...)");
        return new n(asyncHttpClientB0, transferClient.f53600b, transferClient.f53601c, transferClient.g0(), transferClient.f53617s);
    }

    public static final String U() {
        return Build.MODEL;
    }

    public static final Unit V(TransferClient transferClient, Function0 function0) {
        b0 b0Var = transferClient.f53606h;
        if (b0Var != null) {
            b0Var.close();
        }
        transferClient.f53607i = false;
        PingPongHelper pingPongHelper = transferClient.f53609k;
        if (pingPongHelper != null) {
            pingPongHelper.o();
        }
        function0.invoke();
        transferClient.e0().q();
        return Unit.f64096a;
    }

    public final void W(final Function2 function2) throws UnsupportedEncodingException {
        this.f53613o = false;
        AsyncHttpClient asyncHttpClientB0 = b0();
        String str = this.f53600b;
        String str2 = this.f53601c;
        String strD0 = d0();
        Intrinsics.g(strD0, "<get-deviceName>(...)");
        asyncHttpClientB0.L(h0("/pingpong?clientIp=" + str + "&transferId=" + str2 + "&deviceName=" + au.a.b(strD0)), "socket_connect", new AsyncHttpClient.k() {
            @Override
            public final void a(Exception exc, b0 b0Var) {
                TransferClient.X(this.f53632a, function2, exc, b0Var);
            }
        });
    }

    public static final void X(final TransferClient transferClient, Function2 function2, Exception exc, final b0 b0Var) {
        boolean z10 = false;
        transferClient.f53607i = false;
        if (exc == null) {
            transferClient.f53606h = b0Var;
            b0 b0Var2 = transferClient.f53606h;
            if (b0Var2 != null) {
                b0Var2.I(new b0.c() {
                    @Override
                    public final void a(String str) {
                        TransferClient.Y(this.f53634a, str);
                    }
                });
            }
            b0 b0Var3 = transferClient.f53606h;
            if (b0Var3 != null) {
                b0Var3.i(new st.a() {
                    @Override
                    public final void g(Exception exc2) {
                        TransferClient.Z(this.f53635a, b0Var, exc2);
                    }
                });
            }
            String str = transferClient.f53599a;
            Intrinsics.e(b0Var);
            PingPongHelper pingPongHelper = new PingPongHelper(str, false, b0Var, transferClient.f53614p);
            pingPongHelper.n();
            transferClient.f53609k = pingPongHelper;
        } else {
            exc.printStackTrace();
            String str2 = transferClient.f53599a;
            String message = exc.getMessage();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("serverIP:");
            sb2.append(str2);
            sb2.append(" connect error: ");
            sb2.append(message);
            sb2.append(" ");
        }
        if (exc == null && b0Var != null) {
            z10 = true;
        }
        Boolean boolValueOf = Boolean.valueOf(z10);
        String message2 = exc.getMessage();
        if (message2 == null) {
            message2 = "";
        }
        function2.invoke(boolValueOf, message2);
    }

    public static final void Y(TransferClient transferClient, String str) {
        Intrinsics.e(str);
        transferClient.j0(str);
    }

    public static final void Z(TransferClient transferClient, b0 b0Var, Exception exc) {
        PingPongHelper pingPongHelper = transferClient.f53609k;
        if (pingPongHelper != null) {
            pingPongHelper.o();
        }
        PingPongHelper.a aVar = transferClient.f53614p;
        String str = transferClient.f53599a;
        Intrinsics.e(b0Var);
        aVar.a(str, b0Var);
    }

    public static final o a0(TransferClient transferClient) {
        AsyncHttpClient asyncHttpClientB0 = transferClient.b0();
        Intrinsics.g(asyncHttpClientB0, "<get-client>(...)");
        return new o(asyncHttpClientB0, transferClient.f53600b, transferClient.f53601c, transferClient.g0(), transferClient.f53617s, transferClient.f53615q);
    }

    private final AsyncHttpClient b0() {
        return (AsyncHttpClient) this.f53603e.getValue();
    }

    private final n c0() {
        return (n) this.f53605g.getValue();
    }

    private final String d0() {
        return (String) this.f53602d.getValue();
    }

    public final o e0() {
        return (o) this.f53604f.getValue();
    }

    public final Gson f0() {
        return (Gson) this.f53608j.getValue();
    }

    private final String g0() {
        return (String) this.f53610l.getValue();
    }

    private final String h0(String str) {
        String str2 = g0() + str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getUrl baseUrl: ");
        sb2.append(str2);
        return str2;
    }

    public static final Gson i0() {
        return new Gson();
    }

    private final boolean j0(String str) {
        if (!StringsKt.W(str, "cmd", false, 2, null)) {
            return false;
        }
        try {
            List listS0 = StringsKt.S0(str, new String[]{UrlUtils.QUESTION_MARK}, false, 0, 6, null);
            int i10 = Integer.parseInt((String) StringsKt.S0((CharSequence) listS0.get(0), new String[]{UrlUtils.EQUAL_MARK}, false, 0, 6, null).get(1));
            List listS1 = listS0.size() > 1 ? StringsKt.S0((CharSequence) listS0.get(1), new String[]{UrlUtils.AND_MARK}, false, 0, 6, null) : new ArrayList();
            if (i10 < 0) {
                k0(i10, listS1);
            } else {
                this.f53617s.l(i10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return true;
    }

    private final void k0(int i10, List list) {
        b0 b0Var;
        if (i10 != -2) {
            if (i10 == -1 && (b0Var = this.f53606h) != null) {
                b0Var.close();
                return;
            }
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            List listS0 = StringsKt.S0((String) it.next(), new String[]{UrlUtils.EQUAL_MARK}, false, 0, 6, null);
            linkedHashMap.put(listS0.get(0), au.a.a((String) listS0.get(1)));
        }
        String str = (String) linkedHashMap.get("deviceName");
        this.f53611m = str;
        Function3 function3 = this.f53612n;
        if (function3 != null) {
            function3.invoke(str, Boolean.TRUE, "client");
        }
    }

    public static final String l0(TransferClient transferClient) {
        return "http://" + transferClient.f53599a + ":9890";
    }

    private final void m0(Function0 function0) {
        b0().v(f53593t.c(h0("/client/notifyClientClose"), this.f53600b, this.f53601c), new c(function0));
    }

    public final void n0(String str, int i10) {
        AsyncHttpClient asyncHttpClientB0 = b0();
        com.transsion.transfer.androidasync.http.i iVarD = f53593t.d(h0("/client/notifyFileTaskError"), this.f53600b, this.f53601c);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(str, Integer.valueOf(i10)));
        iVarD.w(new tt.f(f0().toJson(arrayList)));
        asyncHttpClientB0.v(iVarD, new e());
    }

    public final void o0(List list) {
        if (list.isEmpty()) {
            return;
        }
        AsyncHttpClient asyncHttpClientB0 = b0();
        com.transsion.transfer.androidasync.http.i iVarD = f53593t.d(h0("/client/notifyFileTaskFinish"), this.f53600b, this.f53601c);
        iVarD.w(new tt.f(f0().toJson(list)));
        asyncHttpClientB0.v(iVarD, new f(list));
    }

    @Override
    public void a(Function1 callback) {
        Intrinsics.h(callback, "callback");
        b0().v(f53593t.c(h0("/client/notifyServerCreate"), this.f53600b, this.f53601c), new d(callback));
    }

    @Override
    public void b(Function3 function3) {
        this.f53612n = function3;
    }

    @Override
    public void c(final Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.f53613o = true;
        m0(new Function0() {
            @Override
            public final Object invoke() {
                return TransferClient.V(this.f53630a, callback);
            }
        });
        this.f53616r.clear();
    }

    @Override
    public void d(Function2 listener) throws UnsupportedEncodingException {
        b0 b0Var;
        b0 b0Var2;
        Intrinsics.h(listener, "listener");
        if ((this.f53606h == null || (b0Var2 = this.f53606h) == null || !b0Var2.isOpen()) && !this.f53607i) {
            this.f53607i = true;
            W(listener);
            return;
        }
        b0 b0Var3 = this.f53606h;
        b0 b0Var4 = this.f53606h;
        Boolean boolValueOf = b0Var4 != null ? Boolean.valueOf(b0Var4.isOpen()) : null;
        boolean z10 = this.f53607i;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("connect: socket:");
        sb2.append(b0Var3);
        sb2.append(", socket#isOpen:");
        sb2.append(boolValueOf);
        sb2.append(", socketConnecting:");
        sb2.append(z10);
        listener.invoke(Boolean.valueOf((this.f53606h == null || (b0Var = this.f53606h) == null || !b0Var.isOpen()) ? false : true), "connect is process");
    }

    @Override
    public void e(final String root, final Function2 callback) {
        Intrinsics.h(root, "root");
        Intrinsics.h(callback, "callback");
        b0().v(f53593t.c(h0("/client/getTransferFilesList"), this.f53600b, this.f53601c), new AsyncHttpClient.j() {
            @Override
            public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, String str) {
                Object objM453constructorimpl;
                TransferClient.f53593t.j();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("fetchList onCompleted: result:");
                sb2.append(str);
                sb2.append(" and e:");
                sb2.append(exc);
                if (exc != null) {
                    callback.invoke(null, exc);
                    return;
                }
                TransferClient transferClient = this;
                Function2 function2 = callback;
                String str2 = root;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    TransferResponse transferResponse = (TransferResponse) transferClient.f0().fromJson(str, new TypeToken<TransferResponse<List<FileData>>>() {
                    }.getType());
                    if (transferResponse.getCode() == 0) {
                        for (FileData fileData : (Iterable) transferResponse.getData()) {
                            com.transsion.transfer.impl.server.service.b.f53731c.a();
                            String fileRemotePath = fileData.getFileRemotePath();
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("fetchList#onCompleted: ");
                            sb3.append(fileRemotePath);
                            if (fileData.getFileReceiveCachePath().length() == 0 || new File(fileData.getFileReceiveCachePath()).isDirectory()) {
                                String absolutePath = new File(str2, fileData.getFileName()).getAbsolutePath();
                                Intrinsics.g(absolutePath, "getAbsolutePath(...)");
                                fileData.setFileReceiveCachePath(absolutePath);
                            }
                        }
                        eu.a.f59815a.a((List) transferResponse.getData());
                        function2.invoke(transferResponse.getData(), null);
                    } else {
                        function2.invoke(null, null);
                    }
                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                Result.m452boximpl(objM453constructorimpl);
            }
        });
    }

    @Override
    public void f(FileData fileData) {
        Intrinsics.h(fileData, "fileData");
        e0().t(fileData);
    }

    @Override
    public void g(com.transsion.transfer.impl.f listener) {
        Intrinsics.h(listener, "listener");
        this.f53616r.remove(listener);
    }

    @Override
    public boolean h() {
        b0 b0Var = this.f53606h;
        return b0Var != null && b0Var.isOpen();
    }

    @Override
    public void i(String root, List files, Function1 notifyFileListener) {
        Intrinsics.h(root, "root");
        Intrinsics.h(files, "files");
        Intrinsics.h(notifyFileListener, "notifyFileListener");
        ArrayList arrayList = new ArrayList();
        c0().e(files);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : files) {
            FileData fileData = (FileData) obj;
            boolean zVerifyFile = fileData.verifyFile();
            if (zVerifyFile) {
                this.f53617s.J(fileData.getFileRemotePath(), TaskState.FINISH, fileData.getFileSize(), fileData.getFileSize(), -1L, null);
                arrayList.add(fileData.getFileRemotePath());
            }
            if (!zVerifyFile) {
                arrayList2.add(obj);
            }
        }
        List listU0 = CollectionsKt.U0(arrayList2);
        notifyFileListener.invoke(CollectionsKt.U0(arrayList));
        o0(arrayList);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("transferFiles: ");
        sb2.append(listU0);
        e0().p(listU0);
    }

    @Override
    public String j() {
        return this.f53611m;
    }

    @Override
    public void k(com.transsion.transfer.impl.f listener) {
        Intrinsics.h(listener, "listener");
        this.f53616r.remove(listener);
        this.f53616r.add(listener);
    }

    private TransferClient(String str, String str2, String str3) {
        this.f53599a = str;
        this.f53600b = str2;
        this.f53601c = str3;
        this.f53602d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TransferClient.U();
            }
        });
        this.f53603e = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TransferClient.S();
            }
        });
        this.f53604f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TransferClient.a0(this.f53627a);
            }
        });
        this.f53605g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TransferClient.T(this.f53628a);
            }
        });
        this.f53608j = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TransferClient.i0();
            }
        });
        this.f53610l = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TransferClient.l0(this.f53629a);
            }
        });
        this.f53614p = new g();
        this.f53615q = new b();
        this.f53616r = new CopyOnWriteArrayList();
        this.f53617s = new h();
    }
}
