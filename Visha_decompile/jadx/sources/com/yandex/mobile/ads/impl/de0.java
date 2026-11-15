package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

public final class de0 {
    private final o8<?> a;
    private final ViewGroup b;
    private final zr c;
    private final o3 d;
    private final st e;
    private final lr0 f;
    private final l3 g;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public de0(Context context, o8 o8Var, RelativeLayout relativeLayout, zr zrVar, e1 e1Var, int i, v1 v1Var, o3 o3Var) {
        this(context, o8Var, relativeLayout, zrVar, e1Var, v1Var, o3Var, new u81(v1Var, new vd0(pw1.a.a().a(context))), new lr0(context, o8Var, zrVar, e1Var, i, v1Var, o3Var), new l3(v1Var));
        int i2 = pw1.l;
    }

    public final yd0 a(Context context, q61 q61Var, zr zrVar) {
        ArrayList arrayList;
        b30 b30Var;
        b30 b30VarPrevious;
        y45.j(context, "context");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(zrVar, "contentCloseListener");
        ks1 ks1Var = new ks1(context, new z20(q61Var, zrVar, this.d.q().c(), new h30(), new n30()), zrVar);
        y1 y1VarA = this.g.a(this.a, ks1Var);
        List<b30> listC = q61Var.c();
        if (listC != null) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : listC) {
                if (y45.e(((b30) obj).e(), h10.c.a())) {
                    arrayList2.add(obj);
                }
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        List<b30> listC2 = q61Var.c();
        if (listC2 != null) {
            ListIterator<b30> listIterator = listC2.listIterator(listC2.size());
            do {
                if (!listIterator.hasPrevious()) {
                    b30VarPrevious = null;
                    break;
                }
                b30VarPrevious = listIterator.previous();
            } while (!y45.e(b30VarPrevious.e(), h10.d.a()));
            b30Var = b30VarPrevious;
        } else {
            b30Var = null;
        }
        y61 y61VarA = q61Var.a();
        g6 g6VarA = y61VarA != null ? y61VarA.a() : null;
        if (y45.e(this.a.x(), e10.AD_POD.a()) && g6VarA != null && ((q61Var instanceof b02) || b30Var != null)) {
            st stVar = this.e;
            return new j6(context, q61Var, stVar, ks1Var, arrayList, b30Var, this.b, y1VarA, zrVar, this.f, g6VarA, new ExtendedNativeAdView(context), new x1(q61Var, zrVar, stVar), new xl1(), new aq(), new zr1(new o52()));
        }
        return new ce0(this.f.a(context, this.b, q61Var, this.e, new vm1(y1VarA), ks1Var, new f52(new xl1(), new vy1(this.a), new zy1(this.a), new yy1(), new aq()), new az1(), arrayList != null ? (b30) defpackage.i81.q0(arrayList) : null, null), zrVar);
    }

    public de0(Context context, o8 o8Var, RelativeLayout relativeLayout, zr zrVar, e1 e1Var, v1 v1Var, o3 o3Var, st stVar, lr0 lr0Var, l3 l3Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(relativeLayout, TtmlNode.RUBY_CONTAINER);
        y45.j(zrVar, "contentCloseListener");
        y45.j(e1Var, "eventController");
        y45.j(v1Var, "adActivityListener");
        y45.j(o3Var, "adConfiguration");
        y45.j(stVar, "adEventListener");
        y45.j(lr0Var, "layoutDesignsControllerCreator");
        y45.j(l3Var, "adCompleteListenerCreator");
        this.a = o8Var;
        this.b = relativeLayout;
        this.c = zrVar;
        this.d = o3Var;
        this.e = stVar;
        this.f = lr0Var;
        this.g = l3Var;
    }
}
