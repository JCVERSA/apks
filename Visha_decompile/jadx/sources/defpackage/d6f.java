package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public final class d6f {
    public final s8f a;
    public boolean b;
    public long c;
    public long d;

    public d6f(s8f s8fVar) {
        y4f.c(s8fVar, "ticker");
        this.a = s8fVar;
    }

    public static d6f b(s8f s8fVar) {
        d6f d6fVar = new d6f(s8fVar);
        d6fVar.e();
        return d6fVar;
    }

    public static d6f c(s8f s8fVar) {
        return new d6f(s8fVar);
    }

    public final long a(TimeUnit timeUnit) {
        return timeUnit.convert(h(), TimeUnit.NANOSECONDS);
    }

    public final d6f d() {
        this.c = 0L;
        this.b = false;
        return this;
    }

    public final d6f e() {
        y4f.e(!this.b, "This stopwatch is already running.");
        this.b = true;
        this.d = this.a.a();
        return this;
    }

    public final d6f f() {
        long jA = this.a.a();
        y4f.e(this.b, "This stopwatch is already stopped.");
        this.b = false;
        this.c += jA - this.d;
        return this;
    }

    public final boolean g() {
        return this.b;
    }

    public final long h() {
        return this.b ? (this.a.a() - this.d) + this.c : this.c;
    }

    public final String toString() {
        String str;
        long jH = h();
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(jH, timeUnit2) <= 0) {
            timeUnit = TimeUnit.HOURS;
            if (timeUnit.convert(jH, timeUnit2) <= 0) {
                timeUnit = TimeUnit.MINUTES;
                if (timeUnit.convert(jH, timeUnit2) <= 0) {
                    timeUnit = TimeUnit.SECONDS;
                    if (timeUnit.convert(jH, timeUnit2) <= 0) {
                        timeUnit = TimeUnit.MILLISECONDS;
                        if (timeUnit.convert(jH, timeUnit2) <= 0) {
                            timeUnit = TimeUnit.MICROSECONDS;
                            if (timeUnit.convert(jH, timeUnit2) <= 0) {
                                timeUnit = timeUnit2;
                            }
                        }
                    }
                }
            }
        }
        String str2 = String.format(Locale.ROOT, "%.4g", Double.valueOf(jH / timeUnit2.convert(1L, timeUnit)));
        switch (k5f.a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = CmcdData.STREAMING_FORMAT_HLS;
                break;
            case 7:
                str = "d";
                break;
            default:
                throw new AssertionError();
        }
        return str2 + " " + str;
    }
}
