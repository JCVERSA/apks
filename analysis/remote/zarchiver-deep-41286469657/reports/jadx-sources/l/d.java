package l;

import e.e;
import java.util.Locale;
import q.g;

public final class d implements e {

    public final int f1177a = 0;

    public Object f1178b;

    public Object f1179c;

    public d(g gVar, p.b[] bVarArr) {
        this.f1178b = gVar;
        this.f1179c = bVarArr;
    }

    @Override
    public final void a() {
    }

    @Override
    public final float b(float f2, int i2) {
        Object obj = this.f1179c;
        return ((p.b[]) obj)[i2] != null ? ((p.b[]) obj)[i2].a() : f2;
    }

    @Override
    public final float c(float f2, int i2) {
        Object obj = this.f1179c;
        return ((p.b[]) obj)[i2] != null ? ((p.b[]) obj)[i2].a() : f2;
    }

    @Override
    public final int d(int i2, int i3) {
        Object obj = this.f1179c;
        return ((p.b[]) obj)[i2] != null ? ((p.b[]) obj)[i2].b() : i3;
    }

    @Override
    public final int e(int i2, int i3) {
        Object obj = this.f1179c;
        return ((p.b[]) obj)[i2] != null ? ((p.b[]) obj)[i2].b() : i3;
    }

    @Override
    public final String getString(int i2) {
        Object obj = this.f1179c;
        if (((p.b[]) obj)[i2] != null) {
            return ((p.b[]) obj)[i2].c((g) this.f1178b, Locale.ENGLISH);
        }
        return null;
    }

    public final String toString() {
        switch (this.f1177a) {
            case 1:
                return "XmlCData{data='" + ((String) this.f1178b) + "', typedData=" + ((p.b) this.f1179c) + '}';
            default:
                return super.toString();
        }
    }
}
