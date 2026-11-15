package com.airbnb.lottie;

import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import defpackage.ubc;
import defpackage.x96;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class PerformanceTracker {
    public boolean a = false;
    public final Set b = new ArraySet();
    public final Map c = new HashMap();
    public final Comparator d = new Comparator<Pair<String, Float>>() {
        @Override
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float fFloatValue = pair.second.floatValue();
            float fFloatValue2 = pair2.second.floatValue();
            if (fFloatValue2 > fFloatValue) {
                return 1;
            }
            return fFloatValue > fFloatValue2 ? -1 : 0;
        }
    };

    public void a(String str, float f) {
        if (this.a) {
            x96 x96Var = (x96) this.c.get(str);
            if (x96Var == null) {
                x96Var = new x96();
                this.c.put(str, x96Var);
            }
            x96Var.a(f);
            if (str.equals("__container")) {
                Iterator it = this.b.iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
            }
        }
    }

    public void b(boolean z) {
        this.a = z;
    }
}
