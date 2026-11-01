package a0;

import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import java.lang.reflect.Field;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

public final class f implements View.OnClickListener {

    public final View f35a;

    public final ZArchiver f36b;

    public class a implements AdapterView.OnItemClickListener {

        public final ListPopupWindow f37a;

        public a(ListPopupWindow listPopupWindow) {
            this.f37a = listPopupWindow;
        }

        @Override
        public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            ZArchiver.u(f.this.f36b, adapterView, i2);
            this.f37a.dismiss();
        }
    }

    public class b implements AdapterView.OnItemLongClickListener {

        public final ListPopupWindow f39a;

        public b(ListPopupWindow listPopupWindow) {
            this.f39a = listPopupWindow;
        }

        @Override
        public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            if (!ZArchiver.v(f.this.f36b, adapterView, i2)) {
                return false;
            }
            this.f39a.dismiss();
            return true;
        }
    }

    public f(ZArchiver zArchiver, View view) {
        this.f36b = zArchiver;
        this.f35a = view;
    }

    @Override
    public final void onClick(View view) {
        ListView listView;
        View view2 = this.f35a;
        view2.setClickable(false);
        ZArchiver zArchiver = this.f36b;
        c0.d dVar = new c0.d(zArchiver, false, true);
        dVar.a(zArchiver.f1445h.f1685e);
        DisplayMetrics displayMetrics = zArchiver.getResources().getDisplayMetrics();
        ListPopupWindow listPopupWindow = new ListPopupWindow(zArchiver);
        listPopupWindow.setAnchorView(zArchiver.f1447j);
        listPopupWindow.setContentWidth(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
        listPopupWindow.setAdapter(dVar);
        if (Build.VERSION.SDK_INT >= 21) {
            listPopupWindow.setBackgroundDrawable(zArchiver.getDrawable(R.drawable.bg_title_menu));
        }
        listPopupWindow.setOnItemClickListener(new a(listPopupWindow));
        try {
            listPopupWindow.setModal(true);
            listPopupWindow.show();
            b bVar = new b(listPopupWindow);
            Field fieldT = c.t(ListPopupWindow.class, "mDropDownList");
            if (fieldT != null) {
                fieldT.setAccessible(true);
                try {
                    listView = (ListView) fieldT.get(listPopupWindow);
                } catch (Exception unused) {
                    listView = null;
                }
                if (listView != null) {
                    listView.setOnItemLongClickListener(bVar);
                }
            }
            view2.setClickable(true);
        } catch (Exception unused2) {
        }
    }
}
