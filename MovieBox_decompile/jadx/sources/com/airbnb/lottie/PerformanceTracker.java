package com.airbnb.lottie;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class PerformanceTracker {

    private boolean f17081a = false;

    private final Set f17082b = new androidx.collection.b();

    private final Map f17083c = new HashMap();

    private final Comparator f17084d = new Comparator<androidx.core.util.e>() {
        @Override
        public int compare(androidx.core.util.e eVar, androidx.core.util.e eVar2) {
            float fFloatValue = ((Float) eVar.f7959b).floatValue();
            float fFloatValue2 = ((Float) eVar2.f7959b).floatValue();
            if (fFloatValue2 > fFloatValue) {
                return 1;
            }
            return fFloatValue > fFloatValue2 ? -1 : 0;
        }
    };

    public void a(String str, float f10) {
        if (this.f17081a) {
            x4.j jVar = (x4.j) this.f17083c.get(str);
            if (jVar == null) {
                jVar = new x4.j();
                this.f17083c.put(str, jVar);
            }
            jVar.a(f10);
            if (str.equals("__container")) {
                Iterator it = this.f17082b.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    throw null;
                }
            }
        }
    }

    void b(boolean z10) {
        this.f17081a = z10;
    }
}
