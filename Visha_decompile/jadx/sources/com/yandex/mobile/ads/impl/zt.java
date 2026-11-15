package com.yandex.mobile.ads.impl;

import android.R;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewManager;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.GravityCompat;
import androidx.media3.exoplayer.RendererCapabilities;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.s86;
import defpackage.y45;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

@MainThread
public abstract class zt extends FrameLayout {
    private ImageView A;
    private LinearLayout B;
    private CustomizableMediaView C;
    private LinearLayout D;
    private rt E;
    private m91 F;
    private b91 G;
    private c61 H;
    private q61 I;
    private final b J;
    private final o10 a;
    private final au b;
    private final sp1 c;
    private final int d;
    private final int e;
    private final int f;
    private fu g;
    private TextView h;
    private TextView i;
    private Button j;
    private TextView k;
    private ImageView l;
    private final ImageView m;
    private e22 n;
    private TextView o;
    private TextView p;
    private ImageView q;
    private pn1 r;
    private TextView s;
    private ImageView t;
    private ImageView u;
    private LinearLayout v;
    private FrameLayout w;
    private LinearLayout x;
    private LinearLayout y;
    private LinearLayout z;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[la1.a.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                la1.a aVar = la1.a.b;
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                la1.a aVar2 = la1.a.b;
                iArr[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final class b implements ut {
        public b() {
        }

        @Override
        public final void onFinishLoadingImages() {
            q61 q61Var = zt.this.I;
            if (q61Var != null) {
                q61Var.a(this);
            }
            c61 c61Var = zt.this.H;
            if (c61Var == null) {
                y45.B("nativeAdImagesAnimator");
                c61Var = null;
            }
            c61Var.a();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public zt(Context context, AttributeSet attributeSet, int i, fu fuVar, t92 t92Var, ie ieVar) {
        this(context, attributeSet, i, fuVar, t92Var, ieVar, null, null, null, 448, null);
        y45.j(context, "context");
        y45.j(fuVar, "defaultTemplateAppearance");
        y45.j(t92Var, "varioqubAdapterProvider");
        y45.j(ieVar, "appAdAnalyticsActivator");
    }

    private final void a() {
        float borderWidth = this.g.getBannerAppearance().getBorderWidth();
        o10 o10Var = this.a;
        Context context = getContext();
        y45.i(context, "getContext(...)");
        o10Var.getClass();
        int iA = o10.a(context, borderWidth);
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setShape(new RectShape());
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(this.g.getBannerAppearance().getBackgroundColor());
        paint.setStyle(Paint.Style.FILL);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable();
        shapeDrawable2.setShape(new RectShape());
        Paint paint2 = shapeDrawable2.getPaint();
        paint2.setColor(this.g.getBannerAppearance().getBorderColor());
        paint2.setStrokeWidth(iA * 2.0f);
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        setBackground(new LayerDrawable(new Drawable[]{shapeDrawable, shapeDrawable2}));
        setPadding(iA, iA, iA, iA);
        ia1 contentPadding = this.g.getBannerAppearance().getContentPadding();
        e22 e22Var = null;
        if (contentPadding != null) {
            o10 o10Var2 = this.a;
            Context context2 = getContext();
            y45.i(context2, "getContext(...)");
            float f = contentPadding.getAndroidx.media3.extractor.text.ttml.TtmlNode.LEFT java.lang.String();
            o10Var2.getClass();
            int iA2 = o10.a(context2, f);
            o10 o10Var3 = this.a;
            Context context3 = getContext();
            y45.i(context3, "getContext(...)");
            float f2 = contentPadding.getAndroidx.media3.extractor.text.ttml.TtmlNode.RIGHT java.lang.String();
            o10Var3.getClass();
            int iA3 = o10.a(context3, f2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(iA2, this.e, iA3, this.d);
            LinearLayout linearLayout = this.x;
            if (linearLayout == null) {
                y45.B("topContainer");
                linearLayout = null;
            }
            linearLayout.setLayoutParams(layoutParams);
            LinearLayout linearLayout2 = this.x;
            if (linearLayout2 == null) {
                y45.B("topContainer");
                linearLayout2 = null;
            }
            linearLayout2.invalidate();
        }
        ia1 contentPadding2 = this.g.getBannerAppearance().getContentPadding();
        if (contentPadding2 != null) {
            o10 o10Var4 = this.a;
            Context context4 = getContext();
            y45.i(context4, "getContext(...)");
            float f3 = contentPadding2.getAndroidx.media3.extractor.text.ttml.TtmlNode.LEFT java.lang.String();
            o10Var4.getClass();
            int iA4 = o10.a(context4, f3);
            o10 o10Var5 = this.a;
            Context context5 = getContext();
            y45.i(context5, "getContext(...)");
            float f4 = contentPadding2.getAndroidx.media3.extractor.text.ttml.TtmlNode.RIGHT java.lang.String();
            o10Var5.getClass();
            int iA5 = o10.a(context5, f4);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.leftMargin = iA4;
            layoutParams2.rightMargin = iA5;
            layoutParams2.bottomMargin = this.d;
            LinearLayout linearLayout3 = this.y;
            if (linearLayout3 == null) {
                y45.B("centerContainer");
                linearLayout3 = null;
            }
            linearLayout3.setLayoutParams(layoutParams2);
            LinearLayout linearLayout4 = this.y;
            if (linearLayout4 == null) {
                y45.B("centerContainer");
                linearLayout4 = null;
            }
            linearLayout4.invalidate();
        }
        ia1 contentPadding3 = this.g.getBannerAppearance().getContentPadding();
        if (contentPadding3 != null) {
            o10 o10Var6 = this.a;
            Context context6 = getContext();
            y45.i(context6, "getContext(...)");
            float f5 = contentPadding3.getAndroidx.media3.extractor.text.ttml.TtmlNode.LEFT java.lang.String();
            o10Var6.getClass();
            int iA6 = o10.a(context6, f5);
            o10 o10Var7 = this.a;
            Context context7 = getContext();
            y45.i(context7, "getContext(...)");
            float f6 = contentPadding3.getAndroidx.media3.extractor.text.ttml.TtmlNode.RIGHT java.lang.String();
            o10Var7.getClass();
            int iA7 = o10.a(context7, f6);
            TextView warningView = getWarningView();
            int i = this.d;
            warningView.setPadding(iA6, i, iA7, i);
            getWarningView().invalidate();
        }
        ma1 textAppearance = this.g.getCallToActionAppearance().getTextAppearance();
        if (textAppearance != null) {
            getCallToActionView().setTextColor(textAppearance.getTextColor());
        }
        ma1 textAppearance2 = this.g.getCallToActionAppearance().getTextAppearance();
        if (textAppearance2 != null) {
            getCallToActionView().setTextSize(textAppearance2.getTextSize());
            Button callToActionView = getCallToActionView();
            ma1 textAppearance3 = this.g.getCallToActionAppearance().getTextAppearance();
            callToActionView.setTypeface(Typeface.create(textAppearance3 != null ? textAppearance3.getFontFamilyName() : null, textAppearance2.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String()));
        }
        o10 o10Var8 = this.a;
        Context context8 = getContext();
        y45.i(context8, "getContext(...)");
        o10Var8.getClass();
        float fA = o10.a(context8, 5.0f);
        float[] fArr = new float[8];
        Arrays.fill(fArr, fA);
        RoundRectShape roundRectShape = new RoundRectShape(fArr, null, fArr);
        ShapeDrawable shapeDrawable3 = new ShapeDrawable(roundRectShape);
        shapeDrawable3.getPaint().setColor(this.g.getCallToActionAppearance().getPressedColor());
        ShapeDrawable shapeDrawable4 = new ShapeDrawable(roundRectShape);
        shapeDrawable4.getPaint().setColor(this.g.getCallToActionAppearance().getNormalColor());
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_selected}, shapeDrawable3);
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, shapeDrawable3);
        stateListDrawable.addState(new int[0], shapeDrawable4);
        o10 o10Var9 = this.a;
        Context context9 = getContext();
        y45.i(context9, "getContext(...)");
        float borderWidth2 = this.g.getCallToActionAppearance().getBorderWidth();
        o10Var9.getClass();
        int iA8 = o10.a(context9, borderWidth2);
        ShapeDrawable shapeDrawable5 = new ShapeDrawable();
        shapeDrawable5.setShape(roundRectShape);
        Paint paint3 = shapeDrawable5.getPaint();
        paint3.setColor(this.g.getCallToActionAppearance().getBorderColor());
        paint3.setStrokeWidth(iA8);
        paint3.setStyle(style);
        getCallToActionView().setBackground(new LayerDrawable(new Drawable[]{stateListDrawable, shapeDrawable5}));
        pn1 pn1Var = this.r;
        if (pn1Var == null) {
            y45.B("_ratingView");
            pn1Var = null;
        }
        Drawable progressDrawable = pn1Var.getProgressDrawable();
        y45.h(progressDrawable, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable");
        LayerDrawable layerDrawable = (LayerDrawable) progressDrawable;
        Drawable drawable = layerDrawable.getDrawable(2);
        int progressStarColor = this.g.getRatingAppearance().getProgressStarColor();
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_ATOP;
        drawable.setColorFilter(progressStarColor, mode);
        layerDrawable.getDrawable(1).setColorFilter(this.g.getRatingAppearance().getBackgroundStarColor(), mode);
        layerDrawable.getDrawable(0).setColorFilter(this.g.getRatingAppearance().getBackgroundStarColor(), mode);
        getAgeView().setTypeface(Typeface.create(this.g.getAgeAppearance().getFontFamilyName(), this.g.getAgeAppearance().getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String()));
        getAgeView().setTextColor(this.g.getAgeAppearance().getTextColor());
        getAgeView().setTextSize(2, this.g.getAgeAppearance().getTextSize());
        getBodyView().setTypeface(Typeface.create(this.g.getBodyAppearance().getFontFamilyName(), this.g.getBodyAppearance().getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String()));
        getBodyView().setTextColor(this.g.getBodyAppearance().getTextColor());
        getBodyView().setTextSize(2, this.g.getBodyAppearance().getTextSize());
        getDomainView().setTypeface(Typeface.create(this.g.getDomainAppearance().getFontFamilyName(), this.g.getDomainAppearance().getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String()));
        getDomainView().setTextColor(this.g.getDomainAppearance().getTextColor());
        getDomainView().setTextSize(2, this.g.getDomainAppearance().getTextSize());
        getReviewCountView().setTypeface(Typeface.create(this.g.getReviewCountAppearance().getFontFamilyName(), this.g.getReviewCountAppearance().getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String()));
        getReviewCountView().setTextColor(this.g.getReviewCountAppearance().getTextColor());
        getReviewCountView().setTextSize(2, this.g.getReviewCountAppearance().getTextSize());
        e22 e22Var2 = this.n;
        if (e22Var2 == null) {
            y45.B("_sponsoredView");
            e22Var2 = null;
        }
        e22Var2.setTypeface(Typeface.create(this.g.getSponsoredAppearance().getFontFamilyName(), this.g.getSponsoredAppearance().getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String()));
        e22 e22Var3 = this.n;
        if (e22Var3 == null) {
            y45.B("_sponsoredView");
            e22Var3 = null;
        }
        e22Var3.setTextColor(this.g.getSponsoredAppearance().getTextColor());
        e22 e22Var4 = this.n;
        if (e22Var4 == null) {
            y45.B("_sponsoredView");
        } else {
            e22Var = e22Var4;
        }
        e22Var.setTextSize(2, this.g.getSponsoredAppearance().getTextSize());
        getTitleView().setTypeface(Typeface.create(this.g.getTitleAppearance().getFontFamilyName(), this.g.getTitleAppearance().getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String()));
        getTitleView().setTextColor(this.g.getTitleAppearance().getTextColor());
        getTitleView().setTextSize(2, this.g.getTitleAppearance().getTextSize());
        getWarningView().setTypeface(Typeface.create(this.g.getWarningAppearance().getFontFamilyName(), this.g.getWarningAppearance().getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String()));
        getWarningView().setTextColor(this.g.getWarningAppearance().getTextColor());
        getWarningView().setTextSize(2, this.g.getWarningAppearance().getTextSize());
        invalidate();
        requestLayout();
    }

    private final void b() {
        FrameLayout frameLayout;
        this.u = c();
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        this.x = linearLayout2;
        linearLayout2.setOrientation(0);
        LinearLayout linearLayout3 = this.x;
        if (linearLayout3 == null) {
            y45.B("topContainer");
            linearLayout3 = null;
        }
        linearLayout3.setGravity(17);
        LinearLayout linearLayout4 = this.x;
        if (linearLayout4 == null) {
            y45.B("topContainer");
            linearLayout4 = null;
        }
        linearLayout4.setWeightSum(4.0f);
        View view = new View(getContext());
        view.setLayoutParams(new LinearLayout.LayoutParams(0, 0, 1.0f));
        LinearLayout linearLayout5 = new LinearLayout(getContext());
        linearLayout5.setGravity(17);
        linearLayout5.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 2.0f));
        Context context = getContext();
        y45.i(context, "getContext(...)");
        e22 e22Var = new e22(context);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        e22Var.setEllipsize(truncateAt);
        e22Var.setMaxLines(1);
        e22Var.setGravity(17);
        o10 o10Var = this.a;
        Context context2 = getContext();
        y45.i(context2, "getContext(...)");
        o10Var.getClass();
        e22Var.setPadding(0, 0, 0, o10.a(context2, 4.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        e22Var.setLayoutParams(layoutParams);
        this.n = e22Var;
        linearLayout5.addView(e22Var);
        LinearLayout linearLayout6 = new LinearLayout(getContext());
        linearLayout6.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView textView = new TextView(getContext());
        textView.setEllipsize(truncateAt);
        textView.setMaxLines(1);
        textView.setGravity(GravityCompat.START);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.rightMargin = this.d;
        textView.setLayoutParams(layoutParams2);
        this.h = textView;
        linearLayout6.addView(getAgeView());
        LinearLayout linearLayout7 = this.x;
        if (linearLayout7 == null) {
            y45.B("topContainer");
            linearLayout7 = null;
        }
        linearLayout7.addView(linearLayout6);
        ViewGroup viewGroup = this.x;
        ViewGroup viewGroup2 = viewGroup;
        if (viewGroup == null) {
            y45.B("topContainer");
            viewGroup2 = null;
        }
        viewGroup2.addView(linearLayout5);
        LinearLayout linearLayout8 = this.x;
        if (linearLayout8 == null) {
            y45.B("topContainer");
            linearLayout8 = null;
        }
        linearLayout8.addView(view);
        LinearLayout linearLayout9 = this.x;
        if (linearLayout9 == null) {
            y45.B("topContainer");
            linearLayout9 = null;
        }
        LinearLayout linearLayout10 = new LinearLayout(getContext());
        this.y = linearLayout10;
        linearLayout10.setOrientation(0);
        LinearLayout linearLayout11 = this.y;
        if (linearLayout11 == null) {
            y45.B("centerContainer");
            linearLayout11 = null;
        }
        linearLayout11.setBaselineAligned(false);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = this.d;
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        frameLayout2.setLayoutParams(layoutParams3);
        this.q = c();
        ImageView imageView = new ImageView(getContext());
        imageView.setAdjustViewBounds(true);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
        imageView.setScaleType(scaleType);
        this.t = imageView;
        frameLayout2.addView(getIconView());
        frameLayout2.addView(this.m);
        frameLayout2.addView(getFaviconView());
        LinearLayout linearLayout12 = new LinearLayout(getContext());
        linearLayout12.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout12.setOrientation(1);
        TextView textView2 = new TextView(getContext());
        textView2.setEllipsize(truncateAt);
        textView2.setMaxLines(2);
        textView2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        this.o = textView2;
        TextView textView3 = new TextView(getContext());
        textView3.setEllipsize(truncateAt);
        textView3.setMaxLines(3);
        textView3.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        this.i = textView3;
        TextView textView4 = new TextView(getContext());
        textView4.setEllipsize(truncateAt);
        textView4.setMaxLines(1);
        textView4.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        this.k = textView4;
        linearLayout12.addView(getTitleView());
        linearLayout12.addView(getBodyView());
        linearLayout12.addView(getDomainView());
        LinearLayout linearLayout13 = new LinearLayout(getContext());
        this.z = linearLayout13;
        linearLayout13.setOrientation(0);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.topMargin = this.e;
        LinearLayout linearLayout14 = this.z;
        if (linearLayout14 == null) {
            y45.B("callToActionContainer");
            linearLayout14 = null;
        }
        linearLayout14.setLayoutParams(layoutParams4);
        LinearLayout linearLayout15 = new LinearLayout(getContext());
        linearLayout15.setOrientation(1);
        linearLayout15.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        Context context3 = getContext();
        y45.i(context3, "getContext(...)");
        pn1 pn1Var = new pn1(context3, null, R.attr.ratingBarStyleSmall);
        pn1Var.setNumStars(5);
        pn1Var.setStepSize(0.5f);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.rightMargin = this.e;
        pn1Var.setLayoutParams(layoutParams5);
        this.r = pn1Var;
        TextView textView5 = new TextView(getContext());
        textView5.setEllipsize(truncateAt);
        textView5.setMaxLines(1);
        textView5.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        this.s = textView5;
        pn1 pn1Var2 = this.r;
        if (pn1Var2 == null) {
            y45.B("_ratingView");
            pn1Var2 = null;
        }
        linearLayout15.addView(pn1Var2);
        linearLayout15.addView(getReviewCountView());
        LinearLayout linearLayout16 = new LinearLayout(getContext());
        linearLayout16.setOrientation(0);
        linearLayout16.setGravity(5);
        linearLayout16.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        Button button = new Button(getContext(), null, R.attr.borderlessButtonStyle);
        button.setEllipsize(truncateAt);
        button.setMaxLines(1);
        button.setTransformationMethod(null);
        o10 o10Var2 = this.a;
        Context context4 = getContext();
        y45.i(context4, "getContext(...)");
        o10Var2.getClass();
        int iA = o10.a(context4, 26.0f);
        button.setMinimumHeight(iA);
        button.setMinHeight(iA);
        button.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.j = button;
        linearLayout16.addView(getCallToActionView());
        LinearLayout linearLayout17 = this.z;
        if (linearLayout17 == null) {
            y45.B("callToActionContainer");
            linearLayout17 = null;
        }
        linearLayout17.addView(linearLayout15);
        LinearLayout linearLayout18 = this.z;
        if (linearLayout18 == null) {
            y45.B("callToActionContainer");
            linearLayout18 = null;
        }
        linearLayout18.addView(linearLayout16);
        LinearLayout linearLayout19 = this.z;
        if (linearLayout19 == null) {
            y45.B("callToActionContainer");
            linearLayout19 = null;
        }
        linearLayout12.addView(linearLayout19);
        LinearLayout linearLayout20 = this.y;
        if (linearLayout20 == null) {
            y45.B("centerContainer");
            linearLayout20 = null;
        }
        linearLayout20.addView(frameLayout2);
        LinearLayout linearLayout21 = this.y;
        if (linearLayout21 == null) {
            y45.B("centerContainer");
            linearLayout21 = null;
        }
        linearLayout21.addView(linearLayout12);
        LinearLayout linearLayout22 = this.y;
        if (linearLayout22 == null) {
            y45.B("centerContainer");
            linearLayout22 = null;
        }
        LinearLayout linearLayout23 = new LinearLayout(getContext());
        linearLayout23.setOrientation(0);
        linearLayout23.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.B = linearLayout23;
        ImageView imageView2 = new ImageView(getContext());
        imageView2.setAdjustViewBounds(true);
        imageView2.setScaleType(scaleType);
        imageView2.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.A = imageView2;
        LinearLayout linearLayout24 = this.B;
        if (linearLayout24 == null) {
            y45.B("largeImageContainer");
            linearLayout24 = null;
        }
        ImageView imageView3 = this.A;
        if (imageView3 == null) {
            y45.B("largeImageView");
            imageView3 = null;
        }
        linearLayout24.addView(imageView3);
        LinearLayout linearLayout25 = this.B;
        if (linearLayout25 == null) {
            y45.B("largeImageContainer");
            linearLayout25 = null;
        }
        LinearLayout linearLayout26 = new LinearLayout(getContext());
        linearLayout26.setOrientation(0);
        linearLayout26.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.D = linearLayout26;
        Context context5 = getContext();
        y45.i(context5, "getContext(...)");
        CustomizableMediaView customizableMediaView = new CustomizableMediaView(context5);
        customizableMediaView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.C = customizableMediaView;
        LinearLayout linearLayout27 = this.D;
        if (linearLayout27 == null) {
            y45.B("mediaContainer");
            linearLayout27 = null;
        }
        linearLayout27.addView(getMediaView());
        LinearLayout linearLayout28 = this.D;
        if (linearLayout28 == null) {
            y45.B("mediaContainer");
            linearLayout28 = null;
        }
        TextView textView6 = new TextView(getContext());
        textView6.setEllipsize(truncateAt);
        this.p = textView6;
        TextView warningView = getWarningView();
        linearLayout.addView(linearLayout9);
        linearLayout.addView(linearLayout22);
        linearLayout.addView(linearLayout25);
        linearLayout.addView(linearLayout28);
        linearLayout.addView(warningView);
        this.v = linearLayout;
        ia1 contentPadding = this.g.getBannerAppearance().getContentPadding();
        if (contentPadding != null) {
            o10 o10Var3 = this.a;
            Context context6 = getContext();
            y45.i(context6, "getContext(...)");
            float f = contentPadding.getAndroidx.media3.extractor.text.ttml.TtmlNode.RIGHT java.lang.String();
            o10Var3.getClass();
            int iA2 = o10.a(context6, f) - this.e;
            Context context7 = getContext();
            y45.i(context7, "getContext(...)");
            db0 db0Var = new db0(context7);
            Context context8 = getContext();
            y45.i(context8, "getContext(...)");
            this.w = new va0(context8).a();
            this.l = db0Var.a(iA2, this.d);
            FrameLayout frameLayout3 = this.w;
            if (frameLayout3 == null) {
                y45.B("feedbackContainer");
                frameLayout3 = null;
            }
            frameLayout3.addView(getFeedbackView());
            FrameLayout frameLayout4 = this.w;
            if (frameLayout4 == null) {
                y45.B("feedbackContainer");
                frameLayout4 = null;
            }
            frameLayout4.setVisibility(8);
        }
        ImageView imageView4 = this.u;
        if (imageView4 == null) {
            y45.B("adFoxView");
            imageView4 = null;
        }
        addView(imageView4, new ViewGroup.LayoutParams(-1, -2));
        LinearLayout linearLayout29 = this.v;
        if (linearLayout29 == null) {
            y45.B("mainContainer");
            linearLayout29 = null;
        }
        addView(linearLayout29, new ViewGroup.LayoutParams(-1, -1));
        FrameLayout frameLayout5 = this.w;
        if (frameLayout5 == null) {
            y45.B("feedbackContainer");
            frameLayout = null;
        } else {
            frameLayout = frameLayout5;
        }
        addView(frameLayout);
        hideContent();
        ImageView faviconView = getFaviconView();
        ImageView iconView = getIconView();
        ImageView imageView5 = this.m;
        ImageView imageView6 = this.A;
        if (imageView6 == null) {
            y45.B("largeImageView");
            imageView6 = null;
        }
        ImageView imageView7 = this.u;
        if (imageView7 == null) {
            y45.B("adFoxView");
            imageView7 = null;
        }
        this.H = new c61(faviconView, iconView, imageView5, imageView6, imageView7);
        a();
    }

    private final ImageView c() {
        ImageView imageView = new ImageView(getContext());
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        return imageView;
    }

    public final void applyAppearance(fu fuVar) {
        y45.j(fuVar, "templateAppearance");
        if (y45.e(fuVar, this.g)) {
            return;
        }
        this.g = fuVar;
        a();
    }

    public final TextView getAgeView() {
        TextView textView = this.h;
        if (textView != null) {
            return textView;
        }
        y45.B("ageView");
        return null;
    }

    public final TextView getBodyView() {
        TextView textView = this.i;
        if (textView != null) {
            return textView;
        }
        y45.B("bodyView");
        return null;
    }

    public final Button getCallToActionView() {
        Button button = this.j;
        if (button != null) {
            return button;
        }
        y45.B("callToActionView");
        return null;
    }

    public final TextView getDomainView() {
        TextView textView = this.k;
        if (textView != null) {
            return textView;
        }
        y45.B("domainView");
        return null;
    }

    public final ImageView getFaviconView() {
        ImageView imageView = this.t;
        if (imageView != null) {
            return imageView;
        }
        y45.B("faviconView");
        return null;
    }

    public final ImageView getFeedbackView() {
        ImageView imageView = this.l;
        if (imageView != null) {
            return imageView;
        }
        y45.B("feedbackView");
        return null;
    }

    public final ImageView getIconView() {
        ImageView imageView = this.q;
        if (imageView != null) {
            return imageView;
        }
        y45.B("iconView");
        return null;
    }

    public final ImageView getImageView() {
        rt rtVar;
        tt ttVarH;
        ImageView imageView;
        ImageView imageView2 = this.m;
        if (this.G == null || (rtVar = this.E) == null || (ttVarH = rtVar.h()) == null) {
            return imageView2;
        }
        y45.j(ttVarH, "image");
        if (y45.e("fill", ttVarH.c())) {
            imageView = this.u;
            if (imageView == null) {
                y45.B("adFoxView");
                return null;
            }
            return imageView;
        }
        if (!b91.a(ttVarH)) {
            return imageView2;
        }
        imageView = this.A;
        if (imageView == null) {
            y45.B("largeImageView");
            return null;
        }
        return imageView;
    }

    public final CustomizableMediaView getMediaView() {
        CustomizableMediaView customizableMediaView = this.C;
        if (customizableMediaView != null) {
            return customizableMediaView;
        }
        y45.B("mediaView");
        return null;
    }

    public final View getRatingView() {
        pn1 pn1Var = this.r;
        if (pn1Var != null) {
            return pn1Var;
        }
        y45.B("_ratingView");
        return null;
    }

    public final TextView getReviewCountView() {
        TextView textView = this.s;
        if (textView != null) {
            return textView;
        }
        y45.B("reviewCountView");
        return null;
    }

    public final TextView getSponsoredView() {
        e22 e22Var = this.n;
        if (e22Var != null) {
            return e22Var;
        }
        y45.B("_sponsoredView");
        return null;
    }

    public final TextView getTitleView() {
        TextView textView = this.o;
        if (textView != null) {
            return textView;
        }
        y45.B("titleView");
        return null;
    }

    public final TextView getWarningView() {
        TextView textView = this.p;
        if (textView != null) {
            return textView;
        }
        y45.B("warningView");
        return null;
    }

    @VisibleForTesting
    public final void hideContent() {
        ImageView imageView = this.u;
        LinearLayout linearLayout = null;
        if (imageView == null) {
            y45.B("adFoxView");
            imageView = null;
        }
        imageView.setVisibility(8);
        LinearLayout linearLayout2 = this.v;
        if (linearLayout2 == null) {
            y45.B("mainContainer");
        } else {
            linearLayout = linearLayout2;
        }
        linearLayout.setVisibility(8);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        q61 q61Var = this.I;
        if (q61Var != null) {
            q61Var.b(this.J);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        q61 q61Var = this.I;
        if (q61Var != null) {
            q61Var.a(this.J);
        }
        super.onDetachedFromWindow();
    }

    @Override
    public final void onMeasure(int i, int i2) {
        LinearLayout linearLayout;
        tt ttVarH;
        int iC;
        int iC2;
        m91 m91Var;
        rt rtVar;
        tt ttVarH2;
        rt rtVar2;
        tt ttVarG;
        rt rtVar3;
        tt ttVarE;
        int size = View.MeasureSpec.getSize(i);
        float borderWidth = this.g.getBannerAppearance().getBorderWidth();
        o10 o10Var = this.a;
        Context context = getContext();
        y45.i(context, "getContext(...)");
        o10Var.getClass();
        int iA = size - (o10.a(context, borderWidth) * 2);
        if (iA < 0) {
            iA = 0;
        }
        b91 b91Var = this.G;
        if (b91Var != null) {
            ia1 contentPadding = this.g.getBannerAppearance().getContentPadding();
            if (contentPadding != null) {
                Context context2 = getContext();
                o10 o10Var2 = this.a;
                y45.g(context2);
                float f = contentPadding.getAndroidx.media3.extractor.text.ttml.TtmlNode.LEFT java.lang.String();
                o10Var2.getClass();
                int iA2 = o10.a(context2, f);
                o10 o10Var3 = this.a;
                float f2 = contentPadding.getAndroidx.media3.extractor.text.ttml.TtmlNode.RIGHT java.lang.String();
                o10Var3.getClass();
                y45.j(context2, "context");
                int iC3 = s86.c(TypedValue.applyDimension(1, f2, context2.getResources().getDisplayMetrics()));
                ia1 imageMargins = this.g.getBannerAppearance().getImageMargins();
                if (imageMargins != null) {
                    if (b91Var.a() || b91Var.b() || b91Var.e()) {
                        int iC4 = s86.c((iA - iA2) - iC3);
                        float f3 = imageMargins.getAndroidx.media3.extractor.text.ttml.TtmlNode.LEFT java.lang.String();
                        o10 o10Var4 = this.a;
                        Context context3 = getContext();
                        y45.i(context3, "getContext(...)");
                        o10Var4.getClass();
                        int iA3 = o10.a(context3, f3);
                        this.a.getClass();
                        y45.j(context2, "context");
                        int iC5 = s86.c(TypedValue.applyDimension(1, iA2, context2.getResources().getDisplayMetrics())) + iA3;
                        float f4 = imageMargins.getAndroidx.media3.extractor.text.ttml.TtmlNode.RIGHT java.lang.String();
                        o10 o10Var5 = this.a;
                        Context context4 = getContext();
                        y45.i(context4, "getContext(...)");
                        o10Var5.getClass();
                        int iA4 = o10.a(context4, f4);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, 0);
                        if (b91Var.a() && (rtVar3 = this.E) != null && (ttVarE = rtVar3.e()) != null) {
                            int iD = ttVarE.d();
                            int iB = ttVarE.b();
                            la1 widthConstraint = this.g.getFaviconAppearance().getWidthConstraint();
                            if (widthConstraint != null) {
                                ij0 ij0VarA = a(widthConstraint);
                                Context context5 = getContext();
                                y45.i(context5, "getContext(...)");
                                ij0.d dVarA = ij0VarA.a(context5, iC4, iD, iB);
                                o10 o10Var6 = this.a;
                                Context context6 = getContext();
                                y45.i(context6, "getContext(...)");
                                o10Var6.getClass();
                                int iA5 = o10.a(context6, 5.0f);
                                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(dVarA.b(), dVarA.a());
                                layoutParams2.leftMargin = iC5;
                                layoutParams2.rightMargin = iA5;
                                layoutParams = layoutParams2;
                            }
                        }
                        getFaviconView().setLayoutParams(layoutParams);
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(0, 0);
                        if (b91Var.b() && (rtVar2 = this.E) != null && (ttVarG = rtVar2.g()) != null) {
                            layoutParams3 = new FrameLayout.LayoutParams(0, 0);
                            la1 widthConstraint2 = this.g.getImageAppearance().getWidthConstraint();
                            if (widthConstraint2 != null) {
                                int iD2 = ttVarG.d();
                                int iB2 = ttVarG.b();
                                ij0 ij0VarA2 = a(widthConstraint2);
                                Context context7 = getContext();
                                y45.i(context7, "getContext(...)");
                                ij0.d dVarA2 = ij0VarA2.a(context7, iC4, iD2, iB2);
                                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(dVarA2.b(), dVarA2.a());
                                layoutParams4.leftMargin = iC5;
                                layoutParams4.rightMargin = iA4;
                                layoutParams3 = layoutParams4;
                            }
                        }
                        getIconView().setLayoutParams(layoutParams3);
                        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(0, 0);
                        if (b91Var.e() && (rtVar = this.E) != null && (ttVarH2 = rtVar.h()) != null) {
                            layoutParams5 = new FrameLayout.LayoutParams(0, 0);
                            la1 widthConstraint3 = this.g.getImageAppearance().getWidthConstraint();
                            if (widthConstraint3 != null) {
                                int iD3 = ttVarH2.d();
                                int iB3 = ttVarH2.b();
                                ij0 ij0VarA3 = a(widthConstraint3);
                                Context context8 = getContext();
                                y45.i(context8, "getContext(...)");
                                ij0.d dVarA3 = ij0VarA3.a(context8, iC4, iD3, iB3);
                                layoutParams5 = new FrameLayout.LayoutParams(dVarA3.b(), dVarA3.a());
                                layoutParams5.leftMargin = iC5;
                                layoutParams5.rightMargin = iA4;
                            }
                        }
                        this.m.setLayoutParams(layoutParams5);
                        LinearLayout linearLayout2 = this.y;
                        if (linearLayout2 == null) {
                            y45.B("centerContainer");
                            linearLayout2 = null;
                        }
                        ViewGroup.LayoutParams layoutParams6 = linearLayout2.getLayoutParams();
                        y45.h(layoutParams6, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                        LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) layoutParams6;
                        layoutParams7.leftMargin = 0;
                        LinearLayout linearLayout3 = this.y;
                        if (linearLayout3 == null) {
                            y45.B("centerContainer");
                            linearLayout3 = null;
                        }
                        linearLayout3.setLayoutParams(layoutParams7);
                    } else {
                        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(0, 0);
                        getFaviconView().setLayoutParams(layoutParams8);
                        getIconView().setLayoutParams(layoutParams8);
                        this.m.setLayoutParams(layoutParams8);
                        LinearLayout linearLayout4 = this.y;
                        if (linearLayout4 == null) {
                            y45.B("centerContainer");
                            linearLayout4 = null;
                        }
                        ViewGroup.LayoutParams layoutParams9 = linearLayout4.getLayoutParams();
                        y45.h(layoutParams9, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                        LinearLayout.LayoutParams layoutParams10 = (LinearLayout.LayoutParams) layoutParams9;
                        layoutParams10.leftMargin = iA2;
                        LinearLayout linearLayout5 = this.y;
                        if (linearLayout5 == null) {
                            y45.B("centerContainer");
                            linearLayout5 = null;
                        }
                        linearLayout5.setLayoutParams(layoutParams10);
                    }
                }
            }
            LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(0, 0);
            if (b91Var.c()) {
                layoutParams11 = new LinearLayout.LayoutParams(0, 0);
                rt rtVar4 = this.E;
                if (rtVar4 != null && (ttVarH = rtVar4.h()) != null) {
                    int iD4 = ttVarH.d();
                    int iB4 = ttVarH.b();
                    y45.j(ttVarH, "image");
                    float fD = ttVarH.d();
                    float fB = ttVarH.b();
                    if (fB != 0.0f && fD / fB < 1.0f) {
                        iC2 = s86.c(iA * 0.75f);
                        iC = s86.c((iC2 / iB4) * iD4);
                    } else {
                        if (iD4 != 0) {
                            iB4 = s86.c(iB4 * (iA / iD4));
                        }
                        iC = iA;
                        iC2 = iB4;
                    }
                    y45.j(ttVarH, "image");
                    float fD2 = ttVarH.d();
                    float fB2 = ttVarH.b();
                    if (fB2 == 0.0f || fD2 / fB2 <= 1.5f) {
                        iC2 = s86.c(iC2 * 0.8f);
                    }
                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(iC, iC2);
                    m91 m91Var2 = this.F;
                    layoutParams12.topMargin = ((m91Var2 == null || !m91Var2.a()) && ((m91Var = this.F) == null || !m91Var.e())) ? 0 : this.d;
                    layoutParams12.gravity = 1;
                    layoutParams11 = layoutParams12;
                }
            }
            LinearLayout linearLayout6 = this.B;
            if (linearLayout6 == null) {
                y45.B("largeImageContainer");
                linearLayout6 = null;
            }
            linearLayout6.setLayoutParams(layoutParams11);
        }
        b91 b91Var2 = this.G;
        if (b91Var2 != null) {
            LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(0, 0);
            rt rtVar5 = this.E;
            xt xtVarI = rtVar5 != null ? rtVar5.i() : null;
            if (xtVarI != null && b91Var2.d()) {
                layoutParams13 = new LinearLayout.LayoutParams(iA, new gg(xtVarI.a()).a(iA));
            }
            LinearLayout linearLayout7 = this.D;
            if (linearLayout7 == null) {
                y45.B("mediaContainer");
                linearLayout7 = null;
            }
            linearLayout7.setLayoutParams(layoutParams13);
        }
        m91 m91Var3 = this.F;
        if (m91Var3 == null || !m91Var3.f()) {
            LinearLayout linearLayout8 = this.z;
            if (linearLayout8 == null) {
                y45.B("callToActionContainer");
                linearLayout8 = null;
            }
            linearLayout8.setLayoutParams(new LinearLayout.LayoutParams(0, 0));
        } else {
            m91 m91Var4 = this.F;
            if (m91Var4 == null || !m91Var4.h()) {
                LinearLayout linearLayout9 = this.z;
                if (linearLayout9 == null) {
                    y45.B("callToActionContainer");
                    linearLayout9 = null;
                }
                ViewParent parent = linearLayout9.getParent();
                y45.h(parent, "null cannot be cast to non-null type android.view.ViewManager");
                ViewManager viewManager = (ViewManager) parent;
                LinearLayout linearLayout10 = this.z;
                if (linearLayout10 == null) {
                    y45.B("callToActionContainer");
                    linearLayout10 = null;
                }
                viewManager.removeView(linearLayout10);
                LinearLayout linearLayout11 = this.z;
                if (linearLayout11 == null) {
                    y45.B("callToActionContainer");
                    linearLayout11 = null;
                }
                linearLayout11.setPadding(0, 0, 0, 0);
                LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(-1, -2);
                int i3 = this.e;
                layoutParams14.topMargin = i3;
                layoutParams14.bottomMargin = i3;
                ViewParent parent2 = getDomainView().getParent();
                y45.h(parent2, "null cannot be cast to non-null type android.view.ViewManager");
                ViewManager viewManager2 = (ViewManager) parent2;
                LinearLayout linearLayout12 = this.z;
                if (linearLayout12 == null) {
                    y45.B("callToActionContainer");
                    linearLayout12 = null;
                }
                viewManager2.addView(linearLayout12, layoutParams14);
            } else {
                LinearLayout linearLayout13 = this.z;
                if (linearLayout13 == null) {
                    y45.B("callToActionContainer");
                    linearLayout13 = null;
                }
                ViewParent parent3 = linearLayout13.getParent();
                y45.h(parent3, "null cannot be cast to non-null type android.view.ViewManager");
                ViewManager viewManager3 = (ViewManager) parent3;
                LinearLayout linearLayout14 = this.z;
                if (linearLayout14 == null) {
                    y45.B("callToActionContainer");
                    linearLayout14 = null;
                }
                viewManager3.removeView(linearLayout14);
                LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(-1, -2);
                m91 m91Var5 = this.F;
                if (m91Var5 == null || !m91Var5.c()) {
                    layoutParams15.topMargin = this.d;
                } else {
                    layoutParams15.topMargin = this.f;
                }
                layoutParams15.bottomMargin = this.e;
                LinearLayout linearLayout15 = this.z;
                if (linearLayout15 == null) {
                    y45.B("callToActionContainer");
                    linearLayout15 = null;
                }
                linearLayout15.setLayoutParams(layoutParams15);
                ia1 contentPadding2 = this.g.getBannerAppearance().getContentPadding();
                if (contentPadding2 != null) {
                    o10 o10Var7 = this.a;
                    Context context9 = getContext();
                    y45.i(context9, "getContext(...)");
                    float f5 = contentPadding2.getAndroidx.media3.extractor.text.ttml.TtmlNode.LEFT java.lang.String();
                    o10Var7.getClass();
                    int iA6 = o10.a(context9, f5);
                    o10 o10Var8 = this.a;
                    Context context10 = getContext();
                    y45.i(context10, "getContext(...)");
                    float f6 = contentPadding2.getAndroidx.media3.extractor.text.ttml.TtmlNode.RIGHT java.lang.String();
                    o10Var8.getClass();
                    int iA7 = o10.a(context10, f6);
                    LinearLayout linearLayout16 = this.z;
                    if (linearLayout16 == null) {
                        y45.B("callToActionContainer");
                        linearLayout16 = null;
                    }
                    linearLayout16.setPadding(iA6, 0, iA7, 0);
                    LinearLayout linearLayout17 = this.v;
                    if (linearLayout17 == null) {
                        y45.B("mainContainer");
                        linearLayout17 = null;
                    }
                    LinearLayout linearLayout18 = this.z;
                    if (linearLayout18 == null) {
                        y45.B("callToActionContainer");
                        linearLayout18 = null;
                    }
                    LinearLayout linearLayout19 = this.v;
                    if (linearLayout19 == null) {
                        y45.B("mainContainer");
                        linearLayout = null;
                    } else {
                        linearLayout = linearLayout19;
                    }
                    linearLayout17.addView(linearLayout18, linearLayout.getChildCount() - 1);
                }
            }
            m91 m91Var6 = this.F;
            getCallToActionView().setLayoutParams((m91Var6 == null || !m91Var6.g()) ? new LinearLayout.LayoutParams(-2, -2) : new LinearLayout.LayoutParams(-1, -2));
        }
        int iC6 = s86.c(iA * 0.4f);
        getCallToActionView().setMinWidth(iC6);
        getCallToActionView().setMinimumWidth(iC6);
        m91 m91Var7 = this.F;
        if (m91Var7 != null && m91Var7.i()) {
            TextView warningView = getWarningView();
            m91 m91Var8 = this.F;
            if (m91Var8 == null || !m91Var8.j()) {
                warningView.setBackgroundColor(wh2.a(warningView.getCurrentTextColor(), 92.0f));
            } else {
                warningView.setBackgroundColor(0);
            }
            getWarningView().setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        }
        super.onMeasure(i, i2);
    }

    public final void setAd(q61 q61Var) {
        y45.j(q61Var, "nativeAd");
        q61 q61Var2 = this.I;
        if (q61Var2 != q61Var) {
            if (q61Var2 != null) {
                try {
                    q61Var2.a(this.J);
                } catch (e61 e) {
                    sp0.b(new Object[0]);
                    this.c.reportError("Failed to set Native Ad", e);
                    return;
                }
            }
            q61Var.b(this.J);
            gr1 adType = q61Var.getAdType();
            rt adAssets = q61Var.getAdAssets();
            this.F = new m91(adAssets, adType);
            this.G = new b91(adAssets, adType);
            this.E = adAssets;
            Context context = getContext();
            y45.i(context, "getContext(...)");
            ra0 ra0Var = new ra0(context, adAssets, new sa0(adAssets, new li()));
            ImageView feedbackView = getFeedbackView();
            FrameLayout frameLayout = this.w;
            if (frameLayout == null) {
                y45.B("feedbackContainer");
                frameLayout = null;
            }
            ra0Var.a(feedbackView, frameLayout, this.f);
            this.b.getClass();
            q61Var.b(au.a(this));
            showContent();
            this.I = q61Var;
        }
    }

    @VisibleForTesting
    public final void showContent() {
        tt ttVarH;
        rt rtVar = this.E;
        LinearLayout linearLayout = null;
        int i = 0;
        if (rtVar != null && (ttVarH = rtVar.h()) != null) {
            if (this.G != null) {
                y45.j(ttVarH, "image");
                if (y45.e("fill", ttVarH.c())) {
                    ImageView imageView = this.u;
                    if (imageView == null) {
                        y45.B("adFoxView");
                        imageView = null;
                    }
                    imageView.setVisibility(0);
                    i = 8;
                }
            }
            if (this.G != null && b91.a(ttVarH)) {
                m91 m91Var = this.F;
                if (m91Var != null && !m91Var.a()) {
                    LinearLayout linearLayout2 = this.y;
                    if (linearLayout2 == null) {
                        y45.B("centerContainer");
                        linearLayout2 = null;
                    }
                    linearLayout2.setVisibility(8);
                }
                m91 m91Var2 = this.F;
                if (m91Var2 != null && !m91Var2.e()) {
                    LinearLayout linearLayout3 = this.x;
                    if (linearLayout3 == null) {
                        y45.B("topContainer");
                        linearLayout3 = null;
                    }
                    linearLayout3.setVisibility(8);
                }
            }
        }
        LinearLayout linearLayout4 = this.v;
        if (linearLayout4 == null) {
            y45.B("mainContainer");
        } else {
            linearLayout = linearLayout4;
        }
        linearLayout.setVisibility(i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public zt(Context context, AttributeSet attributeSet, int i, fu fuVar, t92 t92Var, ie ieVar, o10 o10Var) {
        this(context, attributeSet, i, fuVar, t92Var, ieVar, o10Var, null, null, RendererCapabilities.DECODER_SUPPORT_MASK, null);
        y45.j(context, "context");
        y45.j(fuVar, "defaultTemplateAppearance");
        y45.j(t92Var, "varioqubAdapterProvider");
        y45.j(ieVar, "appAdAnalyticsActivator");
        y45.j(o10Var, "dimensionConverter");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public zt(Context context, AttributeSet attributeSet, int i, fu fuVar, t92 t92Var, ie ieVar, o10 o10Var, au auVar) {
        this(context, attributeSet, i, fuVar, t92Var, ieVar, o10Var, auVar, null, 256, null);
        y45.j(context, "context");
        y45.j(fuVar, "defaultTemplateAppearance");
        y45.j(t92Var, "varioqubAdapterProvider");
        y45.j(ieVar, "appAdAnalyticsActivator");
        y45.j(o10Var, "dimensionConverter");
        y45.j(auVar, "coreNativeBannerViewAdapter");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zt(Context context, AttributeSet attributeSet, int i, fu fuVar, t92 t92Var, ie ieVar, o10 o10Var, au auVar, sp1 sp1Var) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        y45.j(fuVar, "defaultTemplateAppearance");
        y45.j(t92Var, "varioqubAdapterProvider");
        y45.j(ieVar, "appAdAnalyticsActivator");
        y45.j(o10Var, "dimensionConverter");
        y45.j(auVar, "coreNativeBannerViewAdapter");
        y45.j(sp1Var, "reporter");
        this.a = o10Var;
        this.b = auVar;
        this.c = sp1Var;
        Context context2 = getContext();
        y45.i(context2, "getContext(...)");
        o10Var.getClass();
        this.d = o10.a(context2, 4.0f);
        Context context3 = getContext();
        y45.i(context3, "getContext(...)");
        this.e = o10.a(context3, 8.0f);
        Context context4 = getContext();
        y45.i(context4, "getContext(...)");
        this.f = o10.a(context4, 12.0f);
        this.g = fuVar;
        this.m = c();
        this.J = new b();
        b();
    }

    public zt(Context context, AttributeSet attributeSet, int i, fu fuVar, t92 t92Var, ie ieVar, o10 o10Var, au auVar, sp1 sp1Var, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, i, fuVar, t92Var, ieVar, (i2 & 64) != 0 ? new o10() : o10Var, (i2 & 128) != 0 ? new au() : auVar, (i2 & 256) != 0 ? nd.a(context, t92Var, ieVar) : sp1Var);
    }

    private static ij0 a(la1 la1Var) {
        la1.a b2 = la1Var.getSizeConstraintType().getB();
        int i = b2 == null ? -1 : a.a[b2.ordinal()];
        if (i == 1) {
            return new ij0.a(la1Var.getOrg.mozilla.javascript.ES6Iterator.VALUE_PROPERTY java.lang.String());
        }
        if (i == 2) {
            return new ij0.b(la1Var.getOrg.mozilla.javascript.ES6Iterator.VALUE_PROPERTY java.lang.String());
        }
        if (i != 3) {
            return new ij0.c(la1Var.getOrg.mozilla.javascript.ES6Iterator.VALUE_PROPERTY java.lang.String());
        }
        return new ij0.c(la1Var.getOrg.mozilla.javascript.ES6Iterator.VALUE_PROPERTY java.lang.String());
    }
}
