package com.bytedance.adsdk.ugeno.Sj.Sj;

import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class EjP extends Sj {
    private static final float Zq;
    private static final float dNu;
    private static final float sef;
    private static final float uvD;
    private int Dq;
    private Paint EjP;
    private Path Fmk;
    private Path HiB;
    private int Jcg;
    private int TEQ;
    private int TKC;
    private float TzV;
    private int Ym;

    private boolean f20197aa;
    private float uA;
    private com.bytedance.adsdk.ugeno.Jcg.Sj.C0179Sj vS;

    static {
        float radians = (float) Math.toRadians(30.0d);
        sef = radians;
        Zq = (float) Math.tan(radians);
        uvD = (float) Math.cos(radians);
        dNu = (float) Math.sin(radians);
    }

    public EjP(com.bytedance.adsdk.ugeno.sP.TKC tkc, JSONObject jSONObject) {
        super(tkc, jSONObject);
        this.f20197aa = true;
        Paint paint = new Paint();
        this.EjP = paint;
        paint.setAntiAlias(true);
        this.HiB = new Path();
        this.uA = this.sP.zR();
        this.Fmk = new Path();
    }

    private void TKC(Canvas canvas) {
        LinearGradient linearGradient;
        try {
            if (this.sP.db() > 0.0f) {
                int i10 = this.TEQ;
                float f10 = Zq;
                float fDb = (i10 + (i10 * f10)) * this.sP.db();
                this.Fmk.reset();
                this.Fmk.moveTo(fDb, 0.0f);
                int i11 = this.Ym;
                float f11 = fDb - (i11 * f10);
                this.Fmk.lineTo(f11, i11);
                this.Fmk.lineTo(f11 + this.TKC, this.Ym);
                this.Fmk.lineTo(this.TKC + fDb, 0.0f);
                this.Fmk.close();
                float f12 = this.TzV;
                float f13 = uvD * f12;
                float f14 = f12 * dNu;
                if (!this.f20197aa || this.vS == null) {
                    float f15 = fDb + f13;
                    int i12 = this.Dq;
                    linearGradient = new LinearGradient(fDb, 0.0f, f15, f14, new int[]{i12, this.Jcg, i12}, (float[]) null, Shader.TileMode.CLAMP);
                } else {
                    linearGradient = new LinearGradient(fDb, 0.0f, fDb + f13, f14, this.vS.sP, (float[]) null, Shader.TileMode.CLAMP);
                }
                this.EjP.setShader(linearGradient);
                Path path = this.HiB;
                if (path != null) {
                    canvas.clipPath(path, Region.Op.INTERSECT);
                }
                canvas.drawPath(this.Fmk, this.EjP);
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    @SuppressLint({"DrawAllocation"})
    public void Sj(Canvas canvas) {
        TKC(canvas);
    }

    @Override
    public void sP() {
        this.TKC = (int) Dq.Sj(this.sP.Ym().getContext(), this.Sj.optInt("shineWidth", 30));
        String strOptString = this.Sj.optString("backgroundColor", "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))");
        String str = TextUtils.isEmpty(strOptString) ? "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))" : strOptString;
        if (str.startsWith("linear")) {
            this.vS = com.bytedance.adsdk.ugeno.Jcg.Sj.sP(str);
        } else {
            int iSj = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str);
            this.Jcg = iSj;
            this.Dq = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(iSj, 32);
            this.f20197aa = false;
        }
        this.TzV = uvD * this.TKC;
    }

    @Override
    public void Sj(int i10, int i11) {
        this.TEQ = i10;
        this.Ym = i11;
        try {
            RectF rectF = new RectF(0.0f, 0.0f, i10, i11);
            Path path = this.HiB;
            float f10 = this.uA;
            path.addRoundRect(rectF, f10, f10, Path.Direction.CW);
        } catch (Throwable unused) {
        }
    }

    @Override
    public void sP(Canvas canvas) {
        TKC(canvas);
    }

    @Override
    public List<PropertyValuesHolder> TKC() {
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(EjP(), 0.0f, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(propertyValuesHolderOfFloat);
        return arrayList;
    }
}
