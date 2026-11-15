package androidx.core.widget;

import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.ReplaceWith;

@Deprecated
public final class ListViewCompat {
    private ListViewCompat() {
    }

    @ReplaceWith(expression = "listView.canScrollList(direction)")
    @Deprecated
    public static boolean canScrollList(@NonNull ListView listView, int i) {
        return listView.canScrollList(i);
    }

    @ReplaceWith(expression = "listView.scrollListBy(y)")
    @Deprecated
    public static void scrollListBy(@NonNull ListView listView, int i) {
        listView.scrollListBy(i);
    }
}
