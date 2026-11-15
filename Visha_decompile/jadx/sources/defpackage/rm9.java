package defpackage;

import com.google.android.exoplayer2.decoder.SimpleDecoder;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.nio.ByteBuffer;

public abstract class rm9 extends SimpleDecoder implements o2a {
    public final String n;

    public class a extends k5a {
        public a() {
        }

        @Override
        public void l() {
            rm9.this.n(this);
        }
    }

    public rm9(String str) {
        super(new y4a[2], new k5a[2]);
        this.n = str;
        q(1024);
    }

    @Override
    public final y4a c() {
        return new y4a();
    }

    @Override
    public void setPositionUs(long j) {
    }

    @Override
    public final k5a d() {
        return new a();
    }

    @Override
    public final SubtitleDecoderException e(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    public abstract l2a v(byte[] bArr, int i, boolean z);

    @Override
    public final SubtitleDecoderException f(y4a y4aVar, k5a k5aVar, boolean z) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) zi.e(y4aVar.d);
            k5aVar.m(y4aVar.f, v(byteBuffer.array(), byteBuffer.limit(), z), y4aVar.j);
            k5aVar.d(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }
}
