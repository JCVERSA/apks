package defpackage;

import com.google.android.gms.internal.ads.ia;

public final class ksi implements pti {
    public static final ksi a = new ksi();

    public static ksi c() {
        return a;
    }

    @Override
    public final oti a(Class cls) {
        if (!ia.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (oti) ia.I(cls.asSubclass(ia.class)).x();
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
        }
    }

    @Override
    public final boolean b(Class cls) {
        return ia.class.isAssignableFrom(cls);
    }
}
