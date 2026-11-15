package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.Menu;
import android.widget.ImageView;
import android.widget.PopupMenu;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class xa0 {
    public static PopupMenu a(Context context, ImageView imageView, List list) {
        y45.j(context, "context");
        y45.j(imageView, "view");
        y45.j(list, "items");
        PopupMenu popupMenu = new PopupMenu(context, imageView, 5);
        Menu menu = popupMenu.getMenu();
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            menu.add(0, i, 0, ((oa0.a) it.next()).a());
            i++;
        }
        return popupMenu;
    }
}
