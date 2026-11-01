package g0;

import android.os.Build;
import android.view.MenuItem;
import android.widget.PopupMenu;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

public final class q implements PopupMenu.OnMenuItemClickListener {

    public final s f1034a;

    public q(s sVar) {
        this.f1034a = sVar;
    }

    @Override
    public final boolean onMenuItemClick(MenuItem menuItem) {
        s sVar = this.f1034a;
        String strA = x0.h.a(sVar.f1037g.getContext());
        if (menuItem.getItemId() == R.id.bForceSelect) {
            sVar.f1039i = sVar.f1038h;
            if (strA != null) {
                ZApp.j(strA);
            }
            sVar.onClick(sVar.f1037g, -1);
            return true;
        }
        if (strA == null) {
            return true;
        }
        v0.a.a(sVar.f1037g.getContext(), null, strA + "\nOS SECURITY_PATCH:" + Build.VERSION.SECURITY_PATCH);
        return true;
    }
}
