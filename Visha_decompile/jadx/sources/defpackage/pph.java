package defpackage;

public final class pph implements Cloneable {
    public boolean b;
    public int c;

    public final pph clone() {
        try {
            return (pph) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
