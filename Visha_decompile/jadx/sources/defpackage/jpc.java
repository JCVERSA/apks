package defpackage;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.div2.DivPager;

public final class jpc extends un2 {
    public final RecyclerView d;
    public final boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jpc(RecyclerView recyclerView, boolean z, int i, sn2 sn2Var, DivPager.ItemAlignment itemAlignment) {
        super(i, sn2Var, itemAlignment);
        y45.j(recyclerView, "recyclerView");
        y45.j(sn2Var, "paddings");
        y45.j(itemAlignment, "alignment");
        this.d = recyclerView;
        this.e = z;
    }

    @Override
    public Float e(int i) {
        View viewFindViewByPosition;
        RecyclerView.LayoutManager layoutManager = this.d.getLayoutManager();
        if (layoutManager == null || (viewFindViewByPosition = layoutManager.findViewByPosition(i)) == null) {
            return null;
        }
        return Float.valueOf(this.e ? viewFindViewByPosition.getWidth() : viewFindViewByPosition.getHeight());
    }
}
