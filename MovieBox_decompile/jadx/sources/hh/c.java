package hh;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

public final class c implements gh.c {

    private final int f61364a;

    private final gh.c f61365b;

    public c(int i10, gh.c cVar) {
        this.f61364a = i10;
        this.f61365b = cVar;
    }

    @Override
    public View createView(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(this.f61364a, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        return viewInflate;
    }

    @Override
    public int getGravity() {
        gh.c cVar = this.f61365b;
        if (cVar != null) {
            return cVar.getGravity();
        }
        return 17;
    }

    @Override
    public float getHorizontalMargin() {
        gh.c cVar = this.f61365b;
        if (cVar != null) {
            return cVar.getHorizontalMargin();
        }
        return 0.0f;
    }

    @Override
    public float getVerticalMargin() {
        gh.c cVar = this.f61365b;
        if (cVar != null) {
            return cVar.getVerticalMargin();
        }
        return 0.0f;
    }

    @Override
    public int getXOffset() {
        gh.c cVar = this.f61365b;
        if (cVar != null) {
            return cVar.getXOffset();
        }
        return 0;
    }

    @Override
    public int getYOffset() {
        gh.c cVar = this.f61365b;
        if (cVar != null) {
            return cVar.getYOffset();
        }
        return 0;
    }
}
