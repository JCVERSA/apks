package c0;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

public final class d extends BaseAdapter {

    public final LayoutInflater f400a;

    public final Resources f401b;

    public final boolean f402c;

    public final ArrayList<e> f403d;

    public final Resources.Theme f404e;

    public static class a {

        public TextView f405a;

        public ImageView f406b;

        public TextView f407c;

        public TextView f408d;
    }

    public d(Context context, boolean z2, boolean z3) {
        this.f401b = context.getResources();
        this.f400a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f402c = z3;
        ArrayList<e> arrayListD = t0.a.d(z2);
        if (arrayListD.size() == 0 || z2) {
            this.f403d = arrayListD;
        } else {
            ArrayList<e> arrayList = new ArrayList<>(arrayListD.size());
            this.f403d = arrayList;
            arrayList.addAll(arrayListD);
        }
        Resources.Theme themeNewTheme = context.getResources().newTheme();
        this.f404e = themeNewTheme;
        themeNewTheme.applyStyle(t0.b.f2088i, true);
    }

    public final void a(int i2) {
        for (e eVar : this.f403d) {
            if (eVar.b(32)) {
                eVar.f411c = new h0.h(t0.b.f2081b[i2]);
                notifyDataSetInvalidated();
                return;
            }
        }
    }

    @Override
    public final int getCount() {
        return this.f403d.size();
    }

    @Override
    public final Object getItem(int i2) {
        return this.f403d.get(i2);
    }

    @Override
    public final long getItemId(int i2) {
        return i2;
    }

    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        e eVar = this.f403d.get(i2);
        if (view == null) {
            view = this.f400a.inflate(R.layout.item_favorite, viewGroup, false);
            a aVar = new a();
            aVar.f405a = (TextView) view.findViewById(R.id.text);
            aVar.f407c = (TextView) view.findViewById(R.id.desc);
            aVar.f408d = (TextView) view.findViewById(R.id.mark);
            aVar.f406b = (ImageView) view.findViewById(R.id.icon);
            view.setTag(aVar);
        }
        a aVar2 = (a) view.getTag();
        aVar2.f405a.setText(eVar.f410b);
        ImageView imageView = aVar2.f406b;
        int i3 = eVar.f409a;
        int iD = t0.b.d();
        int iB = z0.b.b(iD, i3);
        Resources resources = this.f401b;
        imageView.setImageDrawable(iD != 4096 ? z0.c.i(resources, this.f404e, iB) : resources.getDrawable(iB));
        aVar2.f407c.setText(eVar.f411c.t());
        if (this.f402c) {
            TextView textView = aVar2.f408d;
            String str = eVar.f412d;
            if (str == null) {
                str = "";
            }
            textView.setText(str);
        }
        return view;
    }
}
