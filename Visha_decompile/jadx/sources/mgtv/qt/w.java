package mgtv.qt;

import defpackage.s3d;

final class w implements Runnable {
    private String a;
    private String b;
    private String c;
    private boolean d;

    public w(String str, String str2, String str3, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
    }

    @Override
    public final void run() {
        try {
            c.d(c.k, this.a, this.b, this.d);
            e.g(c.k);
            s3d.b();
            c.b(c.k);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
