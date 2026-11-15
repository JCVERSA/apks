package com.transsion.widgetslib.widget.editext;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import defpackage.olb;

public class OSMaterialEditField extends RelativeLayout implements TextWatcher {
    public Context b;
    public ExtendedEditText c;
    public View d;
    public View e;
    public TextView f;
    public String g;
    public TextView h;
    public boolean i;
    public boolean j;
    public String k;
    public int l;
    public int m;
    public TextView n;
    public a o;
    public int p;
    public int q;
    public GradientDrawable r;
    public Drawable s;
    public boolean t;
    public int u;

    public interface a {
        void a(Editable editable, TextView textView);
    }

    public OSMaterialEditField(@NonNull Context context) {
        this(context, null);
    }

    public final void a() {
        View.inflate(this.b, R.layout.os_view_materal_edit_field_layout_base, this);
        this.k = this.b.getString(R.string.os_dialog_input_tip_max);
        this.c = (ExtendedEditText) findViewById(R.id.os_ef_edit_field);
        TextView textView = (TextView) findViewById(R.id.os_ef_edit_text_error_hint);
        this.h = textView;
        if (this.i) {
            textView.setVisibility(4);
        }
        this.d = findViewById(R.id.os_ef_second_root_layout);
        this.e = findViewById(R.id.os_ef_edit_field_bg);
        this.p = ContextCompat.getColor(this.b, R.color.os_red_basic_color);
        this.q = olb.m(this.b, R.attr.os_fill_weakest, R.color.os_fill_weakest_hios);
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.r = gradientDrawable;
        gradientDrawable.setColor(this.q);
        this.r.setCornerRadius(this.l);
        this.e.setBackground(this.r);
        if (!TextUtils.isEmpty(this.g)) {
            TextView textView2 = (TextView) findViewById(R.id.os_ef_edit_text_label);
            this.f = textView2;
            textView2.setText(this.g);
            this.f.setVisibility(0);
        }
        if (!this.j) {
            Resources resources = getResources();
            int i = R.dimen.os_text_field_big_icon_magin_xos;
            setRootPaddingRelative(resources.getDimensionPixelSize(i), 0, getResources().getDimensionPixelSize(i), 0);
            TextView textView3 = this.f;
            if (textView3 != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) textView3.getLayoutParams();
                marginLayoutParams.setMarginStart(olb.h(this.b, 2));
                marginLayoutParams.setMarginEnd(olb.h(this.b, 2));
                this.f.setLayoutParams(marginLayoutParams);
            }
        }
        if (this.t) {
            showBackgroundRoundCorner();
        }
    }

    @Override
    public void afterTextChanged(Editable editable) {
        TextView textView = this.n;
        if (textView != null && textView.getVisibility() == 0) {
            int length = editable.length();
            int i = this.m;
            if (length < i) {
                this.n.setText(this.b.getString(R.string.os_edit_text_num_format, Integer.valueOf(length), Integer.valueOf(this.m)));
                if (length > 0) {
                    this.n.setTextColor(this.b.getColor(R.color.os_text_secondary_color));
                } else if (length == 0) {
                    this.n.setTextColor(this.b.getColor(R.color.os_text_quaternary_color));
                }
            } else if (length == i) {
                this.n.setText(this.b.getString(R.string.os_edit_text_num_format, Integer.valueOf(i), Integer.valueOf(this.m)));
                this.n.setTextColor(this.p);
                updateUnderlineView(true);
            }
        }
        a aVar = this.o;
        if (aVar != null) {
            aVar.a(editable, this.n);
        }
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public int getBackgroundRoundCornerColor() {
        return this.u;
    }

    public ExtendedEditText getEditText() {
        return this.c;
    }

    @Nullable
    public TextView getEditTextLabel() {
        return this.f;
    }

    @Nullable
    public TextView getNumText() {
        return this.n;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.c.addTextChangedListener(this);
        afterTextChanged(this.c.getText());
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.c.removeTextChangedListener(this);
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void setBackgroundRoundCornerColor(int i) {
        this.u = i;
    }

    public OSMaterialEditField setError(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.h.setText(charSequence);
            this.h.setVisibility(this.i ? 4 : 8);
            updateUnderlineView(false);
        } else {
            this.h.setText(charSequence);
            this.h.setVisibility(0);
            updateUnderlineView(true);
        }
        return this;
    }

    public OSMaterialEditField setInputNum(int i, a aVar) {
        TextView textView = (TextView) findViewById(R.id.os_ef_num_text);
        this.n = textView;
        if (i <= 0) {
            this.m = -1;
            textView.setVisibility(8);
        } else {
            this.m = i;
            textView.setVisibility(0);
            this.c.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i)});
            this.n.setText(this.b.getString(R.string.os_edit_text_num_format, Integer.valueOf(this.c.getText().length()), Integer.valueOf(i)));
        }
        this.o = aVar;
        return this;
    }

    public void setRootPaddingRelative(int i, int i2, int i3, int i4) {
        this.d.setPaddingRelative(i, i2, i3, i4);
    }

    public OSMaterialEditField setTipInputMax(@StringRes int i) {
        return setTipInputMax(this.b.getString(i));
    }

    public void showBackgroundRoundCorner() {
        Drawable drawable = this.b.getDrawable(R.drawable.os_smooth_corner14);
        this.s = drawable;
        drawable.setTint(this.u);
        this.d.setBackground(this.s);
    }

    public void updateUnderlineView(boolean z) {
        if (z) {
            this.r.setStroke(2, this.p);
        } else {
            this.r.setStroke(0, 0);
        }
    }

    public OSMaterialEditField(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OSMaterialEditField setTipInputMax(String str) {
        this.k = str;
        return this;
    }

    public OSMaterialEditField(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = true;
        this.b = context;
        this.u = ContextCompat.getColor(context, R.color.os_edittext_hios_bg_color);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSMaterialEditField);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.OSMaterialEditField_os_ef_field_label) {
                this.g = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.OSMaterialEditField_os_ef_show_error) {
                this.i = typedArrayObtainStyledAttributes.getBoolean(index, false);
            } else if (index == R.styleable.OSMaterialEditField_os_ef_field_radius) {
                this.l = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, olb.h(context, 6));
            } else if (index == R.styleable.OSMaterialEditField_os_ef_bg_color) {
                this.u = typedArrayObtainStyledAttributes.getColor(index, ContextCompat.getColor(this.b, R.color.os_seekbar_thumbinside_color));
            } else if (index == R.styleable.OSMaterialEditField_os_ef_show_background_round) {
                this.t = typedArrayObtainStyledAttributes.getBoolean(index, false);
            } else if (index == R.styleable.OSMaterialEditField_os_ef_hios) {
                this.j = typedArrayObtainStyledAttributes.getBoolean(index, true);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        a();
    }
}
