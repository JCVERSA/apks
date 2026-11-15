package com.transsion.playercommon.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.playercommon.R;
import com.transsion.playercommon.widgets.SortItem;
import com.transsion.widgets.BadgeView;
import defpackage.w6c;

public class SortItem extends LinearLayout {
    public static final int FROM_ALBUM = 1001;
    public a b;
    public Context c;
    public String d;
    public ImageView e;
    public ImageView f;
    public TextView g;
    public boolean h;
    public boolean i;
    public int j;
    public int k;
    public int l;
    public int m;
    public BadgeView n;
    public boolean o;

    public interface a {
        void a(SortItem sortItem, boolean z, boolean z2);
    }

    public SortItem(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SortItem);
        int i = R.styleable.SortItem_title;
        this.d = (String) typedArrayObtainStyledAttributes.getText(i);
        this.k = typedArrayObtainStyledAttributes.getInt(R.styleable.SortItem_sort_value, 0);
        this.m = typedArrayObtainStyledAttributes.getInt(R.styleable.SortItem_from, 0);
        this.o = typedArrayObtainStyledAttributes.getBoolean(i, true);
        this.j = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SortItem_arrow_icon, 0);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, typedValue, true);
        this.l = typedValue.data;
        typedArrayObtainStyledAttributes.recycle();
        c(context);
    }

    public static void d(View view) {
    }

    public final void b() {
        boolean zC = w6c.c(getContext(), "sort_manually_is_red_point", false);
        if (this.k != SortUtil.SortType.MANUAL.getValue() || zC) {
            this.n.setVisibility(8);
        } else {
            this.n.setVisibility(0);
        }
    }

    public final void c(Context context) {
        this.c = context;
        LayoutInflater.from(context).inflate(R.layout.video_sort_item, this);
        TextView textView = (TextView) findViewById(R.id.iv_sort_name);
        this.g = textView;
        textView.setText(this.d);
        this.e = (ImageView) findViewById(R.id.iv_sort_icon);
        this.n = (BadgeView) findViewById(R.id.iv_theme_menu_red_point);
        ImageView imageView = (ImageView) findViewById(R.id.iv_head);
        this.f = imageView;
        if (!this.o) {
            imageView.setVisibility(8);
        }
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SortItem.d(view);
            }
        });
        b();
    }

    public int getFrom() {
        return this.m;
    }

    public int getValue() {
        return this.k;
    }

    @Override
    public boolean isSelected() {
        return this.h;
    }

    @Override
    public boolean performClick() {
        toggle();
        boolean zPerformClick = super.performClick();
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        return zPerformClick;
    }

    public void setFrom(int i) {
        this.m = i;
    }

    public void setOnSelectedChangeListener(a aVar) {
        this.b = aVar;
    }

    public void setSelected(boolean z, boolean z2) {
        this.h = z;
        this.i = z2;
        updateIcon();
    }

    public void toggle() {
        if (this.h) {
            this.i = !this.i;
        } else {
            this.h = true;
        }
        a aVar = this.b;
        if (aVar != null) {
            aVar.a(this, true, this.i);
        }
        updateIcon();
    }

    public void updateIcon() {
        this.e.setVisibility((!this.h || this.k < 0) ? 4 : 0);
        if (this.o) {
            this.f.setVisibility(this.h ? 0 : 4);
        }
        this.g.setTextColor(this.h ? this.l : getResources().getColor(R.color.os_text_primary_color));
        int i = this.j;
        if (i == 0) {
            i = this.i ? R.drawable.ic_sescend_dec_up : R.drawable.ic_sescend_dec_down;
        }
        this.e.setImageResource(i);
    }
}
