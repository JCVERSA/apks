package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p003activity.OnBackPressedCallback;
import com.yandex.div.core.DivPreloader;
import com.yandex.div.core.view2.a;
import com.yandex.div2.Div;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class gqa {
    public final String a;
    public final a b;
    public final Div c;
    public final b19 d;
    public DivPreloader.f e;
    public final OnBackPressedCallback f;
    public boolean g;

    public gqa(String str, a aVar, Div div, b19 b19Var, DivPreloader.f fVar, OnBackPressedCallback onBackPressedCallback, boolean z) {
        y45.j(str, TtmlNode.ATTR_ID);
        y45.j(aVar, "bindingContext");
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(b19Var, "popupWindow");
        this.a = str;
        this.b = aVar;
        this.c = div;
        this.d = b19Var;
        this.e = fVar;
        this.f = onBackPressedCallback;
        this.g = z;
    }

    public final a a() {
        return this.b;
    }

    public final boolean b() {
        return this.g;
    }

    public final Div c() {
        return this.c;
    }

    public final String d() {
        return this.a;
    }

    public final OnBackPressedCallback e() {
        return this.f;
    }

    public final b19 f() {
        return this.d;
    }

    public final DivPreloader.f g() {
        return this.e;
    }

    public final void h(boolean z) {
        this.g = z;
    }

    public final void i(DivPreloader.f fVar) {
        this.e = fVar;
    }

    public gqa(String str, a aVar, Div div, b19 b19Var, DivPreloader.f fVar, OnBackPressedCallback onBackPressedCallback, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, aVar, div, b19Var, (i & 16) != 0 ? null : fVar, onBackPressedCallback, (i & 64) != 0 ? false : z);
    }
}
