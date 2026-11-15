package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.ArrayList;
import java.util.List;

public abstract class cc0 {
    public static void b(RecyclerView recyclerView, BaseQuickAdapter baseQuickAdapter, List list) {
        recyclerView.stopScroll();
        baseQuickAdapter.setNewData(list);
    }

    public static void c(final RecyclerView recyclerView, final BaseQuickAdapter baseQuickAdapter, List list) {
        if (baseQuickAdapter == null) {
            return;
        }
        final ArrayList arrayList = list != null ? new ArrayList(list) : new ArrayList();
        if (recyclerView != null) {
            recyclerView.post(new Runnable() {
                @Override
                public final void run() {
                    cc0.b(recyclerView, baseQuickAdapter, arrayList);
                }
            });
        } else {
            baseQuickAdapter.setNewData(arrayList);
        }
    }
}
