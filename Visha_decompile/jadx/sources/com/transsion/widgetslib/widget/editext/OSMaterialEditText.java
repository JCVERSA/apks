package com.transsion.widgetslib.widget.editext;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.widget.editext.OSMaterialEditText;
import defpackage.bq5;
import defpackage.olb;
import defpackage.ws7;
import java.lang.ref.WeakReference;

public class OSMaterialEditText extends RelativeLayout implements ViewTreeObserver.OnGlobalLayoutListener, TextWatcher, View.OnFocusChangeListener {
    public TextView A;
    public String B;
    public TextView C;
    public String D;
    public ImageView E;
    public ImageView F;
    public View G;
    public View H;
    public View I;
    public View J;
    public View K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public TextView Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public boolean W;
    public boolean a0;
    public Context b;
    public boolean b0;
    public int c;
    public boolean c0;
    public int d;
    public String d0;
    public int e;
    public boolean e0;
    public boolean f;
    public boolean f0;
    public ExtendedEditText g;
    public ws7 g0;
    public ImageView h;
    public GradientDrawable h0;
    public ImageView i;
    public c i0;
    public int j;
    public int k;
    public int l;
    public int m;
    public boolean mIsHiOSLayout;
    public Drawable mLeftDrawable;
    public Drawable mLeftSecondDrawable;
    public Drawable mRightImageDrawable;
    public int n;
    public int o;
    public TextView p;
    public String q;
    public TextView r;
    public TextView s;
    public String t;
    public String u;
    public String v;
    public TextView w;
    public String x;
    public boolean y;
    public View z;

    public enum MultiModeEnum {
        NORMAL,
        TOP,
        MIDDLE,
        BOTTOM
    }

