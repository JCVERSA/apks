package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

public abstract class jp8 {
    public static void a(RecyclerView recyclerView, View view) {
        int i;
        if (recyclerView == null || view == null) {
            return;
        }
        int width = view.getWidth();
        Rect rect = new Rect();
        view.getLocalVisibleRect(rect);
        int i2 = rect.left;
        if (i2 > 0 && rect.top == 0 && rect.right == width) {
            recyclerView.scrollBy(-(i2 + 50), 0);
        } else if (i2 == 0 && rect.top == 0 && (i = rect.right) < width) {
            recyclerView.scrollBy((width - i) + 50, 0);
        }
    }
}
