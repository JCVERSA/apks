package com.doman.core.ig.manager;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import com.android.net.p;
import com.android.net.u;
import com.doman.core.CoreMain;
import com.doman.core.a.i;
import com.doman.core.b.a.e;
import com.doman.core.d.f;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

public class b implements com.doman.core.ig.proxy.c.a {
    private static b d;
    public long a;
    public String b;
    private com.doman.core.ig.proxy.c c;

    public static b a() {
        if (d == null) {
            synchronized (b.class) {
                try {
                    if (d == null) {
                        d = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    @Override
    public final void b(Message message) {
        a((String) message.obj);
    }

    public static boolean b() {
        return CoreMain.isAppOnForeground(CoreMain.getInstance().getContext());
    }

    @Override
    public final void a(Message message) {
        i iVar;
        if (message != null) {
            Object obj = message.obj;
            if ((obj instanceof i) && (iVar = (i) obj) != null && iVar.a == 1) {
                c cVarA = c.a();
                Context context = CoreMain.getInstance().getContext();
                cVarA.a = iVar;
                if (!c.a(iVar)) {
                    c.b(cVarA.a);
                } else {
                    i iVar2 = cVarA.a;
                    cVarA.a(context, iVar2.f, 0, iVar2.g);
                }
            }
        }
    }

    public final void a(i iVar) {
        if (iVar != null && iVar.e > 0 && f.a()) {
            try {
                if (this.c == null) {
                    this.c = new com.doman.core.ig.proxy.c(this);
                }
                Message messageA = this.c.a();
                messageA.obj = iVar;
                this.c.a(messageA, iVar.e);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(b bVar, List list) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                com.doman.core.a.d dVar = (com.doman.core.a.d) list.get(i);
                if (dVar != null && dVar.d > 0 && f.a()) {
                    try {
                        if (bVar.c == null) {
                            bVar.c = new com.doman.core.ig.proxy.c(bVar);
                        }
                        Message messageA = bVar.c.a();
                        i iVar = new i();
                        long j = dVar.d;
                        iVar.e = j;
                        iVar.a = dVar.b;
                        iVar.f = dVar.c;
                        iVar.d = dVar.g;
                        iVar.c = dVar.f;
                        iVar.b = dVar.a;
                        iVar.g = dVar.h;
                        messageA.obj = iVar;
                        bVar.c.a(messageA, j);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    public void a(String str) {
        if (str == null || !f.a()) {
            return;
        }
        try {
            com.doman.core.b.b bVarA = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
            p.b<List<com.doman.core.a.d>> bVar = new p.b<List<com.doman.core.a.d>>() {
                @Override
                public final void a(List<com.doman.core.a.d> list) {
                    b.a(b.this, list);
                }
            };
            p.a aVar = new p.a() {
                @Override
                public final void a(u uVar) {
                }
            };
            com.doman.core.b.c cVarA = com.doman.core.b.c.a(bVarA.a);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            HashMap map = new HashMap();
            JSONObject jSONObject = new JSONObject();
            cVarA.a(jSONObject);
            map.put("params", com.doman.core.b.c.a(jSONObject.toString()));
            cVarA.a.a(new e(cVarA.b, str, com.doman.core.b.c.a(null, map), bVar, aVar));
        } catch (Throwable unused) {
        }
    }
}
