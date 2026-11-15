package com.hunantv.media.widget.extra;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.hunantv.media.a.a;
import com.hunantv.media.a.b;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.subtitle.SubtitleConfig;
import com.hunantv.media.player.subtitle.c;
import com.hunantv.media.player.subtitle.d;
import com.hunantv.media.utils.Util;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public final class SubtitleView extends View implements d.c {
    public static final float DEFAULT_BOTTOM_PADDING_FRACTION = 0.01f;
    public static final float DEFAULT_TEXT_SIZE_FRACTION = 0.04f;
    private static final String TAG = "SubtitleView";
    private boolean applyEmbeddedFontSizes;
    private boolean applyEmbeddedStyles;
    private float bottomPaddingFraction;
    private List<b> cues;
    private final List<SubtitlePainter> painters;
    private a style;
    private SubtitleConfig subtitleConfig;
    private float textSize;
    private int textSizeType;

    public SubtitleView(Context context) {
        this(context, null);
    }

    @TargetApi(19)
    private float getUserCaptionFontScaleV19() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).getFontScale();
    }

    @TargetApi(19)
    private a getUserCaptionStyleV19() {
        return a.a(((CaptioningManager) getContext().getSystemService("captioning")).getUserStyle());
    }

    @TargetApi(19)
    private boolean isCaptionManagerEnabled() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).isEnabled();
    }

    private float resolveCueTextSize(b bVar, int i, int i2) {
        int i3 = bVar.m;
        if (i3 != Integer.MIN_VALUE) {
            float f = bVar.n;
            if (f != Float.MIN_VALUE) {
                return Math.max(resolveTextSize(i3, f, i, i2), 0.0f);
            }
        }
        return 0.0f;
    }

    private float resolveTextSize(int i, float f, int i2, int i3) {
        float f2;
        if (i == 0) {
            f2 = i3;
        } else {
            if (i != 1) {
                if (i != 2) {
                    return Float.MIN_VALUE;
                }
                return f;
            }
            f2 = i2;
        }
        return f * f2;
    }

    private void setTextSize(int i, float f) {
        if (this.textSizeType == i && this.textSize == f) {
            return;
        }
        this.textSizeType = i;
        this.textSize = f;
        invalidate();
    }

    public void clear() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b(""));
        setCues(arrayList);
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        List<b> list = this.cues;
        int i = 0;
        int size = list == null ? 0 : list.size();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i2 = paddingBottom - paddingTop;
        SubtitleConfig subtitleConfig = this.subtitleConfig;
        if (subtitleConfig != null) {
            float f = subtitleConfig.textSizeRatio;
            if (f > 0.0f) {
                this.textSize = f;
            }
            float f2 = subtitleConfig.paddingBottomRatio;
            if (f2 > 0.0f) {
                this.bottomPaddingFraction = f2;
            }
            int i3 = subtitleConfig.textColor;
            if (i3 != -1) {
                this.style.b = i3;
            }
            int i4 = subtitleConfig.backgroundColor;
            if (i4 != -1) {
                this.style.c = i4;
            }
        }
        float fResolveTextSize = resolveTextSize(this.textSizeType, this.textSize, height, i2);
        if (fResolveTextSize <= 0.0f) {
            return;
        }
        while (i < size) {
            b bVar = this.cues.get(i);
            int i5 = paddingBottom;
            int i6 = width;
            this.painters.get(i).draw(bVar, this.applyEmbeddedStyles, this.applyEmbeddedFontSizes, this.style, fResolveTextSize, resolveCueTextSize(bVar, height, i2), this.bottomPaddingFraction, canvas, paddingLeft, paddingTop, i6, i5);
            i++;
            i2 = i2;
            paddingBottom = i5;
            width = i6;
            paddingLeft = paddingLeft;
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void onCues(List<b> list) {
        setCues(list);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    public void setActiveCues(Vector<d.a> vector) {
        String[] strArr;
        int size = vector.size();
        ArrayList arrayList = new ArrayList();
        String str = "";
        for (int i = 0; i < size; i++) {
            com.hunantv.media.player.subtitle.a.b bVar = (com.hunantv.media.player.subtitle.a.b) vector.get(i);
            if (bVar != null && (strArr = bVar.p) != null) {
                for (String str2 : strArr) {
                    str = "".equals(str) ? str2 : str + "\n" + str2;
                }
            }
        }
        c.a(AuthInfo.Component.CODE_SUBTITLE, str);
        arrayList.add(new b(str));
        onCues(arrayList);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        if (this.applyEmbeddedFontSizes == z) {
            return;
        }
        this.applyEmbeddedFontSizes = z;
        invalidate();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        if (this.applyEmbeddedStyles == z && this.applyEmbeddedFontSizes == z) {
            return;
        }
        this.applyEmbeddedStyles = z;
        this.applyEmbeddedFontSizes = z;
        invalidate();
    }

    public void setBottomPaddingFraction(float f) {
        if (this.bottomPaddingFraction == f) {
            return;
        }
        this.bottomPaddingFraction = f;
        invalidate();
    }

    public void setCues(@Nullable List<b> list) {
        if (this.cues == list) {
            return;
        }
        this.cues = list;
        int size = list == null ? 0 : list.size();
        while (this.painters.size() < size) {
            this.painters.add(new SubtitlePainter(getContext()));
        }
        invalidate();
    }

    public void setFixedTextSize(int i, float f) {
        Context context = getContext();
        setTextSize(2, TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public void setFractionalTextSize(float f) {
        setFractionalTextSize(f, false);
    }

    public void setOnChangedListener(d.c.a aVar) {
    }

    public void setSize(int i, int i2) {
    }

    public void setStyle(a aVar) {
        if (this.style == aVar) {
            return;
        }
        this.style = aVar;
        invalidate();
    }

    public void setSubtitleConfig(SubtitleConfig subtitleConfig) {
        DebugLog.i(TAG, subtitleConfig + "");
        this.subtitleConfig = subtitleConfig;
    }

    public void setUserDefaultStyle() {
        setStyle((Util.SDK_INT < 19 || !isCaptionManagerEnabled() || isInEditMode()) ? a.a : getUserCaptionStyleV19());
    }

    public void setUserDefaultTextSize() {
        setFractionalTextSize(((Util.SDK_INT < 19 || isInEditMode()) ? 1.0f : getUserCaptionFontScaleV19()) * 0.04f);
    }

    @Override
    public void setVisible(boolean z) {
        setVisibility(z ? 0 : 4);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.painters = new ArrayList();
        this.textSizeType = 0;
        this.textSize = 0.04f;
        this.applyEmbeddedStyles = true;
        this.applyEmbeddedFontSizes = true;
        this.style = new a(-1, 2130706432, 0, 0, -1, null);
        this.bottomPaddingFraction = 0.01f;
    }

    public void setFractionalTextSize(float f, boolean z) {
        setTextSize(z ? 1 : 0, f);
    }
}
