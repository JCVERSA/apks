package com.transsion.transfer.androidasync.http;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.IOException;

public class v extends a0 {

    class a implements st.a {

        final st.a f53448a;

        final com.transsion.transfer.androidasync.n f53449b;

        a(st.a aVar, com.transsion.transfer.androidasync.n nVar) {
            this.f53448a = aVar;
            this.f53449b = nVar;
        }

        @Override
        public void g(Exception exc) {
            com.transsion.transfer.androidasync.a0.b(this.f53448a, exc);
            com.transsion.transfer.androidasync.n nVar = this.f53449b;
            if (nVar != null) {
                nVar.g(false);
                this.f53449b.o(0);
            }
        }
    }

    class b implements com.transsion.transfer.androidasync.v.a {

        Headers f53451a = new Headers();

        String f53452b;

        final g.c f53453c;

        b(g.c cVar) {
            this.f53453c = cVar;
        }

        @Override
        public void a(String str) {
            try {
                String strTrim = str.trim();
                if (this.f53452b == null) {
                    this.f53452b = strTrim;
                    return;
                }
                if (!TextUtils.isEmpty(strTrim)) {
                    this.f53451a.b(strTrim);
                    return;
                }
                String[] strArrSplit = this.f53452b.split(" ", 3);
                if (strArrSplit.length < 2) {
                    throw new Exception(new IOException("Not HTTP"));
                }
                this.f53453c.f53285g.v(this.f53451a);
                String str2 = strArrSplit[0];
                this.f53453c.f53285g.m(str2);
                this.f53453c.f53285g.c(Integer.parseInt(strArrSplit[1]));
                this.f53453c.f53285g.r(strArrSplit.length == 3 ? strArrSplit[2] : "");
                this.f53453c.f53287i.g(null);
                com.transsion.transfer.androidasync.j jVarSocket = this.f53453c.f53285g.socket();
                if (jVarSocket == null) {
                    return;
                }
                com.transsion.transfer.androidasync.p pVarC = (this.f53453c.f53289b.q() && !v.i(this.f53453c.f53285g.b())) ? HttpUtil.c(jVarSocket, Protocol.get(str2), this.f53451a, false) : HttpUtil.EndEmitter.P(jVarSocket.a(), null);
                this.f53453c.f53285g.o(pVarC);
            } catch (Exception e10) {
                this.f53453c.f53287i.g(e10);
            }
        }
    }

    static boolean i(int i10) {
        return (i10 >= 100 && i10 <= 199) || i10 == 204 || i10 == 304;
    }

    @Override
    public void c(g.f fVar) {
        Protocol protocol = Protocol.get(fVar.f53282e);
        if ((protocol == null || protocol == Protocol.HTTP_1_0 || protocol == Protocol.HTTP_1_1) && (fVar.f53285g.E() instanceof vt.a)) {
            fVar.f53285g.E().d();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public boolean f(g.c cVar) {
        com.transsion.transfer.androidasync.n nVar;
        com.transsion.transfer.androidasync.s sVar;
        Protocol protocol = Protocol.get(cVar.f53282e);
        if (protocol != null && protocol != Protocol.HTTP_1_0 && protocol != Protocol.HTTP_1_1) {
            return super.f(cVar);
        }
        j jVar = cVar.f53289b;
        tt.a aVarE = jVar.e();
        if (aVarE != null) {
            if (aVarE.length() >= 0) {
                jVar.h().f(HttpHeaders.CONTENT_LENGTH, String.valueOf(aVarE.length()));
                cVar.f53285g.f(cVar.f53284f);
            } else if ("close".equals(jVar.h().c("Connection"))) {
                cVar.f53285g.f(cVar.f53284f);
            } else {
                jVar.h().f("Transfer-Encoding", "Chunked");
                cVar.f53285g.f(new vt.a(cVar.f53284f));
            }
        }
        String strG = jVar.h().g(jVar.n().toString());
        byte[] bytes = strG.getBytes();
        if (aVarE == null || aVarE.length() < 0 || aVarE.length() + bytes.length >= 1024) {
            nVar = null;
            sVar = cVar.f53284f;
        } else {
            com.transsion.transfer.androidasync.n nVar2 = new com.transsion.transfer.androidasync.n(cVar.f53285g.E());
            nVar2.g(true);
            cVar.f53285g.f(nVar2);
            nVar = nVar2;
            sVar = nVar2;
        }
        jVar.u("\n" + strG);
        com.transsion.transfer.androidasync.a0.h(sVar, bytes, new a(cVar.f53286h, nVar));
        b bVar = new b(cVar);
        com.transsion.transfer.androidasync.v vVar = new com.transsion.transfer.androidasync.v();
        cVar.f53284f.F(vVar);
        vVar.a(bVar);
        return true;
    }
}
