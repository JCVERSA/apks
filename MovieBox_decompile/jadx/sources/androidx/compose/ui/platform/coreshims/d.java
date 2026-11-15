package androidx.compose.ui.platform.coreshims;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import java.util.List;
import java.util.Objects;

public class d {

    private final Object f5445a;

    private final View f5446b;

    private static class a {
        static Bundle a(ViewStructure viewStructure) {
            return viewStructure.getExtras();
        }
    }

    private static class b {
        static AutofillId a(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long j10) {
            return contentCaptureSession.newAutofillId(autofillId, j10);
        }

        static ViewStructure b(ContentCaptureSession contentCaptureSession, View view) {
            return contentCaptureSession.newViewStructure(view);
        }

        static ViewStructure c(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long j10) {
            return contentCaptureSession.newVirtualViewStructure(autofillId, j10);
        }

        static void d(ContentCaptureSession contentCaptureSession, ViewStructure viewStructure) {
            contentCaptureSession.notifyViewAppeared(viewStructure);
        }

        public static void e(ContentCaptureSession contentCaptureSession, AutofillId autofillId, CharSequence charSequence) {
            contentCaptureSession.notifyViewTextChanged(autofillId, charSequence);
        }

        static void f(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long[] jArr) {
            contentCaptureSession.notifyViewsDisappeared(autofillId, jArr);
        }
    }

    private static class c {
        static void a(ContentCaptureSession contentCaptureSession, List<ViewStructure> list) {
            contentCaptureSession.notifyViewsAppeared(list);
        }
    }

    private d(ContentCaptureSession contentCaptureSession, View view) {
        this.f5445a = contentCaptureSession;
        this.f5446b = view;
    }

    public static d f(ContentCaptureSession contentCaptureSession, View view) {
        return new d(contentCaptureSession, view);
    }

    public AutofillId a(long j10) {
        if (Build.VERSION.SDK_INT < 29) {
            return null;
        }
        ContentCaptureSession contentCaptureSessionA = androidx.compose.ui.platform.coreshims.c.a(this.f5445a);
        androidx.compose.ui.platform.coreshims.b bVarA = e.a(this.f5446b);
        Objects.requireNonNull(bVarA);
        return b.a(contentCaptureSessionA, bVarA.a(), j10);
    }

    public f b(AutofillId autofillId, long j10) {
        if (Build.VERSION.SDK_INT >= 29) {
            return f.i(b.c(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), autofillId, j10));
        }
        return null;
    }

    public void c(AutofillId autofillId, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 29) {
            b.e(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), autofillId, charSequence);
        }
    }

    public void d(List list) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 34) {
            c.a(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), list);
            return;
        }
        if (i10 >= 29) {
            ViewStructure viewStructureB = b.b(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), this.f5446b);
            a.a(viewStructureB).putBoolean("TREAT_AS_VIEW_TREE_APPEARING", true);
            b.d(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), viewStructureB);
            for (int i11 = 0; i11 < list.size(); i11++) {
                b.d(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), (ViewStructure) list.get(i11));
            }
            ViewStructure viewStructureB2 = b.b(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), this.f5446b);
            a.a(viewStructureB2).putBoolean("TREAT_AS_VIEW_TREE_APPEARED", true);
            b.d(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), viewStructureB2);
        }
    }

    public void e(long[] jArr) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 34) {
            ContentCaptureSession contentCaptureSessionA = androidx.compose.ui.platform.coreshims.c.a(this.f5445a);
            androidx.compose.ui.platform.coreshims.b bVarA = e.a(this.f5446b);
            Objects.requireNonNull(bVarA);
            b.f(contentCaptureSessionA, bVarA.a(), jArr);
            return;
        }
        if (i10 >= 29) {
            ViewStructure viewStructureB = b.b(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), this.f5446b);
            a.a(viewStructureB).putBoolean("TREAT_AS_VIEW_TREE_APPEARING", true);
            b.d(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), viewStructureB);
            ContentCaptureSession contentCaptureSessionA2 = androidx.compose.ui.platform.coreshims.c.a(this.f5445a);
            androidx.compose.ui.platform.coreshims.b bVarA2 = e.a(this.f5446b);
            Objects.requireNonNull(bVarA2);
            b.f(contentCaptureSessionA2, bVarA2.a(), jArr);
            ViewStructure viewStructureB2 = b.b(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), this.f5446b);
            a.a(viewStructureB2).putBoolean("TREAT_AS_VIEW_TREE_APPEARED", true);
            b.d(androidx.compose.ui.platform.coreshims.c.a(this.f5445a), viewStructureB2);
        }
    }
}
