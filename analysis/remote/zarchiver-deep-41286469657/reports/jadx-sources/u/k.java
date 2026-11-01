package u;

import java.nio.ByteBuffer;
import java.util.ArrayList;

public final class k extends b {

    public int f2151b;

    public final ArrayList f2152c;

    public b f2153d;

    public int f2154e;

    public k() {
        ArrayList arrayList = new ArrayList();
        this.f2152c = arrayList;
        arrayList.add(new m(new x.m()));
        arrayList.add(new m(new x.f()));
        arrayList.add(new m(new x.h()));
        arrayList.add(new m(new x.j()));
        arrayList.add(new m(new x.e()));
        arrayList.add(new m(new x.d()));
        arrayList.add(new m(new x.i()));
        arrayList.add(new m(new x.n()));
        arrayList.add(new m(new x.g()));
        arrayList.add(new m(new x.l()));
        arrayList.add(new m(new x.b()));
        x.a aVar = new x.a();
        h hVar = new h();
        m mVar = new m(aVar, false, hVar);
        m mVar2 = new m(aVar, true, hVar);
        hVar.f2140f = mVar;
        hVar.f2141g = mVar2;
        arrayList.add(hVar);
        arrayList.add(mVar);
        arrayList.add(mVar2);
        e();
    }

    @Override
    public final String a() {
        if (this.f2153d == null) {
            b();
            if (this.f2153d == null) {
                this.f2153d = (b) this.f2152c.get(0);
            }
        }
        return this.f2153d.a();
    }

    @Override
    public final float b() {
        int i2 = this.f2151b;
        if (i2 == 2) {
            return 0.99f;
        }
        if (i2 == 3) {
            return 0.01f;
        }
        float f2 = 0.0f;
        for (b bVar : this.f2152c) {
            if (bVar.f2107a) {
                float fB = bVar.b();
                if (f2 < fB) {
                    this.f2153d = bVar;
                    f2 = fB;
                }
            }
        }
        return f2;
    }

    @Override
    public final int c() {
        return this.f2151b;
    }

    @Override
    public final int d(byte[] bArr, int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i2);
        int i3 = i2 + 0;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        while (true) {
            boolean z3 = true;
            if (i4 >= i3) {
                break;
            }
            byte b2 = bArr[i4];
            if ((b2 & 128) == 0) {
                int i6 = b2 & 255;
                if (i6 >= 65 && ((i6 <= 90 || i6 >= 97) && i6 <= 122)) {
                    z3 = false;
                }
                if (z3) {
                    if (!z2 || i4 <= i5) {
                        i5 = i4 + 1;
                    } else {
                        byteBufferAllocate.put(bArr, i5, i4 - i5);
                        byteBufferAllocate.put((byte) 32);
                        i5 = i4 + 1;
                        z2 = false;
                    }
                }
            } else {
                z2 = true;
            }
            i4++;
        }
        if (z2 && i4 > i5) {
            byteBufferAllocate.put(bArr, i5, i4 - i5);
        }
        if (byteBufferAllocate.position() != 0) {
            for (b bVar : this.f2152c) {
                if (bVar.f2107a) {
                    int iD = bVar.d(byteBufferAllocate.array(), byteBufferAllocate.position());
                    if (iD == 2 || 0.99f == bVar.b()) {
                        this.f2153d = bVar;
                        this.f2151b = 2;
                        break;
                    }
                    if (iD == 3) {
                        bVar.f2107a = false;
                        int i7 = this.f2154e - 1;
                        this.f2154e = i7;
                        if (i7 <= 0) {
                            this.f2151b = 3;
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return this.f2151b;
    }

    @Override
    public final void e() {
        this.f2154e = 0;
        for (b bVar : this.f2152c) {
            bVar.e();
            bVar.f2107a = true;
            this.f2154e++;
        }
        this.f2153d = null;
        this.f2151b = 1;
    }
}
