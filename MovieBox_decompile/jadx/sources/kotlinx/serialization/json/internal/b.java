package kotlinx.serialization.json.internal;

public abstract class b {
    public static final byte a(char c10) {
        if (c10 < '~') {
            return i.f65343c[c10];
        }
        return (byte) 0;
    }

    public static final char b(int i10) {
        if (i10 < 117) {
            return i.f65342b[i10];
        }
        return (char) 0;
    }
}
