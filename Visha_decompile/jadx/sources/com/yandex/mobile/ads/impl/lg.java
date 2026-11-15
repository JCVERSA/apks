package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class lg {
    private final q71 a;
    private final kg b;
    private final List<ig<?>> c;

    /* JADX WARN: Multi-variable type inference failed */
    public lg(q71 q71Var, kg kgVar, List<? extends ig<?>> list) {
        y45.j(q71Var, "nativeAdWeakViewProvider");
        y45.j(kgVar, "assetAdapterCreator");
        y45.j(list, "assets");
        this.a = q71Var;
        this.b = kgVar;
        this.c = list;
    }

    public final HashMap a() {
        HashMap map = new HashMap();
        kg kgVar = this.b;
        View viewA = this.a.a("close_button");
        TextView textView = viewA instanceof TextView ? (TextView) viewA : null;
        kgVar.getClass();
        vp vpVar = textView != null ? new vp(textView) : null;
        map.put("close_button", vpVar != null ? new fz(vpVar) : null);
        kg kgVar2 = this.b;
        View viewA2 = this.a.a("feedback");
        map.put("feedback", kgVar2.a(viewA2 instanceof ImageView ? (ImageView) viewA2 : null));
        kg kgVar3 = this.b;
        ImageView imageViewB = this.a.b();
        View viewA3 = this.a.a("media");
        map.put("media", kgVar3.a(imageViewB, viewA3 instanceof CustomizableMediaView ? (CustomizableMediaView) viewA3 : null));
        map.put("rating", this.b.a(this.a.a("rating")));
        kg kgVar4 = this.b;
        View viewD = this.a.d();
        kgVar4.getClass();
        ts1 ts1Var = viewD != null ? new ts1(viewD) : null;
        map.put("root_container", ts1Var != null ? new fz(ts1Var) : null);
        for (ig<?> igVar : this.c) {
            View viewA4 = this.a.a(igVar.b());
            if (viewA4 != null && !map.containsKey(igVar.b())) {
                jg<?> jgVarA = this.b.a(viewA4, igVar.c());
                if (jgVarA == null) {
                    this.b.getClass();
                    y45.j(viewA4, "view");
                    jgVarA = new fz<>(new w00(viewA4));
                }
                map.put(igVar.b(), jgVarA);
            }
        }
        for (Map.Entry entry : this.a.a().entrySet()) {
            String str = (String) entry.getKey();
            View view = (View) ((WeakReference) entry.getValue()).get();
            if (view != null && !map.containsKey(str)) {
                this.b.getClass();
                y45.j(view, "view");
                map.put(str, new fz(new w00(view)));
            }
        }
        return map;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public lg(q71 q71Var, sj0 sj0Var, ix0 ix0Var, n91 n91Var, t81 t81Var, o8<?> o8Var, fc1 fc1Var, sp1 sp1Var) {
        this(q71Var, new kg(o8Var, sj0Var, ix0Var, n91Var, t81Var, sp1Var), fc1Var.b());
        y45.j(q71Var, "nativeAdWeakViewProvider");
        y45.j(sj0Var, "imageProvider");
        y45.j(ix0Var, "mediaViewAdapterCreator");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(t81Var, "nativeForcePauseObserver");
        y45.j(o8Var, "adResponse");
        y45.j(fc1Var, "nativeVisualBlock");
        y45.j(sp1Var, "reporter");
    }
}
