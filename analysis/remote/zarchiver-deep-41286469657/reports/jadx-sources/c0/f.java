package c0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

public final class f extends BaseAdapter {

    public final LayoutInflater f414a;

    public final ArrayList f415b = new ArrayList();

    public f(Context context) {
        this.f414a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override
    public final int getCount() {
        return this.f415b.size();
    }

    @Override
    public final Object getItem(int i2) {
        return (h) this.f415b.get(i2);
    }

    @Override
    public final long getItemId(int i2) {
        return i2;
    }

    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        ImageView imageView;
        h hVar = (h) this.f415b.get(i2);
        if (view == null) {
            view = this.f414a.inflate(R.layout.item_icon, viewGroup, false);
            imageView = (ImageView) view.findViewById(R.id.icon);
            view.setTag(imageView);
        } else {
            imageView = (ImageView) view.getTag();
        }
        imageView.setImageDrawable(hVar.f420b);
        return view;
    }
}
