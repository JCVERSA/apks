package com.transsion.transfer.impl.server.service;

import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.i;
import kotlin.Triple;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c implements q {

    public static final a f53735c = new a(null);

    private static final String f53736d = "Transfer-" + c.class.getName();

    private final com.transsion.transfer.impl.g f53737a;

    private i f53738b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f53737a = fileHandler;
        this.f53738b = listener;
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
            String strA = aVar.a(0, "noitfy client close success", "");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("createResponseJsonObj: ");
            sb2.append(strA);
            if (dVar != null) {
                dVar.send(strA);
            }
            this.f53738b.r(str);
        } catch (Exception e10) {
            if (dVar != null) {
                dVar.send(zt.c.f76890d.a(500, "server error:" + e10.getMessage(), ""));
            }
        }
    }
}
