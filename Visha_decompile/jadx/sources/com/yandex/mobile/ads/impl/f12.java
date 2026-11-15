package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.widget.PopupMenu;
import defpackage.y45;
import java.util.List;

public final class f12 {
    private final o3 a;
    private final y41 b;
    private final p51 c;
    private final s91 d;
    private final k12 e;

    public f12(Context context, o3 o3Var, o8<?> o8Var, y41 y41Var, p51 p51Var, g71 g71Var, s91 s91Var, k12 k12Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(y41Var, "clickReporterCreator");
        y45.j(p51Var, "nativeAdEventController");
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(s91Var, "nativeOpenUrlHandlerCreator");
        y45.j(k12Var, "socialMenuCreator");
        this.a = o3Var;
        this.b = y41Var;
        this.c = p51Var;
        this.d = s91Var;
        this.e = k12Var;
    }

    public final void a(View view, w02 w02Var) {
        y45.j(view, "view");
        y45.j(w02Var, "action");
        List<z02> listC = w02Var.c();
        if (listC.isEmpty()) {
            return;
        }
        PopupMenu popupMenuA = this.e.a(view, listC);
        Context context = view.getContext();
        y45.i(context, "getContext(...)");
        popupMenuA.setOnMenuItemClickListener(new e12(new y62(new v9(context, this.a)), this.b, listC, this.c, this.d));
        popupMenuA.show();
    }
}
