package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupMenu;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import com.transsion.sniffer_load.R;

public abstract class eic {

    public class a implements PopupMenu.OnMenuItemClickListener {
        public final PopupMenu a;
        public final Context b;
        public final IWebLoadStatusCallback c;
        public final String d;
        public final String e;

        public a(PopupMenu popupMenu, Context context, IWebLoadStatusCallback iWebLoadStatusCallback, String str, String str2) {
            this.a = popupMenu;
            this.b = context;
            this.c = iWebLoadStatusCallback;
            this.d = str;
            this.e = str2;
        }

        @Override
        public boolean onMenuItemClick(MenuItem menuItem) {
            this.a.dismiss();
            Context context = this.b;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                if (activity.isFinishing() || activity.isDestroyed()) {
                    return true;
                }
            }
            if (menuItem.getItemId() == R.id.menu_open_b) {
                hb0.markDirect("dl_brower_rp_lc_bg_cl");
                IWebLoadStatusCallback iWebLoadStatusCallback = this.c;
                if (iWebLoadStatusCallback != null) {
                    iWebLoadStatusCallback.y(IWebLoadStatusCallback.MENU.OPEN_B, this.d, this.e);
                }
            } else if (menuItem.getItemId() == R.id.menu_open_f) {
                hb0.markDirect("dl_brower_rp_lc_nw_cl");
                IWebLoadStatusCallback iWebLoadStatusCallback2 = this.c;
                if (iWebLoadStatusCallback2 != null) {
                    iWebLoadStatusCallback2.y(IWebLoadStatusCallback.MENU.OPEN_F, this.d, this.e);
                }
            } else {
                hb0.markDirect("dl_brower_rp_lc_copy_cl");
                IWebLoadStatusCallback iWebLoadStatusCallback3 = this.c;
                if (iWebLoadStatusCallback3 != null) {
                    iWebLoadStatusCallback3.y(IWebLoadStatusCallback.MENU.COPY_LINK, this.d, this.e);
                }
            }
            return true;
        }
    }

    public static void a(Context context, View view, String str, String str2, int i, IWebLoadStatusCallback iWebLoadStatusCallback) {
        PopupMenu popupMenu = new PopupMenu(context, view);
        popupMenu.inflate(R.menu.menu_context);
        popupMenu.setOnMenuItemClickListener(new a(popupMenu, context, iWebLoadStatusCallback, str, str2));
        popupMenu.show();
        hb0.markDirect("dl_brower_rp_lc_show");
    }
}
