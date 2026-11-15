package com.doman.core.c;

import com.doman.core.CoreMain;
import com.doman.core.a.e;
import com.doman.core.a.g;
import com.doman.core.d.n;
import java.util.ArrayList;

public final class c implements com.doman.core.d.a.a.b {
    public ArrayList<e> a;
    public g b;
    public String c;
    public String d;
    public String f;
    public String g;
    public com.doman.core.d.a.a i;
    private long k;
    String e = "WS_MIT";
    public boolean h = false;
    private int l = 0;
    public ArrayList<e> j = new ArrayList<>();

    public c(g gVar, long j, String str, String str2) {
        this.b = gVar;
        this.c = str;
        this.d = str2;
        this.a = gVar.I;
        this.k = j;
        this.f = gVar.Q;
        this.g = gVar.R;
    }

    @Override
    public final void a() {
        int i;
        try {
            int i2 = this.l + 1;
            this.l = i2;
            g gVar = this.b;
            if (gVar == null || (i = gVar.F) <= 0 || i2 != i) {
                return;
            }
            if (this.j.size() > 0) {
                ArrayList<e> arrayList = this.j;
                a(arrayList, arrayList.size(), 201, "21212121212121ImpressionTask trackingRequestWait thread currentThread" + Thread.currentThread());
            }
            this.l = 0;
            com.doman.core.d.a.a aVar = this.i;
            if (aVar != null) {
                aVar.b(this);
            }
        } catch (Exception unused) {
        }
    }

    public static void a(long j) {
        if (j > 0) {
            try {
                Thread.sleep(j);
            } catch (InterruptedException unused) {
            }
        }
    }

    public final void a(final ArrayList<e> arrayList, final int i, final int i2, final String str) {
        n.a(new Runnable() {
            @Override
            public final void run() {
                for (int i3 = 0; i3 < i; i3++) {
                    e eVar = (e) arrayList.get(i3);
                    if (eVar.a == i2) {
                        String str2 = eVar.b;
                        com.doman.core.d.g.a(c.this.e, str + str2);
                        if (eVar.a()) {
                            com.doman.core.b.b bVarA = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
                            c cVar = c.this;
                            bVarA.a(eVar, cVar.f, cVar.g);
                        } else {
                            com.doman.core.b.b bVarA2 = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
                            c cVar2 = c.this;
                            bVarA2.a(str2, cVar2.f, cVar2.g);
                        }
                        String str3 = com.doman.core.webview.c.j;
                        c cVar3 = c.this;
                        com.doman.core.webview.c.a(str3, cVar3.b.r, cVar3.c, str2, cVar3.d);
                    }
                }
            }
        });
    }
}
