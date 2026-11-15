package mgtv.qt;

import defpackage.hld;
import defpackage.s3d;
import defpackage.s4d;

final class ae implements Runnable {
    private b a;

    public ae(b bVar) {
        this.a = bVar;
    }

    @Override
    public final void run() {
        try {
            if (c.l == 0) {
                long j = s3d.c;
                long unused = s3d.c = 0L;
                if (j <= 0) {
                    j = s3d.d;
                }
                long jCurrentTimeMillis = (System.currentTimeMillis() - j) / 1000;
                c.f(hld.p(c.j) + " 到后台   使用时长 " + jCurrentTimeMillis + " 秒 process: " + hld.f());
                new s4d(j, s3d.a, jCurrentTimeMillis < 0 ? "0" : String.valueOf(jCurrentTimeMillis));
                c.a();
                c.m();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
