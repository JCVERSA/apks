package com.transsion.widgetslib.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.transsion.widgetslib.R;
import com.transsion.widgetsmotionlibrary.a;
import com.transsion.widgetsmotionlibrary.b;
import defpackage.m97;
import defpackage.olb;

public class OSPopupPressLayout extends LinearLayout {
    public static final m97 f = new m97();
    public b b;
    public boolean c;
    public Integer d;
    public final a e;

    public OSPopupPressLayout(Context context) {
        this(context, null);
    }

    private int getMaskColor() {
        Integer num = this.d;
        return num != null ? num.intValue() : olb.m(getContext(), R.attr.os_opacityfill_weaker, R.color.os_opacityfill_weaker_hios);
    }

    private View getPressTarget() {
        View viewFindViewById = findViewById(R.id.os_popup_item_content);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        if (getChildCount() > 0) {
            return getChildAt(0);
        }
        return null;
    }

    public final void a() {
        if (this.b == null) {
            this.b = new b();
        }
    }

    public void clearMaskColorOverride() {
        this.d = null;
    }

    @Override
    public void dispatchSetPressed(boolean z) {
    }

    @Override
    public void onDetachedFromWindow() {
        View pressTarget = getPressTarget();
        b bVar = this.b;
        if (bVar != null) {
            if (pressTarget != null) {
                bVar.l(pressTarget);
            } else {
                bVar.k();
            }
            this.b = null;
        }
        super.setPressed(false);
        this.c = false;
        super.onDetachedFromWindow();
    }

    public void setMaskColorOverride(int i) {
        this.d = Integer.valueOf(i);
    }

    @Override
    public void setPressed(boolean z) {
        super.setPressed(z);
        if (this.c == z) {
            return;
        }
        this.c = z;
        View pressTarget = getPressTarget();
        if (pressTarget == null) {
            return;
        }
        if (z) {
            a();
            this.b.v(pressTarget, getMaskColor(), 200L, f, this.e);
        } else {
            b bVar = this.b;
            if (bVar != null) {
                bVar.p(pressTarget);
            }
        }
    }

    public OSPopupPressLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OSPopupPressLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = a.c(getResources().getDimension(R.dimen.os_radius_l));
    }
}
