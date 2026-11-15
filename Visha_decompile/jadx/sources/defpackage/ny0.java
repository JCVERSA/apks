package defpackage;

import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public final class ny0 implements oy0 {
    public final float b;
    public final float c;

    public ny0(float f, float f2) {
        this.b = f;
        this.c = f2;
    }

    public boolean a(float f) {
        return f >= this.b && f <= this.c;
    }

    @Override
    public Float getEndInclusive() {
        return Float.valueOf(this.c);
    }

    @Override
    public Float getStart() {
        return Float.valueOf(this.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean contains(Comparable comparable) {
        return a(((Number) comparable).floatValue());
    }

    public boolean d() {
        return this.b > this.c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ny0) {
            if (!d() || !((ny0) obj).d()) {
                ny0 ny0Var = (ny0) obj;
                if (this.b != ny0Var.b || this.c != ny0Var.c) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (d()) {
            return -1;
        }
        return Float.hashCode(this.c) + (Float.hashCode(this.b) * 31);
    }

    public String toString() {
        return this.b + FileTree.PARENT_DIR + this.c;
    }
}
