package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.yandex.mobile.ads.impl.fl0;
import defpackage.s86;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class fl0 extends LinearLayout {
    private final o10 a;
    private final om b;
    private final TextView c;
    private final View.OnClickListener d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fl0(Context context, o10 o10Var) {
        super(context);
        y45.j(context, "context");
        y45.j(o10Var, "dimensionConverter");
        this.a = o10Var;
        this.b = new om(context, o10Var);
        this.c = new TextView(context);
        this.d = new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                fl0.a(this.b, view);
            }
        };
        a(context);
    }

    public static final void a(fl0 fl0Var, View view) {
        y45.j(fl0Var, "this$0");
        boolean zIsSelected = fl0Var.b.isSelected();
        fl0Var.b.setSelected(!zIsSelected);
        fl0Var.c.setVisibility(!zIsSelected ? 0 : 8);
    }

    public final void setDescription(String str) {
        y45.j(str, "description");
        this.c.setText(str);
    }

    private final void a(Context context) {
        setOrientation(0);
        this.a.getClass();
        int iA = o10.a(context, 4.0f);
        setPadding(iA, iA, iA, iA);
        this.b.setOnClickListener(this.d);
        addView(this.b);
        this.a.getClass();
        y45.j(context, "context");
        int iC = s86.c(TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics()));
        this.c.setPadding(iC, iC, iC, iC);
        this.a.getClass();
        y45.j(context, "context");
        int iC2 = s86.c(TypedValue.applyDimension(1, 2.0f, context.getResources().getDisplayMetrics()));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setStroke(iC2, SupportMenu.CATEGORY_MASK);
        this.c.setBackgroundDrawable(gradientDrawable);
        addView(this.c);
        this.a.getClass();
        y45.j(context, "context");
        int iC3 = s86.c(TypedValue.applyDimension(1, 2.0f, context.getResources().getDisplayMetrics()));
        ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        layoutParams2.setMargins(iC3, 0, iC3, iC3);
        this.c.setLayoutParams(layoutParams2);
        this.c.setVisibility(8);
    }
}
