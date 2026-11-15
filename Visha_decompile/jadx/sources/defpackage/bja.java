package defpackage;

import android.util.Log;
import com.transsion.mediationads.beans.TTStrategy;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeSet;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class bja {
    public static final a l = new a(null);
    public final Random a;
    public final TreeSet b;
    public final HashMap c;
    public final TreeSet d;
    public int e;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public boolean j;
    public int k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public bja(Random random) {
        y45.j(random, "random");
        this.a = random;
        this.b = new TreeSet();
        this.c = new HashMap();
        this.d = new TreeSet();
        this.e = 1;
        this.f = 1;
        this.g = 1;
        this.h = -1;
        this.k = 1;
        C();
    }

    public final synchronized int A() {
        int i = this.g;
        int i2 = this.f;
        if (i <= i2) {
            return i2;
        }
        return this.a.nextInt((i - i2) + 1) + this.f;
    }

    public final synchronized void B() {
        this.b.clear();
        this.c.clear();
        this.d.clear();
        this.i = false;
        this.j = false;
        C();
    }

    public final void C() {
        TTStrategy tTStrategyA;
        try {
            tTStrategyA = rab.a.a().a();
        } catch (Throwable th) {
            Log.w("TiktokAdStrategyResolver", "resolveParams: getStrategy failed " + th.getMessage());
            tTStrategyA = null;
        }
        if (tTStrategyA != null) {
            b(wn8.d(tTStrategyA.getStartPosition(), 1), wn8.d(tTStrategyA.getVideoIntervalsMin(), 1), wn8.d(tTStrategyA.getVideoIntervalsMax(), 1), tTStrategyA.getMaxAdvertisingCount(), true);
            return;
        }
        this.i = false;
        this.j = false;
        Log.w("TiktokAdStrategyResolver", "resolveParams: no server strategy, ads disabled");
    }

    public final synchronized boolean D(int i) {
        boolean zRemove;
        zRemove = this.b.remove(Integer.valueOf(i));
        this.c.remove(Integer.valueOf(i));
        if (zRemove) {
            Log.d("TiktokAdStrategyResolver", "revoke position=" + i);
        }
        return zRemove;
    }

    public final boolean E() {
        if (!this.i || this.j || !q()) {
            return false;
        }
        try {
            rab rabVarA = rab.a.a();
            return (!rabVarA.c() || rabVarA.d(n()) || rabVarA.e()) ? false : true;
        } catch (Throwable th) {
            Log.w("TiktokAdStrategyResolver", "shouldShowAds error " + th.getMessage());
            return false;
        }
    }

    public final boolean a(int i, String str) {
        if (!this.d.add(Integer.valueOf(i))) {
            return false;
        }
        int iA = A();
        int i2 = i + iA;
        this.k = i2;
        Log.d("TiktokAdStrategyResolver", "advanceMilestoneAfter reason=" + str + " milestone=" + i + " next=" + i2 + " gap=" + iA);
        return true;
    }

    public final void b(int i, int i2, int i3, int i4, boolean z) {
        this.e = i;
        this.f = i2;
        this.g = i3;
        this.h = i4;
        boolean z2 = i2 > i3;
        this.j = z2;
        this.i = !z2;
        this.k = i;
        if (z2) {
            return;
        }
        Log.d("TiktokAdStrategyResolver", "resolveParams" + (z ? " server" : " test") + ": start=" + i + " min=" + i2 + " max=" + i3 + " maxCount=" + i4 + " invalid=" + z2);
    }

    public final synchronized boolean c() {
        if (!E()) {
            return false;
        }
        int i = this.h;
        if (i <= -1) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        return this.b.size() < this.h;
    }

    public final synchronized boolean d(int i, int i2, int i3) {
        boolean z = false;
        if (!c()) {
            return false;
        }
        if (i > i3) {
            return false;
        }
        Integer numZ = z();
        if (numZ == null) {
            return false;
        }
        if (i != o(numZ.intValue())) {
            return false;
        }
        int iK = k(i);
        if (!this.b.isEmpty()) {
            return iK > 0;
        }
        int iV = v();
        if (iK >= iV && i2 >= iV) {
            z = true;
        }
        return z;
    }

    public final synchronized void e() {
        this.b.clear();
        this.c.clear();
    }

    public final synchronized boolean f(int i, Integer num) {
        try {
            if (!c()) {
                return false;
            }
            if (this.b.contains(Integer.valueOf(i))) {
                return false;
            }
            if (num == null && (num = z()) == null) {
                return false;
            }
            int iIntValue = num.intValue();
            this.b.add(Integer.valueOf(i));
            this.c.put(Integer.valueOf(i), Integer.valueOf(iIntValue));
            Log.d("TiktokAdStrategyResolver", "commit position=" + i + " milestone=" + iIntValue + " committed=" + this.b.size());
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized List g() {
        return i81.b1(this.b);
    }

    public final synchronized int h(int i) {
        int i2 = 0;
        if (i == 0) {
            return 0;
        }
        int i3 = 0;
        while (i2 < i) {
            if (this.b.contains(Integer.valueOf(i3))) {
                i3++;
            } else {
                i3++;
                i2++;
            }
            if (i3 > i * 4) {
                break;
            }
        }
        return i3;
    }

    public final synchronized int i(int i) {
        int i2;
        Iterator it = this.b.iterator();
        y45.i(it, "iterator(...)");
        i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            y45.i(next, "next(...)");
            if (((Number) next).intValue() < i) {
                i2++;
            }
        }
        return i2;
    }

    public final int j(int i) {
        Iterator it = this.c.entrySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (((Number) ((Map.Entry) it.next()).getValue()).intValue() < i) {
                i2++;
            }
        }
        return i2;
    }

    public final synchronized int k(int i) {
        return i - i(i);
    }

    public final synchronized int l() {
        return wn8.d(this.e - 1, 0);
    }

    public final String m() {
        TTStrategy tTStrategyA;
        try {
            if (!this.i || this.j || (tTStrategyA = rab.a.a().a()) == null) {
                return null;
            }
            return tTStrategyA.getAdvertisingId();
        } catch (Throwable unused) {
            return null;
        }
    }

    public final int n() {
        try {
            TTStrategy tTStrategyA = rab.a.a().a();
            if (tTStrategyA != null) {
                return tTStrategyA.getProtectDays();
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public final synchronized int o(int i) {
        return (i - 1) + j(i);
    }

    public final synchronized int p(int i) {
        int i2 = 0;
        if (i < 0) {
            return 0;
        }
        int size = this.b.size() + 2;
        int i3 = i;
        while (i2 < size) {
            int i4 = i(i3) + i;
            if (i4 == i3) {
                return i3;
            }
            i2++;
            i3 = i4;
        }
        return i + i(i3);
    }

    public final boolean q() {
        String strM = m();
        return !(strM == null || strM.length() == 0);
    }

    public final synchronized boolean r(int i) {
        return this.c.values().contains(Integer.valueOf(i));
    }

    public final synchronized boolean s(int i, int i2) {
        return i > i2;
    }

    public final synchronized boolean t(int i) {
        if (!E()) {
            return false;
        }
        return this.b.contains(Integer.valueOf(i));
    }

    public final synchronized Integer u(int i) {
        return (Integer) this.c.get(Integer.valueOf(i));
    }

    public final synchronized int v() {
        return l();
    }

    public final void w() {
        if (this.i) {
            try {
                rab.a.a().b();
            } catch (Throwable th) {
                Log.w("TiktokAdStrategyResolver", "onAdShown error " + th.getMessage());
            }
        }
    }

    public final synchronized void x(int i) {
        if (a(i, "consumed")) {
        }
    }

    public final synchronized boolean y(int i) {
        return a(i, "skipped");
    }

    public final synchronized Integer z() {
        if (E() && c()) {
            return Integer.valueOf(this.k);
        }
        return null;
    }

    public bja(Random random, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Random() : random);
    }
}
