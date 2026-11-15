package com.bytedance.adsdk.ugeno.Sj.Sj;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.util.Log;
import android.view.View;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class TKC extends Sj {
    private Paint Dq;
    private float EjP;
    private float HiB;
    private Paint Jcg;
    private LinearGradient TEQ;
    private String TKC;
    private Matrix Ym;
    private PorterDuffXfermode uA;
    private View vS;

    public TKC(com.bytedance.adsdk.ugeno.sP.TKC tkc, JSONObject jSONObject) {
        super(tkc, jSONObject);
        this.vS = this.sP.Ym();
        Paint paint = new Paint();
        this.Jcg = paint;
        paint.setAntiAlias(true);
        this.vS.setLayerType(2, null);
        this.uA = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.Dq = new Paint();
        this.Ym = new Matrix();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void TKC(Canvas canvas) {
        byte b10;
        try {
            if (this.sP.qRN() > 0.0f) {
                int iQRN = (int) (this.EjP * this.sP.qRN());
                int iQRN2 = (int) (this.HiB * this.sP.qRN());
                this.Jcg.setXfermode(this.uA);
                String str = this.TKC;
                switch (str.hashCode()) {
                    case -1383228885:
                        if (!str.equals(IntegrationConstants.TAB_BAR_POSITION_DEFAULT)) {
                            b10 = -1;
                        } else {
                            b10 = 2;
                        }
                        break;
                    case 115029:
                        if (!str.equals(IntegrationConstants.TAB_BAR_POSITION_TOP)) {
                            b10 = -1;
                        } else {
                            b10 = 3;
                        }
                        break;
                    case 3317767:
                        if (!str.equals(TtmlNode.LEFT)) {
                            b10 = -1;
                        } else {
                            b10 = 1;
                        }
                        break;
                    case 108511772:
                        if (!str.equals(TtmlNode.RIGHT)) {
                            b10 = -1;
                        } else {
                            b10 = 0;
                        }
                        break;
                    default:
                        b10 = -1;
                        break;
                }
                if (b10 == 0) {
                    float f10 = iQRN;
                    canvas.drawRect(f10, 0.0f, this.EjP, this.HiB, this.Jcg);
                    this.Ym.setTranslate(f10, this.HiB);
                    this.TEQ.setLocalMatrix(this.Ym);
                    this.Dq.setShader(this.TEQ);
                    if (this.sP.qRN() <= 1.0f && this.sP.qRN() > 0.9f) {
                        this.Dq.setAlpha((int) (255.0f - (this.sP.qRN() * 255.0f)));
                    }
                    canvas.drawRect(0.0f, 0.0f, f10, this.HiB, this.Dq);
                    return;
                }
                if (b10 == 1) {
                    float f11 = iQRN;
                    canvas.drawRect(0.0f, 0.0f, this.EjP - f11, this.HiB, this.Jcg);
                    this.Ym.setTranslate(this.EjP - f11, 0.0f);
                    this.TEQ.setLocalMatrix(this.Ym);
                    this.Dq.setShader(this.TEQ);
                    if (this.sP.qRN() <= 1.0f && this.sP.qRN() > 0.9f) {
                        this.Dq.setAlpha((int) (255.0f - (this.sP.qRN() * 255.0f)));
                    }
                    float f12 = this.EjP;
                    canvas.drawRect(f12, this.HiB, f12 - f11, 0.0f, this.Dq);
                    return;
                }
                if (b10 == 2) {
                    float f13 = iQRN2;
                    canvas.drawRect(0.0f, f13, this.EjP, this.HiB, this.Jcg);
                    this.Ym.setTranslate(0.0f, f13);
                    this.TEQ.setLocalMatrix(this.Ym);
                    this.Dq.setShader(this.TEQ);
                    if (this.sP.qRN() <= 1.0f && this.sP.qRN() > 0.9f) {
                        this.Dq.setAlpha((int) (255.0f - (this.sP.qRN() * 255.0f)));
                    }
                    canvas.drawRect(0.0f, 0.0f, this.EjP, f13, this.Dq);
                    return;
                }
                if (b10 != 3) {
                    return;
                }
                float f14 = iQRN2;
                canvas.drawRect(0.0f, 0.0f, this.EjP, this.HiB - f14, this.Jcg);
                this.Ym.setTranslate(0.0f, this.HiB - f14);
                this.TEQ.setLocalMatrix(this.Ym);
                this.Dq.setShader(this.TEQ);
                if (this.sP.qRN() <= 1.0f && this.sP.qRN() > 0.9f) {
                    this.Dq.setAlpha((int) (255.0f - (this.sP.qRN() * 255.0f)));
                }
                float f15 = this.EjP;
                float f16 = this.HiB;
                canvas.drawRect(f15, f16, 0.0f, f16 - f14, this.Dq);
            }
        } catch (Throwable th2) {
            Log.e("BaseEffectWrapper", th2.getMessage());
        }
    }

    @Override
    public void Sj(Canvas canvas) {
        TKC(canvas);
    }

    @Override
    public void sP() {
        this.TKC = this.Sj.optString("direction", TtmlNode.LEFT);
    }

    @Override
    public void Sj(int i10, int i11) {
        this.EjP = i10;
        this.HiB = i11;
        String str = this.TKC;
        str.hashCode();
        switch (str) {
            case "bottom":
                this.TEQ = new LinearGradient(0.0f, -this.HiB, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "top":
                this.TEQ = new LinearGradient(0.0f, this.HiB, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "left":
                this.TEQ = new LinearGradient(this.EjP, 0.0f, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "right":
                this.TEQ = new LinearGradient(-this.EjP, 0.0f, 0.0f, this.HiB, 0, -1, Shader.TileMode.CLAMP);
                break;
        }
    }

    @Override
    public void sP(Canvas canvas) {
        TKC(canvas);
    }

    @Override
    public List<PropertyValuesHolder> TKC() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(PropertyValuesHolder.ofFloat("rubIn", 0.0f, 1.0f));
        arrayList.add(PropertyValuesHolder.ofFloat(com.bytedance.adsdk.ugeno.Sj.EjP.ALPHA.sP(), 0.0f, 1.0f));
        return arrayList;
    }
}
