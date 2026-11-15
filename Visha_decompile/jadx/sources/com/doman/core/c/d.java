package com.doman.core.c;

import android.content.Context;
import android.text.TextUtils;
import com.android.net.p;
import com.android.net.toolbox.o;
import com.android.net.u;
import com.doman.core.CoreMain;
import com.doman.core.a.j;
import com.doman.core.b.e;
import com.doman.core.d.f;
import com.doman.core.d.n;
import java.util.HashMap;
import org.json.JSONObject;

public final class d {
    public long a;
    private String b;
    private String c;
    private String d;
    private String e = "WS_SMTTk";
    private int f = 0;

    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override
        public final void run() {
            if (f.a()) {
                com.doman.core.b.b bVarA = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
                p.b<j> bVar = new p.b<j>() {
                    @Override
                    public final void a(j jVar) {
                        final j jVar2 = jVar;
                        n.a(new Runnable() {
                            @Override
                            public final void run() {
                                try {
                                    final d dVar = d.this;
                                    final j jVar3 = jVar2;
                                    if (jVar3 != null && !TextUtils.isEmpty(jVar3.e)) {
                                        n.a(new Runnable() {
                                            @Override
                                            public final void run() {
                                                if ("1".equals(jVar3.e)) {
                                                    d.a(d.this, jVar3);
                                                    return;
                                                }
                                                d.a(d.this, jVar3);
                                                try {
                                                    final com.doman.core.d.p pVarA = com.doman.core.d.p.a();
                                                    final j jVar4 = jVar3;
                                                    CoreMain.mhandler.post(new Runnable() {
                                                        final com.doman.core.a.j a;

                                                        public AnonymousClass1() {
                                                            jVar = jVar4;
                                                        }

                                                        @Override
                                                        public final void run() {
                                                            try {
                                                                if (f.a()) {
                                                                    if ("2".equals(jVar.e)) {
                                                                        com.doman.core.a.j jVar5 = jVar;
                                                                        p.a(jVar5.f, jVar5.g);
                                                                    } else if ("3".equals(jVar.e)) {
                                                                        p.a(jVar);
                                                                    } else if ("4".equals(jVar.e)) {
                                                                        com.doman.core.a.j jVar6 = jVar;
                                                                        p.b(jVar6.f, jVar6.g);
                                                                    }
                                                                }
                                                            } catch (Throwable unused) {
                                                            }
                                                        }
                                                    });
                                                } catch (Throwable unused) {
                                                }
                                            }
                                        }, jVar3.a);
                                    }
                                    com.doman.core.webview.c.a(com.doman.core.webview.c.aD);
                                } catch (Exception unused) {
                                }
                            }
                        });
                    }
                };
                p.a aVar = new p.a() {
                    @Override
                    public final void a(u uVar) {
                        com.doman.core.webview.c.a(com.doman.core.webview.c.aC);
                    }
                };
                com.doman.core.b.c cVarA = com.doman.core.b.c.a(bVarA.a);
                try {
                    HashMap map = new HashMap();
                    JSONObject jSONObject = new JSONObject();
                    cVarA.a(jSONObject);
                    map.put("params", com.doman.core.b.c.a(jSONObject.toString()));
                    com.doman.core.b.f fVar = com.doman.core.b.f.INITCONFIG;
                    com.doman.core.manager.a.a();
                    fVar.l = com.doman.core.manager.a.e();
                    e eVarA = com.doman.core.b.c.a(fVar, map);
                    Context context = cVarA.b;
                    com.doman.core.manager.a.a();
                    cVarA.a.a(new com.doman.core.b.a.a.b(context, com.doman.core.manager.a.e(), eVarA, bVar, aVar));
                } catch (Exception unused) {
                }
            }
        }
    }

    public d(String str, long j, String str2, String str3) {
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.a = j;
    }

    public static void a(d dVar, j jVar) {
        if (jVar == null || jVar.j == null || !f.a()) {
            return;
        }
        int size = jVar.j.size();
        for (int i = 0; i < size; i++) {
            String str = jVar.j.get(i);
            if (!TextUtils.isEmpty(str)) {
                com.doman.core.b.b bVarA = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
                p.b<String> bVar = new p.b<String>() {
                    @Override
                    public final void a(String str2) {
                    }
                };
                p.a aVar = new p.a() {
                    @Override
                    public final void a(u uVar) {
                    }
                };
                try {
                    com.doman.core.b.c.a(bVarA.a).a.a(new o(0, str, bVar, aVar));
                } catch (Exception unused) {
                }
            }
        }
    }
}
