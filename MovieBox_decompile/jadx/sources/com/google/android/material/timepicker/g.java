package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

abstract class g extends ConstraintLayout {

    private final Runnable f29294a;

    private int f29295b;

    private cb.i f29296c;

    public g(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(R$layout.material_radial_view_group, this);
        ViewCompat.setBackground(this, i());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RadialViewGroup, i10, 0);
        this.f29295b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.RadialViewGroup_materialCircleRadius, 0);
        this.f29294a = new Runnable() {
            @Override
            public final void run() {
                this.f29293a.n();
            }
        };
        typedArrayObtainStyledAttributes.recycle();
    }

    private void h(List list, androidx.constraintlayout.widget.b bVar, int i10) {
        Iterator it = list.iterator();
        float size = 0.0f;
        while (it.hasNext()) {
            bVar.t(((View) it.next()).getId(), R$id.circle_center, i10, size);
            size += 360.0f / list.size();
        }
    }

    private Drawable i() {
        cb.i iVar = new cb.i();
        this.f29296c = iVar;
        iVar.b0(new cb.l(0.5f));
        this.f29296c.d0(ColorStateList.valueOf(-1));
        return this.f29296c;
    }

    private static boolean m(View view) {
        return "skip".equals(view.getTag());
    }

    private void o() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f29294a);
            handler.post(this.f29294a);
        }
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (view.getId() == -1) {
            view.setId(ViewCompat.generateViewId());
        }
        o();
    }

    int j(int i10) {
        return i10 == 2 ? Math.round(this.f29295b * 0.66f) : this.f29295b;
    }

    public int k() {
        return this.f29295b;
    }

    public void l(int i10) {
        this.f29295b = i10;
        n();
    }

    protected void n() {
        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
        bVar.p(this);
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getId() != R$id.circle_center && !m(childAt)) {
                int i11 = (Integer) childAt.getTag(R$id.material_clock_level);
                if (i11 == null) {
                    i11 = 1;
                }
                if (!map.containsKey(i11)) {
                    map.put(i11, new ArrayList());
                }
                ((List) map.get(i11)).add(childAt);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            h((List) entry.getValue(), bVar, j(((Integer) entry.getKey()).intValue()));
        }
        bVar.i(this);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        n();
    }

    @Override
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        o();
    }

    @Override
    public void setBackgroundColor(int i10) {
        this.f29296c.d0(ColorStateList.valueOf(i10));
    }
}
