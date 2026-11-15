package com.yanzhenjie.recyclerview.touch;

import androidx.recyclerview.widget.ItemTouchHelper;
import defpackage.af7;
import defpackage.bf7;
import defpackage.u55;
import defpackage.ze7;

public class DefaultItemTouchHelper extends ItemTouchHelper {
    public u55 b;

    public DefaultItemTouchHelper() {
        this(new u55());
    }

    public boolean a() {
        return this.b.isItemViewSwipeEnabled();
    }

    public boolean b() {
        return this.b.isLongPressDragEnabled();
    }

    public void c(boolean z) {
        this.b.a(z);
    }

    public void d(boolean z) {
        this.b.b(z);
    }

    public void setOnItemMoveListener(ze7 ze7Var) {
        this.b.setOnItemMoveListener(ze7Var);
    }

    public void setOnItemMovementListener(af7 af7Var) {
        this.b.setOnItemMovementListener(af7Var);
    }

    public void setOnItemStateChangedListener(bf7 bf7Var) {
        this.b.setOnItemStateChangedListener(bf7Var);
    }

    public DefaultItemTouchHelper(u55 u55Var) {
        super(u55Var);
        this.b = u55Var;
    }
}
