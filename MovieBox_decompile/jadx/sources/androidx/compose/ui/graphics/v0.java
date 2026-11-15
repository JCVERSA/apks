package androidx.compose.ui.graphics;

import android.graphics.PathMeasure;

public final class v0 implements r4 {

    private final PathMeasure f4365a;

    public v0(PathMeasure pathMeasure) {
        this.f4365a = pathMeasure;
    }

    @Override
    public boolean a(float f10, float f11, Path path, boolean z10) {
        PathMeasure pathMeasure = this.f4365a;
        if (path instanceof u0) {
            return pathMeasure.getSegment(f10, f11, ((u0) path).p(), z10);
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override
    public void b(Path path, boolean z10) {
        android.graphics.Path pathP;
        PathMeasure pathMeasure = this.f4365a;
        if (path == null) {
            pathP = null;
        } else {
            if (!(path instanceof u0)) {
                throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
            }
            pathP = ((u0) path).p();
        }
        pathMeasure.setPath(pathP, z10);
    }

    @Override
    public float getLength() {
        return this.f4365a.getLength();
    }
}
