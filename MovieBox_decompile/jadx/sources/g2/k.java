package g2;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

public abstract class k extends e {

    private byte[] f60642j;

    private volatile boolean f60643k;

    public k(androidx.media3.datasource.a aVar, w1.h hVar, int i10, r rVar, int i11, Object obj, byte[] bArr) {
        super(aVar, hVar, i10, rVar, i11, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.f60642j = bArr == null ? a1.f10043f : bArr;
    }

    private void g(int i10) {
        byte[] bArr = this.f60642j;
        if (bArr.length < i10 + 16384) {
            this.f60642j = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override
    public final void cancelLoad() {
        this.f60643k = true;
    }

    protected abstract void e(byte[] bArr, int i10);

    public byte[] f() {
        return this.f60642j;
    }

    @Override
    public final void load() {
        try {
            this.f60603i.a(this.f60596b);
            int i10 = 0;
            int i11 = 0;
            while (i10 != -1 && !this.f60643k) {
                g(i11);
                i10 = this.f60603i.read(this.f60642j, i11, 16384);
                if (i10 != -1) {
                    i11 += i10;
                }
            }
            if (!this.f60643k) {
                e(this.f60642j, i11);
            }
        } finally {
            w1.g.a(this.f60603i);
        }
    }
}
