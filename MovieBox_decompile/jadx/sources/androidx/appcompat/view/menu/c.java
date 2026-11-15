package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.collection.x0;

abstract class c {

    final Context f1109a;

    private x0 f1110b;

    private x0 f1111c;

    c(Context context) {
        this.f1109a = context;
    }

    final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof b1.b)) {
            return menuItem;
        }
        b1.b bVar = (b1.b) menuItem;
        if (this.f1110b == null) {
            this.f1110b = new x0();
        }
        MenuItem menuItem2 = (MenuItem) this.f1110b.get(bVar);
        if (menuItem2 != null) {
            return menuItem2;
        }
        i iVar = new i(this.f1109a, bVar);
        this.f1110b.put(bVar, iVar);
        return iVar;
    }

    final void e() {
        x0 x0Var = this.f1110b;
        if (x0Var != null) {
            x0Var.clear();
        }
        x0 x0Var2 = this.f1111c;
        if (x0Var2 != null) {
            x0Var2.clear();
        }
    }

    final void f(int i10) {
        if (this.f1110b == null) {
            return;
        }
        int i11 = 0;
        while (i11 < this.f1110b.size()) {
            if (((b1.b) this.f1110b.keyAt(i11)).getGroupId() == i10) {
                this.f1110b.removeAt(i11);
                i11--;
            }
            i11++;
        }
    }

    final void g(int i10) {
        if (this.f1110b == null) {
            return;
        }
        for (int i11 = 0; i11 < this.f1110b.size(); i11++) {
            if (((b1.b) this.f1110b.keyAt(i11)).getItemId() == i10) {
                this.f1110b.removeAt(i11);
                return;
            }
        }
    }

    final SubMenu d(SubMenu subMenu) {
        return subMenu;
    }
}
