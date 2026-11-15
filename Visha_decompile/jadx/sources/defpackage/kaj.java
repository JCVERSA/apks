package defpackage;

public final class kaj {
    public static final kaj c;
    public static final kaj d;
    public final long a;
    public final long b;

    static {
        kaj kajVar = new kaj(0L, 0L);
        c = kajVar;
        new kaj(Long.MAX_VALUE, Long.MAX_VALUE);
        new kaj(Long.MAX_VALUE, 0L);
        new kaj(0L, Long.MAX_VALUE);
        d = kajVar;
    }

    public kaj(long j, long j2) {
        n7g.d(j >= 0);
        n7g.d(j2 >= 0);
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && kaj.class == obj.getClass()) {
            kaj kajVar = (kaj) obj;
            if (this.a == kajVar.a && this.b == kajVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
