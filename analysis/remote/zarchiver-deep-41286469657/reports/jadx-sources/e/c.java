package e;

import android.content.res.TypedArray;

public final class c implements e {

    public final Object f588a;

    public c(int i2, int i3) {
        if (i3 != 2) {
            this.f588a = new String[i2];
        } else {
            this.f588a = new r.a[i2];
        }
    }

    @Override
    public final void a() {
        ((TypedArray) this.f588a).recycle();
    }

    @Override
    public final float b(float f2, int i2) {
        try {
            return ((TypedArray) this.f588a).getFloat(i2, f2);
        } catch (NumberFormatException unused) {
            return f2;
        }
    }

    @Override
    public final float c(float f2, int i2) {
        try {
            return ((TypedArray) this.f588a).getDimension(i2, f2);
        } catch (Exception unused) {
            return f2;
        }
    }

    @Override
    public final int d(int i2, int i3) {
        try {
            return ((TypedArray) this.f588a).getInt(i2, i3);
        } catch (NumberFormatException unused) {
            return i3;
        }
    }

    @Override
    public final int e(int i2, int i3) {
        try {
            return ((TypedArray) this.f588a).getColor(i2, i3);
        } catch (Exception unused) {
            return i3;
        }
    }

    public final String f(int i2) {
        return ((String[]) this.f588a)[i2];
    }

    public final boolean g(String str) {
        String strI = i(str);
        if (strI == null) {
            return false;
        }
        return Boolean.parseBoolean(strI);
    }

    @Override
    public final String getString(int i2) {
        return ((TypedArray) this.f588a).getString(i2);
    }

    public final Long h(String str) {
        String strI = i(str);
        if (strI == null) {
            return null;
        }
        return strI.startsWith("0x") ? Long.valueOf(strI.substring(2), 16) : Long.valueOf(strI);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x001b  */
    public final String i(String str) {
        for (r.a aVar : (r.a[]) this.f588a) {
            if (aVar.f1419b.equals(str)) {
                if (aVar == null) {
                    return null;
                }
                return aVar.f1422e;
            }
        }
        aVar = null;
        if (aVar == null) {
            return null;
        }
        return aVar.f1422e;
    }

    public c(TypedArray typedArray) {
        this.f588a = typedArray;
    }
}
