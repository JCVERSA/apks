package defpackage;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewStub;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.media3.common.C;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetslib.widget.OSMaskImageView;
import com.transsion.widgetslib.widget.OsPressSmoothCornerDrawable;

public abstract class gcc {

    public static final class a extends AnimatorListenerAdapter {
        public final TextView b;
        public final g24 c;
        public final int d;
        public final int e;

        public a(TextView textView, g24 g24Var, int i, int i2) {
            this.b = textView;
            this.c = g24Var;
            this.d = i;
            this.e = i2;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            boolean zIsSelected;
            y45.j(animator, "animation");
            super.onAnimationEnd(animator);
            TextView textView = this.b;
            if (this.c.b()) {
                zIsSelected = this.b.isSelected();
            } else {
                zIsSelected = !this.b.isSelected();
            }
            textView.setSelected(zIsSelected);
            this.c.setReversed(false);
            this.b.setTextColor(new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[0]}, new int[]{this.d, this.e}));
        }
    }

    public static final class b extends AnimatorListenerAdapter {
        public final vx0 b;
        public final TextView c;
        public final int d;

        public b(vx0 vx0Var, TextView textView, int i) {
            this.b = vx0Var;
            this.c = textView;
            this.d = i;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            this.b.setAnimator(null);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            this.c.scrollTo(this.d, 0);
            this.b.setAnimator(null);
        }
    }

    public static final class c implements View.OnAttachStateChangeListener {
        public final TextView b;

        public c(TextView textView) {
            this.b = textView;
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            y45.j(view, "v");
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            y45.j(view, "v");
            gcc.r(this.b);
        }
    }

    public static final void d(TextView textView) {
        y45.j(textView, "<this>");
        int colorForState = textView.getTextColors().getColorForState(new int[0], -7829368);
        int colorForState2 = textView.getTextColors().getColorForState(new int[]{R.attr.state_selected}, -16776961);
        int i = com.transsion.widgetslib.R.id.os_foot_opt_bar_item_text;
        if (textView.getTag(i) == null) {
            ObjectAnimator objectAnimatorOfArgb = ObjectAnimator.ofArgb(textView, "textColor", 0, 0);
            objectAnimatorOfArgb.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f));
            y45.i(objectAnimatorOfArgb, "animator");
            g24 g24Var = new g24(objectAnimatorOfArgb);
            objectAnimatorOfArgb.addListener(new a(textView, g24Var, colorForState2, colorForState));
            textView.setTag(i, g24Var);
        }
        Object tag = textView.getTag(i);
        if (!(tag instanceof g24)) {
            textView.setSelected(!textView.isSelected());
            return;
        }
        g24 g24Var2 = (g24) tag;
        if (g24Var2.c()) {
            g24Var2.d();
            return;
        }
        if (textView.isSelected()) {
            g24Var2.getAnimator().setIntValues(colorForState2, colorForState);
        } else {
            g24Var2.getAnimator().setIntValues(colorForState, colorForState2);
        }
        g24Var2.getAnimator().start();
    }

    public static final String e(TextView textView) {
        int dimensionPixelSize = textView.getContext().getResources().getDimensionPixelSize(com.transsion.widgetslib.R.dimen.os_space075);
        float fMeasureText = textView.getPaint().measureText(" ");
        return fMeasureText <= 0.0f ? " " : g1a.J(" ", wn8.d((int) Math.ceil(dimensionPixelSize / fMeasureText), 1));
    }

    public static final View f(Context context) {
        y45.j(context, "context");
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0f));
        linearLayout.setGravity(17);
        linearLayout.setOrientation(1);
        linearLayout.addView(j(context), new LinearLayout.LayoutParams(-2, -2));
        return linearLayout;
    }

    public static final View g(Context context) {
        y45.j(context, "context");
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_root_layout);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0f));
        Resources resources = relativeLayout.getResources();
        Space space = new Space(context);
        int i = com.transsion.widgetslib.R.id.os_foot_opt_space;
        space.setId(i);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_foot_bar_item_icon_size);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset);
        layoutParams.addRule(13);
        relativeLayout.addView(space, layoutParams);
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        View view = new View(context);
        view.setId(com.transsion.widgetslib.R.id.os_foot_opt_press);
        view.setAlpha(0.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.setMarginStart(resources.getDimensionPixelSize(com.transsion.widgetslib.R.dimen.os_foot_bar_item_safe_inset));
        layoutParams2.setMarginEnd(layoutParams2.getMarginStart());
        zfb zfbVar = zfb.a;
        relativeLayout.addView(view, layoutParams2);
        View viewJ = j(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(13);
        relativeLayout.addView(viewJ, layoutParams3);
        ViewStub viewStub = new ViewStub(context);
        viewStub.setId(com.transsion.widgetslib.R.id.os_stub_fpb_red_point);
        viewStub.setLayoutResource(com.transsion.widgetslib.R.layout.os_foot_opt_bar_item_red_point);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.setMarginStart((int) TypedValue.applyDimension(1, -2.0f, displayMetrics));
        layoutParams4.topMargin = layoutParams4.getMarginStart();
        layoutParams4.addRule(6, i);
        layoutParams4.addRule(17, i);
        relativeLayout.addView(viewStub, layoutParams4);
        return relativeLayout;
    }

    public static final View h(Context context, boolean z, int i) {
        y45.j(context, "context");
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(com.transsion.widgetslib.R.id.os_fob_layout);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(frameLayout.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_liquid_toolbar_width), frameLayout.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_liquid_toolbar_height));
        layoutParams.setMarginStart(i);
        frameLayout.setLayoutParams(layoutParams);
        OsPressSmoothCornerDrawable osPressSmoothCornerDrawable = new OsPressSmoothCornerDrawable(context);
        osPressSmoothCornerDrawable.setClickable(false);
        osPressSmoothCornerDrawable.setId(com.transsion.widgetslib.R.id.os_fob_item_back);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        zfb zfbVar = zfb.a;
        frameLayout.addView(osPressSmoothCornerDrawable, layoutParams2);
        View viewK = k(context, z);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams3.gravity = 17;
        frameLayout.addView(viewK, layoutParams3);
        return frameLayout;
    }

    public static final View i(Context context, boolean z) {
        y45.j(context, "context");
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(com.transsion.widgetslib.R.id.os_fob_layout);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(frameLayout.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_liquid_toolbar_single_width), frameLayout.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_liquid_toolbar_height)));
        OsPressSmoothCornerDrawable osPressSmoothCornerDrawable = new OsPressSmoothCornerDrawable(context);
        osPressSmoothCornerDrawable.setClickable(false);
        osPressSmoothCornerDrawable.setId(com.transsion.widgetslib.R.id.os_fob_item_back);
        osPressSmoothCornerDrawable.setBackgroundLeftRightMargin(olb.h(context, 4));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        zfb zfbVar = zfb.a;
        frameLayout.addView(osPressSmoothCornerDrawable, layoutParams);
        View viewK = k(context, z);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        frameLayout.addView(viewK, layoutParams2);
        return frameLayout;
    }

    public static final View j(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(com.transsion.widgetslib.R.id.os_fob_layout);
        linearLayout.setGravity(17);
        int dimensionPixelOffset = linearLayout.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_foot_bar_item_text_start_end_padding);
        linearLayout.setPadding(dimensionPixelOffset, 0, dimensionPixelOffset, 0);
        View oSMaskImageView = new OSMaskImageView(context, null, 0, 6, null);
        oSMaskImageView.setId(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_icon);
        int dimensionPixelOffset2 = oSMaskImageView.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_foot_bar_item_icon_size);
        oSMaskImageView.setLayoutParams(new LinearLayout.LayoutParams(dimensionPixelOffset2, dimensionPixelOffset2));
        linearLayout.addView(oSMaskImageView);
        TextView textView = new TextView(context);
        textView.setId(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_text);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int dimensionPixelOffset3 = textView.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_foot_bar_item_text_paddingTop);
        layoutParams.setMargins(dimensionPixelOffset3, dimensionPixelOffset3, dimensionPixelOffset3, dimensionPixelOffset3);
        textView.setLayoutParams(layoutParams);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTypeface(Typeface.create(C.SANS_SERIF_NAME, 0));
        textView.setMaxLines(1);
        textView.setMinHeight(textView.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_foot_bar_item_text_height));
        textView.setTextColor(ContextCompat.getColor(context, com.transsion.widgetslib.R.color.os_foot_action_bar_text_color));
        textView.setTextSize(0, textView.getResources().getDimension(com.transsion.widgetslib.R.dimen.os_foot_bar_item_text_size));
        linearLayout.addView(textView);
        return linearLayout;
    }

    public static final View k(Context context, boolean z) {
        LinearLayout linearLayout = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        linearLayout.setLayoutParams(layoutParams);
        if (z) {
            OSIconTextView oSIconTextView = new OSIconTextView(context, null, 0, 0, 14, null);
            oSIconTextView.setId(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_text);
            oSIconTextView.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_foot_bar_item_text_paddingTop);
            oSIconTextView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, 1.0f));
            oSIconTextView.setClickable(false);
            oSIconTextView.setGravity(17);
            oSIconTextView.setMinHeight(oSIconTextView.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_foot_bar_item_text_height));
            oSIconTextView.setTextColor(olb.l(com.transsion.widgetslib.R.attr.os_icon_secondary, context.getColor(com.transsion.widgetslib.R.color.os_icon_secondary_hios), context));
            oSIconTextView.setTextSize(0, oSIconTextView.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_liquid_button_text_size));
            linearLayout.addView(oSIconTextView);
        } else {
            TextView textView = new TextView(context);
            textView.setId(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_text);
            int dimensionPixelOffset = textView.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_foot_bar_item_text_paddingTop);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.setMargins(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            textView.setLayoutParams(layoutParams2);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setTypeface(Typeface.create(C.SANS_SERIF_NAME, 0));
            textView.setMaxLines(1);
            textView.setMinHeight(textView.getResources().getDimensionPixelOffset(com.transsion.widgetslib.R.dimen.os_foot_bar_item_text_height));
            textView.setTextColor(ContextCompat.getColor(context, com.transsion.widgetslib.R.color.os_foot_action_bar_text_color));
            textView.setTextSize(0, textView.getResources().getDimension(com.transsion.widgetslib.R.dimen.os_foot_bar_item_text_size));
            linearLayout.addView(textView);
        }
        return linearLayout;
    }

    public static final void l(TextView textView) {
        y45.j(textView, "<this>");
        int i = com.transsion.widgetslib.R.id.os_foot_opt_bar_item_text;
        Object tag = textView.getTag(i);
        if (tag instanceof g24) {
            g24 g24Var = (g24) tag;
            if (g24Var.c()) {
                g24Var.a();
            }
            textView.setTag(i, null);
        }
    }

    public static final void m(final TextView textView, final float f) {
        final CharSequence text;
        y45.j(textView, "<this>");
        r(textView);
        if (textView.getEllipsize() != TextUtils.TruncateAt.END || (text = textView.getText()) == null || text.length() == 0) {
            return;
        }
        textView.post(new Runnable() {
            @Override
            public final void run() {
                gcc.o(textView, text, f);
            }
        });
    }

    public static void n(TextView textView, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 40.0f;
        }
        m(textView, f);
    }

    public static final void o(final TextView textView, CharSequence charSequence, final float f) {
        y45.j(textView, "$this_startClickMarqueeScrollOnOverflow");
        y45.j(charSequence, "$originalText");
        final int iD = wn8.d((textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight(), 0);
        if (iD <= 0) {
            return;
        }
        float f2 = iD;
        if (textView.getPaint().measureText(charSequence.toString()) <= f2) {
            return;
        }
        final vx0 vx0Var = new vx0(charSequence, textView.getGravity(), textView.getTextAlignment(), null, null, 24, null);
        textView.setTag(com.transsion.widgetslib.R.id.os_click_marquee_state, vx0Var);
        View.OnAttachStateChangeListener cVar = new c(textView);
        vx0Var.setAttachStateListener(cVar);
        textView.addOnAttachStateChangeListener(cVar);
        String strE = e(textView);
        CharSequence charSequenceEllipsize = TextUtils.ellipsize(charSequence, textView.getPaint(), f2, TextUtils.TruncateAt.END);
        String string = charSequence.toString();
        CharSequence charSequenceConcat = TextUtils.concat(string, strE, string, strE, charSequenceEllipsize);
        textView.setSingleLine(true);
        textView.setHorizontallyScrolling(true);
        textView.scrollTo(0, 0);
        textView.setGravity(8388627);
        textView.setTextAlignment(5);
        textView.setText(charSequenceConcat);
        textView.setEllipsize(null);
        textView.post(new Runnable() {
            @Override
            public final void run() {
                gcc.p(textView, vx0Var, iD, f);
            }
        });
    }

    public static final void p(final TextView textView, vx0 vx0Var, int i, float f) {
        y45.j(textView, "$this_startClickMarqueeScrollOnOverflow");
        y45.j(vx0Var, "$state");
        if (textView.isAttachedToWindow() && textView.getTag(com.transsion.widgetslib.R.id.os_click_marquee_state) == vx0Var) {
            Layout layout = textView.getLayout();
            if (layout == null) {
                r(textView);
                return;
            }
            int iCeil = (int) Math.ceil(wn8.c(layout.getLineRight(0) - i, 0.0f));
            if (iCeil <= 0) {
                r(textView);
                return;
            }
            float fApplyDimension = TypedValue.applyDimension(1, f, textView.getResources().getDisplayMetrics());
            long jE = fApplyDimension > 0.0f ? wn8.e((long) ((iCeil / fApplyDimension) * 1000.0f), 1L) : C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, iCeil);
            valueAnimatorOfInt.setDuration(jE);
            valueAnimatorOfInt.setInterpolator(new LinearInterpolator());
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    gcc.q(textView, valueAnimator);
                }
            });
            valueAnimatorOfInt.addListener(new b(vx0Var, textView, iCeil));
            valueAnimatorOfInt.start();
            vx0Var.setAnimator(valueAnimatorOfInt);
        }
    }

    public static final void q(TextView textView, ValueAnimator valueAnimator) {
        y45.j(textView, "$this_startClickMarqueeScrollOnOverflow");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        textView.scrollTo(((Integer) animatedValue).intValue(), 0);
    }

    public static final void r(TextView textView) {
        y45.j(textView, "<this>");
        int i = com.transsion.widgetslib.R.id.os_click_marquee_state;
        Object tag = textView.getTag(i);
        vx0 vx0Var = tag instanceof vx0 ? (vx0) tag : null;
        if (vx0Var == null) {
            return;
        }
        ValueAnimator animator = vx0Var.getAnimator();
        if (animator != null) {
            animator.cancel();
        }
        View.OnAttachStateChangeListener attachStateListener = vx0Var.getAttachStateListener();
        if (attachStateListener != null) {
            textView.removeOnAttachStateChangeListener(attachStateListener);
        }
        vx0Var.setAttachStateListener(null);
        textView.setText(vx0Var.getOriginalText());
        textView.scrollTo(0, 0);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(vx0Var.getOriginalGravity());
        textView.setTextAlignment(vx0Var.getOriginalTextAlignment());
        textView.setTag(i, null);
    }
}
