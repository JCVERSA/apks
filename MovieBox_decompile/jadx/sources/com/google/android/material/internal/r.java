package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;

public class r extends androidx.appcompat.view.menu.f {
    public r(Context context) {
        super(context);
    }

    @Override
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        androidx.appcompat.view.menu.h hVar = (androidx.appcompat.view.menu.h) a(i10, i11, i12, charSequence);
        t tVar = new t(w(), this, hVar);
        hVar.x(tVar);
        return tVar;
    }
}
