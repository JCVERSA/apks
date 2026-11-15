package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupMenu;
import defpackage.af5;
import defpackage.y45;
import java.util.List;

public final class k12 {
    private final jj0 a;
    private final lj1 b;

    public static final class a implements jj0.b {
        static final af5[] c = {ta.a(a.class, "weakContext", "getWeakContext()Landroid/content/Context;", 0), ta.a(a.class, "menuItem", "getMenuItem()Landroid/view/MenuItem;", 0)};
        private final go1 a;
        private final go1 b;

        public a(Context context, MenuItem menuItem) {
            y45.j(context, "context");
            y45.j(menuItem, "menuItem");
            this.a = ho1.a(context);
            this.b = ho1.a(menuItem);
        }

        @Override
        public final void a(Bitmap bitmap) {
            MenuItem menuItem;
            if (bitmap != null) {
                go1 go1Var = this.a;
                af5[] af5VarArr = c;
                Context context = (Context) go1Var.getValue(this, af5VarArr[0]);
                if (context == null || (menuItem = (MenuItem) this.b.getValue(this, af5VarArr[1])) == null) {
                    return;
                }
                menuItem.setIcon(new BitmapDrawable(context.getResources(), bitmap));
            }
        }
    }

    public k12(jj0 jj0Var, lj1 lj1Var) {
        y45.j(jj0Var, "imageForPresentProvider");
        y45.j(lj1Var, "iconsManager");
        this.a = jj0Var;
        this.b = lj1Var;
    }

    public final PopupMenu a(View view, List<z02> list) {
        y45.j(view, "view");
        y45.j(list, "items");
        PopupMenu popupMenu = new PopupMenu(view.getContext(), view, 5);
        this.b.getClass();
        lj1.a(popupMenu);
        Menu menu = popupMenu.getMenu();
        Context context = view.getContext();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            z02 z02Var = list.get(i);
            y45.g(context);
            y45.g(menu);
            b12 b12VarC = z02Var.c();
            MenuItem menuItemAdd = menu.add(0, i, i, b12VarC.b());
            y45.g(menuItemAdd);
            this.a.a(b12VarC.a(), new a(context, menuItemAdd));
        }
        return popupMenu;
    }
}
