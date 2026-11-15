package com.yandex.mobile.ads.impl;

import android.view.MenuItem;
import android.widget.PopupMenu;
import defpackage.y45;
import java.util.List;

public final class e12 implements PopupMenu.OnMenuItemClickListener {
    private final y62 a;
    private final y41 b;
    private final List<z02> c;
    private final p51 d;
    private final s91 e;

    public e12(y62 y62Var, y41 y41Var, List<z02> list, p51 p51Var, s91 s91Var) {
        y45.j(y62Var, "trackingUrlHandler");
        y45.j(y41Var, "clickReporterCreator");
        y45.j(list, "items");
        y45.j(p51Var, "nativeAdEventController");
        y45.j(s91Var, "nativeOpenUrlHandlerCreator");
        this.a = y62Var;
        this.b = y41Var;
        this.c = list;
        this.d = p51Var;
        this.e = s91Var;
    }

    @Override
    public final boolean onMenuItemClick(MenuItem menuItem) {
        y45.j(menuItem, "menuItem");
        int itemId = menuItem.getItemId();
        if (itemId >= this.c.size()) {
            return true;
        }
        z02 z02Var = this.c.get(itemId);
        vr0 vr0VarA = z02Var.a();
        r91 r91VarA = this.e.a(this.b.a(z02Var.b(), "social_action"));
        this.d.a(vr0VarA);
        this.a.a(vr0VarA.d());
        String strE = vr0VarA.e();
        if (strE == null || strE.length() == 0) {
            return true;
        }
        r91VarA.a(strE);
        return true;
    }
}
