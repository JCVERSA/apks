package defpackage;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;

public final class z6j {
    public final b7j a;

    public z6j(b7j b7jVar) {
        this.a = b7jVar;
    }

    public final void a() {
        this.a.g();
        if (this.a.a.F().u(this.a.a.c().currentTimeMillis())) {
            this.a.a.F().l.a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.a.a.b().u().a("Detected application was in foreground");
                c(this.a.a.c().currentTimeMillis(), false);
            }
        }
    }

    public final void b(long j, boolean z) {
        this.a.g();
        this.a.r();
        if (this.a.a.F().u(j)) {
            this.a.a.F().l.a(true);
            sfj.b();
            if (this.a.a.z().v(null, kwg.u0)) {
                this.a.a.B().t();
            }
        }
        this.a.a.F().o.b(j);
        if (this.a.a.F().l.b()) {
            c(j, z);
        }
    }

    public final void c(long j, boolean z) {
        this.a.g();
        if (this.a.a.o()) {
            this.a.a.F().o.b(j);
            this.a.a.b().u().b("Session started, time", Long.valueOf(this.a.a.c().elapsedRealtime()));
            long j2 = j / 1000;
            this.a.a.I().L(TtmlNode.TEXT_EMPHASIS_AUTO, "_sid", Long.valueOf(j2), j);
            this.a.a.F().l.a(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j2);
            if (this.a.a.z().v(null, kwg.b0) && z) {
                bundle.putLong("_aib", 1L);
            }
            this.a.a.I().u(TtmlNode.TEXT_EMPHASIS_AUTO, "_s", j, bundle);
            kdj.b();
            if (this.a.a.z().v(null, kwg.e0)) {
                String strA = this.a.a.F().t.a();
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", strA);
                this.a.a.I().u(TtmlNode.TEXT_EMPHASIS_AUTO, "_ssr", j, bundle2);
            }
        }
    }
}
