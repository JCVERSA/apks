package c0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

public final class c extends BaseAdapter {

    public final LayoutInflater f393a;

    public final ArrayList<a> f394b = new ArrayList<>();

    public final boolean f395c;

    public static class a {

        public final int f396a;

        public final String f397b;

        public a(int i2, String str) {
            this.f396a = i2;
            this.f397b = str;
        }

        public final String toString() {
            String str = this.f397b;
            int i2 = this.f396a;
            if (i2 == -1) {
                return "\n" + str + '\n';
            }
            return (i2 + 1) + "\t" + str + '\n';
        }
    }

    public static class b {

        public TextView f398a;

        public TextView f399b;
    }

    public c(Context context, e0.a.b[] bVarArr) {
        this.f393a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f395c = false;
        for (e0.a.b bVar : bVarArr) {
            if (bVar != null) {
                this.f394b.add(new a(-1, a0.c.y(bVar.f647b)));
                ArrayList<e0.a.C0007a> arrayList = bVar.f648c;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (arrayList.get(i2).f644a != 0) {
                        this.f395c = true;
                    }
                    ArrayList<a> arrayList2 = this.f394b;
                    e0.a.C0007a c0007a = arrayList.get(i2);
                    arrayList2.add(new a(i2, e0.a.e(c0007a.f644a, c0007a.f645b)));
                }
            }
        }
    }

    @Override
    public final int getCount() {
        return this.f394b.size();
    }

    @Override
    public final Object getItem(int i2) {
        return this.f394b.get(i2);
    }

    @Override
    public final long getItemId(int i2) {
        return i2;
    }

    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar = this.f394b.get(i2);
        if (view == null) {
            view = this.f393a.inflate(R.layout.item_error, viewGroup, false);
            b bVar = new b();
            bVar.f398a = (TextView) view.findViewById(R.id.f1433n);
            bVar.f399b = (TextView) view.findViewById(R.id.text);
            view.setTag(bVar);
        }
        b bVar2 = (b) view.getTag();
        if (aVar.f396a == -1) {
            bVar2.f398a.setVisibility(8);
            bVar2.f399b.setTypeface(null, 1);
        } else {
            bVar2.f398a.setVisibility(0);
            bVar2.f398a.setText(String.valueOf(aVar.f396a + 1));
            bVar2.f399b.setTypeface(null, 0);
        }
        bVar2.f399b.setText(aVar.f397b);
        return view;
    }
}
