package defpackage;

public final class jde implements iqe {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;

    public jde(long j, long j2, long j3, long j4, long j5) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
    }

    @Override
    public final void a(une uneVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && jde.class == obj.getClass()) {
            jde jdeVar = (jde) obj;
            if (this.a == jdeVar.a && this.b == jdeVar.b && this.c == jdeVar.c && this.d == jdeVar.d && this.e == jdeVar.e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.e;
        long j3 = this.d;
        long j4 = this.c;
        long j5 = this.b;
        return ((((((((i + 527) * 31) + ((int) ((j5 >>> 32) ^ j5))) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.a + ", photoSize=" + this.b + ", photoPresentationTimestampUs=" + this.c + ", videoStartPosition=" + this.d + ", videoSize=" + this.e;
    }
}
