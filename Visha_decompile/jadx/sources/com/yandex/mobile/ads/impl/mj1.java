package com.yandex.mobile.ads.impl;

import android.view.MenuItem;
import android.widget.PopupMenu;
import defpackage.y45;
import java.util.List;

public final class mj1 implements PopupMenu.OnMenuItemClickListener {
    private final v9 a;
    private final List<oa0.a> b;
    private final tp1 c;
    private final p51 d;

    public mj1(v9 v9Var, List<oa0.a> list, tp1 tp1Var, p51 p51Var) {
        y45.j(v9Var, "adTracker");
        y45.j(list, "items");
        y45.j(tp1Var, "reporter");
        y45.j(p51Var, "nativeAdEventController");
        this.a = v9Var;
        this.b = list;
        this.c = tp1Var;
        this.d = p51Var;
    }

    @Override
    public final boolean onMenuItemClick(MenuItem menuItem) {
        y45.j(menuItem, "menuItem");
        int itemId = menuItem.getItemId();
        if (itemId >= this.b.size()) {
            return true;
        }
        this.a.a(this.b.get(itemId).b(), z62.c);
        this.c.a(op1.b.E);
        this.d.a();
        return true;
    }
}
