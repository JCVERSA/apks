package androidx.media3.exoplayer.drm;

import android.os.Build;
import java.util.UUID;

public final class c0 implements androidx.media3.decoder.b {

    public static final boolean f11256d;

    public final UUID f11257a;

    public final byte[] f11258b;

    public final boolean f11259c;

    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    static {
        boolean z10;
        if ("Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        f11256d = z10;
    }

    public c0(UUID uuid, byte[] bArr) {
        this(uuid, bArr, false);
    }

    public c0(UUID uuid, byte[] bArr, boolean z10) {
        this.f11257a = uuid;
        this.f11258b = bArr;
        this.f11259c = z10;
    }
}
