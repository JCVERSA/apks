package lr;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

public final class c implements kr.c {

    private final int f66108a;

    private final kr.c f66109b;

    public c(int i10, kr.c cVar) {
        this.f66108a = i10;
        this.f66109b = cVar;
    }

    @Override
    public View createView(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(this.f66108a, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        return viewInflate;
    }

    @Override
    public int getGravity() {
        kr.c cVar = this.f66109b;
        if (cVar != null) {
            return cVar.getGravity();
        }
        return 17;
    }

    @Override
    public float getHorizontalMargin() {
        kr.c cVar = this.f66109b;
        if (cVar != null) {
            return cVar.getHorizontalMargin();
        }
        return 0.0f;
    }

    @Override
    public float getVerticalMargin() {
        kr.c cVar = this.f66109b;
        if (cVar != null) {
            return cVar.getVerticalMargin();
        }
        return 0.0f;
    }

    @Override
    public int getXOffset() {
        kr.c cVar = this.f66109b;
        if (cVar != null) {
            return cVar.getXOffset();
        }
        return 0;
    }

    @Override
    public int getYOffset() {
        kr.c cVar = this.f66109b;
        if (cVar != null) {
            return cVar.getYOffset();
        }
        return 0;
    }
}
