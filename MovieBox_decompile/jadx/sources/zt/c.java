package zt;

import com.google.gson.Gson;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.i;
import com.transsion.transfer.impl.server.service.NotifyFileErrorService;
import com.transsion.transfer.impl.server.service.NotifyFileFinishService;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Triple;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final a f76890d = new a(null);

    private static final String f76891e = c.class.getName();

    private static final Lazy f76892f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return c.f();
        }
    });

    private final com.transsion.transfer.impl.g f76893a;

    private i f76894b;

    private final Lazy f76895c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Gson b() {
            return (Gson) c.f76892f.getValue();
        }

        public final String a(int i10, String errorMsg, Object obj) {
            Intrinsics.h(errorMsg, "errorMsg");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("code", Integer.valueOf(i10));
            linkedHashMap.put("errorMsg", errorMsg);
            if (obj == null) {
                linkedHashMap.put("data", "");
            } else {
                linkedHashMap.put("data", obj);
            }
            String json = b().toJson(linkedHashMap);
            Intrinsics.e(json);
            return json;
        }

        public final Triple c(Headers headers) {
            String strC;
            String strC2;
            String strC3;
            String str = "";
            if (headers == null || (strC = headers.c("transferId")) == null) {
                strC = "";
            }
            int i10 = (headers == null || (strC3 = headers.c("transferProtocolVersion")) == null) ? 1 : Integer.parseInt(strC3);
            if (headers != null && (strC2 = headers.c("clientIp")) != null) {
                str = strC2;
            }
            return new Triple(strC, Integer.valueOf(i10), str);
        }

        private a() {
        }
    }

    public static final class b {

        public static final a f76896d = new a(null);

        private final String f76897a;

        private final String f76898b;

        private final q f76899c;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public b(String method, String path, q requestCallback) {
            Intrinsics.h(method, "method");
            Intrinsics.h(path, "path");
            Intrinsics.h(requestCallback, "requestCallback");
            this.f76897a = method;
            this.f76898b = path;
            this.f76899c = requestCallback;
        }

        public final String a() {
            return this.f76897a;
        }

        public final String b() {
            return this.f76898b;
        }

        public final q c() {
            return this.f76899c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f76897a, bVar.f76897a) && Intrinsics.c(this.f76898b, bVar.f76898b) && Intrinsics.c(this.f76899c, bVar.f76899c);
        }

        public int hashCode() {
            return (((this.f76897a.hashCode() * 31) + this.f76898b.hashCode()) * 31) + this.f76899c.hashCode();
        }

        public String toString() {
            return "Service(method=" + this.f76897a + ", path=" + this.f76898b + ", requestCallback=" + this.f76899c + ")";
        }
    }

    public c(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f76893a = fileHandler;
        this.f76894b = listener;
        this.f76895c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return c.g(this.f76889a);
            }
        });
    }

    private final List d() {
        return (List) this.f76895c.getValue();
    }

    public static final Gson f() {
        return new Gson();
    }

    public static final List g(c cVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b("get", "/client/getTransferFilesList", new com.transsion.transfer.impl.server.service.b(cVar.f76893a, cVar.f76894b)));
        arrayList.add(new b("get", "/client/fetchFile*", new com.transsion.transfer.impl.server.service.a(cVar.f76893a, cVar.f76894b)));
        arrayList.add(new b("get", "/client/notifyServerCreate", new com.transsion.transfer.impl.server.service.d(cVar.f76893a, cVar.f76894b)));
        arrayList.add(new b("get", "/client/notifyClientClose", new com.transsion.transfer.impl.server.service.c(cVar.f76893a, cVar.f76894b)));
        arrayList.add(new b("get", "/client/notifyServerSendComplete", new com.transsion.transfer.impl.server.service.g(cVar.f76893a, cVar.f76894b)));
        arrayList.add(new b("post", "/client/notifyFileTaskFinish", new NotifyFileFinishService(cVar.f76893a, cVar.f76894b)));
        arrayList.add(new b("post", "/client/notifyFileTaskError", new NotifyFileErrorService(cVar.f76893a, cVar.f76894b)));
        return arrayList;
    }

    public final List e() {
        return d();
    }
}
