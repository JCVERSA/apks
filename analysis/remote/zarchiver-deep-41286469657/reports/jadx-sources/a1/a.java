package a1;

import android.view.ViewTreeObserver;

public final class a implements ViewTreeObserver.OnPreDrawListener {

    public final f f150a;

    public a(f fVar) {
        this.f150a = fVar;
    }

    @Override
    public final boolean onPreDraw() {
        f fVar = this.f150a;
        z0.f.j(fVar.f159a.f161a);
        fVar.f159a.f161a.getViewTreeObserver().removeOnPreDrawListener(this);
        return true;
    }
}
