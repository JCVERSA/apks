package mgtv.qt;

final class n implements Runnable {
    private String a;
    private String b;
    private boolean c;

    public n(String str, String str2, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = z;
    }

    @Override
    public final void run() {
        i.f(this.a, this.b, this.c);
    }
}
