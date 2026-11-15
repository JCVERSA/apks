package com.transsion.transfer.impl.server.service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.entity.FileData;
import com.transsion.transfer.impl.i;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class NotifyFileErrorService implements q {

    public static final a f53711d = new a(null);

    private static final String f53712e = "Transfer-" + NotifyFileErrorService.class.getName();

    private final com.transsion.transfer.impl.g f53713a;

    private i f53714b;

    private final Lazy f53715c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public NotifyFileErrorService(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f53713a = fileHandler;
        this.f53714b = listener;
        this.f53715c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return NotifyFileErrorService.d();
            }
        });
    }

    private final Gson c() {
        return (Gson) this.f53715c.getValue();
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
            List<Pair> list = (List) c().fromJson(fVar != null ? fVar.a() : null, new TypeToken<List<Pair<? extends String, ? extends Integer>>>() {
            }.getType());
            Intrinsics.e(list);
            for (Pair pair : list) {
                this.f53714b.L(str, (String) pair.getFirst(), FileData.INSTANCE.b(((Number) pair.getSecond()).intValue()), 0L, 0L);
            }
            String strA = zt.c.f76890d.a(0, "notify File Task change", "");
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
