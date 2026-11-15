package com.yandex.div.core.util.text;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.Spannable;
import android.text.Spanned;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.DivTextRangeBackground;
import defpackage.c74;
import defpackage.gn9;
import defpackage.oj3;
import defpackage.ps6;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z31;
import defpackage.zs2;
import java.util.ArrayList;
import kotlin.b;

public final class DivTextRangesBackgroundHelper {
    public final View a;
    public final oj3 b;
    public ArrayList c;
    public final yi5 d;
    public final yi5 e;
    public final yi5 f;

    public DivTextRangesBackgroundHelper(View view, oj3 oj3Var) {
        y45.j(view, "view");
        y45.j(oj3Var, "resolver");
        this.a = view;
        this.b = oj3Var;
        this.c = new ArrayList();
        this.d = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final gn9 invoke() {
                return new gn9(this.this$0.g(), this.this$0.e());
            }
        });
        this.e = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final ps6 invoke() {
                return new ps6(this.this$0.g(), this.this$0.e());
            }
        });
        this.f = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final z31 invoke() {
                Context context = this.this$0.g().getContext();
                y45.i(context, "view.context");
                return new z31(context, this.this$0.e());
            }
        });
    }

    public final boolean a(DivBackgroundSpan divBackgroundSpan) {
        y45.j(divBackgroundSpan, TtmlNode.TAG_SPAN);
        return this.c.add(divBackgroundSpan);
    }

    public final void b(Canvas canvas, Spanned spanned, Layout layout) {
        y45.j(canvas, "canvas");
        y45.j(spanned, "text");
        y45.j(layout, TtmlNode.TAG_LAYOUT);
        for (DivBackgroundSpan divBackgroundSpan : this.c) {
            int spanStart = spanned.getSpanStart(divBackgroundSpan);
            int spanEnd = spanned.getSpanEnd(divBackgroundSpan);
            int lineForOffset = layout.getLineForOffset(spanStart);
            int lineForOffset2 = layout.getLineForOffset(spanEnd);
            int primaryHorizontal = (int) layout.getPrimaryHorizontal(spanStart);
            int primaryHorizontal2 = (int) layout.getPrimaryHorizontal(spanEnd);
            if (divBackgroundSpan.getBackground() instanceof DivTextRangeBackground.a) {
                c().a(canvas, layout, lineForOffset, lineForOffset2, primaryHorizontal, primaryHorizontal2, divBackgroundSpan.getBorder(), divBackgroundSpan.getBackground());
            } else {
                (lineForOffset == lineForOffset2 ? f() : d()).a(canvas, layout, lineForOffset, lineForOffset2, primaryHorizontal, primaryHorizontal2, divBackgroundSpan.getBorder(), divBackgroundSpan.getBackground());
            }
        }
    }

    public final z31 c() {
        return (z31) this.f.getValue();
    }

    public final zs2 d() {
        return (zs2) this.e.getValue();
    }

    public final oj3 e() {
        return this.b;
    }

    public final zs2 f() {
        return (zs2) this.d.getValue();
    }

    public final View g() {
        return this.a;
    }

    public final boolean h() {
        return !this.c.isEmpty();
    }

    public final boolean i(CharSequence charSequence, DivBackgroundSpan divBackgroundSpan, int i, int i2) {
        y45.j(charSequence, "text");
        y45.j(divBackgroundSpan, "backgroundSpan");
        Spannable spannable = charSequence instanceof Spannable ? (Spannable) charSequence : null;
        if (spannable == null) {
            return false;
        }
        ArrayList<DivBackgroundSpan> arrayList = this.c;
        if (arrayList != null && arrayList.isEmpty()) {
            return false;
        }
        for (DivBackgroundSpan divBackgroundSpan2 : arrayList) {
            if (y45.e(divBackgroundSpan2.getBorder(), divBackgroundSpan.getBorder()) && y45.e(divBackgroundSpan2.getBackground(), divBackgroundSpan.getBackground()) && i2 == spannable.getSpanEnd(divBackgroundSpan2) && i == spannable.getSpanStart(divBackgroundSpan2)) {
                return true;
            }
        }
        return false;
    }

    public final void j() {
        this.c.clear();
    }
}
