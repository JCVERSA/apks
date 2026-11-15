package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class C2854s4 {
    public final Object a;
    public final C2855s5 b;
    public final HashMap c;
    public final C2960wa d;
    public final Context e;
    public final C3029z4 f;

    public C2854s4(Context context, C2855s5 c2855s5) {
        this(context, c2855s5, new C3029z4());
    }

    public final InterfaceC2954w4 a(C2581h4 c2581h4, G4 g4) {
        InterfaceC2954w4 interfaceC2954w4A;
        synchronized (this.a) {
            try {
                interfaceC2954w4A = (InterfaceC2954w4) this.c.get(c2581h4);
                if (interfaceC2954w4A == null) {
                    this.f.getClass();
                    interfaceC2954w4A = C3029z4.a(c2581h4).a(this.e, this.b, c2581h4, g4);
                    this.c.put(c2581h4, interfaceC2954w4A);
                    this.d.a(new C2829r4(c2581h4.b, c2581h4.c, c2581h4.d), c2581h4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return interfaceC2954w4A;
    }

    public C2854s4(Context context, C2855s5 c2855s5, C3029z4 c3029z4) {
        this.a = new Object();
        this.c = new HashMap();
        this.d = new C2960wa();
        this.e = context.getApplicationContext();
        this.b = c2855s5;
        this.f = c3029z4;
    }

    public final void a(int i, String str, String str2) {
        Integer numValueOf = Integer.valueOf(i);
        synchronized (this.a) {
            try {
                C2960wa c2960wa = this.d;
                Collection collection = (Collection) c2960wa.a.remove(new C2829r4(str, numValueOf, str2));
                if (!In.a(collection)) {
                    collection.size();
                    ArrayList arrayList = new ArrayList(collection.size());
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        arrayList.add((InterfaceC2954w4) this.c.remove((C2581h4) it.next()));
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((InterfaceC2954w4) it2.next()).a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
