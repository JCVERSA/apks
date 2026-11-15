package defpackage;

import android.view.View;

public abstract class ndc {
    public static final int[] a = new int[2];

    public static View a(View view, int i) {
        return view.findViewById(i);
    }

    public static View b(View view, int i) {
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        throw new IllegalStateException("View with id [" + view.getResources().getResourceName(i) + "] doesn't exist");
    }

    public static boolean c(View view, float f, float f2) {
        int[] iArr = a;
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        if (f < i || f > i + view.getWidth()) {
            return false;
        }
        int i2 = iArr[1];
        return f2 >= ((float) i2) && f2 <= ((float) (i2 + view.getHeight()));
    }
}
