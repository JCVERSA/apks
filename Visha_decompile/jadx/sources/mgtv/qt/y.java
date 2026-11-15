package mgtv.qt;

final class y implements Runnable {
    private long a;
    private Runnable b;

    public y(long j, Runnable runnable) {
        this.a = j;
        this.b = runnable;
    }

    @Override
    public final void run() {
        try {
            Thread.sleep(this.a);
            this.b.run();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
