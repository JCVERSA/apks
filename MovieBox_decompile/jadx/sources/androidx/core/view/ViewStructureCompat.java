package androidx.core.view;

import android.view.ViewStructure;

public class ViewStructureCompat {
    private final Object mWrappedObj;

    private static class a {
        static void a(ViewStructure viewStructure, String str) {
            viewStructure.setClassName(str);
        }

        static void b(ViewStructure viewStructure, CharSequence charSequence) {
            viewStructure.setContentDescription(charSequence);
        }

        static void c(ViewStructure viewStructure, int i10, int i11, int i12, int i13, int i14, int i15) {
            viewStructure.setDimens(i10, i11, i12, i13, i14, i15);
        }

        static void d(ViewStructure viewStructure, CharSequence charSequence) {
            viewStructure.setText(charSequence);
        }
    }

    private ViewStructureCompat(ViewStructure viewStructure) {
        this.mWrappedObj = viewStructure;
    }

    public static ViewStructureCompat toViewStructureCompat(ViewStructure viewStructure) {
        return new ViewStructureCompat(viewStructure);
    }

    public void setClassName(String str) {
        a.a((ViewStructure) this.mWrappedObj, str);
    }

    public void setContentDescription(CharSequence charSequence) {
        a.b((ViewStructure) this.mWrappedObj, charSequence);
    }

    public void setDimens(int i10, int i11, int i12, int i13, int i14, int i15) {
        a.c((ViewStructure) this.mWrappedObj, i10, i11, i12, i13, i14, i15);
    }

    public void setText(CharSequence charSequence) {
        a.d((ViewStructure) this.mWrappedObj, charSequence);
    }

    public ViewStructure toViewStructure() {
        return (ViewStructure) this.mWrappedObj;
    }
}
