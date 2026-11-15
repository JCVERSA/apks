package androidx.media3.common.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class b implements AudioProcessor {

    protected AudioProcessor.a f9515b;

    protected AudioProcessor.a f9516c;

    private AudioProcessor.a f9517d;

    private AudioProcessor.a f9518e;

    private ByteBuffer f9519f;

    private ByteBuffer f9520g;

    private boolean f9521h;

    public b() {
        ByteBuffer byteBuffer = AudioProcessor.f9503a;
        this.f9519f = byteBuffer;
        this.f9520g = byteBuffer;
        AudioProcessor.a aVar = AudioProcessor.a.f9504e;
        this.f9517d = aVar;
        this.f9518e = aVar;
        this.f9515b = aVar;
        this.f9516c = aVar;
    }

    @Override
    public final AudioProcessor.a a(AudioProcessor.a aVar) {
        this.f9517d = aVar;
        this.f9518e = c(aVar);
        return isActive() ? this.f9518e : AudioProcessor.a.f9504e;
    }

    protected final boolean b() {
        return this.f9520g.hasRemaining();
    }

    protected AudioProcessor.a c(AudioProcessor.a aVar) {
        return AudioProcessor.a.f9504e;
    }

    @Override
    public final void flush() {
        this.f9520g = AudioProcessor.f9503a;
        this.f9521h = false;
        this.f9515b = this.f9517d;
        this.f9516c = this.f9518e;
        d();
    }

    protected final ByteBuffer g(int i10) {
        if (this.f9519f.capacity() < i10) {
            this.f9519f = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        } else {
            this.f9519f.clear();
        }
        ByteBuffer byteBuffer = this.f9519f;
        this.f9520g = byteBuffer;
        return byteBuffer;
    }

    @Override
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.f9520g;
        this.f9520g = AudioProcessor.f9503a;
        return byteBuffer;
    }

    @Override
    public boolean isActive() {
        return this.f9518e != AudioProcessor.a.f9504e;
    }

    @Override
    public boolean isEnded() {
        return this.f9521h && this.f9520g == AudioProcessor.f9503a;
    }

    @Override
    public final void queueEndOfStream() {
        this.f9521h = true;
        e();
    }

    @Override
    public final void reset() {
        flush();
        this.f9519f = AudioProcessor.f9503a;
        AudioProcessor.a aVar = AudioProcessor.a.f9504e;
        this.f9517d = aVar;
        this.f9518e = aVar;
        this.f9515b = aVar;
        this.f9516c = aVar;
        f();
    }

    protected void d() {
    }

    protected void e() {
    }

    protected void f() {
    }
}
