package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.widget.j0;

public final class ExpandedMenuView extends ListView implements f.b, m, AdapterView.OnItemClickListener {

    private static final int[] f1059c = {R.attr.background, R.attr.divider};

    private f f1060a;

    private int f1061b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    public int getWindowAnimations() {
        return this.f1061b;
    }

    @Override
    public void initialize(f fVar) {
        this.f1060a = fVar;
    }

    @Override
    public boolean invokeItem(h hVar) {
        return this.f1060a.O(hVar, 0);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override
    public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        invokeItem((h) getAdapter().getItem(i10));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        j0 j0VarV = j0.v(context, attributeSet, f1059c, i10, 0);
        if (j0VarV.s(0)) {
            setBackgroundDrawable(j0VarV.g(0));
        }
        if (j0VarV.s(1)) {
            setDivider(j0VarV.g(1));
        }
        j0VarV.x();
    }
}
