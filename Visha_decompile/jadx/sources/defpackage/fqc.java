package defpackage;

public class fqc {
    public final String a;
    public final char b;
    public int c;

    public fqc(String str) {
        this(str, ',');
    }

    public boolean a() {
        return this.c < this.a.length();
    }

    public String b() {
        if (this.c >= this.a.length()) {
            return null;
        }
        int i = this.c + 1;
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int i2 = this.c + 1;
            this.c = i2;
            if (i2 >= this.a.length()) {
                if (!z && !z2) {
                    break;
                }
                throw new IllegalArgumentException("badly formatted directory string");
            }
            char cCharAt = this.a.charAt(this.c);
            if (z) {
                z = false;
            } else if (cCharAt == '\"') {
                z2 = !z2;
            } else if (z2) {
                continue;
            } else if (cCharAt == '\\') {
                z = true;
            } else if (cCharAt == this.b) {
                break;
            }
        }
        return this.a.substring(i, this.c);
    }

    public fqc(String str, char c) {
        str.getClass();
        if (c == '\"' || c == '\\') {
            throw new IllegalArgumentException("reserved separator character");
        }
        this.a = str;
        this.b = c;
        this.c = str.length() < 1 ? 0 : -1;
    }
}
