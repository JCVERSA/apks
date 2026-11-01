package z0;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.widget.PopupMenu;
import ru.zdevs.zarchiver.R;

public final class a extends ActionMode {

    public final b0.c f2327a;

    public final ActionMode.Callback f2328b;

    public final PopupMenu f2329c;

    public final Drawable f2330d;

    public a(b0.c cVar, ActionMode.Callback callback) {
        this.f2327a = cVar;
        this.f2328b = callback;
        PopupMenu popupMenu = new PopupMenu(cVar, cVar.findViewById(R.id.bMenu));
        this.f2329c = popupMenu;
        int iC = c.c(cVar, R.attr.colorSelectHighlight);
        View viewFindViewById = cVar.findViewById(R.id.rlTitle);
        this.f2330d = viewFindViewById.getBackground();
        viewFindViewById.setBackgroundDrawable(new ColorDrawable(iC));
        callback.onCreateActionMode(this, popupMenu.getMenu());
    }

    @Override
    public final void finish() {
        b0.c cVar = this.f2327a;
        View viewFindViewById = cVar.findViewById(R.id.rlTitle);
        if (viewFindViewById != null) {
            viewFindViewById.setBackgroundDrawable(this.f2330d);
        }
        cVar.m(false);
        this.f2328b.onDestroyActionMode(this);
    }

    @Override
    public final View getCustomView() {
        return null;
    }

    @Override
    public final Menu getMenu() {
        return this.f2329c.getMenu();
    }

    @Override
    public final MenuInflater getMenuInflater() {
        return null;
    }

    @Override
    public final CharSequence getSubtitle() {
        return null;
    }

    @Override
    public final CharSequence getTitle() {
        return null;
    }

    @Override
    public final void invalidate() {
    }

    @Override
    public final void setCustomView(View view) {
    }

    @Override
    public final void setSubtitle(int i2) {
    }

    @Override
    public final void setSubtitle(CharSequence charSequence) {
    }

    @Override
    public final void setTitle(int i2) {
    }

    @Override
    public final void setTitle(CharSequence charSequence) {
    }
}
