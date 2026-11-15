package com.yanzhenjie.recyclerview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.ai1;
import defpackage.o7a;
import defpackage.q7a;
import defpackage.t7a;
import defpackage.ye7;
import java.util.List;

public class SwipeMenuView extends LinearLayout implements View.OnClickListener {
    public RecyclerView.ViewHolder b;
    public ye7 c;

    public SwipeMenuView(Context context) {
        this(context, null);
    }

    public final ImageView a(t7a t7aVar) {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageDrawable(t7aVar.c());
        return imageView;
    }

    public final TextView b(t7a t7aVar) {
        TextView textView = new TextView(getContext());
        textView.setText(t7aVar.d());
        textView.setGravity(17);
        int iF = t7aVar.f();
        if (iF > 0) {
            textView.setTextSize(2, iF);
        }
        ColorStateList colorStateListH = t7aVar.h();
        if (colorStateListH != null) {
            textView.setTextColor(colorStateListH);
        }
        int iE = t7aVar.e();
        if (iE != 0) {
            TextViewCompat.setTextAppearance(textView, iE);
        }
        Typeface typefaceG = t7aVar.g();
        if (typefaceG != null) {
            textView.setTypeface(typefaceG);
        }
        return textView;
    }

    public void createMenu(RecyclerView.ViewHolder viewHolder, o7a o7aVar, ai1 ai1Var, int i, ye7 ye7Var) {
        removeAllViews();
        this.b = viewHolder;
        this.c = ye7Var;
        List listB = o7aVar.b();
        for (int i2 = 0; i2 < listB.size(); i2++) {
            t7a t7aVar = (t7a) listB.get(i2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(t7aVar.j(), t7aVar.b());
            layoutParams.weight = t7aVar.i();
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setId(i2);
            linearLayout.setGravity(17);
            linearLayout.setOrientation(1);
            linearLayout.setLayoutParams(layoutParams);
            ViewCompat.setBackground(linearLayout, t7aVar.a());
            linearLayout.setOnClickListener(this);
            addView(linearLayout);
            linearLayout.setTag(new q7a(ai1Var, i, i2));
            if (t7aVar.c() != null) {
                linearLayout.addView(a(t7aVar));
            }
            if (!TextUtils.isEmpty(t7aVar.d())) {
                linearLayout.addView(b(t7aVar));
            }
        }
    }

    @Override
    public void onClick(View view) {
        ye7 ye7Var = this.c;
        if (ye7Var != null) {
            ye7Var.a((q7a) view.getTag(), this.b.getAdapterPosition());
        }
    }

    public SwipeMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwipeMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setGravity(16);
    }
}
