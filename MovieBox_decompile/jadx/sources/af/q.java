package af;

public class q implements Comparable {

    public final int f336a;

    public final int f337b;

    public q(int i10, int i11) {
        this.f336a = i10;
        this.f337b = i11;
    }

    @Override
    public int compareTo(q qVar) {
        int i10 = this.f337b * this.f336a;
        int i11 = qVar.f337b * qVar.f336a;
        if (i11 < i10) {
            return 1;
        }
        return i11 > i10 ? -1 : 0;
    }

    public boolean b(q qVar) {
        return this.f336a <= qVar.f336a && this.f337b <= qVar.f337b;
    }

    public q d() {
        return new q(this.f337b, this.f336a);
    }

    public q e(int i10, int i11) {
        return new q((this.f336a * i10) / i11, (this.f337b * i10) / i11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        return this.f336a == qVar.f336a && this.f337b == qVar.f337b;
    }

    public q f(q qVar) {
        int i10 = this.f336a;
        int i11 = qVar.f337b;
        int i12 = i10 * i11;
        int i13 = qVar.f336a;
        int i14 = this.f337b;
        return i12 <= i13 * i14 ? new q(i13, (i14 * i13) / i10) : new q((i10 * i11) / i14, i11);
    }

    public q g(q qVar) {
        int i10 = this.f336a;
        int i11 = qVar.f337b;
        int i12 = i10 * i11;
        int i13 = qVar.f336a;
        int i14 = this.f337b;
        return i12 >= i13 * i14 ? new q(i13, (i14 * i13) / i10) : new q((i10 * i11) / i14, i11);
    }

    public int hashCode() {
        return (this.f336a * 31) + this.f337b;
    }

    public String toString() {
        return this.f336a + "x" + this.f337b;
    }
}
