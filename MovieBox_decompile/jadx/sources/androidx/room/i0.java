package androidx.room;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class i0 implements z3.g, z3.f {

    public static final a f14358i = new a(null);

    public static final TreeMap f14359j = new TreeMap();

    private final int f14360a;

    private volatile String f14361b;

    public final long[] f14362c;

    public final double[] f14363d;

    public final String[] f14364e;

    public final byte[][] f14365f;

    private final int[] f14366g;

    private int f14367h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i0 a(String query, int i10) {
            Intrinsics.h(query, "query");
            TreeMap treeMap = i0.f14359j;
            synchronized (treeMap) {
                Map.Entry entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i10));
                if (entryCeilingEntry == null) {
                    Unit unit = Unit.f64096a;
                    i0 i0Var = new i0(i10, null);
                    i0Var.j(query, i10);
                    return i0Var;
                }
                treeMap.remove(entryCeilingEntry.getKey());
                i0 i0Var2 = (i0) entryCeilingEntry.getValue();
                i0Var2.j(query, i10);
                Intrinsics.e(i0Var2);
                return i0Var2;
            }
        }

        public final void b() {
            TreeMap treeMap = i0.f14359j;
            if (treeMap.size() <= 15) {
                return;
            }
            int size = treeMap.size() - 10;
            Iterator it = treeMap.descendingKeySet().iterator();
            Intrinsics.g(it, "iterator(...)");
            while (true) {
                int i10 = size - 1;
                if (size <= 0) {
                    return;
                }
                it.next();
                it.remove();
                size = i10;
            }
        }

        private a() {
        }
    }

    public i0(int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10);
    }

    public static final i0 f(String str, int i10) {
        return f14358i.a(str, i10);
    }

    @Override
    public void V(int i10, String value) {
        Intrinsics.h(value, "value");
        this.f14366g[i10] = 4;
        this.f14364e[i10] = value;
    }

    @Override
    public void a(int i10, double d10) {
        this.f14366g[i10] = 3;
        this.f14363d[i10] = d10;
    }

    @Override
    public void b(z3.f statement) {
        Intrinsics.h(statement, "statement");
        int iH = h();
        if (1 > iH) {
            return;
        }
        int i10 = 1;
        while (true) {
            int i11 = this.f14366g[i10];
            if (i11 == 1) {
                statement.g(i10);
            } else if (i11 == 2) {
                statement.c(i10, this.f14362c[i10]);
            } else if (i11 == 3) {
                statement.a(i10, this.f14363d[i10]);
            } else if (i11 == 4) {
                String str = this.f14364e[i10];
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.V(i10, str);
            } else if (i11 == 5) {
                byte[] bArr = this.f14365f[i10];
                if (bArr == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.k0(i10, bArr);
            }
            if (i10 == iH) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Override
    public void c(int i10, long j10) {
        this.f14366g[i10] = 2;
        this.f14362c[i10] = j10;
    }

    @Override
    public String d() {
        String str = this.f14361b;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override
    public void g(int i10) {
        this.f14366g[i10] = 1;
    }

    public int h() {
        return this.f14367h;
    }

    public final void j(String query, int i10) {
        Intrinsics.h(query, "query");
        this.f14361b = query;
        this.f14367h = i10;
    }

    @Override
    public void k0(int i10, byte[] value) {
        Intrinsics.h(value, "value");
        this.f14366g[i10] = 5;
        this.f14365f[i10] = value;
    }

    public final void release() {
        TreeMap treeMap = f14359j;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f14360a), this);
            f14358i.b();
            Unit unit = Unit.f64096a;
        }
    }

    private i0(int i10) {
        this.f14360a = i10;
        int i11 = i10 + 1;
        this.f14366g = new int[i11];
        this.f14362c = new long[i11];
        this.f14363d = new double[i11];
        this.f14364e = new String[i11];
        this.f14365f = new byte[i11][];
    }

    @Override
    public void close() {
    }
}
