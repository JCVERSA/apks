package defpackage;

public abstract class xz5 extends hb0 {
    public static a a = new a();

    public static class a {
        public long a;
        public int b;
        public long c;
        public long d;
    }

    public static void b() {
        a aVar = a;
        aVar.b = 0;
        aVar.a = System.currentTimeMillis();
    }

    public static void c(int i, long j, long j2) {
    }

    public static void d() {
        a aVar = a;
        aVar.b = (int) (((long) aVar.b) + (System.currentTimeMillis() - a.a));
    }

    public static void e() {
        a aVar = a;
        aVar.b = 0;
        aVar.a = System.currentTimeMillis();
    }

    public static void f(int i, long j, long j2) {
        a aVar = a;
        long jCurrentTimeMillis = System.currentTimeMillis();
        a aVar2 = a;
        aVar.b = (int) ((jCurrentTimeMillis - aVar2.a) / 1000);
        aVar2.c = j;
        aVar2.d = j2;
        c(aVar2.b, j, j2);
        a.b = 0;
    }
}
