package t8;

public final class c {

    private final String f72565a;

    private c(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f72565a = str;
    }

    public static c b(String str) {
        return new c(str);
    }

    public String a() {
        return this.f72565a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            return this.f72565a.equals(((c) obj).f72565a);
        }
        return false;
    }

    public int hashCode() {
        return this.f72565a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.f72565a + "\"}";
    }
}
