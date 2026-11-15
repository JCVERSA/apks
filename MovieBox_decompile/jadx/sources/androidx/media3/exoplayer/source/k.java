package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

final class k implements q {

    private final Uri f12526a;

    private final f2.z f12527b;

    private final byte[] f12528c;

    private final AtomicBoolean f12529d = new AtomicBoolean();

    private final AtomicReference f12530e = new AtomicReference();

    private com.google.common.util.concurrent.r f12531f;

    private final class a implements f2.u {

        private int f12532a = 0;

        public a() {
        }

        @Override
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            int i11 = this.f12532a;
            if (i11 == 2) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            if ((i10 & 2) != 0 || i11 == 0) {
                s2Var.f12258b = k.this.f12527b.b(0).a(0);
                this.f12532a = 1;
                return -5;
            }
            if (!k.this.f12529d.get()) {
                return -3;
            }
            int length = k.this.f12528c.length;
            decoderInputBuffer.addFlag(1);
            decoderInputBuffer.f10608e = 0L;
            if ((i10 & 4) == 0) {
                decoderInputBuffer.b(length);
                decoderInputBuffer.f10606c.put(k.this.f12528c, 0, length);
            }
            if ((i10 & 1) == 0) {
                this.f12532a = 2;
            }
            return -4;
        }

        @Override
        public boolean isReady() {
            return k.this.f12529d.get();
        }

        @Override
        public void maybeThrowError() throws IOException {
            Throwable th2 = (Throwable) k.this.f12530e.get();
            if (th2 != null) {
                throw new IOException(th2);
            }
        }

        @Override
        public int skipData(long j10) {
            return 0;
        }
    }

    public k(Uri uri, String str, j jVar) {
        this.f12526a = uri;
        this.f12527b = new f2.z(new androidx.media3.common.f0(new androidx.media3.common.r.b().u0(str).N()));
        this.f12528c = uri.toString().getBytes(StandardCharsets.UTF_8);
    }

    @Override
    public boolean a(v2 v2Var) {
        return !this.f12529d.get();
    }

    @Override
    public long e(i2.z[] zVarArr, boolean[] zArr, f2.u[] uVarArr, boolean[] zArr2, long j10) {
        for (int i10 = 0; i10 < zVarArr.length; i10++) {
            if (uVarArr[i10] != null && (zVarArr[i10] == null || !zArr[i10])) {
                uVarArr[i10] = null;
            }
            if (uVarArr[i10] == null && zVarArr[i10] != null) {
                uVarArr[i10] = new a();
                zArr2[i10] = true;
            }
        }
        return j10;
    }

    @Override
    public void f(q.a aVar, long j10) {
        aVar.g(this);
        new j.a(this.f12526a);
        throw null;
    }

    @Override
    public long getBufferedPositionUs() {
        return this.f12529d.get() ? Long.MIN_VALUE : 0L;
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.f12529d.get() ? Long.MIN_VALUE : 0L;
    }

    @Override
    public f2.z getTrackGroups() {
        return this.f12527b;
    }

    public void i() {
        com.google.common.util.concurrent.r rVar = this.f12531f;
        if (rVar != null) {
            rVar.cancel(false);
        }
    }

    @Override
    public boolean isLoading() {
        return !this.f12529d.get();
    }

    @Override
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override
    public void maybeThrowPrepareError() {
    }

    @Override
    public void reevaluateBuffer(long j10) {
    }

    @Override
    public long seekToUs(long j10) {
        return j10;
    }

    @Override
    public long b(long j10, c4 c4Var) {
        return j10;
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
    }
}
