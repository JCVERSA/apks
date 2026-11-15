package androidx.media;

import java.util.Arrays;

public class AudioAttributesImplBase implements AudioAttributesImpl {

    public int f9394a = 0;

    public int f9395b = 0;

    public int f9396c = 0;

    public int f9397d = -1;

    public int a() {
        return this.f9395b;
    }

    public int b() {
        int i10 = this.f9396c;
        int iC = c();
        if (iC == 6) {
            i10 |= 4;
        } else if (iC == 7) {
            i10 |= 1;
        }
        return i10 & 273;
    }

    public int c() {
        int i10 = this.f9397d;
        return i10 != -1 ? i10 : AudioAttributesCompat.a(false, this.f9396c, this.f9394a);
    }

    public int d() {
        return this.f9394a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.f9395b == audioAttributesImplBase.a() && this.f9396c == audioAttributesImplBase.b() && this.f9394a == audioAttributesImplBase.d() && this.f9397d == audioAttributesImplBase.f9397d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f9395b), Integer.valueOf(this.f9396c), Integer.valueOf(this.f9394a), Integer.valueOf(this.f9397d)});
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("AudioAttributesCompat:");
        if (this.f9397d != -1) {
            sb2.append(" stream=");
            sb2.append(this.f9397d);
            sb2.append(" derived");
        }
        sb2.append(" usage=");
        sb2.append(AudioAttributesCompat.b(this.f9394a));
        sb2.append(" content=");
        sb2.append(this.f9395b);
        sb2.append(" flags=0x");
        sb2.append(Integer.toHexString(this.f9396c).toUpperCase());
        return sb2.toString();
    }
}
