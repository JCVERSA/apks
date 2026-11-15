package com.hunantv.media.widget.extra;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.util.Log;
import com.hunantv.media.a.a;
import com.hunantv.media.a.b;
import com.hunantv.media.utils.Util;

final class SubtitlePainter {
    private static final float INNER_PADDING_RATIO = 0.125f;
    private static final String TAG = "SubtitlePainter";
    private boolean applyEmbeddedFontSizes;
    private boolean applyEmbeddedStyles;
    private int backgroundColor;
    private Rect bitmapRect;
    private float bottomPaddingFraction;
    private Bitmap cueBitmap;
    private float cueBitmapHeight;
    private float cueLine;
    private int cueLineAnchor;
    private int cueLineType;
    private float cuePosition;
    private int cuePositionAnchor;
    private float cueSize;
    private CharSequence cueText;
    private Layout.Alignment cueTextAlignment;
    private float cueTextSizePx;
    private float defaultTextSizePx;
    private int edgeColor;
    private int edgeType;
    private int foregroundColor;
    private final float outlineWidth;
    private final Paint paint;
    private int parentBottom;
    private int parentLeft;
    private int parentRight;
    private int parentTop;
    private final float shadowOffset;
    private final float shadowRadius;
    private final float spacingAdd;
    private final float spacingMult;
    private StaticLayout textLayout;
    private int textLeft;
    private int textPaddingX;
    private final TextPaint textPaint;
    private int textTop;
    private int windowColor;

    public SubtitlePainter(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.spacingAdd = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.spacingMult = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.outlineWidth = fRound;
        this.shadowRadius = fRound;
        this.shadowOffset = fRound;
        TextPaint textPaint = new TextPaint();
        this.textPaint = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
    }

