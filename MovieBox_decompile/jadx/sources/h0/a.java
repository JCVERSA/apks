package h0;

import android.graphics.Rect;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import y.i;

public final class a extends ActionMode.Callback2 {

    private final b f61211a;

    public a(b bVar) {
        this.f61211a = bVar;
    }

    @Override
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.f61211a.d(actionMode, menuItem);
    }

    @Override
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.f61211a.e(actionMode, menu);
    }

    @Override
    public void onDestroyActionMode(ActionMode actionMode) {
        this.f61211a.f();
    }

    @Override
    public void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
        i iVarC = this.f61211a.c();
        if (rect != null) {
            rect.set((int) iVarC.f(), (int) iVarC.i(), (int) iVarC.g(), (int) iVarC.c());
        }
    }

    @Override
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return this.f61211a.g(actionMode, menu);
    }
}
