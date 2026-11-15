package com.android.net.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import com.android.net.u;
import java.util.HashMap;
import java.util.LinkedList;

public final class k {
    final com.android.net.o a;
    final b b;
    final HashMap<String, a> c;
    final HashMap<String, a> d;
    Runnable e;
    private int f;
    private final Handler g;

    public class a {
        Bitmap a;
        u b;
        final LinkedList<c> c;
        private final com.android.net.n<?> e;

        public a(com.android.net.n<?> nVar, c cVar) {
            LinkedList<c> linkedList = new LinkedList<>();
            this.c = linkedList;
            this.e = nVar;
            linkedList.add(cVar);
        }

        public final boolean a(c cVar) {
            this.c.remove(cVar);
            if (this.c.size() != 0) {
                return false;
            }
            this.e.a();
            return true;
        }
    }

    public interface b {
        Bitmap a();
    }

    public class c {
        Bitmap a;
        final d b;
        final String c;
        private final String e;

        public c(Bitmap bitmap, String str, String str2, d dVar) {
            this.a = bitmap;
            this.c = str;
            this.e = str2;
            this.b = dVar;
        }

        public final void a() {
            if (this.b == null) {
                return;
            }
            a aVar = k.this.c.get(this.e);
            if (aVar != null) {
                if (aVar.a(this)) {
                    k.this.c.remove(this.e);
                    return;
                }
                return;
            }
            a aVar2 = k.this.d.get(this.e);
            if (aVar2 != null) {
                aVar2.a(this);
                if (aVar2.c.size() == 0) {
                    k.this.d.remove(this.e);
                }
            }
        }
    }

    public interface d extends com.android.net.p.a {
        void a(c cVar, boolean z);
    }

    public final void a(String str, a aVar) {
        this.d.put(str, aVar);
        if (this.e == null) {
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    for (a aVar2 : k.this.d.values()) {
                        for (c cVar : aVar2.c) {
                            d dVar = cVar.b;
                            if (dVar != null) {
                                u uVar = aVar2.b;
                                if (uVar == null) {
                                    cVar.a = aVar2.a;
                                    dVar.a(cVar, false);
                                } else {
                                    dVar.a(uVar);
                                }
                            }
                        }
                    }
                    k.this.d.clear();
                    k.this.e = null;
                }
            };
            this.e = runnable;
            this.g.postDelayed(runnable, this.f);
        }
    }
}
