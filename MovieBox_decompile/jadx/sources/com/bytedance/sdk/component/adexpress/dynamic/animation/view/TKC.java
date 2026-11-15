package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Ym;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.FlowLayout;
import com.transsion.gslb.Utils;

public class TKC {
    private int EjP;
    private int HiB;
    Paint Sj;
    private int vS;
    Path sP = new Path();
    Path TKC = new Path();

    public TKC() {
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setAntiAlias(true);
    }

    public void Sj(Canvas canvas, IAnimation iAnimation, View view) {
        int iIntValue;
        String str;
        float[] fArrSP;
        int iIntValue2 = 0;
        if (iAnimation.getRippleValue() != 0.0f) {
            if (com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC() != null) {
                try {
                    str = (String) view.getTag(2097610712);
                    try {
                        fArrSP = Jcg.sP(str);
                    } catch (Exception unused) {
                        fArrSP = null;
                    }
                } catch (Exception unused2) {
                    str = "";
                }
                if (str.startsWith(Utils.SEPARATOR)) {
                    this.Sj.setColor(Color.parseColor(str));
                    this.Sj.setAlpha(90);
                } else if (fArrSP != null) {
                    this.Sj.setColor(com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(fArrSP[3] * (1.0f - iAnimation.getRippleValue()), fArrSP[0] / 256.0f, fArrSP[1] / 256.0f, fArrSP[2] / 256.0f));
                }
            }
            ((ViewGroup) view.getParent()).setClipChildren(true);
            int i10 = this.EjP;
            int i11 = this.HiB;
            canvas.drawCircle(i10, i11, Math.min(i10, i11) * 2 * iAnimation.getRippleValue(), this.Sj);
        }
        if (iAnimation.getShineValue() != 0.0f) {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).setClipChildren(true);
            }
            if (view.getParent().getParent() != null) {
                ((ViewGroup) view.getParent().getParent()).setClipChildren(true);
            }
            this.sP.reset();
            try {
                iIntValue = ((Integer) view.getTag(2097610711)).intValue();
            } catch (Exception unused3) {
                iIntValue = 0;
            }
            if (iIntValue >= 0) {
                int shineValue = ((int) ((((this.EjP * 4) + (iIntValue * 2)) + (this.HiB * 2)) * iAnimation.getShineValue())) - ((this.HiB * 2) + iIntValue);
                float f10 = shineValue;
                int i12 = this.HiB;
                this.Sj.setShader(new LinearGradient(f10, 0.0f, ((iIntValue + i12) / 2) + shineValue, i12 / 2, new int[]{Color.parseColor("#20ffffff"), Color.parseColor("#60ffffff"), Color.parseColor("#65ffffff")}, (float[]) null, Shader.TileMode.MIRROR));
                this.Sj.setStrokeWidth(this.EjP * 2);
                Path path = this.TKC;
                if (path != null) {
                    canvas.clipPath(path, Region.Op.INTERSECT);
                }
                int i13 = shineValue + iIntValue;
                int i14 = this.HiB;
                canvas.drawLine(f10, 0.0f, i13 + i14, i14, this.Sj);
            }
        }
        if (iAnimation.getMarqueeValue() != 0.0f) {
            try {
                iIntValue2 = ((Integer) view.getTag(2097610709)).intValue();
            } catch (Exception unused4) {
            }
            if (iIntValue2 >= 0) {
                this.sP.reset();
                this.sP.moveTo(0.0f, 0.0f);
                this.sP.lineTo(this.EjP * 2, 0.0f);
                this.sP.lineTo(this.EjP * 2, this.HiB * 2);
                this.sP.lineTo(0.0f, this.HiB * 2);
                this.sP.lineTo(0.0f, 0.0f);
                this.Sj.setShader(new LinearGradient(0.0f, 0.0f, this.EjP * 2, this.HiB * 2, new int[]{(int) (iAnimation.getMarqueeValue() * (-65536.0f)), (int) ((1.0f - iAnimation.getMarqueeValue()) * (-65536.0f))}, (float[]) null, Shader.TileMode.CLAMP));
                this.Sj.setColor(FlowLayout.SPACING_AUTO);
                this.Sj.setStyle(Paint.Style.STROKE);
                this.Sj.setStrokeWidth(iIntValue2);
                canvas.drawPath(this.sP, this.Sj);
            }
        }
    }

    public void Sj(View view, float f10) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i10 = this.vS;
        int i11 = (int) (i10 * f10);
        layoutParams.width = i11;
        view.setTranslationX((i10 - i11) / 2);
        if (view instanceof Ym) {
            int i12 = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i12 >= viewGroup.getChildCount()) {
                    break;
                }
                viewGroup.getChildAt(i12).setTranslationX((-(this.vS - layoutParams.width)) / 2);
                i12++;
            }
        }
        view.setLayoutParams(layoutParams);
    }

    public void Sj(View view, int i10, int i11) {
        String str;
        this.EjP = i10 / 2;
        this.HiB = i11 / 2;
        if (this.vS == 0 && view.getLayoutParams().width > 0) {
            this.vS = view.getLayoutParams().width;
        }
        try {
            str = (String) view.getTag(2097610710);
            try {
                this.TKC.addRoundRect(new RectF(0.0f, 0.0f, i10, i11), i11 / 2, i11 / 2, Path.Direction.CW);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            str = "";
        }
        if (TtmlNode.RIGHT.equals(str)) {
            view.setPivotX(this.EjP * 2);
            view.setPivotY(this.HiB);
        } else if (TtmlNode.LEFT.equals(str)) {
            view.setPivotX(0.0f);
            view.setPivotY(this.HiB);
        } else {
            view.setPivotX(this.EjP);
            view.setPivotY(this.HiB);
        }
    }
}
