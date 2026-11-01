package g0;

import android.view.MenuItem;
import android.widget.PopupMenu;
import ru.zdevs.zarchiver.R;

public final class d implements PopupMenu.OnMenuItemClickListener {

    public final h f936a;

    public d(h hVar) {
        this.f936a = hVar;
    }

    @Override
    public final boolean onMenuItemClick(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == R.id.bSolid) {
            h hVar = this.f936a;
            boolean z2 = !hVar.f955s;
            hVar.f955s = z2;
            menuItem.setChecked(z2);
        }
        return false;
    }
}
