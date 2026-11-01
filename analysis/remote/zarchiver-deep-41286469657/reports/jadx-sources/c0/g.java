package c0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

public final class g extends BaseAdapter {

    public final LayoutInflater f416a;

    public final ArrayList f417b = new ArrayList();

    public final ArrayList f418c = new ArrayList();

    public g(Context context) {
        this.f416a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public final void a(int i2) {
        ArrayList arrayList = this.f418c;
        if (i2 >= arrayList.size()) {
            return;
        }
        arrayList.set(i2, Boolean.FALSE);
    }

    @Override
    public final int getCount() {
        return this.f417b.size();
    }

    @Override
    public final Object getItem(int i2) {
        return this.f417b.get(i2);
    }

    @Override
    public final long getItemId(int i2) {
        return i2;
    }

    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f416a.inflate(R.layout.item_select_dialog_singlechoice, viewGroup, false);
        }
        ((TextView) view).setText((CharSequence) this.f417b.get(i2));
        view.setEnabled(isEnabled(i2));
        return view;
    }

    @Override
    public final boolean isEnabled(int i2) {
        return ((Boolean) this.f418c.get(i2)).booleanValue();
    }
}
