package com.google.android.material.navigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.h;

public final class d extends androidx.appcompat.view.menu.f {
    private final Class B;
    private final int C;

    public d(Context context, Class cls, int i10) {
        super(context);
        this.B = cls;
        this.C = i10;
    }

    @Override
    protected MenuItem a(int i10, int i11, int i12, CharSequence charSequence) {
        if (size() + 1 <= this.C) {
            i0();
            MenuItem menuItemA = super.a(i10, i11, i12, charSequence);
            if (menuItemA instanceof h) {
                ((h) menuItemA).t(true);
            }
            h0();
            return menuItemA;
        }
        String simpleName = this.B.getSimpleName();
        throw new IllegalArgumentException("Maximum number of items supported by " + simpleName + " is " + this.C + ". Limit can be checked with " + simpleName + "#getMaxItemCount()");
    }

    @Override
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.B.getSimpleName() + " does not support submenus");
    }
}
