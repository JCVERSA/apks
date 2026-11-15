package defpackage;

import android.app.Activity;
import androidx.media3.exoplayer.upstream.CmcdData;

public final class n34 {
    public static final n34 a = new n34();
    public static bv4 b = new a();

    public static final class a implements bv4 {
        @Override
        public void a(Activity activity) {
        }

        @Override
        public void b(Activity activity) {
        }
    }

    public static final void a(Activity activity) {
        b.a(activity);
    }

    public static final void b(bv4 bv4Var) {
        y45.j(bv4Var, CmcdData.OBJECT_TYPE_INIT_SEGMENT);
        b = bv4Var;
    }

    public static final void c(Activity activity) {
        b.b(activity);
    }
}
