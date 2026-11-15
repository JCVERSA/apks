package com.transsion.transfer.impl.server.service;

import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.i;
import kotlin.Triple;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d implements q {

    public static final a f53739c = new a(null);

    private static final String f53740d = "Transfer-" + d.class.getName();

    private final com.transsion.transfer.impl.g f53741a;

    private i f53742b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public d(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f53741a = fileHandler;
        this.f53742b = listener;
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
            this.f53742b.d(str);
            String strA = aVar.a(0, "noitfy cliente server create success", "");
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
