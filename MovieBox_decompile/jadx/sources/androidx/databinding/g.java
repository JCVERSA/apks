package androidx.databinding;

import android.view.View;

public abstract class g {

    private static e f8239a = new DataBinderMapperImpl();

    public static ViewDataBinding a(View view) {
        b(view, null);
        return null;
    }

    public static ViewDataBinding b(View view, f fVar) {
        c(view);
        Object tag = view.getTag();
        if (!(tag instanceof String)) {
            throw new IllegalArgumentException("View is not a binding layout");
        }
        int iC = f8239a.c((String) tag);
        if (iC != 0) {
            f8239a.b(fVar, view, iC);
            return null;
        }
        throw new IllegalArgumentException("View is not a binding layout. Tag: " + tag);
    }

    public static ViewDataBinding c(View view) {
        ViewDataBinding.g(view);
        return null;
    }
}
