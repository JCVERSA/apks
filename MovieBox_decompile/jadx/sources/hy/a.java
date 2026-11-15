package hy;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class a {

    private static final List f61514j;

    int f61516b;

    byte[] f61519e;

    int f61520f;

    InputStream f61521g;

    private boolean[] f61523i;

    byte[] f61515a = new byte[8000];

    short[] f61517c = new short[256];

    boolean f61518d = false;

    private boolean f61522h = false;

    private static class C0747a {

        h f61524a;

        boolean f61525b;

        C0747a(h hVar, boolean z10) {
            this.f61524a = hVar;
            this.f61525b = z10;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0747a(new d(), true));
        arrayList.add(new C0747a(new e.a(), true));
        arrayList.add(new C0747a(new e.b(), true));
        arrayList.add(new C0747a(new e.d(), true));
        arrayList.add(new C0747a(new e.C0749e(), true));
        arrayList.add(new C0747a(new f.d(), true));
        arrayList.add(new C0747a(new c.b(), true));
        arrayList.add(new C0747a(new c.a(), true));
        arrayList.add(new C0747a(new c.C0748c(), true));
        arrayList.add(new C0747a(new f.c(), true));
        arrayList.add(new C0747a(new f.b.a(), true));
        arrayList.add(new C0747a(new f.b.C0750b(), true));
        arrayList.add(new C0747a(new f.a(), true));
        arrayList.add(new C0747a(new g.a(), true));
        arrayList.add(new C0747a(new g.b(), true));
        arrayList.add(new C0747a(new g.d(), true));
        arrayList.add(new C0747a(new g.f(), true));
        arrayList.add(new C0747a(new g.h(), true));
        arrayList.add(new C0747a(new g.j(), true));
        arrayList.add(new C0747a(new g.k(), true));
        arrayList.add(new C0747a(new g.u(), true));
        arrayList.add(new C0747a(new g.v(), true));
        arrayList.add(new C0747a(new g.t(), true));
        arrayList.add(new C0747a(new g.m(), true));
        arrayList.add(new C0747a(new g.s(), false));
        arrayList.add(new C0747a(new g.r(), false));
        arrayList.add(new C0747a(new g.p(), false));
        arrayList.add(new C0747a(new g.o(), false));
        f61514j = Collections.unmodifiableList(arrayList);
    }

    private void a() {
        int i10;
        int i11;
        if (this.f61522h) {
            int i12 = 0;
            i10 = 0;
            i11 = 0;
            boolean z10 = false;
            for (int i13 = 0; i13 < this.f61520f; i13++) {
                byte[] bArr = this.f61515a;
                if (i12 >= bArr.length) {
                    break;
                }
                byte b10 = this.f61519e[i13];
                if (b10 == 60) {
                    if (z10) {
                        i11++;
                    }
                    i10++;
                    z10 = true;
                }
                if (!z10) {
                    bArr[i12] = b10;
                    i12++;
                }
                if (b10 == 62) {
                    z10 = false;
                }
            }
            this.f61516b = i12;
        } else {
            i10 = 0;
            i11 = 0;
        }
        if (i10 < 5 || i10 / 5 < i11 || (this.f61516b < 100 && this.f61520f > 600)) {
            int i14 = this.f61520f;
            if (i14 > 8000) {
                i14 = 8000;
            }
            int i15 = 0;
            while (i15 < i14) {
                this.f61515a[i15] = this.f61519e[i15];
                i15++;
            }
            this.f61516b = i15;
        }
        Arrays.fill(this.f61517c, (short) 0);
        for (int i16 = 0; i16 < this.f61516b; i16++) {
            int i17 = this.f61515a[i16] & 255;
            short[] sArr = this.f61517c;
            sArr[i17] = (short) (sArr[i17] + 1);
        }
        this.f61518d = false;
        for (int i18 = 128; i18 <= 159; i18++) {
            if (this.f61517c[i18] != 0) {
                this.f61518d = true;
                return;
            }
        }
    }

    public b b() {
        b[] bVarArrC = c();
        if (bVarArrC == null || bVarArrC.length == 0) {
            return null;
        }
        return bVarArrC[0];
    }

    public b[] c() {
        b bVarC;
        ArrayList arrayList = new ArrayList();
        a();
        int i10 = 0;
        while (true) {
            List list = f61514j;
            if (i10 >= list.size()) {
                Collections.sort(arrayList);
                Collections.reverse(arrayList);
                return (b[]) arrayList.toArray(new b[arrayList.size()]);
            }
            C0747a c0747a = (C0747a) list.get(i10);
            boolean[] zArr = this.f61523i;
            if ((zArr != null ? zArr[i10] : c0747a.f61525b) && (bVarC = c0747a.f61524a.c(this)) != null) {
                arrayList.add(bVarC);
            }
            i10++;
        }
    }

    public a d(byte[] bArr) {
        this.f61519e = bArr;
        this.f61520f = bArr.length;
        return this;
    }
}
