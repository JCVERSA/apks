package z1;

import java.util.Objects;

public final class b {

    public final String f76501a;

    public final String f76502b;

    public final int f76503c;

    public final int f76504d;

    public b(String str, String str2, int i10, int i11) {
        this.f76501a = str;
        this.f76502b = str2;
        this.f76503c = i10;
        this.f76504d = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f76503c == bVar.f76503c && this.f76504d == bVar.f76504d && Objects.equals(this.f76501a, bVar.f76501a) && Objects.equals(this.f76502b, bVar.f76502b);
    }

    public int hashCode() {
        return Objects.hash(this.f76501a, this.f76502b, Integer.valueOf(this.f76503c), Integer.valueOf(this.f76504d));
    }
}
