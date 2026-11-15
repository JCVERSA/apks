package androidx.media3.common.audio;

import androidx.media3.common.util.a1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

public final class d implements AudioProcessor {

    private final boolean f9545b;

    private int f9546c;

    private float f9547d;

    private float f9548e;

    private AudioProcessor.a f9549f;

    private AudioProcessor.a f9550g;

    private AudioProcessor.a f9551h;

    private AudioProcessor.a f9552i;

    private boolean f9553j;

    private c f9554k;

    private ByteBuffer f9555l;

    private ShortBuffer f9556m;

    private ByteBuffer f9557n;

    private long f9558o;

    private long f9559p;

    private boolean f9560q;

    public d() {
        this(false);
    }

    private boolean b() {
        return Math.abs(this.f9547d - 1.0f) < 1.0E-4f && Math.abs(this.f9548e - 1.0f) < 1.0E-4f && this.f9550g.f9505a == this.f9549f.f9505a;
    }

    @Override
    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f9507c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        int i10 = this.f9546c;
        if (i10 == -1) {
            i10 = aVar.f9505a;
        }
        this.f9549f = aVar;
        AudioProcessor.a aVar2 = new AudioProcessor.a(i10, aVar.f9506b, 2);
        this.f9550g = aVar2;
        this.f9553j = true;
        return aVar2;
    }

    public long c(long j10) {
        if (this.f9559p < 1024) {
            return (long) (((double) this.f9547d) * j10);
        }
        long jL = this.f9558o - ((long) ((c) androidx.media3.common.util.a.e(this.f9554k)).l());
        int i10 = this.f9552i.f9505a;
        int i11 = this.f9551h.f9505a;
        return i10 == i11 ? a1.e1(j10, jL, this.f9559p) : a1.e1(j10, jL * ((long) i10), this.f9559p * ((long) i11));
    }

    public void d(float f10) {
        androidx.media3.common.util.a.a(f10 > 0.0f);
        if (this.f9548e != f10) {
            this.f9548e = f10;
            this.f9553j = true;
        }
    }

    public void e(float f10) {
        androidx.media3.common.util.a.a(f10 > 0.0f);
        if (this.f9547d != f10) {
            this.f9547d = f10;
            this.f9553j = true;
        }
    }

    @Override
    public void flush() {
        if (isActive()) {
            AudioProcessor.a aVar = this.f9549f;
            this.f9551h = aVar;
            AudioProcessor.a aVar2 = this.f9550g;
            this.f9552i = aVar2;
            if (this.f9553j) {
                this.f9554k = new c(aVar.f9505a, aVar.f9506b, this.f9547d, this.f9548e, aVar2.f9505a);
            } else {
                c cVar = this.f9554k;
                if (cVar != null) {
                    cVar.i();
                }
            }
        }
        this.f9557n = AudioProcessor.f9503a;
        this.f9558o = 0L;
        this.f9559p = 0L;
        this.f9560q = false;
    }

    @Override
    public ByteBuffer getOutput() {
        int iK;
        c cVar = this.f9554k;
        if (cVar != null && (iK = cVar.k()) > 0) {
            if (this.f9555l.capacity() < iK) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iK).order(ByteOrder.nativeOrder());
                this.f9555l = byteBufferOrder;
                this.f9556m = byteBufferOrder.asShortBuffer();
            } else {
                this.f9555l.clear();
                this.f9556m.clear();
            }
            cVar.j(this.f9556m);
            this.f9559p += (long) iK;
            this.f9555l.limit(iK);
            this.f9557n = this.f9555l;
        }
        ByteBuffer byteBuffer = this.f9557n;
        this.f9557n = AudioProcessor.f9503a;
        return byteBuffer;
    }

    @Override
    public boolean isActive() {
        return this.f9550g.f9505a != -1 && (this.f9545b || !b());
    }

    @Override
    public boolean isEnded() {
        c cVar;
        return this.f9560q && ((cVar = this.f9554k) == null || cVar.k() == 0);
    }

    @Override
    public void queueEndOfStream() {
        c cVar = this.f9554k;
        if (cVar != null) {
            cVar.s();
        }
        this.f9560q = true;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            c cVar = (c) androidx.media3.common.util.a.e(this.f9554k);
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.f9558o += (long) iRemaining;
            cVar.t(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override
    public void reset() {
        this.f9547d = 1.0f;
        this.f9548e = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f9504e;
        this.f9549f = aVar;
        this.f9550g = aVar;
        this.f9551h = aVar;
        this.f9552i = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f9503a;
        this.f9555l = byteBuffer;
        this.f9556m = byteBuffer.asShortBuffer();
        this.f9557n = byteBuffer;
        this.f9546c = -1;
        this.f9553j = false;
        this.f9554k = null;
        this.f9558o = 0L;
        this.f9559p = 0L;
        this.f9560q = false;
    }

    d(boolean z10) {
        this.f9547d = 1.0f;
        this.f9548e = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f9504e;
        this.f9549f = aVar;
        this.f9550g = aVar;
        this.f9551h = aVar;
        this.f9552i = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f9503a;
        this.f9555l = byteBuffer;
        this.f9556m = byteBuffer.asShortBuffer();
        this.f9557n = byteBuffer;
        this.f9546c = -1;
        this.f9545b = z10;
    }
}
