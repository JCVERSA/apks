package org.brotli.dec;

final class g {

    private int f68473a;

    int[] f68474b;

    int[] f68475c;

    g() {
    }

    static void a(g gVar, a aVar) {
        int length = gVar.f68475c.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            gVar.f68475c[i11] = i10;
            d.n(gVar.f68473a, gVar.f68474b, i10, aVar);
            i10 += 1080;
        }
    }

    static void b(g gVar, int i10, int i11) {
        gVar.f68473a = i10;
        gVar.f68474b = new int[i11 * 1080];
        gVar.f68475c = new int[i11];
    }
}
