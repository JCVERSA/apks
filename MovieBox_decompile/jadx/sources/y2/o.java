package y2;

import java.util.Objects;

public final class o extends i {

    public final String f76132b;

    public final String f76133c;

    public o(String str, String str2, String str3) {
        super(str);
        this.f76132b = str2;
        this.f76133c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        return this.f76117a.equals(oVar.f76117a) && Objects.equals(this.f76132b, oVar.f76132b) && Objects.equals(this.f76133c, oVar.f76133c);
    }

    public int hashCode() {
        int iHashCode = (527 + this.f76117a.hashCode()) * 31;
        String str = this.f76132b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f76133c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override
    public String toString() {
        return this.f76117a + ": url=" + this.f76133c;
    }
}
