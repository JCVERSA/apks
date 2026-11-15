package defpackage;

public final class woh implements Cloneable {
    public boolean b;
    public boolean c;

    public final woh clone() {
        try {
            return (woh) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
