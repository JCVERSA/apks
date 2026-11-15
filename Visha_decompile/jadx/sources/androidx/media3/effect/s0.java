package androidx.media3.effect;

public final class s0 implements VideoFrameProcessingTaskExecutor.Task {
    public final GlShaderProgram a;

    @Override
    public final void run() {
        this.a.signalEndOfCurrentInputStream();
    }
}
