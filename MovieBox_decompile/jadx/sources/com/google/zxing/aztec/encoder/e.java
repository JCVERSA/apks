package com.google.zxing.aztec.encoder;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

final class e {

    static final e f32017f = new e(f.f32023b, 0, 0, 0);

    private final int f32018a;

    private final f f32019b;

    private final int f32020c;

    private final int f32021d;

    private final int f32022e;

    private e(f fVar, int i10, int i11, int i12) {
        this.f32019b = fVar;
        this.f32018a = i10;
        this.f32020c = i11;
        this.f32021d = i12;
        this.f32022e = c(i11);
    }

    private static int c(int i10) {
        if (i10 > 62) {
            return 21;
        }
        if (i10 > 31) {
            return 20;
        }
        return i10 > 0 ? 10 : 0;
    }

    e a(int i10) {
        int i11;
        f fVarA = this.f32019b;
        int i12 = this.f32018a;
        int i13 = this.f32021d;
        if (i12 == 4 || i12 == 2) {
            int i14 = HighLevelEncoder.f32002d[i12][0];
            int i15 = 65535 & i14;
            int i16 = i14 >> 16;
            fVarA = fVarA.a(i15, i16);
            i13 += i16;
            i12 = 0;
        }
        int i17 = this.f32020c;
        if (i17 == 0 || i17 == 31) {
            i11 = 18;
        } else {
            i11 = i17 == 62 ? 9 : 8;
        }
        e eVar = new e(fVarA, i12, i17 + 1, i13 + i11);
        return eVar.f32020c == 2078 ? eVar.d(i10 + 1) : eVar;
    }

    e b(int i10) {
        f fVarA;
        f fVar = j(4, 0).f32019b;
        int length = 3;
        if (i10 < 0) {
            fVarA = fVar.a(0, 3);
        } else {
            if (i10 > 999999) {
                throw new IllegalArgumentException("ECI code must be between 0 and 999999");
            }
            byte[] bytes = Integer.toString(i10).getBytes(StandardCharsets.ISO_8859_1);
            f fVarA2 = fVar.a(bytes.length, 3);
            for (byte b10 : bytes) {
                fVarA2 = fVarA2.a(b10 - 46, 4);
            }
            length = 3 + (bytes.length * 4);
            fVarA = fVarA2;
        }
        return new e(fVarA, this.f32018a, 0, this.f32021d + length);
    }

    e d(int i10) {
        int i11 = this.f32020c;
        return i11 == 0 ? this : new e(this.f32019b.b(i10 - i11, i11), this.f32018a, 0, this.f32021d);
    }

    int e() {
        return this.f32020c;
    }

    int f() {
        return this.f32021d;
    }

    int g() {
        return this.f32018a;
    }

    boolean h(e eVar) {
        int i10 = this.f32021d + (HighLevelEncoder.f32002d[this.f32018a][eVar.f32018a] >> 16);
        int i11 = this.f32020c;
        int i12 = eVar.f32020c;
        if (i11 < i12) {
            i10 += eVar.f32022e - this.f32022e;
        } else if (i11 > i12 && i12 > 0) {
            i10 += 10;
        }
        return i10 <= eVar.f32021d;
    }

    e i(int i10, int i11) {
        int i12 = this.f32021d;
        f fVarA = this.f32019b;
        int i13 = this.f32018a;
        if (i10 != i13) {
            int i14 = HighLevelEncoder.f32002d[i13][i10];
            int i15 = 65535 & i14;
            int i16 = i14 >> 16;
            fVarA = fVarA.a(i15, i16);
            i12 += i16;
        }
        int i17 = i10 == 2 ? 4 : 5;
        return new e(fVarA.a(i11, i17), i10, 0, i12 + i17);
    }

    e j(int i10, int i11) {
        f fVar = this.f32019b;
        int i12 = this.f32018a;
        int i13 = i12 == 2 ? 4 : 5;
        return new e(fVar.a(HighLevelEncoder.f32004f[i12][i10], i13).a(i11, 5), this.f32018a, 0, this.f32021d + i13 + 5);
    }

    kd.a k(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        for (f fVarD = d(bArr.length).f32019b; fVarD != null; fVarD = fVarD.d()) {
            arrayList.add(fVarD);
        }
        kd.a aVar = new kd.a();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((f) arrayList.get(size)).c(aVar, bArr);
        }
        return aVar;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", HighLevelEncoder.f32001c[this.f32018a], Integer.valueOf(this.f32021d), Integer.valueOf(this.f32020c));
    }
}
