package com.transsion.transfer.impl.server.service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.i;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Triple;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class NotifyFileFinishService implements q {

    public static final a f53716d = new a(null);

    private static final String f53717e = "Transfer-" + NotifyFileFinishService.class.getName();

    private final com.transsion.transfer.impl.g f53718a;

    private i f53719b;

    private final Lazy f53720c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public NotifyFileFinishService(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f53718a = fileHandler;
        this.f53719b = listener;
        this.f53720c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return NotifyFileFinishService.d();
            }
        });
    }

    private final Gson c() {
        return (Gson) this.f53720c.getValue();
    }

    public static final Gson d() {
        return new Gson();
    }

    @Override
    public void b(com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
        try {
            zt.c.a aVar = zt.c.f76890d;
            Triple tripleC = aVar.c(bVar != null ? bVar.getHeaders() : null);
            int iIntValue = ((Number) tripleC.getSecond()).intValue();
            String str = (String) tripleC.getThird();
            if (iIntValue < 1) {
                if (dVar != null) {
                    dVar.send(aVar.a(-1, "protocol version compatible error", ""));
                    return;
                }
                return;
            }
            tt.f fVar = bVar != null ? (tt.f) bVar.z() : null;
            if (!(fVar instanceof tt.f)) {
                fVar = null;
            }
            List list = (List) c().fromJson(fVar != null ? fVar.a() : null, new TypeToken<List<String>>() {
            }.getType());
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    File file = new File((String) it.next());
                    if (file.exists()) {
                        i iVar = this.f53719b;
                        String absolutePath = file.getAbsolutePath();
                        Intrinsics.g(absolutePath, "getAbsolutePath(...)");
                        iVar.L(str, absolutePath, TaskState.FINISH, file.length(), file.length());
                    }
                }
            }
            String strA = zt.c.f76890d.a(0, "noitfy server success", "");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("createResponseJsonObj: ");
            sb2.append(strA);
            if (dVar != null) {
                dVar.send(strA);
            }
        } catch (Exception e10) {
            if (dVar != null) {
                dVar.send(zt.c.f76890d.a(500, "server error:" + e10.getMessage(), ""));
            }
        }
    }
}
