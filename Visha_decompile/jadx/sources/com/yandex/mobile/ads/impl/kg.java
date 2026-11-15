package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class kg {
    private final o8<?> a;
    private final sj0 b;
    private final ix0 c;
    private final n91 d;
    private final t81 e;
    private final sp1 f;

    public kg(o8<?> o8Var, sj0 sj0Var, ix0 ix0Var, n91 n91Var, t81 t81Var, sp1 sp1Var) {
        y45.j(o8Var, "adResponse");
        y45.j(sj0Var, "imageProvider");
        y45.j(ix0Var, "mediaViewAdapterCreator");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(t81Var, "nativeForcePauseObserver");
        y45.j(sp1Var, "reporter");
        this.a = o8Var;
        this.b = sj0Var;
        this.c = ix0Var;
        this.d = n91Var;
        this.e = t81Var;
        this.f = sp1Var;
    }

    public final ej0 a(ImageView imageView) {
        cb0 cb0Var;
        if (imageView != null) {
            Context context = imageView.getContext();
            y45.i(context, "getContext(...)");
            cb0Var = new cb0(imageView, new jj0(context, new d91(this.a), this.b));
        } else {
            cb0Var = null;
        }
        if (cb0Var != null) {
            return new ej0(cb0Var);
        }
        return null;
    }

    public final zu0 a(ImageView imageView, CustomizableMediaView customizableMediaView) {
        fk0 fk0Var = imageView != null ? new fk0(imageView, this.b, this.a) : null;
        hx0 hx0VarA = customizableMediaView != null ? this.c.a(customizableMediaView, this.b, this.d, this.e) : null;
        if (fk0Var == null && hx0VarA == null) {
            return null;
        }
        return new zu0(fk0Var, hx0VarA);
    }

    public final fz a(View view) {
        ln1 ln1Var = view instanceof mn1 ? new ln1(view, this.f) : null;
        if (ln1Var != null) {
            return new fz(ln1Var);
        }
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final jg<?> a(View view, String str) {
        y45.j(str, "type");
        switch (str.hashCode()) {
            case -1034364087:
                if (!str.equals("number")) {
                    return null;
                }
                break;
            case -891985903:
                if (!str.equals("string")) {
                    return null;
                }
                break;
            case -410956671:
                if (str.equals(TtmlNode.RUBY_CONTAINER)) {
                    return new fz(new ts1(view));
                }
                return null;
            case 100313435:
                if (!str.equals("image")) {
                    return null;
                }
                if ((view instanceof ImageView ? (ImageView) view : null) != null) {
                    return new ej0(new fk0((ImageView) view, this.b, this.a));
                }
                return null;
            case 103772132:
                if (!str.equals("media")) {
                    return null;
                }
                if ((view instanceof CustomizableMediaView ? (CustomizableMediaView) view : null) != null) {
                    return a((ImageView) null, (CustomizableMediaView) view);
                }
                return null;
            default:
                return null;
        }
        if ((view instanceof TextView ? (TextView) view : null) != null) {
            return new fz(new w42((TextView) view));
        }
        return null;
    }
}
