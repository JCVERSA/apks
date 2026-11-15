package com.google.zxing.qrcode.decoder;

enum DataMask {
    DATA_MASK_000 {
        @Override
        boolean isMasked(int i10, int i11) {
            return ((i10 + i11) & 1) == 0;
        }
    },
    DATA_MASK_001 {
        @Override
        boolean isMasked(int i10, int i11) {
            return (i10 & 1) == 0;
        }
    },
    DATA_MASK_010 {
        @Override
        boolean isMasked(int i10, int i11) {
            return i11 % 3 == 0;
        }
    },
    DATA_MASK_011 {
        @Override
        boolean isMasked(int i10, int i11) {
            return (i10 + i11) % 3 == 0;
        }
    },
    DATA_MASK_100 {
        @Override
        boolean isMasked(int i10, int i11) {
            return (((i10 / 2) + (i11 / 3)) & 1) == 0;
        }
    },
    DATA_MASK_101 {
        @Override
        boolean isMasked(int i10, int i11) {
            return (i10 * i11) % 6 == 0;
        }
    },
    DATA_MASK_110 {
        @Override
        boolean isMasked(int i10, int i11) {
            return (i10 * i11) % 6 < 3;
        }
    },
    DATA_MASK_111 {
        @Override
        boolean isMasked(int i10, int i11) {
            return (((i10 + i11) + ((i10 * i11) % 3)) & 1) == 0;
        }
    };

    abstract boolean isMasked(int i10, int i11);

    final void unmaskBitMatrix(kd.b bVar, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            for (int i12 = 0; i12 < i10; i12++) {
                if (isMasked(i11, i12)) {
                    bVar.g(i12, i11);
                }
            }
        }
    }
}
