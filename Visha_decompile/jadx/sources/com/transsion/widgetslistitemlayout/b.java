package com.transsion.widgetslistitemlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.view.View;
import androidx.core.content.ContextCompat;
import defpackage.mb7;
import defpackage.olb;
import java.util.Arrays;

public class b extends mb7 {
    public Path m;
    public RectF n;
    public float[] o;

    public b(Context context, View view) {
        super(context, view);
    }

    public void h(Canvas canvas, View view, int i) {
        i(canvas, view, i, this.a.getResources().getDimension(R.dimen.os_list_item_corners_radius));
    }

    public void i(Canvas canvas, View view, int i, float f) {
        if (this.m == null) {
            this.m = new Path();
            this.n = new RectF();
            this.o = new float[8];
        }
        if (i == 1) {
            Arrays.fill(this.o, f);
        } else if (i == 2) {
            Arrays.fill(this.o, 0, 4, f);
            float[] fArr = this.o;
            Arrays.fill(fArr, 4, fArr.length, 0.0f);
        } else if (i == 3) {
            Arrays.fill(this.o, 0, 4, 0.0f);
            float[] fArr2 = this.o;
            Arrays.fill(fArr2, 4, fArr2.length, f);
        } else {
            Arrays.fill(this.o, 0.0f);
        }
        this.m.reset();
        this.n.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        this.m.addRoundRect(this.n, this.o, Path.Direction.CCW);
        canvas.clipPath(this.m);
    }

    public Drawable j(int i, int i2, boolean z, Drawable drawable, boolean z2) {
        InsetDrawable insetDrawable;
        int iM = olb.m(this.a, R.attr.os_list_press_color_attr, R.color.os_press_primary_color);
        if (i == 0) {
            iM = 0;
        }
        if (z) {
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
            shapeDrawable.getPaint().setColor(iM);
            if (i2 == 1) {
                insetDrawable = new InsetDrawable((Drawable) shapeDrawable, 0, 0, 0, 0);
            } else if (i2 == 2) {
                insetDrawable = new InsetDrawable((Drawable) shapeDrawable, 0, 0, 0, z2 ? (int) this.a.getResources().getDimension(R.dimen.os_list_item_bottom_divide_height) : 0);
            } else if (i2 == 3) {
                insetDrawable = new InsetDrawable((Drawable) shapeDrawable, 0, 0, 0, 0);
            } else {
                insetDrawable = new InsetDrawable((Drawable) shapeDrawable, 0, 0, 0, z2 ? (int) this.a.getResources().getDimension(R.dimen.os_list_item_bottom_divide_height) : 0);
            }
            Drawable drawable2 = ContextCompat.getDrawable(this.a, R.drawable.os_list_item_view_bg_rectangle_normal);
            if (drawable == null) {
                drawable = drawable2;
            }
            setDrawableNormal(drawable);
            setDrawablePress(insetDrawable);
        } else {
            ColorDrawable colorDrawable = new ColorDrawable(olb.m(this.a, R.attr.os_bg_secondary, R.color.os_bg_secondary_hios));
            if (drawable == null) {
                drawable = colorDrawable;
            }
            setDrawableNormal(drawable);
            setDrawablePress(new LayerDrawable(new Drawable[]{new ColorDrawable(olb.y(this.a)), new ColorDrawable(iM)}));
        }
        if (i != 2) {
            return getBackground();
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_selected}, new ColorDrawable(ContextCompat.getColor(this.a, R.color.os_liv_selected)));
        stateListDrawable.addState(new int[0], drawable);
        return stateListDrawable;
    }
}
