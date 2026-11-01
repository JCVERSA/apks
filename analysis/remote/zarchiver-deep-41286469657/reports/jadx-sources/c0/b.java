package c0;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

public final class b extends BaseAdapter {

    public static final String[] f384c = {"Default", "Dynamic color", "Pink", "Purple", "Deep Purple", "Indigo", "Blue", "Light Blue", "Cyan", "Teal", "Green", "Light Green", "Lime", "Yellow", "Amber", "Orange", "Deep Orange", "Brown", "Grey", "Blue Grey", "Dark Grey", "Red"};

    public static final int[] f385d = {0, 0, -1499549, -6543440, -10011977, -12627531, -14575885, -16537100, -16728876, -16738680, -11751600, -7617718, -3285959, -5317, -16121, -26624, -43230, -8825528, -6381922, -10453621, -12434878, -769226};

    public final LayoutInflater f386a;

    public final ArrayList f387b = new ArrayList();

    public static class a {

        public final int f388a;

        public final String f389b;

        public final int f390c;

        public a(int i2, int i3, String str) {
            this.f388a = i2;
            this.f389b = str;
            this.f390c = i3;
        }
    }

    public static class C0004b {

        public ImageView f391a;

        public TextView f392b;
    }

    public b(Context context, int i2) {
        this.f386a = (LayoutInflater) context.getSystemService("layout_inflater");
        for (int i3 = 0; i3 < 22; i3++) {
            if (((1 << i3) & i2) != 0 && (i3 != 1 || Build.VERSION.SDK_INT >= 31)) {
                this.f387b.add(new a(f385d[i3], i3, a(context, i3)));
            }
        }
    }

    public static String a(Context context, int i2) {
        if (i2 == 0) {
            return context.getString(R.string.OPT_COLOR_DEFAULT);
        }
        return i2 == 1 ? context.getString(R.string.OPT_COLOR_DYNAMIC) : f384c[i2];
    }

    @Override
    public final int getCount() {
        return this.f387b.size();
    }

    @Override
    public final Object getItem(int i2) {
        return f384c[i2];
    }

    @Override
    public final long getItemId(int i2) {
        return i2;
    }

    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        C0004b c0004b;
        if (view == null) {
            view = this.f386a.inflate(R.layout.item_color_select, viewGroup, false);
            c0004b = new C0004b();
            c0004b.f391a = (ImageView) view.findViewById(R.id.iv_icon);
            c0004b.f392b = (TextView) view.findViewById(R.id.tv_text);
            view.setTag(c0004b);
        } else {
            c0004b = (C0004b) view.getTag();
        }
        a aVar = (a) this.f387b.get(i2);
        c0004b.f392b.setText(aVar.f389b);
        c0004b.f391a.setImageDrawable(new ColorDrawable(aVar.f388a));
        return view;
    }
}
