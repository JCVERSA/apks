package defpackage;

public class ei2 {
    public static final ei2 b = new ei2("");
    public final String a;

    public ei2(String str) {
        this.a = str;
    }

    public String a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((ei2) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
