package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;

public final class w52 {
    public final boolean a;

    @Nullable
    public final String b;
    public final a62.a c;
    public final int d;

    @Nullable
    public final byte[] e;

    public w52(boolean z, @Nullable String str, int i, byte[] bArr, int i2, int i3, @Nullable byte[] bArr2) {
        hg.a((bArr2 == null) ^ (i == 0));
        this.a = z;
        this.b = str;
        this.d = i;
        this.e = bArr2;
        this.c = new a62.a(a(str), i2, i3, bArr);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static int a(@Nullable String str) {
        if (str == null) {
            return 1;
        }
        byte b = -1;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(C.CENC_TYPE_cbc1)) {
                    b = 0;
                }
                break;
            case 3046671:
                if (str.equals(C.CENC_TYPE_cbcs)) {
                    b = 1;
                }
                break;
            case 3049879:
                if (str.equals(C.CENC_TYPE_cenc)) {
                    b = 2;
                }
                break;
            case 3049895:
                if (str.equals(C.CENC_TYPE_cens)) {
                    b = 3;
                }
                break;
        }
        switch (b) {
            case 0:
            case 1:
                return 2;
            default:
                et0.d("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
            case 2:
            case 3:
                return 1;
        }
    }
}
