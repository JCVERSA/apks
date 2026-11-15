package defpackage;

public final class baj {
    public static final baj b = new baj(0, false);
    public final int a = 0;

    public baj(int i, boolean z) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || baj.class != obj.getClass()) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return 0;
    }
}
