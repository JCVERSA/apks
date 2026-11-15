package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.p0;
import java.util.UUID;

public final class d0 implements com.google.android.exoplayer2.decoder.b {

    public static final boolean f24334d;

    public final UUID f24335a;

    public final byte[] f24336b;

    public final boolean f24337c;

    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    static {
        boolean z10;
        if ("Amazon".equals(p0.f26856c)) {
            String str = p0.f26857d;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        f24334d = z10;
    }

    public d0(UUID uuid, byte[] bArr, boolean z10) {
        this.f24335a = uuid;
        this.f24336b = bArr;
        this.f24337c = z10;
    }
}
