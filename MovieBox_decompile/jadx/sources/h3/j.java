package h3;

import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.extractor.text.SubtitleDecoderException;
import java.nio.ByteBuffer;

public abstract class j extends SimpleDecoder implements l {

    private final String f61244o;

    class a extends p {
        a() {
        }

        @Override
        public void release() {
            j.this.p(this);
        }
    }

    protected j(String str) {
        super(new o[2], new p[2]);
        this.f61244o = str;
        s(1024);
    }

    @Override
    public final String getName() {
        return this.f61244o;
    }

    @Override
    public final o e() {
        return new o();
    }

    @Override
    public final p f() {
        return new a();
    }

    @Override
    public final SubtitleDecoderException g(Throwable th2) {
        return new SubtitleDecoderException("Unexpected decode error", th2);
    }

    @Override
    public final SubtitleDecoderException h(o oVar, p pVar, boolean z10) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(oVar.f10606c);
            pVar.a(oVar.f10608e, y(byteBuffer.array(), byteBuffer.limit(), z10), oVar.f61260i);
            pVar.shouldBeSkipped = false;
            return null;
        } catch (SubtitleDecoderException e10) {
            return e10;
        }
    }

    protected abstract k y(byte[] bArr, int i10, boolean z10);

    @Override
    public void setPositionUs(long j10) {
    }
}
