package com.transsion.transfer.impl.server.service;

import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.i;
import kotlin.Triple;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g implements q {

    public static final a f53743c = new a(null);

    private static final String f53744d = "Transfer-" + g.class.getName();

    private final com.transsion.transfer.impl.g f53745a;

    private i f53746b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public g(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f53745a = fileHandler;
        this.f53746b = listener;
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
            this.f53746b.o(str);
            String strA = aVar.a(0, "noitfy server task finish success", "");
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
