package c0;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

public final class a extends BaseAdapter {

    public final LayoutInflater f373a;

    public final ArrayList<C0003a> f374b;

    public ArrayList<C0003a> f375c;

    public String f376d;

    public static final class C0003a implements Comparable<C0003a> {

        public final PackageInfo f377a;

        public final String f378b;

        public Drawable f379c;

        public final PackageManager f380d;

        public C0003a(PackageInfo packageInfo, PackageManager packageManager) {
            this.f377a = packageInfo;
            this.f380d = packageManager;
            CharSequence charSequenceLoadLabel = packageInfo.applicationInfo.loadLabel(packageManager);
            this.f378b = charSequenceLoadLabel != null ? charSequenceLoadLabel.toString() : null;
        }

        @Override
        public final int compareTo(C0003a c0003a) {
            String str = c0003a.f378b;
            String str2 = this.f378b;
            if (str2 == null) {
                return str == null ? 0 : 1;
            }
            if (str == null) {
                return -1;
            }
            return str2.compareTo(str);
        }
    }

    public static class b {

        public ImageView f381a;

        public TextView f382b;

        public TextView f383c;
    }

    public a(Context context, ArrayList<C0003a> arrayList) {
        this.f374b = arrayList;
        this.f375c = arrayList;
        this.f373a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override
    public final int getCount() {
        return this.f375c.size();
    }

    @Override
    public final Object getItem(int i2) {
        return this.f375c.get(i2);
    }

    @Override
    public final long getItemId(int i2) {
        return i2;
    }

    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        Drawable drawable;
        C0003a c0003a = this.f375c.get(i2);
        if (view == null) {
            view = this.f373a.inflate(R.layout.item_simpe_desc, viewGroup, false);
            b bVar = new b();
            bVar.f381a = (ImageView) view.findViewById(R.id.icon);
            bVar.f382b = (TextView) view.findViewById(R.id.text);
            bVar.f383c = (TextView) view.findViewById(R.id.desc);
            view.setTag(bVar);
        }
        b bVar2 = (b) view.getTag();
        ImageView imageView = bVar2.f381a;
        synchronized (c0003a) {
            if (c0003a.f379c == null) {
                c0003a.f379c = c0003a.f377a.applicationInfo.loadIcon(c0003a.f380d);
            }
            drawable = c0003a.f379c;
        }
        imageView.setImageDrawable(drawable);
        z0.f.h(bVar2.f382b, c0003a.f378b, this.f376d);
        z0.f.h(bVar2.f383c, c0003a.f377a.packageName, this.f376d);
        return view;
    }
}
