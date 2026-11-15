package defpackage;

import android.content.Context;
import android.widget.ImageView;

public abstract class kdc {
    public static boolean a(Context context) {
        return context != null && context.getResources().getConfiguration().getLayoutDirection() == 1;
    }

    public static void b(ImageView imageView, int i) {
        if (imageView == null) {
            return;
        }
        imageView.setImageResource(i);
    }
}
