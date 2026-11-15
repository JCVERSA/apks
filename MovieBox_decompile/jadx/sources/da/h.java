package da;

import com.google.android.exoplayer2.decoder.SimpleDecoder;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.nio.ByteBuffer;

public abstract class h extends SimpleDecoder implements j {

    private final String f58969n;

    class a extends n {
        a() {
        }

        @Override
        public void l() {
            h.this.n(this);
        }
    }

    protected h(String str) {
        super(new m[2], new n[2]);
        this.f58969n = str;
        q(1024);
    }

    @Override
    public final m c() {
        return new m();
    }

    @Override
    public final n d() {
        return new a();
    }

    @Override
    public final SubtitleDecoderException e(Throwable th2) {
        return new SubtitleDecoderException("Unexpected decode error", th2);
    }

    @Override
    public final SubtitleDecoderException f(m mVar, n nVar, boolean z10) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(mVar.f24202c);
            nVar.m(mVar.f24204e, w(byteBuffer.array(), byteBuffer.limit(), z10), mVar.f58983i);
            nVar.d(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e10) {
            return e10;
        }
    }

    protected abstract i w(byte[] bArr, int i10, boolean z10);

    @Override
    public void setPositionUs(long j10) {
    }
}
