package u;

import java.util.ArrayList;

public final class j extends b {

    public int f2147b;

    public final ArrayList f2148c;

    public b f2149d;

    public int f2150e;

    public j() {
        ArrayList arrayList = new ArrayList();
        this.f2148c = arrayList;
        arrayList.add(new g());
        arrayList.add(new n());
        arrayList.add(new a());
        arrayList.add(new l());
        arrayList.add(new c());
        arrayList.add(new d());
        arrayList.add(new e());
        e();
    }

    @Override
    public final String a() {
        if (this.f2149d == null) {
            b();
            if (this.f2149d == null) {
                this.f2149d = (b) this.f2148c.get(0);
            }
        }
        return this.f2149d.a();
    }

    @Override
    public final float b() {
        int i2 = this.f2147b;
        if (i2 == 2) {
            return 0.99f;
        }
        if (i2 == 3) {
            return 0.01f;
        }
        float f2 = 0.0f;
        for (b bVar : this.f2148c) {
            if (bVar.f2107a) {
                float fB = bVar.b();
                if (f2 < fB) {
                    this.f2149d = bVar;
                    f2 = fB;
                }
            }
        }
        return f2;
    }

    @Override
    public final int c() {
        return this.f2147b;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        byte[] bArr2 = new byte[i2];
        int i3 = i2 + 0;
        boolean z2 = true;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            byte b2 = bArr[i5];
            if ((b2 & 128) != 0) {
                bArr2[i4] = b2;
                i4++;
                z2 = true;
            } else if (z2) {
                bArr2[i4] = b2;
                i4++;
                z2 = false;
            }
        }
        for (b bVar : this.f2148c) {
            if (bVar.f2107a) {
                int iD = bVar.d(bArr2, i4);
                if (iD == 2 || 0.99f == bVar.b()) {
                    this.f2149d = bVar;
                    this.f2147b = 2;
                    break;
                }
                if (iD == 3) {
                    bVar.f2107a = false;
                    int i6 = this.f2150e - 1;
                    this.f2150e = i6;
                    if (i6 <= 0) {
                        this.f2147b = 3;
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return this.f2147b;
    }

    @Override
    public final void e() {
        this.f2150e = 0;
        for (b bVar : this.f2148c) {
            bVar.e();
            bVar.f2107a = true;
            this.f2150e++;
        }
        this.f2149d = null;
        this.f2147b = 1;
    }
}
