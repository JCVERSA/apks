package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class v implements AudioProcessor {

    protected AudioProcessor.a f24084b;

    protected AudioProcessor.a f24085c;

    private AudioProcessor.a f24086d;

    private AudioProcessor.a f24087e;

    private ByteBuffer f24088f;

    private ByteBuffer f24089g;

    private boolean f24090h;

    public v() {
        ByteBuffer byteBuffer = AudioProcessor.f23837a;
        this.f24088f = byteBuffer;
        this.f24089g = byteBuffer;
        AudioProcessor.a aVar = AudioProcessor.a.f23838e;
        this.f24086d = aVar;
        this.f24087e = aVar;
        this.f24084b = aVar;
        this.f24085c = aVar;
    }

    @Override
    public final AudioProcessor.a a(AudioProcessor.a aVar) {
        this.f24086d = aVar;
        this.f24087e = c(aVar);
        return isActive() ? this.f24087e : AudioProcessor.a.f23838e;
    }

    protected final boolean b() {
        return this.f24089g.hasRemaining();
    }

    protected AudioProcessor.a c(AudioProcessor.a aVar) {
        return AudioProcessor.a.f23838e;
    }

    @Override
    public final void flush() {
        this.f24089g = AudioProcessor.f23837a;
        this.f24090h = false;
        this.f24084b = this.f24086d;
        this.f24085c = this.f24087e;
        d();
    }

    protected final ByteBuffer g(int i10) {
        if (this.f24088f.capacity() < i10) {
            this.f24088f = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        } else {
            this.f24088f.clear();
        }
        ByteBuffer byteBuffer = this.f24088f;
        this.f24089g = byteBuffer;
        return byteBuffer;
    }

    @Override
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.f24089g;
        this.f24089g = AudioProcessor.f23837a;
        return byteBuffer;
    }

    @Override
    public boolean isActive() {
        return this.f24087e != AudioProcessor.a.f23838e;
    }

    @Override
    public boolean isEnded() {
        return this.f24090h && this.f24089g == AudioProcessor.f23837a;
    }

    @Override
    public final void queueEndOfStream() {
        this.f24090h = true;
        e();
    }

    @Override
    public final void reset() {
        flush();
        this.f24088f = AudioProcessor.f23837a;
        AudioProcessor.a aVar = AudioProcessor.a.f23838e;
        this.f24086d = aVar;
        this.f24087e = aVar;
        this.f24084b = aVar;
        this.f24085c = aVar;
        f();
    }

    protected void d() {
    }

    protected void e() {
    }

    protected void f() {
    }
}
