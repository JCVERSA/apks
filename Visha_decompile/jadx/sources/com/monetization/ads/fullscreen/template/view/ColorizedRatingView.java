package com.monetization.ads.fullscreen.template.view;

import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import com.yandex.mobile.ads.impl.pn1;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/monetization/ads/fullscreen/template/view/ColorizedRatingView;", "Lcom/yandex/mobile/ads/impl/pn1;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/graphics/drawable/Drawable;", "drawable", "Lzfb;", "setProgressDrawable", "(Landroid/graphics/drawable/Drawable;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class ColorizedRatingView extends pn1 {
    private static final int a = Color.parseColor("#FFF4C900");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorizedRatingView(Context context) {
        super(context);
        y45.j(context, "context");
    }

    @Override
    public void setProgressDrawable(Drawable drawable) {
        super.setProgressDrawable(drawable);
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) progressDrawable;
            if (layerDrawable.getNumberOfLayers() >= 3) {
                Drawable drawable2 = layerDrawable.getDrawable(0);
                y45.g(drawable2);
                BlendMode blendMode = BlendMode.SRC_ATOP;
                drawable2.setColorFilter(new BlendModeColorFilter(-3355444, blendMode));
                Drawable drawable3 = layerDrawable.getDrawable(1);
                y45.g(drawable3);
                int i = a;
                drawable3.setColorFilter(new BlendModeColorFilter(i, blendMode));
                Drawable drawable4 = layerDrawable.getDrawable(2);
                y45.g(drawable4);
                drawable4.setColorFilter(new BlendModeColorFilter(i, blendMode));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorizedRatingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorizedRatingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
    }
}
