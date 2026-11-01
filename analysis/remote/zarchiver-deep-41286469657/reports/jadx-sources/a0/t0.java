package a0;

import ru.zdevs.zarchiver.R;

public final class t0 extends w0.c implements h0.e.c {

    public final ru.zdevs.zarchiver.b f113e;

    public final String f114f;

    public final String[] f115g;

    public final w f116h;

    public int f117i = 0;

    public t0(ru.zdevs.zarchiver.b bVar, String str, String[] strArr) {
        this.f113e = bVar;
        this.f114f = str;
        this.f115g = strArr;
        this.f116h = new w(bVar.f1652b);
    }

    @Override
    public final void b(int i2) {
        w wVar = this.f116h;
        wVar.f133b = i2;
        w0.a aVar = this.f2213a;
        if (aVar != null) {
            aVar.b(wVar, true);
        }
    }

    @Override
    public final void d(h0.e.b bVar, h0.h hVar, String str, String str2) {
        ru.zdevs.zarchiver.b bVar2 = this.f113e;
        if (bVar2.f1668r == null) {
            return;
        }
        v vVar = new v(bVar2.f1652b, new d0.f(hVar, str, str2, bVar.f1088a ? (byte) -1 : (byte) 4, bVar.f1090c, bVar.f1089b));
        w0.a aVar = this.f2213a;
        if (aVar != null) {
            aVar.b(vVar, false);
        }
        this.f117i++;
    }

    @Override
    public final w0.a.b f() {
        int i2;
        String[] strArr = this.f115g;
        ru.zdevs.zarchiver.b bVar = this.f113e;
        System.currentTimeMillis();
        try {
            h0.h hVar = bVar.f1653c;
            String str = this.f114f;
            int[] iArrA = h0.e.a(strArr);
            if (strArr != null) {
                int length = strArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        i2 = 0;
                        break;
                    }
                    if ("[SF]".equals(strArr[i3])) {
                        i2 = 1;
                        break;
                    }
                    i3++;
                }
            } else {
                i2 = 0;
                break;
            }
            h0.e.h(hVar, str, iArrA, i2, this, this);
        } catch (Exception unused) {
        }
        if (!isCancelled()) {
            if (this.f117i <= 0) {
                bVar.f1664n = R.string.MES_FILE_NOT_FOUND;
            } else {
                bVar.f1664n = 0;
            }
        }
        w wVar = this.f116h;
        wVar.f133b = 100;
        return wVar;
    }

    @Override
    public final int i() {
        return this.f113e.f1652b;
    }

    @Override
    public final int j() {
        return 13;
    }
}
