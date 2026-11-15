package com.google.zxing.datamatrix.encoder;

import androidx.core.view.InputDeviceCompat;

final class b implements e {
    b() {
    }

    private static char c(char c10, int i10) {
        int i11 = c10 + ((i10 * 149) % 255) + 1;
        return i11 <= 255 ? (char) i11 : (char) (i11 + InputDeviceCompat.SOURCE_ANY);
    }

    @Override
    public void a(f fVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((char) 0);
        while (fVar.i()) {
            sb2.append(fVar.c());
            fVar.f32070d++;
            if (g.n(fVar.d(), fVar.f32070d, b()) != b()) {
                fVar.o(0);
                break;
            }
        }
        int length = sb2.length() - 1;
        int iA = fVar.a() + length + 1;
        fVar.q(iA);
        boolean z10 = fVar.g().a() - iA > 0;
        if (fVar.i() || z10) {
            if (length <= 249) {
                sb2.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    throw new IllegalStateException("Message length not in valid ranges: " + length);
                }
                sb2.setCharAt(0, (char) ((length / 250) + 249));
                sb2.insert(1, (char) (length % 250));
            }
        }
        int length2 = sb2.length();
        for (int i10 = 0; i10 < length2; i10++) {
            fVar.r(c(sb2.charAt(i10), fVar.a() + 1));
        }
    }

    public int b() {
        return 5;
    }
}
