package defpackage;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.measurement.internal.a;
import org.apache.commons.lang3.time.DateUtils;

public final class w6j {
    public long a;
    public long b;
    public final a c;
    public final b7j d;

    public w6j(b7j b7jVar) {
        this.d = b7jVar;
        this.c = new t6j(this, b7jVar.a);
        long jElapsedRealtime = b7jVar.a.c().elapsedRealtime();
        this.a = jElapsedRealtime;
        this.b = jElapsedRealtime;
    }

    public final void a() {
        this.c.b();
        this.a = 0L;
        this.b = 0L;
    }

    public final void b(long j) {
        this.c.b();
    }

    public final void c(long j) {
        this.d.g();
        this.c.b();
        this.a = j;
        this.b = j;
    }

    public final boolean d(boolean z, boolean z2, long j) {
        this.d.g();
        this.d.h();
        hej.b();
        if (!this.d.a.z().v(null, kwg.f0) || this.d.a.o()) {
            this.d.a.F().o.b(this.d.a.c().currentTimeMillis());
        }
        long j2 = j - this.a;
        if (!z && j2 < 1000) {
            this.d.a.b().u().b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j2));
            return false;
        }
        if (!z2) {
            j2 = j - this.b;
            this.b = j;
        }
        this.d.a.b().u().b("Recording user engagement, ms", Long.valueOf(j2));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j2);
        c9j.x(this.d.a.K().r(!this.d.a.z().w()), bundle, true);
        if (!z2) {
            this.d.a.I().t(TtmlNode.TEXT_EMPHASIS_AUTO, "_e", bundle);
        }
        this.a = j;
        this.c.b();
        this.c.d(DateUtils.MILLIS_PER_HOUR);
        return true;
    }
}
