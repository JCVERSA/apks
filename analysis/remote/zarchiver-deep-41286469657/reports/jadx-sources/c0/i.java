package c0;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

public final class i extends BaseAdapter {

    public final LayoutInflater f423a;

    public final ArrayList<a> f424b;

    public static final class a implements Comparable<a> {

        public final Intent f425a;

        public final ResolveInfo f426b;

        public final String f427c;

        public Drawable f428d;

        public String f429e;

        public String f430f;

        public boolean f431g = false;

        public final PackageManager f432h;

        public a(Intent intent, ResolveInfo resolveInfo, PackageManager packageManager) {
            this.f425a = intent;
            this.f426b = resolveInfo;
            this.f432h = packageManager;
            CharSequence charSequenceLoadLabel = resolveInfo.loadLabel(packageManager);
            this.f427c = charSequenceLoadLabel != null ? charSequenceLoadLabel.toString() : null;
        }

        public final String a() {
            int iLastIndexOf;
            if (this.f429e == null) {
                String strSubstring = this.f426b.activityInfo.name;
                if (strSubstring != null && (iLastIndexOf = strSubstring.lastIndexOf(46)) > 0) {
                    strSubstring = strSubstring.substring(iLastIndexOf + 1);
                }
                this.f429e = strSubstring;
            }
            return this.f429e;
        }

        public final synchronized Drawable b() {
            if (this.f428d == null) {
                this.f428d = this.f426b.activityInfo.loadIcon(this.f432h);
            }
            return this.f428d;
        }

        public final String c() {
            Uri data;
            if (this.f430f == null && (data = this.f425a.getData()) != null) {
                this.f430f = data.getScheme();
            }
            return this.f430f;
        }

        @Override
        public final int compareTo(a aVar) {
            a aVar2 = aVar;
            boolean z2 = this.f431g;
            int iCompareTo = -1;
            if (z2 && !aVar2.f431g) {
                return -1;
            }
            if (!z2 && aVar2.f431g) {
                return 1;
            }
            String str = aVar2.f427c;
            String str2 = this.f427c;
            if (str2 == null) {
                iCompareTo = str == null ? 0 : 1;
            } else if (str != null) {
                iCompareTo = str2.compareTo(str);
            }
            if (iCompareTo == 0) {
                iCompareTo = a().compareTo(aVar2.a());
            }
            return iCompareTo == 0 ? c().compareTo(aVar2.c()) : iCompareTo;
        }
    }

    public static class b {

        public ImageView f433a;

        public TextView f434b;

        public TextView f435c;
    }

    public i(Context context, ArrayList<a> arrayList) {
        this.f424b = arrayList;
        this.f423a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override
    public final int getCount() {
        return this.f424b.size();
    }

    @Override
    public final Object getItem(int i2) {
        return this.f424b.get(i2);
    }

    @Override
    public final long getItemId(int i2) {
        return i2;
    }

    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar = this.f424b.get(i2);
        if (view == null) {
            view = this.f423a.inflate(R.layout.item_application, viewGroup, false);
            b bVar = new b();
            bVar.f433a = (ImageView) view.findViewById(R.id.icon);
            bVar.f434b = (TextView) view.findViewById(R.id.text);
            bVar.f435c = (TextView) view.findViewById(R.id.desc);
            view.setTag(bVar);
        }
        b bVar2 = (b) view.getTag();
        bVar2.f433a.setImageDrawable(aVar.b());
        bVar2.f434b.setText(aVar.f427c);
        bVar2.f435c.setText(aVar.c() + " / " + aVar.a());
        return view;
    }
}
