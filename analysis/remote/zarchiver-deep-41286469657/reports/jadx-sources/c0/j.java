package c0;

import android.R;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public final class j extends BaseAdapter implements SpinnerAdapter {

    public final LayoutInflater f436a;

    public final ArrayList f437b = new ArrayList();

    public final ArrayList f438c = new ArrayList();

    public j(Context context) {
        this.f436a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public final void a(String str) {
        this.f437b.add(str);
        this.f438c.add(Boolean.TRUE);
    }

    public final void b(int i2) {
        ArrayList arrayList = this.f438c;
        if (i2 >= arrayList.size()) {
            return;
        }
        arrayList.set(i2, Boolean.FALSE);
    }

    @Override
    public final int getCount() {
        return this.f437b.size();
    }

    @Override
    public final View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f436a.inflate(R.layout.simple_spinner_dropdown_item, viewGroup, false);
        }
        ((TextView) view).setText((CharSequence) this.f437b.get(i2));
        view.setEnabled(isEnabled(i2));
        return view;
    }

    @Override
    public final Object getItem(int i2) {
        return this.f437b.get(i2);
    }

    @Override
    public final long getItemId(int i2) {
        return i2;
    }

    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f436a.inflate(R.layout.simple_spinner_item, viewGroup, false);
        }
        ((TextView) view).setText((CharSequence) this.f437b.get(i2));
        return view;
    }

    @Override
    public final boolean isEnabled(int i2) {
        return ((Boolean) this.f438c.get(i2)).booleanValue();
    }
}
