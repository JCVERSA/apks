package com.transsion.transfer.impl.server.service;

import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.entity.FileData;
import com.transsion.transfer.impl.i;
import java.util.Iterator;
import java.util.List;
import kotlin.Triple;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b implements q {

    public static final a f53731c = new a(null);

    private static final String f53732d = "Transfer-" + b.class.getName();

    private final com.transsion.transfer.impl.g f53733a;

    private i f53734b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return b.f53732d;
        }

        private a() {
        }
    }

    public b(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f53733a = fileHandler;
        this.f53734b = listener;
    }

    @Override
    public void b(com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
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
        List listD = eu.b.f59817a.d();
        String strA = aVar.a(0, "", listD);
        Iterator it = listD.iterator();
        while (it.hasNext()) {
            String fileRemotePath = ((FileData) it.next()).getFileRemotePath();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onRequest: ");
            sb2.append(fileRemotePath);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("createResponseJsonObj: ");
        sb3.append(strA);
        if (dVar != null) {
            dVar.send(strA);
        }
        this.f53734b.p(str, listD);
    }
}
