package c2;

import android.graphics.Bitmap;
import androidx.media3.common.ParserException;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.y;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.exoplayer.image.ImageDecoderException;
import androidx.media3.exoplayer.x3;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class a extends SimpleDecoder implements c2.c {

    private final b f16382o;

    class C0144a extends d {
        C0144a() {
        }

        @Override
        public void release() {
            a.this.p(this);
        }
    }

    public interface b {
        Bitmap a(byte[] bArr, int i10);
    }

    public static final class c implements c2.c.a {

        private final b f16384b = new b() {
            @Override
            public final Bitmap a(byte[] bArr, int i10) {
                return a.t(bArr, i10);
            }
        };

        @Override
        public int a(r rVar) {
            String str = rVar.f9849o;
            if (str == null || !y.q(str)) {
                return x3.a(0);
            }
            return a1.E0(rVar.f9849o) ? x3.a(4) : x3.a(1);
        }

        @Override
        public a b() {
            return new a(this.f16384b, null);
        }
    }

    a(b bVar, C0144a c0144a) {
        this(bVar);
    }

    public static Bitmap t(byte[] bArr, int i10) {
        return x(bArr, i10);
    }

    public static Bitmap x(byte[] bArr, int i10) throws ImageDecoderException {
        try {
            return w1.b.a(bArr, i10, null, -1);
        } catch (ParserException e10) {
            throw new ImageDecoderException("Could not decode image data with BitmapFactory. (data.length = " + bArr.length + ", input length = " + i10 + ")", e10);
        } catch (IOException e11) {
            throw new ImageDecoderException(e11);
        }
    }

    @Override
    public d dequeueOutputBuffer() {
        return (d) super.dequeueOutputBuffer();
    }

    @Override
    protected DecoderInputBuffer e() {
        return new DecoderInputBuffer(1);
    }

    @Override
    public String getName() {
        return "BitmapFactoryImageDecoder";
    }

    @Override
    public d f() {
        return new C0144a();
    }

    @Override
    public ImageDecoderException g(Throwable th2) {
        return new ImageDecoderException("Unexpected decode error", th2);
    }

    @Override
    public ImageDecoderException h(DecoderInputBuffer decoderInputBuffer, d dVar, boolean z10) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(decoderInputBuffer.f10606c);
            androidx.media3.common.util.a.g(byteBuffer.hasArray());
            androidx.media3.common.util.a.a(byteBuffer.arrayOffset() == 0);
            dVar.f16386a = this.f16382o.a(byteBuffer.array(), byteBuffer.remaining());
            dVar.timeUs = decoderInputBuffer.f10608e;
            return null;
        } catch (ImageDecoderException e10) {
            return e10;
        }
    }

    private a(b bVar) {
        super(new DecoderInputBuffer[1], new d[1]);
        this.f16382o = bVar;
    }
}
