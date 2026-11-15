package com.transsion.widgetslib.flipper;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.flipper.PageAnimation;
import defpackage.olb;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001a\u0018\u0000 )2\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\t\u0010\u0003J\u001f\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0017R\"\u0010!\u001a\u00020\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010%\u001a\u00020\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0017\u001a\u0004\b#\u0010\u001e\"\u0004\b$\u0010 R\u0018\u0010(\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lcom/transsion/widgetslib/flipper/PageAnimation;", "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;", MethodDecl.initName, "()V", "Lcom/transsion/widgetslib/flipper/FlipperLayout;", TtmlNode.TAG_LAYOUT, "Lzfb;", "b", "(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V", "d", "Landroid/view/View;", "page", "", "position", "transformPage", "(Landroid/view/View;F)V", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/Integer;", "pPaddingStart", "I", "pPaddingEnd", "c", "F", "dotAlphaNormal", "dotAlphaSelected", "e", "dotAlphaDiff", "f", "getAlphaRatio$widgetsLib_release", "()F", "setAlphaRatio$widgetsLib_release", "(F)V", "alphaRatio", GslbInterceptor.HEADER_KEY_GSLB, "getAlphaPageOutRatio$widgetsLib_release", "setAlphaPageOutRatio$widgetsLib_release", "alphaPageOutRatio", CmcdData.STREAMING_FORMAT_HLS, "Lcom/transsion/widgetslib/flipper/FlipperLayout;", "flipperLayout", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PageAnimation implements ViewPager2.PageTransformer {

    public Integer pPaddingStart;

    public int pPaddingEnd;

    public float dotAlphaNormal = 0.12f;

    public float dotAlphaSelected = 0.65f;

    public float dotAlphaDiff = 0.65f - 0.12f;

    public float alphaRatio;

    public float alphaPageOutRatio;

    public FlipperLayout flipperLayout;

    public static final void c(FlipperLayout flipperLayout) {
        y45.j(flipperLayout, "$it");
        flipperLayout.requestLayout();
    }

    public final void b(FlipperLayout layout) {
        y45.j(layout, TtmlNode.TAG_LAYOUT);
        if (this.flipperLayout == null) {
            this.flipperLayout = layout;
            Context context = layout.getContext();
            this.dotAlphaNormal = Color.alpha(olb.m(context, R.attr.os_comp_color_page_default, R.color.os_comp_color_page_default_hios)) / 255.0f;
            float fAlpha = Color.alpha(olb.m(context, R.attr.os_comp_color_page_focus, R.color.os_comp_color_page_focus_hios)) / 255.0f;
            this.dotAlphaSelected = fAlpha;
            this.dotAlphaDiff = fAlpha - this.dotAlphaNormal;
        }
    }

    public final void d() {
        this.pPaddingStart = null;
    }

    public final float getAlphaPageOutRatio() {
        return this.alphaPageOutRatio;
    }

    public final float getAlphaRatio() {
        return this.alphaRatio;
    }

    public final void setAlphaPageOutRatio$widgetsLib_release(float f) {
        this.alphaPageOutRatio = f;
    }

    public final void setAlphaRatio$widgetsLib_release(float f) {
        this.alphaRatio = f;
    }

    @Override
    public void transformPage(View page, float position) {
        int iIntValue;
        final FlipperLayout flipperLayout;
        y45.j(page, "page");
        if (this.pPaddingStart == null && (flipperLayout = this.flipperLayout) != null) {
            this.pPaddingStart = Integer.valueOf(flipperLayout.getPaddingStart());
            this.pPaddingEnd = flipperLayout.getPaddingEnd();
            flipperLayout.setPaddingRelative(0, flipperLayout.getPaddingTop(), 0, flipperLayout.getPaddingBottom());
            flipperLayout.post(new Runnable() {
                @Override
                public final void run() {
                    PageAnimation.c(flipperLayout);
                }
            });
        }
        Integer num = this.pPaddingStart;
        if (num != null && ((iIntValue = num.intValue()) != page.getPaddingStart() || this.pPaddingEnd != page.getPaddingEnd())) {
            page.setPaddingRelative(iIntValue, 0, this.pPaddingEnd, 0);
        }
        page.setAlpha(1.0f);
    }
}
