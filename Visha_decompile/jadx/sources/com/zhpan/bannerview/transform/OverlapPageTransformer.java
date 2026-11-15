package com.zhpan.bannerview.transform;

import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.tz4;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@RequiresApi(api = 21)
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/zhpan/bannerview/transform/OverlapPageTransformer;", "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;", "", "orientation", "", "minScale", "unSelectedItemRotation", "unSelectedItemAlpha", "itemGap", MethodDecl.initName, "(IFFFF)V", "Landroid/view/View;", "page", "position", "Lzfb;", "transformPage", "(Landroid/view/View;F)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "I", "b", "F", "c", "d", "e", "f", "scalingValue", "bannerview_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OverlapPageTransformer implements ViewPager2.PageTransformer {

    public final int orientation;

    public final float minScale;

    public final float unSelectedItemRotation;

    public final float unSelectedItemAlpha;

    public final float itemGap;

    public float scalingValue;

    public OverlapPageTransformer(int i, float f, float f2, float f3, float f4) {
        this.orientation = i;
        this.minScale = f;
        this.unSelectedItemRotation = f2;
        this.unSelectedItemAlpha = f3;
        this.itemGap = f4;
        if (0.0f > f || f > 1.0f) {
            throw new IllegalArgumentException("minScale value should be between 1.0 to 0.0");
        }
        if (0.0f > f3 || f3 > 1.0f) {
            throw new IllegalArgumentException("unSelectedItemAlpha value should be between 1.0 to 0.0");
        }
        this.scalingValue = 0.2f;
    }

    @Override
    public void transformPage(View page, float position) {
        float f;
        y45.j(page, "page");
        float f2 = this.minScale;
        if (f2 >= 0.8d) {
            f = 0.2f;
        } else {
            f = ((double) f2) >= 0.6d ? 0.3f : 0.4f;
        }
        this.scalingValue = f;
        page.setElevation(-Math.abs(position));
        float fMax = Math.max(1.0f - Math.abs(position * 0.5f), 0.5f);
        float f3 = this.unSelectedItemRotation;
        if (f3 != 0.0f) {
            float f4 = 1 - fMax;
            if (position <= 0.0f) {
                f3 = -f3;
            }
            page.setRotationY(f4 * f3);
        }
        float fMax2 = Math.max(1.0f - Math.abs(this.scalingValue * position), this.minScale);
        page.setScaleX(fMax2);
        page.setScaleY(fMax2);
        int iA = tz4.a(((int) this.itemGap) / 2);
        int i = this.orientation;
        if (i == 0) {
            page.setTranslationX((iA * position) + ((position > 0.0f ? -page.getWidth() : page.getWidth()) * (1.0f - fMax2)));
        } else {
            if (i != 1) {
                throw new IllegalArgumentException("Gives correct orientation value, ViewPager2.ORIENTATION_HORIZONTAL or ViewPager2.ORIENTATION_VERTICAL");
            }
            page.setTranslationY((iA * position) + ((position > 0.0f ? -page.getWidth() : page.getWidth()) * (1.0f - fMax2)));
        }
        if (this.unSelectedItemAlpha == 1.0f) {
            return;
        }
        page.setAlpha((position < -1.0f || position > 1.0f) ? 0.5f / Math.abs(position * position) : ((1 - Math.abs(position)) * 0.5f) + 0.5f);
    }
}
