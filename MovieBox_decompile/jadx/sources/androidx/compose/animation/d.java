package androidx.compose.animation;

import androidx.collection.s;

public final class d {

    private final float f2206a;

    private final o0.e f2207b;

    private final float f2208c;

    public static final class a {

        private final float f2209a;

        private final float f2210b;

        private final long f2211c;

        public a(float f10, float f11, long j10) {
            this.f2209a = f10;
            this.f2210b = f11;
            this.f2211c = j10;
        }

        public final float a(long j10) {
            long j11 = this.f2211c;
            return this.f2210b * Math.signum(this.f2209a) * androidx.compose.animation.a.f2059a.b(j11 > 0 ? j10 / j11 : 1.0f).a();
        }

        public final float b(long j10) {
            long j11 = this.f2211c;
            return (((androidx.compose.animation.a.f2059a.b(j11 > 0 ? j10 / j11 : 1.0f).b() * Math.signum(this.f2209a)) * this.f2210b) / this.f2211c) * 1000.0f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Float.compare(this.f2209a, aVar.f2209a) == 0 && Float.compare(this.f2210b, aVar.f2210b) == 0 && this.f2211c == aVar.f2211c;
        }

        public int hashCode() {
            return (((Float.floatToIntBits(this.f2209a) * 31) + Float.floatToIntBits(this.f2210b)) * 31) + s.a(this.f2211c);
        }

        public String toString() {
            return "FlingInfo(initialVelocity=" + this.f2209a + ", distance=" + this.f2210b + ", duration=" + this.f2211c + ')';
        }
    }

    public d(float f10, o0.e eVar) {
        this.f2206a = f10;
        this.f2207b = eVar;
        this.f2208c = a(eVar);
    }

    private final float a(o0.e eVar) {
        return e.c(0.84f, eVar.getDensity());
    }

    private final double e(float f10) {
        return androidx.compose.animation.a.f2059a.a(f10, this.f2206a * this.f2208c);
    }

    public final float b(float f10) {
        return (float) (((double) (this.f2206a * this.f2208c)) * Math.exp((((double) e.f2212a) / (((double) e.f2212a) - 1.0d)) * e(f10)));
    }

    public final long c(float f10) {
        return (long) (Math.exp(e(f10) / (((double) e.f2212a) - 1.0d)) * 1000.0d);
    }

    public final a d(float f10) {
        double dE = e(f10);
        double d10 = ((double) e.f2212a) - 1.0d;
        return new a(f10, (float) (((double) (this.f2206a * this.f2208c)) * Math.exp((((double) e.f2212a) / d10) * dE)), (long) (Math.exp(dE / d10) * 1000.0d));
    }
}
