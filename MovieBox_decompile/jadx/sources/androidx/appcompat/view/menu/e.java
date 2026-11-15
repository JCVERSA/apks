package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

public class e extends BaseAdapter {

    f f1124a;

    private int f1125b = -1;

    private boolean f1126c;

    private final boolean f1127d;

    private final LayoutInflater f1128e;

    private final int f1129f;

    public e(f fVar, LayoutInflater layoutInflater, boolean z10, int i10) {
        this.f1127d = z10;
        this.f1128e = layoutInflater;
        this.f1124a = fVar;
        this.f1129f = i10;
        a();
    }

    void a() {
        h hVarX = this.f1124a.x();
        if (hVarX != null) {
            ArrayList arrayListB = this.f1124a.B();
            int size = arrayListB.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (((h) arrayListB.get(i10)) == hVarX) {
                    this.f1125b = i10;
                    return;
                }
            }
        }
        this.f1125b = -1;
    }

    public f b() {
        return this.f1124a;
    }

    @Override
    public h getItem(int i10) {
        ArrayList arrayListB = this.f1127d ? this.f1124a.B() : this.f1124a.G();
        int i11 = this.f1125b;
        if (i11 >= 0 && i10 >= i11) {
            i10++;
        }
        return (h) arrayListB.get(i10);
    }

    public void d(boolean z10) {
        this.f1126c = z10;
    }

    @Override
    public int getCount() {
        ArrayList arrayListB = this.f1127d ? this.f1124a.B() : this.f1124a.G();
        return this.f1125b < 0 ? arrayListB.size() : arrayListB.size() - 1;
    }

    @Override
    public long getItemId(int i10) {
        return i10;
    }

    @Override
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f1128e.inflate(this.f1129f, viewGroup, false);
        }
        int groupId = getItem(i10).getGroupId();
        int i11 = i10 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f1124a.I() && groupId != (i11 >= 0 ? getItem(i11).getGroupId() : groupId));
        m.a aVar = (m.a) view;
        if (this.f1126c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.initialize(getItem(i10), 0);
        return view;
    }

    @Override
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
