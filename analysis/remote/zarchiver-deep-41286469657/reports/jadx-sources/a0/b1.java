package a0;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;
import ru.zdevs.zarchiver.ZSelectFile;

public final class b1 implements View.OnClickListener {

    public final ZSelectFile f6a;

    public class a implements AdapterView.OnItemClickListener {

        public final ListPopupWindow f7a;

        public a(ListPopupWindow listPopupWindow) {
            this.f7a = listPopupWindow;
        }

        @Override
        public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            if (adapterView != null) {
                c0.e eVar = (c0.e) adapterView.getItemAtPosition(i2);
                ZSelectFile zSelectFile = b1.this.f6a;
                h0.h hVar = new h0.h(eVar.f411c);
                int i3 = ZSelectFile.f1479n;
                zSelectFile.y(null, hVar, false);
            }
            this.f7a.dismiss();
        }
    }

    public b1(ZSelectFile zSelectFile) {
        this.f6a = zSelectFile;
    }

    @Override
    public final void onClick(View view) {
        ZSelectFile zSelectFile = this.f6a;
        DisplayMetrics displayMetrics = zSelectFile.getResources().getDisplayMetrics();
        ListPopupWindow listPopupWindow = new ListPopupWindow(zSelectFile);
        listPopupWindow.setAnchorView(zSelectFile.f1485k);
        listPopupWindow.setContentWidth(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
        listPopupWindow.setAdapter(new c0.d(zSelectFile, true, true));
        listPopupWindow.setOnItemClickListener(new a(listPopupWindow));
        try {
            listPopupWindow.setModal(true);
            listPopupWindow.show();
        } catch (WindowManager.BadTokenException unused) {
        }
    }
}