    public enum TypeLayoutEnum {
        NOTHING,
        RIGHT,
        RIGHT_BIG_IMAGE,
        LEFT,
        LEFT_BIG_IMAGE_TYPE_1,
        LEFT_BIG_IMAGE_TYPE_2
    }

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            OSMaterialEditText.this.g.setText("");
        }
    }

    public static class b extends InputFilter.LengthFilter {
        public WeakReference a;
        public int b;
        public String c;
        public String d;

        public b(OSMaterialEditText oSMaterialEditText, int i, String str, String str2) {
            super(i);
            if (oSMaterialEditText != null) {
                this.a = new WeakReference(oSMaterialEditText);
                this.b = i;
                this.c = str;
                this.d = str2;
            }
        }

        @Override
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            CharSequence charSequenceFilter = super.filter(charSequence, i, i2, spanned, i3, i4);
            if (spanned == null) {
                return charSequenceFilter;
            }
            int length = spanned.length();
            OSMaterialEditText oSMaterialEditText = (OSMaterialEditText) this.a.get();
            if (oSMaterialEditText == null || length < this.b || length == 0 || charSequenceFilter == null) {
                oSMaterialEditText.setHelpText(this.d);
                oSMaterialEditText.setError("");
                oSMaterialEditText.Q.setTextColor(ContextCompat.getColor(oSMaterialEditText.b, R.color.os_text_tertiary_color));
                return charSequenceFilter;
            }
            String unused = oSMaterialEditText.d0;
            oSMaterialEditText.setHelpText("");
            oSMaterialEditText.Q.setTextColor(ContextCompat.getColor(oSMaterialEditText.b, R.color.os_red_basic_color));
            oSMaterialEditText.Q.setVisibility(oSMaterialEditText.r.getVisibility() == 0 ? 8 : 0);
            oSMaterialEditText.Q.setText(oSMaterialEditText.b.getString(R.string.os_edit_text_num_format, Integer.valueOf(length), Integer.valueOf(this.b)));
            oSMaterialEditText.updateUnderlineView(true, true);
            return charSequenceFilter;
        }
    }

    public interface c {
        void a(Editable editable, TextView textView);
    }

    public OSMaterialEditText(@NonNull Context context) {
        this(context, null);
    }

    public static void mergeBackgroundOnlyHiOS(@NonNull final OSMaterialEditText... oSMaterialEditTextArr) {
        if (oSMaterialEditTextArr.length == 0) {
            return;
        }
        OSMaterialEditText oSMaterialEditText = oSMaterialEditTextArr[0];
        if (oSMaterialEditText == null) {
            bq5.p("OSMaterialEditText", "mergeBackgroundOnlyHiOS -> osMaterialEditTexts[0] is null !");
        } else if (oSMaterialEditText.mIsHiOSLayout) {
            oSMaterialEditText.post(new Runnable() {
                @Override
                public final void run() {
                    OSMaterialEditText.o(oSMaterialEditTextArr);
                }
            });
        }
    }

    public static void mergeOSMaterialEditTextStatic(@NonNull OSMaterialEditText... oSMaterialEditTextArr) {
        syncOSEditTextArrayPaddingStart(oSMaterialEditTextArr);
        syncUnderlineMarginArray(oSMaterialEditTextArr);
        mergeBackgroundOnlyHiOS(oSMaterialEditTextArr);
    }

    public static void o(OSMaterialEditText[] oSMaterialEditTextArr) {
        for (int i = 0; i < oSMaterialEditTextArr.length; i++) {
            OSMaterialEditText oSMaterialEditText = oSMaterialEditTextArr[i];
            if (oSMaterialEditText == null) {
                bq5.p("OSMaterialEditText", "mergeBackgroundOnlyHiOS -> osMaterialEditTexts[" + i + "] is null !");
            } else if (i == 0) {
                oSMaterialEditText.setBackgroundMultiModeOnlyHiOS(MultiModeEnum.TOP);
            } else if (i == oSMaterialEditTextArr.length - 1) {
                oSMaterialEditText.setBackgroundMultiModeOnlyHiOS(MultiModeEnum.BOTTOM);
            } else {
                oSMaterialEditText.setBackgroundMultiModeOnlyHiOS(MultiModeEnum.MIDDLE);
            }
        }
    }

    public static void p(OSMaterialEditText[] oSMaterialEditTextArr, OSMaterialEditText oSMaterialEditText) {
        for (int i = 1; i < oSMaterialEditTextArr.length; i++) {
            OSMaterialEditText oSMaterialEditText2 = oSMaterialEditTextArr[i];
            if (oSMaterialEditText2 == null) {
                bq5.p("OSMaterialEditText", "syncOSEditTextArrayPaddingStart -> osMaterialEditTexts[" + i + "] is null !");
            } else {
                oSMaterialEditText.syncOSEditTextPaddingStart(oSMaterialEditText2);
            }
        }
    }

    public static void q(OSMaterialEditText[] oSMaterialEditTextArr, OSMaterialEditText oSMaterialEditText) {
        for (int i = 1; i < oSMaterialEditTextArr.length; i++) {
            OSMaterialEditText oSMaterialEditText2 = oSMaterialEditTextArr[i];
            if (oSMaterialEditText2 == null) {
                bq5.p("OSMaterialEditText", "syncUnderlineMarginArray -> osMaterialEditTexts[" + i + "] is null !");
            } else {
                oSMaterialEditText.syncUnderlineMargin(oSMaterialEditText2);
            }
        }
    }

    public static void syncOSEditTextArrayPaddingStart(@NonNull final OSMaterialEditText... oSMaterialEditTextArr) {
        if (oSMaterialEditTextArr.length == 0) {
            return;
        }
        final OSMaterialEditText oSMaterialEditText = oSMaterialEditTextArr[0];
        if (oSMaterialEditText == null) {
            bq5.p("OSMaterialEditText", "syncOSEditTextArrayPaddingStart -> osMaterialEditTexts[0] is null !");
        } else {
            oSMaterialEditText.post(new Runnable() {
                @Override
                public final void run() {
                    OSMaterialEditText.p(oSMaterialEditTextArr, oSMaterialEditText);
                }
            });
        }
    }

    public static void syncUnderlineMarginArray(@NonNull final OSMaterialEditText... oSMaterialEditTextArr) {
        if (oSMaterialEditTextArr.length == 0) {
            return;
        }
        final OSMaterialEditText oSMaterialEditText = oSMaterialEditTextArr[0];
        if (oSMaterialEditText == null) {
            bq5.p("OSMaterialEditText", "syncUnderlineMarginArray -> osMaterialEditTexts[0] is null !");
        } else {
            oSMaterialEditText.post(new Runnable() {
                @Override
                public final void run() {
                    OSMaterialEditText.q(oSMaterialEditTextArr, oSMaterialEditText);
                }
            });
        }
    }

    @Override
    public void afterTextChanged(Editable editable) {
        int length = editable.length();
        boolean z = length > 0;
        this.e0 = z;
        updateDeleteButton(z, this.a0);
        if (TextUtils.isEmpty(this.r.getText())) {
            setHelpText(this.u);
        } else {
            setHelpText("");
        }
        if (this.Q != null) {
            if (!TextUtils.isEmpty(this.r.getText()) || !TextUtils.isEmpty(this.s.getText())) {
                this.Q.setText("");
            } else if (this.R > 0) {
                this.Q.setVisibility(0);
                this.Q.setText(this.b.getString(R.string.os_edit_text_num_format, Integer.valueOf(length), Integer.valueOf(this.R)));
            } else {
                this.Q.setVisibility(8);
            }
        }
        c cVar = this.i0;
        if (cVar != null) {
            cVar.a(editable, this.Q);
        }
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Nullable
    public ImageView getDeleteButton() {
        return this.h;
    }

    public boolean getDialogMode() {
        return this.f0;
    }

    public ExtendedEditText getEditText() {
        return this.g;
    }

    @Nullable
    public TextView getEditTextLabel() {
        return this.p;
    }

    public int getEditTextPaddingStart() {
        return this.O;
    }

    @Nullable
    public TextView getErrorText() {
        return this.r;
    }

    @Nullable
    public ImageView getLeftImage() {
        return this.E;
    }

    @Nullable
    public ImageView getLeftSecondImage() {
        return this.F;
    }

    @Nullable
    public TextView getLeftTextView() {
        return this.C;
    }

    @Nullable
    public View getLeftlayout() {
        return this.G;
    }

    @Nullable
    public TextView getNumTextView() {
        return this.Q;
    }

    @Nullable
    public View getRightDivider() {
        return this.z;
    }

    @Nullable
    public ImageView getRightImage() {
        return this.i;
    }

    @Nullable
    public TextView getRightText() {
        return this.w;
    }

    @Nullable
    public TextView getRightTextButton() {
        return this.A;
    }

    @Nullable
    public View getRightlayout() {
        return this.H;
    }

    @Nullable
    public View getRootEditTextLayout() {
        return this.J;
    }

    @Nullable
    public View getRootLayout() {
        return this.I;
    }

    public int getType() {
        return this.c;
    }

    public int getUnderLineMarginLeft() {
        return this.M;
    }

    public int getUnderLineMarginRight() {
        return this.N;
    }

    public int getUnderLinePadding() {
        return this.L;
    }

    @Nullable
    public View getUnderlineView() {
        if (this.mIsHiOSLayout) {
            return null;
        }
        return this.K;
    }

    public boolean isShowDelete() {
        return this.f;
    }

    public final void k() {
        if (this.d <= 0 || this.I == null) {
            return;
        }
        int iH = olb.h(getContext(), 1);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        float f = iH;
        paint.setStrokeWidth(f);
        paint.setColor(this.S);
        int measuredHeight = this.I.getMeasuredHeight() - iH;
        if (this.f0) {
            this.g0 = new ws7(this.b, new RectF(f, f, this.d - iH, measuredHeight), this.b.getResources().getDimension(R.dimen.os_radius_xs), paint);
        } else {
            this.g0 = new ws7(this.b, new RectF(f, f, this.d - iH, measuredHeight), this.b.getResources().getDimension(R.dimen.os_radius_m), paint);
        }
    }

    public final void l() {
        View.inflate(this.b, this.mIsHiOSLayout ? R.layout.os_view_materal_edit_text_layout_hios : R.layout.os_view_materal_edit_text_layout_base, this);
        this.d0 = this.b.getString(R.string.os_dialog_input_tip_max);
        this.g = (ExtendedEditText) findViewById(R.id.oet_edit_text);
        this.G = findViewById(R.id.os_et_edit_text_left_layout);
        this.H = findViewById(R.id.os_et_edit_text_right_layout);
        this.I = findViewById(R.id.os_et_second_root_layout);
        this.K = findViewById(R.id.os_et_underline_view);
        this.J = findViewById(R.id.os_et_edit_text_root);
        this.r = (TextView) findViewById(R.id.os_et_edit_text_error_hint);
        this.s = (TextView) findViewById(R.id.os_et_edit_text_help_hint);
        if (olb.a0()) {
            TextView textView = this.r;
            if (textView != null) {
                textView.setMaxLines(Integer.MAX_VALUE);
                this.r.setEllipsize(null);
            }
            TextView textView2 = this.s;
            if (textView2 != null) {
                textView2.setMaxLines(Integer.MAX_VALUE);
                this.s.setEllipsize(null);
            }
        }
        this.Q = (TextView) findViewById(R.id.os_et_edit_text_limit_hint);
        this.h = (ImageView) findViewById(R.id.os_et_edit_delete_all);
        this.C = (TextView) findViewById(R.id.os_et_edit_text_left_text);
        this.E = (ImageView) findViewById(R.id.os_et_left_edit_image_first);
        this.F = (ImageView) findViewById(R.id.os_et_left_edit_image_second);
        this.i = (ImageView) findViewById(R.id.os_et_edit_image_button);
        this.z = findViewById(R.id.os_et_edit_text_divider);
        this.A = (TextView) findViewById(R.id.os_et_edit_text_right_text_button);
        this.w = (TextView) findViewById(R.id.os_et_edit_text_right_text);
        this.S = ContextCompat.getColor(this.b, R.color.os_red_basic_color);
        this.T = olb.m(this.b, R.attr.os_border_default, R.color.os_border_default_hios);
        this.U = olb.m(this.b, R.attr.os_border_focus, R.color.os_border_focus_hios);
        if (olb.Z(this.b)) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.r.getLayoutParams();
            layoutParams.setMargins(layoutParams.leftMargin, olb.h(this.b, 7), layoutParams.rightMargin, layoutParams.bottomMargin);
            this.r.setLayoutParams(layoutParams);
        }
        if (this.mIsHiOSLayout) {
            setBackgroundMultiModeOnlyHiOS(this.P);
            this.I.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.m(view);
                }
            });
            post(new Runnable() {
                @Override
                public final void run() {
                    this.b.n();
                }
            });
        }
        setHint(olb.H0(this.v));
        updateType();
        if (!TextUtils.isEmpty(this.q)) {
            TextView textView3 = (TextView) findViewById(R.id.os_et_edit_text_label);
            this.p = textView3;
            textView3.setText(olb.H0(this.q));
            this.p.setVisibility(0);
        }
        if (this.b0) {
            this.r.setVisibility(4);
            setError(this.t);
        }
        if (this.c0 && this.mIsHiOSLayout) {
            this.s.setVisibility(4);
            setHelpText(this.u);
        }
        setShowDelete(this.f);
        getViewTreeObserver().addOnGlobalLayoutListener(this);
        if (this.f0) {
            if (this.mIsHiOSLayout) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.r.getLayoutParams();
                Resources resources = this.b.getResources();
                int i = R.dimen.os_space050;
                marginLayoutParams.setMarginEnd((int) resources.getDimension(i));
                marginLayoutParams.setMarginStart((int) this.b.getResources().getDimension(i));
            }
            setRootLayoutPaddingOnlyHiOS((int) this.b.getResources().getDimension(R.dimen.os_edit_text_padding_dialog_top));
            View view = this.I;
            if (view == null || this.mIsHiOSLayout) {
                return;
            }
            setRootPaddingRelative(0, view.getPaddingTop(), 0, this.I.getPaddingBottom());
        }
    }

    public final void m(View view) {
        olb.T0(this.g);
    }

    public final void n() {
        k();
        if (this.M == 0 && this.N == 0) {
            int measuredWidth = this.G.getMeasuredWidth() + this.L;
            int measuredWidth2 = this.H.getMeasuredWidth() + this.L;
            ImageView imageView = this.h;
            setUnderlineMargin(measuredWidth, measuredWidth2 + ((imageView == null || imageView.getVisibility() == 8) ? 0 : (-this.h.getMeasuredWidth()) - olb.h(this.b, 10)));
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.g.setSelfOnFocusChangeListener(this);
        this.g.addTextChangedListener(this);
        afterTextChanged(this.g.getText());
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.g.setOnFocusChangeListener(null);
        this.g.removeTextChangedListener(this);
    }

    @Override
    public void onFocusChange(View view, boolean z) {
        this.a0 = z;
        if (z) {
            TextView textView = this.r;
            if (textView != null && textView.getVisibility() == 0) {
                updateUnderlineView(true, true);
            }
        } else {
            updateUnderlineView(false, false);
            setHelpText(this.u);
            this.r.setVisibility(8);
            if (TextUtils.isEmpty(this.u)) {
                this.Q.setTextColor(ContextCompat.getColor(this.b, R.color.os_text_tertiary_color));
            } else {
                this.Q.setVisibility(8);
            }
        }
        updateDeleteButton(this.e0, z);
    }

    @Override
    public void onGlobalLayout() {
        updateTextPadding();
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.d = i;
        this.e = i2;
        if (this.mIsHiOSLayout) {
            k();
        }
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (TextUtils.isEmpty(this.r.getText())) {
            return;
        }
        this.r.setVisibility(0);
        this.r.setText(this.t);
        this.Q.setVisibility(8);
        updateUnderlineView(true, true);
    }

    public int removeColorTransparency(int i) {
        return 16777215 & i;
    }

    public void setBackgroundMultiModeOnlyHiOS(MultiModeEnum multiModeEnum) {
        setBackgroundMultiModeOnlyHiOS(multiModeEnum.ordinal());
    }

    public void setDialogMode(boolean z) {
        if (this.f0 == z) {
            return;
        }
        this.f0 = z;
        if (z && !this.W) {
            this.V = olb.m(this.b, R.attr.os_opacityfill_weakest, R.color.os_opacityfill_weakest_hios);
        }
        if (this.mIsHiOSLayout) {
            setBackgroundMultiModeOnlyHiOS(this.P);
            k();
        }
    }

    public void setEditTextPaddingStart(int i) {
        this.O = i;
    }

    public OSMaterialEditText setError(CharSequence charSequence) {
        this.t = (String) charSequence;
        if (TextUtils.isEmpty(charSequence)) {
            this.s.setText(this.u);
            this.r.setText(charSequence);
            this.r.setVisibility(this.b0 ? 4 : 8);
            updateUnderlineView(this.a0, false);
        } else {
            this.b0 = true;
            this.Q.setVisibility(8);
            this.r.setText(charSequence);
            this.r.setVisibility(0);
            this.s.setText("");
            updateUnderlineView(this.a0, true);
        }
        return this;
    }

    public OSMaterialEditText setErrorLine(boolean z) {
        updateUnderlineView(this.a0, z);
        return this;
    }

    public OSMaterialEditText setHelpText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.s.setText(charSequence);
            this.s.setVisibility(this.c0 ? 4 : 8);
        } else {
            this.c0 = true;
            this.s.setText(charSequence);
            this.s.setVisibility(0);
            this.Q.setVisibility(8);
        }
        return this;
    }

    public void setHint(CharSequence charSequence) {
        ExtendedEditText extendedEditText = this.g;
        if (extendedEditText != null) {
            extendedEditText.setHint(charSequence);
        }
    }

    public OSMaterialEditText setInputNum(int i, @Nullable c cVar) {
        if (i <= 0) {
            this.R = -1;
            this.Q.setVisibility(8);
        } else {
            this.R = i;
            this.Q.setVisibility(0);
            this.g.setFilters(new InputFilter[]{new b(this, i, this.t, this.u)});
            if (this.mIsHiOSLayout) {
                this.s.setVisibility(8);
                this.c0 = false;
            }
        }
        this.i0 = cVar;
        return this;
    }

    public void setRootLayoutPaddingOnlyHiOS(int i, int i2) {
        if (this.mIsHiOSLayout) {
            View view = this.I;
            view.setPadding(view.getPaddingLeft(), i, this.I.getPaddingRight(), i2);
        }
    }

    public void setRootPaddingRelative(int i, int i2, int i3, int i4) {
        this.I.setPaddingRelative(i, i2, i3, i4);
    }

    public void setShowDelete(boolean z) {
        this.f = z;
        if (z) {
            this.H.setVisibility(0);
            this.h.setVisibility(this.g.hasFocus() ? 0 : 8);
            this.h.setOnClickListener(new a());
        } else {
            this.h.setVisibility(8);
            this.h.setOnClickListener(null);
        }
        updateTextPadding();
    }

    public OSMaterialEditText setTipInputMax(@StringRes int i) {
        return setTipInputMax(this.b.getString(i));
    }

    public void setType(int i) {
        this.c = i;
        updateType();
    }

    public void setUnderlineMargin(int i, int i2) {
        this.M = i;
        this.N = i2;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.K.getLayoutParams();
        marginLayoutParams.setMargins(this.M, 0, this.N, 0);
        this.K.setLayoutParams(marginLayoutParams);
    }

    public void syncOSEditTextPaddingStart(@NonNull OSMaterialEditText oSMaterialEditText) {
        oSMaterialEditText.setType(getType());
        oSMaterialEditText.setEditTextPaddingStart(this.G.getMeasuredWidth() + this.O);
        oSMaterialEditText.updateTextPadding();
    }

    public void syncUnderlineMargin(@NonNull OSMaterialEditText oSMaterialEditText) {
        if (this.mIsHiOSLayout) {
            oSMaterialEditText.setUnderlineMargin(this.M, this.N);
        } else {
            oSMaterialEditText.setUnderlineMargin(this.M, this.N);
        }
    }

    public void updateDeleteButton(boolean z, boolean z2) {
        boolean z3 = z2 || this.g.hasFocus();
        this.a0 = z3;
        ImageView imageView = this.h;
        if (imageView == null || !this.f) {
            return;
        }
        if (z && z3) {
            imageView.setVisibility(0);
            post(new Runnable() {
                @Override
                public final void run() {
                    this.b.updateTextPadding();
                }
            });
        } else {
            imageView.setVisibility(8);
            post(new Runnable() {
                @Override
                public final void run() {
                    this.b.updateTextPadding();
                }
            });
        }
    }

    public void updateTextPadding() {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.J.getLayoutParams();
        if (this.c == this.o) {
            marginLayoutParams.setMarginStart(this.G.getMeasuredWidth() + this.O);
            this.J.setLayoutParams(marginLayoutParams);
            this.g.setPaddingRelative(0, 0, this.H.getMeasuredWidth(), 0);
        } else {
            marginLayoutParams.setMarginStart(0);
            this.J.setLayoutParams(marginLayoutParams);
            this.g.setPaddingRelative(this.G.getMeasuredWidth() + this.O, 0, this.H.getMeasuredWidth(), 0);
        }
        if (this.mIsHiOSLayout) {
            setUnderlineMargin(this.M, this.N);
        } else {
            this.I.setPaddingRelative(getResources().getDimensionPixelSize(R.dimen.os_space300), this.I.getPaddingTop(), getResources().getDimensionPixelSize(R.dimen.os_space250), this.I.getPaddingBottom());
            setUnderlineMargin(0, getResources().getDimensionPixelSize(R.dimen.os_space050));
        }
    }

    public void updateType() {
        int i = this.c;
        if (i == this.k || i == this.l) {
            this.H.setVisibility(0);
            if (this.mRightImageDrawable != null) {
                this.i.setVisibility(0);
                this.i.setImageDrawable(this.mRightImageDrawable);
            }
            if (this.c == this.l && this.mRightImageDrawable != null) {
                if (olb.x0()) {
                    setRootPaddingRelative(this.I.getPaddingStart(), this.I.getPaddingTop(), getResources().getDimensionPixelSize(R.dimen.os_space250), this.I.getPaddingBottom());
                }
                if (this.mRightImageDrawable != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.i.getLayoutParams();
                    int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_text_field_big_icon_size);
                    marginLayoutParams.height = dimensionPixelSize;
                    marginLayoutParams.width = dimensionPixelSize;
                    marginLayoutParams.setMarginStart(olb.h(this.b, 16));
                    this.i.setLayoutParams(marginLayoutParams);
                }
            }
            if (this.y) {
                this.z.setVisibility(0);
            }
            if (!TextUtils.isEmpty(this.B)) {
                this.A.setVisibility(0);
                this.A.setText(this.B);
            }
            if (TextUtils.isEmpty(this.x)) {
                return;
            }
            this.w.setVisibility(0);
            this.w.setText(this.x);
            return;
        }
        if (i == this.m || i == this.n || i == this.o) {
            this.G.setVisibility(0);
            if (!TextUtils.isEmpty(this.D)) {
                this.C.setVisibility(0);
                this.C.setText(this.D);
            }
            if (this.mLeftDrawable != null) {
                this.E.setVisibility(0);
                this.E.setImageDrawable(this.mLeftDrawable);
            }
            if (this.mLeftSecondDrawable != null) {
                this.F.setVisibility(0);
                this.F.setImageDrawable(this.mLeftSecondDrawable);
            }
            if (this.c != this.m) {
                if (olb.x0()) {
                    setRootPaddingRelative(getResources().getDimensionPixelSize(R.dimen.os_space250), this.I.getPaddingTop(), this.I.getPaddingEnd(), this.I.getPaddingBottom());
                }
                if (this.mLeftDrawable != null) {
                    ViewGroup.LayoutParams layoutParams = this.E.getLayoutParams();
                    int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.os_text_field_big_icon_size);
                    layoutParams.height = dimensionPixelSize2;
                    layoutParams.width = dimensionPixelSize2;
                    this.E.setLayoutParams(layoutParams);
                }
                if (this.mLeftSecondDrawable != null) {
                    ViewGroup.LayoutParams layoutParams2 = this.F.getLayoutParams();
                    int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.os_text_field_big_icon_size);
                    layoutParams2.height = dimensionPixelSize3;
                    layoutParams2.width = dimensionPixelSize3;
                    this.F.setLayoutParams(layoutParams2);
                }
            }
        }
    }

    public void updateUnderlineView(boolean z, boolean z2) {
        if (z2) {
            if (this.mIsHiOSLayout && this.b0) {
                this.I.setForeground(this.g0);
            }
            this.K.setBackgroundColor(this.S);
            return;
        }
        if (this.mIsHiOSLayout && this.b0) {
            this.I.setForeground(null);
        }
        if (z) {
            this.K.setBackgroundColor(this.U);
        } else {
            this.K.setBackgroundColor(this.T);
        }
    }

    public OSMaterialEditText(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setBackgroundMultiModeOnlyHiOS(int i) {
        if (this.mIsHiOSLayout) {
            this.P = i;
            GradientDrawable gradientDrawable = new GradientDrawable();
            this.h0 = gradientDrawable;
            gradientDrawable.setColor(this.V);
            if (this.b0) {
                this.h0.setStroke(olb.h(getContext(), 1), removeColorTransparency(this.V));
            }
            float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
            float dimension = this.b.getResources().getDimension(R.dimen.os_edit_corner);
            if (this.f0) {
                dimension = this.b.getResources().getDimension(R.dimen.os_edit_corner_dialog_mode);
            }
            int i2 = this.P;
            MultiModeEnum multiModeEnum = MultiModeEnum.TOP;
            if (i2 == multiModeEnum.ordinal() || this.P == MultiModeEnum.NORMAL.ordinal()) {
                fArr[3] = dimension;
                fArr[2] = dimension;
                fArr[1] = dimension;
                fArr[0] = dimension;
            }
            if (this.P == MultiModeEnum.BOTTOM.ordinal() || this.P == MultiModeEnum.NORMAL.ordinal()) {
                fArr[7] = dimension;
                fArr[6] = dimension;
                fArr[5] = dimension;
                fArr[4] = dimension;
            }
            this.h0.setCornerRadii(fArr);
            this.I.setBackground(this.h0);
            if (this.P == multiModeEnum.ordinal() || this.P == MultiModeEnum.MIDDLE.ordinal()) {
                this.K.setVisibility(0);
            }
        }
    }

    public OSMaterialEditText setTipInputMax(String str) {
        this.d0 = str;
        return this;
    }

    public OSMaterialEditText(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = 0;
        this.k = 1;
        this.l = 2;
        this.m = 3;
        this.n = 4;
        this.o = 5;
        this.t = "";
        this.L = olb.h(getContext(), 16);
        this.R = -1;
        this.mIsHiOSLayout = true;
        this.b = context;
        this.V = ContextCompat.getColor(context, R.color.os_edittext_hios_bg_color);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSMaterialEditText);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.OSMaterialEditText_os_et_layout_type) {
                this.c = typedArrayObtainStyledAttributes.getInt(index, 0);
            } else if (index == R.styleable.OSMaterialEditText_os_et_right_show_delete) {
                this.f = typedArrayObtainStyledAttributes.getBoolean(index, false);
            } else if (index == R.styleable.OSMaterialEditText_os_et_right_image) {
                this.mRightImageDrawable = typedArrayObtainStyledAttributes.getDrawable(index);
            } else if (index == R.styleable.OSMaterialEditText_os_et_label) {
                this.q = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.OSMaterialEditText_os_et_right_text) {
                this.x = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.OSMaterialEditText_os_et_right_show_divide_line) {
                this.y = typedArrayObtainStyledAttributes.getBoolean(index, false);
            } else if (index == R.styleable.OSMaterialEditText_os_et_left_image) {
                this.mLeftDrawable = typedArrayObtainStyledAttributes.getDrawable(index);
            } else if (index == R.styleable.OSMaterialEditText_os_et_left_image_secord) {
                this.mLeftSecondDrawable = typedArrayObtainStyledAttributes.getDrawable(index);
            } else if (index == R.styleable.OSMaterialEditText_os_et_left_text) {
                this.D = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.OSMaterialEditText_os_et_right_button_text) {
                this.B = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.OSMaterialEditText_os_et_show_error) {
                this.b0 = typedArrayObtainStyledAttributes.getBoolean(index, false);
            } else if (index == R.styleable.OSMaterialEditText_os_et_show_help) {
                this.c0 = typedArrayObtainStyledAttributes.getBoolean(index, false);
            } else if (index == R.styleable.OSMaterialEditText_os_et_show_error_text) {
                this.t = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.OSMaterialEditText_os_et_show_help_text) {
                this.u = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.OSMaterialEditText_os_et_bg_color) {
                this.V = typedArrayObtainStyledAttributes.getColor(index, ContextCompat.getColor(this.b, R.color.os_seekbar_thumbinside_color));
                this.W = true;
            } else if (index == R.styleable.OSMaterialEditText_os_et_hint) {
                this.v = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.OSMaterialEditText_os_et_left_right_padding) {
                this.L = (int) typedArrayObtainStyledAttributes.getDimension(index, this.L);
            } else if (index == R.styleable.OSMaterialEditText_os_et_hios_background_multi_mode) {
                this.P = typedArrayObtainStyledAttributes.getInt(index, 0);
            } else if (index == R.styleable.OSMaterialEditText_os_et_dialog_mode) {
                this.f0 = typedArrayObtainStyledAttributes.getBoolean(index, false);
            } else if (index == R.styleable.OSMaterialEditText_os_et_hios) {
                this.mIsHiOSLayout = typedArrayObtainStyledAttributes.getBoolean(index, true);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        if (this.f0 && !this.W) {
            this.V = olb.m(this.b, R.attr.os_opacityfill_weakest, R.color.os_opacityfill_weakest_hios);
        }
        l();
    }

    public void setRootLayoutPaddingOnlyHiOS(int i) {
        setRootLayoutPaddingOnlyHiOS(i, i);
    }

    public void setType(TypeLayoutEnum typeLayoutEnum) {
        setType(typeLayoutEnum.ordinal());
    }
}
