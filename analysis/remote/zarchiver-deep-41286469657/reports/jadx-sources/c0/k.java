package c0;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

public final class k extends BaseAdapter {

    public final LayoutInflater f439a;

    public final ArrayList<a> f440b = new ArrayList<>();

    public static class a {

        public final int f441a;

        public final String f442b;

        public a(int i2, String str) {
            this.f441a = i2;
            this.f442b = str;
        }

        public final String toString() {
            int i2 = this.f441a;
            String str = this.f442b;
            if (i2 == -1) {
                return "\n" + str + '\n';
            }
            return "\t" + str.replace("\n", "\n\t") + '\n';
        }
    }

    public static class b {

        public TextView f443a;

        public TextView f444b;
    }

    public k(ZArchiver zArchiver, e0.i[] iVarArr) {
        String string;
        this.f439a = (LayoutInflater) zArchiver.getSystemService("layout_inflater");
        for (e0.i iVar : iVarArr) {
            if (iVar != null) {
                this.f440b.add(new a(-1, a0.c.y(iVar.f692a)));
                ArrayList<a> arrayList = this.f440b;
                StringBuilder sb = new StringBuilder();
                sb.append(zArchiver.getString(R.string.FINFO_ARCHIVE_TYPE));
                sb.append(" ");
                sb.append(iVar.f693b);
                sb.append("\n");
                sb.append(zArchiver.getString(R.string.FINFO_ARCHIVE_FILE_COUNT));
                sb.append(" ");
                sb.append(iVar.f695d);
                sb.append("\n");
                sb.append(zArchiver.getString(R.string.FINFO_ARCHIVE_SIZE));
                sb.append(" ");
                sb.append(v0.h.b(iVar.f696e, 2, null));
                if (a0.c.K(iVar.f697f, 3)) {
                    StringBuilder sb2 = new StringBuilder("\n");
                    sb2.append(zArchiver.getString(R.string.FINFO_ARCHIVE_SOLID));
                    sb2.append(" ");
                    sb2.append(a0.c.K(iVar.f697f, 1) ? "+" : "-");
                    string = sb2.toString();
                } else {
                    string = "";
                }
                sb.append(string);
                arrayList.add(new a(0, sb.toString()));
            }
        }
    }

    @Override
    public final int getCount() {
        return this.f440b.size();
    }

    @Override
    public final Object getItem(int i2) {
        return this.f440b.get(i2);
    }

    @Override
    public final long getItemId(int i2) {
        return i2;
    }

    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar = this.f440b.get(i2);
        if (view == null) {
            view = this.f439a.inflate(R.layout.item_error, viewGroup, false);
            b bVar = new b();
            bVar.f443a = (TextView) view.findViewById(R.id.f1433n);
            bVar.f444b = (TextView) view.findViewById(R.id.text);
            view.setTag(bVar);
        }
        b bVar2 = (b) view.getTag();
        if (aVar.f441a == -1) {
            bVar2.f443a.setVisibility(8);
            bVar2.f444b.setTypeface(null, 1);
        } else {
            bVar2.f443a.setVisibility(8);
            bVar2.f444b.setTypeface(null, 0);
        }
        bVar2.f444b.setText(aVar.f442b);
        return view;
    }
}
