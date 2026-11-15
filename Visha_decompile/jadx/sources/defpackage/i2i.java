package defpackage;

public abstract class i2i implements w2i {
    public static i2i b(char c) {
        return new f2i(c);
    }

    public abstract boolean a(char c);

    @Override
    public final boolean zza(Object obj) {
        return a(((Character) obj).charValue());
    }
}
