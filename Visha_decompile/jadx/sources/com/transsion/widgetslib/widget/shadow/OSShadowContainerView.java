package com.transsion.widgetslib.widget.shadow;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import defpackage.g1a;
import defpackage.olb;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u0000 72\u00020\u0001:\u0001 B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ7\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00112\b\b\u0001\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00112\b\b\u0001\u0010\u0019\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\u0016J\u0015\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b\u001c\u0010\u0016J\u000f\u0010\u001d\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001f\u0010\u001eJ\u000f\u0010 \u001a\u00020\u0011H\u0002¢\u0006\u0004\b \u0010\u001eR\u0014\u0010#\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\"R\u0016\u0010%\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010$R\u0016\u0010'\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010$R\u0016\u0010*\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010,\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010$R\u0016\u0010.\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010$R\u0016\u00100\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010$R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010$R\u0016\u00104\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010$R\u0016\u00106\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010$¨\u00068"}, d2 = {"Lcom/transsion/widgetslib/widget/shadow/OSShadowContainerView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "Lzfb;", "onLayout", "(ZIIII)V", "corner", "setShadowCorner", "(I)V", MediaFormat.KEY_LEVEL, "setShadowLevel", "shadowColor", "setShadowColor", "dy", "setShadowDy", "b", "()V", "c", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Landroid/graphics/RectF;", "Landroid/graphics/RectF;", "mRectF", "I", "mCorner", "d", "mCurrentLevel", "e", "Z", "mIsHios", "f", "mShadowColor", GslbInterceptor.HEADER_KEY_GSLB, "mShadowRadius", CmcdData.STREAMING_FORMAT_HLS, "mShadowDy", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "mPaddingHor", "j", "mPaddingTop", "k", "mPaddingBottom", "Companion", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSShadowContainerView extends FrameLayout {
    public static final int SHADOW_LEVEL1 = 0;
    public static final int SHADOW_LEVEL2 = 1;
    public static final int SHADOW_LEVEL3 = 2;
    public static final int SHADOW_LEVEL4 = 3;
    public static final int SHADOW_LEVEL_IMAGE_1 = 4;
    public static final int SHADOW_LEVEL_IMAGE_2 = 5;
    public static final int SHADOW_LEVEL_IMAGE_3 = 6;
    public static final int SHADOW_LEVEL_IMAGE_4 = 7;
    public static final int os_shadow_high = 3;
    public static final int os_shadow_low = 1;
    public static final int os_shadow_lowest = 0;
    public static final int os_shadow_medium = 2;
    public static final int os_shadow_pic_high = 7;
    public static final int os_shadow_pic_low = 5;
    public static final int os_shadow_pic_lowest = 4;
    public static final int os_shadow_pic_medium = 6;

    public final RectF mRectF;

    public int mCorner;

    public int mCurrentLevel;

    public boolean mIsHios;

    public int mShadowColor;

    public int mShadowRadius;

    public int mShadowDy;

    public int mPaddingHor;

    public int mPaddingTop;

    public int mPaddingBottom;

    public static final class b extends ViewOutlineProvider {
        public b() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            y45.j(view, "view");
            y45.j(outline, "outline");
            outline.setRoundRect((int) OSShadowContainerView.this.mRectF.left, (int) OSShadowContainerView.this.mRectF.top, (int) OSShadowContainerView.this.mRectF.right, (int) OSShadowContainerView.this.mRectF.bottom, OSShadowContainerView.this.mCorner);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSShadowContainerView(Context context) {
        this(context, null, 0, 0, 14, null);
        y45.j(context, "context");
    }

    public final void a() {
        setElevation(this.mShadowDy + (this.mShadowRadius * 0.5f));
        setOutlineSpotShadowColor(this.mShadowColor);
        setOutlineAmbientShadowColor(Color.argb(Color.alpha(this.mShadowColor) / 3, Color.red(this.mShadowColor), Color.green(this.mShadowColor), Color.blue(this.mShadowColor)));
    }

    public final void b() {
        switch (this.mCurrentLevel) {
            case 0:
                this.mShadowColor = this.mIsHios ? getContext().getColor(R.color.os_shadow_color_level1_hios) : getContext().getColor(R.color.os_shadow_color_level1_xos);
                this.mShadowRadius = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_radius_level1);
                this.mShadowDy = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_dy_level1);
                this.mPaddingHor = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_hor_inset_level1);
                this.mPaddingTop = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_top_level1);
                this.mPaddingBottom = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_bottom_level1);
                break;
            case 1:
                this.mShadowColor = this.mIsHios ? getContext().getColor(R.color.os_shadow_color_level2_hios) : getContext().getColor(R.color.os_shadow_color_level2_xos);
                this.mShadowRadius = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_radius_level2);
                this.mShadowDy = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_dy_level2);
                this.mPaddingHor = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_hor_inset_level2);
                this.mPaddingTop = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_top_level2);
                this.mPaddingBottom = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_bottom_level2);
                break;
            case 2:
                this.mShadowColor = this.mIsHios ? getContext().getColor(R.color.os_shadow_color_level3_hios) : getContext().getColor(R.color.os_shadow_color_level3_xos);
                this.mShadowRadius = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_radius_level3);
                this.mShadowDy = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_dy_level3);
                this.mPaddingHor = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_hor_inset_level3);
                this.mPaddingTop = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_top_level3);
                this.mPaddingBottom = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_bottom_level3);
                break;
            case 3:
                this.mShadowColor = this.mIsHios ? getContext().getColor(R.color.os_shadow_color_level4_hios) : getContext().getColor(R.color.os_shadow_color_level4_xos);
                this.mShadowRadius = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_radius_level4);
                this.mShadowDy = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_dy_level4);
                this.mPaddingHor = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_hor_inset_level4);
                this.mPaddingTop = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_top_level4);
                this.mPaddingBottom = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_bottom_level4);
                break;
            case 4:
                this.mShadowColor = getContext().getColor(R.color.os_shadow_image_color_level1);
                this.mShadowRadius = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_radius_level1);
                this.mShadowDy = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_dy_level1);
                this.mPaddingHor = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_hor_inset_level1);
                this.mPaddingTop = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_top_level1);
                this.mPaddingBottom = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_bottom_level1);
                break;
            case 5:
                this.mShadowColor = getContext().getColor(R.color.os_shadow_image_color_level2);
                this.mShadowRadius = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_radius_level2);
                this.mShadowDy = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_dy_level2);
                this.mPaddingHor = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_hor_inset_level2);
                this.mPaddingTop = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_top_level2);
                this.mPaddingBottom = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_bottom_level2);
                break;
            case 6:
                this.mShadowColor = getContext().getColor(R.color.os_shadow_image_color_level3);
                this.mShadowRadius = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_radius_level3);
                this.mShadowDy = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_dy_level3);
                this.mPaddingHor = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_hor_inset_level3);
                this.mPaddingTop = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_top_level3);
                this.mPaddingBottom = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_bottom_level3);
                break;
            case 7:
                this.mShadowColor = getContext().getColor(R.color.os_shadow_image_color_level4);
                this.mShadowRadius = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_radius_level4);
                this.mShadowDy = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_dy_level4);
                this.mPaddingHor = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_hor_inset_level4);
                this.mPaddingTop = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_top_level4);
                this.mPaddingBottom = getContext().getResources().getDimensionPixelSize(R.dimen.os_shadow_ver_inset_bottom_level4);
                break;
        }
    }

    public final void c() {
        setOutlineProvider(new b());
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        View childAt = getChildAt(0);
        if (childAt != null) {
            this.mRectF.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
        }
        if (changed) {
            invalidateOutline();
        }
    }

    public final void setShadowColor(@ColorInt int shadowColor) {
        if (this.mShadowColor == shadowColor) {
            return;
        }
        this.mShadowColor = shadowColor;
        a();
        invalidate();
    }

    public final void setShadowCorner(int corner) {
        if (this.mCorner == corner) {
            return;
        }
        this.mCorner = corner;
        invalidateOutline();
        invalidate();
    }

    public final void setShadowDy(int dy) {
        this.mShadowDy = dy;
        a();
        invalidate();
    }

    public final void setShadowLevel(int level) {
        if (level == this.mCurrentLevel) {
            return;
        }
        this.mCurrentLevel = level;
        b();
        a();
        int i = this.mPaddingHor;
        setPadding(i, this.mPaddingTop, i, this.mPaddingBottom);
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSShadowContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSShadowContainerView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        y45.j(context, "context");
    }

    public OSShadowContainerView(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSShadowContainerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
        this.mRectF = new RectF();
        this.mCurrentLevel = 1;
        this.mIsHios = g1a.E(olb.a[0], olb.getOsType(), true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSShadowStyle);
        y45.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr….styleable.OSShadowStyle)");
        this.mCurrentLevel = typedArrayObtainStyledAttributes.getInteger(R.styleable.OSShadowStyle_os_shadow_level, 1);
        this.mCorner = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSShadowStyle_os_shadow_corner, 0);
        typedArrayObtainStyledAttributes.recycle();
        b();
        c();
        a();
        int i3 = this.mPaddingHor;
        setPadding(i3, this.mPaddingTop, i3, this.mPaddingBottom);
    }
}
