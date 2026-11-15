package ps;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

public final class c implements os.c {

    private final int f69260a;

    private final os.c f69261b;

    public c(int i10, os.c cVar) {
        this.f69260a = i10;
        this.f69261b = cVar;
    }

    @Override
    public View createView(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(this.f69260a, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        return viewInflate;
    }

    @Override
    public int getGravity() {
        os.c cVar = this.f69261b;
        if (cVar != null) {
            return cVar.getGravity();
        }
        return 17;
    }

    @Override
    public float getHorizontalMargin() {
        os.c cVar = this.f69261b;
        if (cVar != null) {
            return cVar.getHorizontalMargin();
        }
        return 0.0f;
    }

    @Override
    public float getVerticalMargin() {
        os.c cVar = this.f69261b;
        if (cVar != null) {
            return cVar.getVerticalMargin();
        }
        return 0.0f;
    }

    @Override
    public int getXOffset() {
        os.c cVar = this.f69261b;
        if (cVar != null) {
            return cVar.getXOffset();
        }
        return 0;
    }

    @Override
    public int getYOffset() {
        os.c cVar = this.f69261b;
        if (cVar != null) {
            return cVar.getYOffset();
        }
        return 0;
    }
}
