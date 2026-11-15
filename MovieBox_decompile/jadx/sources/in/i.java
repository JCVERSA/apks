package in;

import androidx.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

public final class i implements AudioProcessor {

    private int f62257b;

    private float f62258c = 1.0f;

    private float f62259d = 1.0f;

    private float f62260e = 1.0f;

    private AudioProcessor.a f62261f;

    private AudioProcessor.a f62262g;

    private AudioProcessor.a f62263h;

    private AudioProcessor.a f62264i;

    private boolean f62265j;

    private h f62266k;

    private ByteBuffer f62267l;

    private ShortBuffer f62268m;

    private ByteBuffer f62269n;

    private long f62270o;

    private long f62271p;

    private boolean f62272q;

    public i() {
        AudioProcessor.a aVar = AudioProcessor.a.f9504e;
        this.f62261f = aVar;
        this.f62262g = aVar;
        this.f62263h = aVar;
        this.f62264i = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f9503a;
        this.f62267l = byteBuffer;
        this.f62268m = byteBuffer.asShortBuffer();
        this.f62269n = byteBuffer;
        this.f62257b = -1;
    }

    @Override
    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f9507c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        int i10 = this.f62257b;
        if (i10 == -1) {
            i10 = aVar.f9505a;
        }
        this.f62261f = aVar;
        AudioProcessor.a aVar2 = new AudioProcessor.a(i10, aVar.f9506b, 2);
        this.f62262g = aVar2;
        this.f62265j = true;
        return aVar2;
    }

    public float b(float f10) {
        if (this.f62260e != f10) {
            this.f62260e = f10;
            this.f62265j = true;
            h hVar = this.f62266k;
            if (hVar != null) {
                hVar.w(f10);
            }
        }
        return f10;
    }

    @Override
    public void flush() {
        if (isActive()) {
            AudioProcessor.a aVar = this.f62261f;
            this.f62263h = aVar;
            AudioProcessor.a aVar2 = this.f62262g;
            this.f62264i = aVar2;
            if (this.f62265j) {
                this.f62266k = new h(aVar.f9505a, aVar.f9506b, this.f62258c, this.f62259d, this.f62260e, aVar2.f9505a);
            } else {
                h hVar = this.f62266k;
                if (hVar != null) {
                    hVar.i();
                }
            }
        }
        this.f62269n = AudioProcessor.f9503a;
        this.f62270o = 0L;
        this.f62271p = 0L;
        this.f62272q = false;
    }

    @Override
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.f62269n;
        this.f62269n = AudioProcessor.f9503a;
        return byteBuffer;
    }

    @Override
    public boolean isActive() {
        return this.f62262g.f9505a != -1 && (Math.abs(this.f62258c - 1.0f) >= 0.01f || Math.abs(this.f62259d - 1.0f) >= 0.01f || Math.abs(this.f62260e) >= 0.01f || this.f62262g.f9505a != this.f62261f.f9505a);
    }

    @Override
    public boolean isEnded() {
        h hVar;
        return this.f62272q && ((hVar = this.f62266k) == null || hVar.k() == 0);
    }

    @Override
    public void queueEndOfStream() {
        h hVar = this.f62266k;
        if (hVar != null) {
            hVar.r();
        }
        this.f62272q = true;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        h hVar = (h) androidx.media3.common.util.a.e(this.f62266k);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.f62270o += (long) iRemaining;
            hVar.s(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
        int iK = hVar.k();
        if (iK > 0) {
            if (this.f62267l.capacity() < iK) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iK).order(ByteOrder.nativeOrder());
                this.f62267l = byteBufferOrder;
                this.f62268m = byteBufferOrder.asShortBuffer();
            } else {
                this.f62267l.clear();
                this.f62268m.clear();
            }
            hVar.j(this.f62268m);
            this.f62271p += (long) iK;
            this.f62267l.limit(iK);
            this.f62269n = this.f62267l;
        }
    }

    @Override
    public void reset() {
        this.f62258c = 1.0f;
        this.f62259d = 1.0f;
        this.f62260e = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f9504e;
        this.f62261f = aVar;
        this.f62262g = aVar;
        this.f62263h = aVar;
        this.f62264i = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f9503a;
        this.f62267l = byteBuffer;
        this.f62268m = byteBuffer.asShortBuffer();
        this.f62269n = byteBuffer;
        this.f62257b = -1;
        this.f62265j = false;
        this.f62266k = null;
        this.f62270o = 0L;
        this.f62271p = 0L;
        this.f62272q = false;
    }
}
