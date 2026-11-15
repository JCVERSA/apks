package r4;

import java.util.List;

public class c {

    private final List f70826a;

    private final char f70827b;

    private final double f70828c;

    private final double f70829d;

    private final String f70830e;

    private final String f70831f;

    public c(List list, char c10, double d10, double d11, String str, String str2) {
        this.f70826a = list;
        this.f70827b = c10;
        this.f70828c = d10;
        this.f70829d = d11;
        this.f70830e = str;
        this.f70831f = str2;
    }

    public static int c(char c10, String str, String str2) {
        return (((c10 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public List a() {
        return this.f70826a;
    }

    public double b() {
        return this.f70829d;
    }

    public int hashCode() {
        return c(this.f70827b, this.f70831f, this.f70830e);
    }
}