    private static boolean areCharSequencesEqual(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    private void drawBitmapLayout(Canvas canvas) {
        canvas.drawBitmap(this.cueBitmap, (Rect) null, this.bitmapRect, (Paint) null);
    }

    private void drawLayout(Canvas canvas, boolean z) {
        if (z) {
            drawTextLayout(canvas);
        } else {
            drawBitmapLayout(canvas);
        }
    }

    private void drawTextLayout(Canvas canvas) {
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.textLeft, this.textTop);
        if (Color.alpha(this.windowColor) > 0) {
            this.paint.setColor(this.windowColor);
            canvas.drawRect(-this.textPaddingX, 0.0f, staticLayout.getWidth() + this.textPaddingX, staticLayout.getHeight(), this.paint);
        }
        int i = this.edgeType;
        if (i == 1) {
            this.textPaint.setStrokeJoin(Paint.Join.ROUND);
            this.textPaint.setStrokeWidth(this.outlineWidth);
            this.textPaint.setColor(this.edgeColor);
            this.textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout.draw(canvas);
        } else if (i == 2) {
            TextPaint textPaint = this.textPaint;
            float f = this.shadowRadius;
            float f2 = this.shadowOffset;
            textPaint.setShadowLayer(f, f2, f2, this.edgeColor);
        } else if (i == 3 || i == 4) {
            boolean z = i == 3;
            int i2 = z ? -1 : this.edgeColor;
            int i3 = z ? this.edgeColor : -1;
            float f3 = this.shadowRadius / 2.0f;
            this.textPaint.setColor(this.foregroundColor);
            this.textPaint.setStyle(Paint.Style.FILL);
            float f4 = -f3;
            this.textPaint.setShadowLayer(this.shadowRadius, f4, f4, i2);
            staticLayout.draw(canvas);
            this.textPaint.setShadowLayer(this.shadowRadius, f3, f3, i3);
        }
        this.textPaint.setColor(this.foregroundColor);
        this.textPaint.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0052  */
    /* JADX WARN: Code duplicated, block: B:16:0x0055 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0057  */
    private void setupBitmapLayout() {
        float f;
        int i;
        float f2;
        int i2 = this.parentRight;
        int i3 = this.parentLeft;
        int i4 = this.parentBottom;
        int i5 = this.parentTop;
        float f3 = i2 - i3;
        float f4 = i3 + (this.cuePosition * f3);
        float f5 = i4 - i5;
        float f6 = i5 + (this.cueLine * f5);
        int iRound = Math.round(f3 * this.cueSize);
        float height = this.cueBitmapHeight;
        if (height == Float.MIN_VALUE) {
            f5 = iRound;
            height = this.cueBitmap.getHeight() / this.cueBitmap.getWidth();
        }
        int iRound2 = Math.round(f5 * height);
        int i6 = this.cueLineAnchor;
        if (i6 != 2) {
            if (i6 == 1) {
                f = iRound / 2;
            }
            int iRound3 = Math.round(f4);
            i = this.cuePositionAnchor;
            if (i == 2) {
                if (i == 1) {
                    f2 = iRound2 / 2;
                }
                int iRound4 = Math.round(f6);
                this.bitmapRect = new Rect(iRound3, iRound4, iRound + iRound3, iRound2 + iRound4);
            }
            f2 = iRound2;
            f6 -= f2;
            int iRound5 = Math.round(f6);
            this.bitmapRect = new Rect(iRound3, iRound5, iRound + iRound3, iRound2 + iRound5);
        }
        f = iRound;
        f4 -= f;
        int iRound6 = Math.round(f4);
        i = this.cuePositionAnchor;
        if (i == 2) {
            if (i == 1) {
                f2 = iRound2 / 2;
            }
            int iRound7 = Math.round(f6);
            this.bitmapRect = new Rect(iRound6, iRound7, iRound + iRound6, iRound2 + iRound7);
        }
        f2 = iRound2;
        f6 -= f2;
        int iRound8 = Math.round(f6);
        this.bitmapRect = new Rect(iRound6, iRound8, iRound + iRound6, iRound2 + iRound8);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0182  */
    /* JADX WARN: Code duplicated, block: B:66:0x0184 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x0186  */
    /* JADX WARN: Code duplicated, block: B:70:0x0190  */
    /* JADX WARN: Code duplicated, block: B:71:0x0193  */
    /* JADX WARN: Code duplicated, block: B:73:0x0197  */
    private void setupTextLayout() {
        SpannableStringBuilder spannableStringBuilder;
        CharSequence charSequence;
        int iMax;
        int iMin;
        int i;
        int iRound;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = this.parentRight - this.parentLeft;
        int i8 = this.parentBottom - this.parentTop;
        this.textPaint.setTextSize(this.defaultTextSizePx);
        int i9 = (int) ((this.defaultTextSizePx * INNER_PADDING_RATIO) + 0.5f);
        int i10 = i9 * 2;
        int i11 = i7 - i10;
        float f = this.cueSize;
        if (f != Float.MIN_VALUE) {
            i11 = (int) (i11 * f);
        }
        if (i11 <= 0) {
            Log.w(TAG, "Skipped drawing subtitle cue (insufficient space)");
            return;
        }
        CharSequence string = this.cueText;
        if (this.applyEmbeddedStyles) {
            if (!this.applyEmbeddedFontSizes) {
                spannableStringBuilder = new SpannableStringBuilder(string);
                int length = spannableStringBuilder.length();
                AbsoluteSizeSpan[] absoluteSizeSpanArr = (AbsoluteSizeSpan[]) spannableStringBuilder.getSpans(0, length, AbsoluteSizeSpan.class);
                RelativeSizeSpan[] relativeSizeSpanArr = (RelativeSizeSpan[]) spannableStringBuilder.getSpans(0, length, RelativeSizeSpan.class);
                for (AbsoluteSizeSpan absoluteSizeSpan : absoluteSizeSpanArr) {
                    spannableStringBuilder.removeSpan(absoluteSizeSpan);
                }
                for (RelativeSizeSpan relativeSizeSpan : relativeSizeSpanArr) {
                    spannableStringBuilder.removeSpan(relativeSizeSpan);
                }
            } else if (this.cueTextSizePx > 0.0f) {
                spannableStringBuilder = new SpannableStringBuilder(string);
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) this.cueTextSizePx), 0, spannableStringBuilder.length(), 16711680);
            }
            string = spannableStringBuilder;
        } else {
            string = string.toString();
        }
        if (Color.alpha(this.backgroundColor) > 0) {
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(string);
            spannableStringBuilder2.setSpan(new BackgroundColorSpan(this.backgroundColor), 0, spannableStringBuilder2.length(), 16711680);
            charSequence = spannableStringBuilder2;
        } else {
            charSequence = string;
        }
        Layout.Alignment alignment = this.cueTextAlignment;
        if (alignment == null) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        }
        Layout.Alignment alignment2 = alignment;
        StaticLayout staticLayout = new StaticLayout(charSequence, this.textPaint, i11, alignment2, this.spacingMult, this.spacingAdd, true);
        this.textLayout = staticLayout;
        int height = staticLayout.getHeight();
        int lineCount = this.textLayout.getLineCount();
        int iMax2 = 0;
        for (int i12 = 0; i12 < lineCount; i12++) {
            iMax2 = Math.max((int) Math.ceil(this.textLayout.getLineWidth(i12)), iMax2);
        }
        if (this.cueSize == Float.MIN_VALUE || iMax2 >= i11) {
            i11 = iMax2;
        }
        int i13 = i11 + i10;
        float f2 = this.cuePosition;
        if (f2 != Float.MIN_VALUE) {
            int iRound2 = Math.round(i7 * f2);
            int i14 = this.parentLeft;
            int i15 = iRound2 + i14;
            int i16 = this.cuePositionAnchor;
            if (i16 == 2) {
                i15 -= i13;
            } else if (i16 == 1) {
                i15 = ((i15 * 2) - i13) / 2;
            }
            iMax = Math.max(i15, i14);
            iMin = Math.min(i13 + iMax, this.parentRight);
        } else {
            iMax = ((i7 - i13) / 2) + this.parentLeft;
            iMin = iMax + i13;
        }
        int i17 = iMin - iMax;
        if (i17 <= 0) {
            Log.w(TAG, "Skipped drawing subtitle cue (invalid horizontal positioning)");
            return;
        }
        float f3 = this.cueLine;
        if (f3 != Float.MIN_VALUE) {
            if (this.cueLineType == 0) {
                iRound = Math.round(i8 * f3);
            } else {
                int lineBottom = this.textLayout.getLineBottom(0) - this.textLayout.getLineTop(0);
                float f4 = this.cueLine;
                if (f4 >= 0.0f) {
                    iRound = Math.round(f4 * lineBottom);
                } else {
                    iRound = Math.round((f4 + 1.0f) * lineBottom);
                    i2 = this.parentBottom;
                }
                i = iRound + i2;
                i3 = this.cueLineAnchor;
                if (i3 == 2) {
                    i -= height;
                } else if (i3 == 1) {
                    i = ((i * 2) - height) / 2;
                }
                i4 = i + height;
                i5 = this.parentBottom;
                if (i4 > i5) {
                    i = i5 - height;
                } else {
                    i6 = this.parentTop;
                    if (i < i6) {
                        i = i6;
                    }
                }
            }
            i2 = this.parentTop;
            i = iRound + i2;
            i3 = this.cueLineAnchor;
            if (i3 == 2) {
                i -= height;
            } else if (i3 == 1) {
                i = ((i * 2) - height) / 2;
            }
            i4 = i + height;
            i5 = this.parentBottom;
            if (i4 > i5) {
                i = i5 - height;
            } else {
                i6 = this.parentTop;
                if (i < i6) {
                    i = i6;
                }
            }
        } else {
            i = (this.parentBottom - height) - ((int) (i8 * this.bottomPaddingFraction));
        }
        this.textLayout = new StaticLayout(charSequence, this.textPaint, i17, alignment2, this.spacingMult, this.spacingAdd, true);
        this.textLeft = iMax;
        this.textTop = i;
        this.textPaddingX = i9;
    }

    public void draw(b bVar, boolean z, boolean z2, a aVar, float f, float f2, float f3, Canvas canvas, int i, int i2, int i3, int i4) {
        int i5;
        boolean z3 = bVar.c == null;
        if (!z3) {
            i5 = -16777216;
        } else if (TextUtils.isEmpty(bVar.a)) {
            return;
        } else {
            i5 = (bVar.k && z) ? bVar.l : aVar.d;
        }
        if (areCharSequencesEqual(this.cueText, bVar.a) && Util.areEqual(this.cueTextAlignment, bVar.b) && this.cueBitmap == bVar.c && this.cueLine == bVar.d && this.cueLineType == bVar.e && Util.areEqual(Integer.valueOf(this.cueLineAnchor), Integer.valueOf(bVar.f)) && this.cuePosition == bVar.g && Util.areEqual(Integer.valueOf(this.cuePositionAnchor), Integer.valueOf(bVar.h)) && this.cueSize == bVar.i && this.cueBitmapHeight == bVar.j && this.applyEmbeddedStyles == z && this.applyEmbeddedFontSizes == z2 && this.foregroundColor == aVar.b && this.backgroundColor == aVar.c && this.windowColor == i5 && this.edgeType == aVar.e && this.edgeColor == aVar.f && Util.areEqual(this.textPaint.getTypeface(), aVar.g) && this.defaultTextSizePx == f && this.cueTextSizePx == f2 && this.bottomPaddingFraction == f3 && this.parentLeft == i && this.parentTop == i2 && this.parentRight == i3 && this.parentBottom == i4) {
            drawLayout(canvas, z3);
            return;
        }
        this.cueText = bVar.a;
        this.cueTextAlignment = bVar.b;
        this.cueBitmap = bVar.c;
        this.cueLine = bVar.d;
        this.cueLineType = bVar.e;
        this.cueLineAnchor = bVar.f;
        this.cuePosition = bVar.g;
        this.cuePositionAnchor = bVar.h;
        this.cueSize = bVar.i;
        this.cueBitmapHeight = bVar.j;
        this.applyEmbeddedStyles = z;
        this.applyEmbeddedFontSizes = z2;
        this.foregroundColor = aVar.b;
        this.backgroundColor = aVar.c;
        this.windowColor = i5;
        this.edgeType = aVar.e;
        this.edgeColor = aVar.f;
        this.textPaint.setTypeface(aVar.g);
        this.defaultTextSizePx = f;
        this.cueTextSizePx = f2;
        this.bottomPaddingFraction = f3;
        this.parentLeft = i;
        this.parentTop = i2;
        this.parentRight = i3;
        this.parentBottom = i4;
        if (z3) {
            setupTextLayout();
        } else {
            setupBitmapLayout();
        }
        drawLayout(canvas, z3);
    }
}
