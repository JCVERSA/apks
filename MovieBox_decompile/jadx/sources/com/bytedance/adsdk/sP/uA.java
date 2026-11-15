package com.bytedance.adsdk.sP;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.bytedance.adsdk.sP.HiB.zR;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public class uA extends Drawable implements Animatable, Drawable.Callback {
    private boolean Dq;
    private boolean Ei;
    private Jcg EjP;
    private RectF FPG;
    private Matrix Fm;
    private String Fmk;
    private final com.bytedance.adsdk.sP.vS.TKC HiB;
    private Paint JcM;
    private boolean Jcg;
    private Rect LD;
    private Bitmap LqL;
    private Rect Mts;
    private boolean RiZ;
    String Sj;
    private final ArrayList<Sj> TEQ;
    sU TKC;
    private boolean TzV;
    private Rect WMZ;
    private RectF Wjd;
    private Canvas Yf;
    private final ValueAnimator.AnimatorUpdateListener Ym;
    private com.bytedance.adsdk.sP.sP.Sj Zq;

    private com.bytedance.adsdk.sP.sP.sP f20176aa;
    private boolean dNu;

    private int f20177dx;
    private RectF fF;

    private boolean f20178ib;

    private View f20179jb;
    private boolean kF;
    private final Matrix ley;
    TKC sP;
    private com.bytedance.adsdk.sP.TKC.TKC.sP sU;
    private EjP sef;
    private sP uA;
    private RiZ uP;
    private Map<String, Typeface> uvD;
    private boolean vS;
    private boolean wE;
    private Matrix xD;
    private boolean zR;

    private interface Sj {
        void Sj(Jcg jcg);
    }

    private enum sP {
        NONE,
        PLAY,
        RESUME
    }

    public uA() {
        com.bytedance.adsdk.sP.vS.TKC tkc = new com.bytedance.adsdk.sP.vS.TKC();
        this.HiB = tkc;
        this.vS = true;
        this.Jcg = false;
        this.Dq = false;
        this.uA = sP.NONE;
        this.TEQ = new ArrayList<>();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (uA.this.sU != null) {
                    uA.this.sU.Sj(uA.this.HiB.vS());
                }
            }
        };
        this.Ym = animatorUpdateListener;
        this.TzV = false;
        this.RiZ = true;
        this.f20177dx = 255;
        this.uP = RiZ.AUTOMATIC;
        this.wE = false;
        this.ley = new Matrix();
        this.Ei = false;
        tkc.addUpdateListener(animatorUpdateListener);
    }

    private Context FPG() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private boolean JcM() {
        return this.vS || this.Jcg;
    }

    private com.bytedance.adsdk.sP.sP.Sj Mts() {
        if (getCallback() == null) {
            return null;
        }
        if (this.Zq == null) {
            com.bytedance.adsdk.sP.sP.Sj sj2 = new com.bytedance.adsdk.sP.sP.Sj(getCallback(), this.sP);
            this.Zq = sj2;
            String str = this.Sj;
            if (str != null) {
                sj2.Sj(str);
            }
        }
        return this.Zq;
    }

    private com.bytedance.adsdk.sP.sP.sP WMZ() {
        com.bytedance.adsdk.sP.sP.sP sPVar = this.f20176aa;
        if (sPVar != null && !sPVar.Sj(FPG())) {
            this.f20176aa = null;
        }
        if (this.f20176aa == null) {
            this.f20176aa = new com.bytedance.adsdk.sP.sP.sP(getCallback(), this.Fmk, this.sef, this.EjP.uvD());
        }
        return this.f20176aa;
    }

    private void Wjd() {
        if (this.Yf != null) {
            return;
        }
        this.Yf = new Canvas();
        this.Wjd = new RectF();
        this.xD = new Matrix();
        this.Fm = new Matrix();
        this.LD = new Rect();
        this.fF = new RectF();
        this.JcM = new com.bytedance.adsdk.sP.Sj.Sj();
        this.WMZ = new Rect();
        this.Mts = new Rect();
        this.FPG = new RectF();
    }

    private void fF() {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            return;
        }
        this.wE = this.uP.Sj(Build.VERSION.SDK_INT, jcg.Sj(), jcg.sP());
    }

    private boolean xD() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        ViewParent parent = ((View) callback).getParent();
        return (parent instanceof ViewGroup) && !((ViewGroup) parent).getClipChildren();
    }

    public TzV Dq() {
        Jcg jcg = this.EjP;
        if (jcg != null) {
            return jcg.TKC();
        }
        return null;
    }

    public String EjP() {
        return this.Fmk;
    }

    public void Fmk() {
        if (this.sU == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg) {
                    uA.this.Fmk();
                }
            });
            return;
        }
        fF();
        if (JcM() || dx() == 0) {
            if (isVisible()) {
                this.HiB.sef();
                this.uA = sP.NONE;
            } else {
                this.uA = sP.RESUME;
            }
        }
        if (JcM()) {
            return;
        }
        TKC((int) (uvD() < 0.0f ? sef() : Zq()));
        this.HiB.aa();
        if (isVisible()) {
            return;
        }
        this.uA = sP.NONE;
    }

    public boolean HiB() {
        return this.TzV;
    }

    public boolean Jcg() {
        return this.wE;
    }

    public RectF LD() {
        return this.Wjd;
    }

    public void LqL() {
        this.TEQ.clear();
        this.HiB.Fmk();
        if (isVisible()) {
            return;
        }
        this.uA = sP.NONE;
    }

    public int RiZ() {
        return (int) this.HiB.Jcg();
    }

    public void TEQ() {
        if (this.HiB.isRunning()) {
            this.HiB.cancel();
            if (!isVisible()) {
                this.uA = sP.NONE;
            }
        }
        this.EjP = null;
        this.sU = null;
        this.f20176aa = null;
        this.HiB.Dq();
        invalidateSelf();
    }

    public boolean TKC() {
        return this.RiZ;
    }

    public void TzV() {
        this.HiB.removeAllListeners();
    }

    public float Yf() {
        return this.HiB.vS();
    }

    public void Ym() {
        if (this.sU == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg) {
                    uA.this.Ym();
                }
            });
            return;
        }
        fF();
        if (JcM() || dx() == 0) {
            if (isVisible()) {
                this.HiB.Ym();
                this.uA = sP.NONE;
            } else {
                this.uA = sP.PLAY;
            }
        }
        if (JcM()) {
            return;
        }
        TKC((int) (uvD() < 0.0f ? sef() : Zq()));
        this.HiB.aa();
        if (isVisible()) {
            return;
        }
        this.uA = sP.NONE;
    }

    public float Zq() {
        return this.HiB.uvD();
    }

    public void aa() {
        this.TEQ.clear();
        this.HiB.aa();
        if (isVisible()) {
            return;
        }
        this.uA = sP.NONE;
    }

    public void dNu() {
        this.HiB.removeAllUpdateListeners();
        this.HiB.addUpdateListener(this.Ym);
    }

    @Override
    public void draw(Canvas canvas) {
        HiB.Sj("Drawable#draw");
        try {
            if (this.wE) {
                Sj(canvas, this.sU);
            } else {
                Sj(canvas);
            }
        } catch (Throwable unused) {
        }
        this.Ei = false;
        HiB.sP("Drawable#draw");
    }

    public int dx() {
        return this.HiB.getRepeatCount();
    }

    @Override
    public int getAlpha() {
        return this.f20177dx;
    }

    @Override
    public int getIntrinsicHeight() {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            return -1;
        }
        return jcg.EjP().height();
    }

    @Override
    public int getIntrinsicWidth() {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            return -1;
        }
        return jcg.EjP().width();
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    boolean ib() {
        if (isVisible()) {
            return this.HiB.isRunning();
        }
        sP sPVar = this.uA;
        return sPVar == sP.PLAY || sPVar == sP.RESUME;
    }

    @Override
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override
    public void invalidateSelf() {
        if (this.Ei) {
            return;
        }
        this.Ei = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override
    public boolean isRunning() {
        return zR();
    }

    public sU kF() {
        return this.TKC;
    }

    public void ley() {
        this.TEQ.clear();
        this.HiB.cancel();
        if (isVisible()) {
            return;
        }
        this.uA = sP.NONE;
    }

    @SuppressLint({"WrongConstant"})
    public int sU() {
        return this.HiB.getRepeatMode();
    }

    @Override
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    public float sef() {
        return this.HiB.Zq();
    }

    @Override
    public void setAlpha(int i10) {
        this.f20177dx = i10;
        invalidateSelf();
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        boolean zIsVisible = isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            sP sPVar = this.uA;
            if (sPVar == sP.PLAY) {
                Ym();
            } else if (sPVar == sP.RESUME) {
                Fmk();
            }
        } else if (this.HiB.isRunning()) {
            LqL();
            this.uA = sP.RESUME;
        } else if (zIsVisible) {
            this.uA = sP.NONE;
        }
        return visible;
    }

    @Override
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        Ym();
    }

    @Override
    public void stop() {
        aa();
    }

    public boolean uA() {
        return this.kF;
    }

    public boolean uP() {
        return this.uvD == null && this.TKC == null && this.EjP.sef().size() > 0;
    }

    @Override
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public float uvD() {
        return this.HiB.TEQ();
    }

    public RiZ vS() {
        return this.wE ? RiZ.SOFTWARE : RiZ.HARDWARE;
    }

    public Jcg wE() {
        return this.EjP;
    }

    public boolean zR() {
        com.bytedance.adsdk.sP.vS.TKC tkc = this.HiB;
        if (tkc == null) {
            return false;
        }
        return tkc.isRunning();
    }

    public void EjP(boolean z10) {
        if (this.f20178ib == z10) {
            return;
        }
        this.f20178ib = z10;
        com.bytedance.adsdk.sP.TKC.TKC.sP sPVar = this.sU;
        if (sPVar != null) {
            sPVar.Sj(z10);
        }
    }

    public void HiB(boolean z10) {
        this.kF = z10;
    }

    public void Jcg(boolean z10) {
        this.Jcg = z10;
    }

    public void Sj(View view) {
        this.f20179jb = view;
    }

    public void TKC(boolean z10) {
        this.zR = z10;
        Jcg jcg = this.EjP;
        if (jcg != null) {
            jcg.sP(z10);
        }
    }

    public com.bytedance.adsdk.sP.TKC.TKC.sP sP() {
        return this.sU;
    }

    public void vS(boolean z10) {
        this.Dq = z10;
    }

    public void Dq(boolean z10) {
        this.HiB.TKC(z10);
    }

    public void HiB(int i10) {
        this.HiB.setRepeatCount(i10);
    }

    public void Jcg(String str) {
        this.Sj = str;
        com.bytedance.adsdk.sP.sP.Sj sjMts = Mts();
        if (sjMts != null) {
            sjMts.Sj(str);
        }
    }

    public View Sj() {
        return this.f20179jb;
    }

    public void sP(boolean z10) {
        this.TzV = z10;
    }

    public TEQ vS(String str) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            return null;
        }
        return jcg.uvD().get(str);
    }

    public Bitmap HiB(String str) {
        com.bytedance.adsdk.sP.sP.sP sPVarWMZ = WMZ();
        if (sPVarWMZ != null) {
            return sPVarWMZ.Sj(str);
        }
        return null;
    }

    public void Sj(boolean z10, Context context) {
        if (this.dNu == z10) {
            return;
        }
        this.dNu = z10;
        if (this.EjP != null) {
            Sj(context);
        }
    }

    public void sP(final int i10) {
        if (this.EjP == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg) {
                    uA.this.sP(i10);
                }
            });
        } else {
            this.HiB.sP(i10 + 0.99f);
        }
    }

    public void TKC(final String str) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg2) {
                    uA.this.TKC(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.sP.TKC.vS vSVarTKC = jcg.TKC(str);
        if (vSVarTKC != null) {
            sP((int) (vSVarTKC.Sj + vSVarTKC.sP));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void EjP(final String str) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg2) {
                    uA.this.EjP(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.sP.TKC.vS vSVarTKC = jcg.TKC(str);
        if (vSVarTKC != null) {
            int i10 = (int) vSVarTKC.Sj;
            Sj(i10, ((int) vSVarTKC.sP) + i10);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
    }

    public void sP(final float f10) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg2) {
                    uA.this.sP(f10);
                }
            });
        } else {
            this.HiB.sP(com.bytedance.adsdk.sP.vS.HiB.Sj(jcg.vS(), this.EjP.Jcg(), f10));
        }
    }

    public void Sj(boolean z10) {
        if (z10 != this.RiZ) {
            this.RiZ = z10;
            com.bytedance.adsdk.sP.TKC.TKC.sP sPVar = this.sU;
            if (sPVar != null) {
                sPVar.sP(z10);
            }
            invalidateSelf();
        }
    }

    public void TKC(float f10) {
        this.HiB.TKC(f10);
    }

    public void sP(final String str) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg2) {
                    uA.this.sP(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.sP.TKC.vS vSVarTKC = jcg.TKC(str);
        if (vSVarTKC != null) {
            Sj((int) vSVarTKC.Sj);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void TKC(final int i10) {
        if (this.EjP == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg) {
                    uA.this.TKC(i10);
                }
            });
        } else {
            this.HiB.Sj(i10);
        }
    }

    public void EjP(final float f10) {
        if (this.EjP == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg) {
                    uA.this.EjP(f10);
                }
            });
            return;
        }
        HiB.Sj("Drawable#setProgress");
        this.HiB.Sj(this.EjP.Sj(f10));
        HiB.sP("Drawable#setProgress");
    }

    public void Sj(String str) {
        this.Fmk = str;
    }

    public boolean Sj(Jcg jcg, Context context) {
        if (this.EjP == jcg) {
            return false;
        }
        this.Ei = true;
        TEQ();
        this.EjP = jcg;
        Sj(context);
        this.HiB.Sj(jcg);
        EjP(this.HiB.getAnimatedFraction());
        Iterator it = new ArrayList(this.TEQ).iterator();
        while (it.hasNext()) {
            Sj sj2 = (Sj) it.next();
            if (sj2 != null) {
                sj2.Sj(jcg);
            }
            it.remove();
        }
        this.TEQ.clear();
        jcg.sP(this.zR);
        fF();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public void sP(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.HiB.removeUpdateListener(animatorUpdateListener);
    }

    public void sP(Animator.AnimatorListener animatorListener) {
        this.HiB.removeListener(animatorListener);
    }

    private void sP(int i10, int i11) {
        Bitmap bitmap = this.LqL;
        if (bitmap != null && bitmap.getWidth() >= i10 && this.LqL.getHeight() >= i11) {
            if (this.LqL.getWidth() > i10 || this.LqL.getHeight() > i11) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.LqL, 0, 0, i10, i11);
                this.LqL = bitmapCreateBitmap;
                this.Yf.setBitmap(bitmapCreateBitmap);
                this.Ei = true;
                return;
            }
            return;
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        this.LqL = bitmapCreateBitmap2;
        this.Yf.setBitmap(bitmapCreateBitmap2);
        this.Ei = true;
    }

    public void EjP(int i10) {
        this.HiB.setRepeatMode(i10);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void Sj(RiZ riZ) {
        this.uP = riZ;
        fF();
    }

    private void Sj(Context context) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            return;
        }
        com.bytedance.adsdk.sP.TKC.TKC.sP sPVar = new com.bytedance.adsdk.sP.TKC.TKC.sP(this, zR.Sj(jcg), jcg.Fmk(), jcg, context);
        this.sU = sPVar;
        if (this.f20178ib) {
            sPVar.Sj(true);
        }
        this.sU.sP(this.RiZ);
    }

    public void Sj(final int i10) {
        if (this.EjP == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg) {
                    uA.this.Sj(i10);
                }
            });
        } else {
            this.HiB.Sj(i10);
        }
    }

    public void Sj(final float f10) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg2) {
                    uA.this.Sj(f10);
                }
            });
        } else {
            Sj((int) com.bytedance.adsdk.sP.vS.HiB.Sj(jcg.vS(), this.EjP.Jcg(), f10));
        }
    }

    public void Sj(final int i10, final int i11) {
        if (this.EjP == null) {
            this.TEQ.add(new Sj() {
                @Override
                public void Sj(Jcg jcg) {
                    uA.this.Sj(i10, i11);
                }
            });
        } else {
            this.HiB.Sj(i10, i11 + 0.99f);
        }
    }

    public void Sj(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.HiB.addUpdateListener(animatorUpdateListener);
    }

    public void Sj(Animator.AnimatorListener animatorListener) {
        this.HiB.addListener(animatorListener);
    }

    public void Sj(Boolean bool) {
        this.vS = bool.booleanValue();
    }

    public void Sj(EjP ejP) {
        this.sef = ejP;
        com.bytedance.adsdk.sP.sP.sP sPVar = this.f20176aa;
        if (sPVar != null) {
            sPVar.Sj(ejP);
        }
    }

    public void Sj(TKC tkc) {
        this.sP = tkc;
        com.bytedance.adsdk.sP.sP.Sj sj2 = this.Zq;
        if (sj2 != null) {
            sj2.Sj(tkc);
        }
    }

    public void Sj(Map<String, Typeface> map) {
        if (map == this.uvD) {
            return;
        }
        this.uvD = map;
        invalidateSelf();
    }

    public void Sj(sU sUVar) {
        this.TKC = sUVar;
    }

    public Bitmap Sj(String str, Bitmap bitmap) {
        com.bytedance.adsdk.sP.sP.sP sPVarWMZ = WMZ();
        if (sPVarWMZ == null) {
            return null;
        }
        Bitmap bitmapSj = sPVarWMZ.Sj(str, bitmap);
        invalidateSelf();
        return bitmapSj;
    }

    public Typeface Sj(com.bytedance.adsdk.sP.TKC.TKC tkc) {
        Map<String, Typeface> map = this.uvD;
        if (map != null) {
            String strSj = tkc.Sj();
            if (map.containsKey(strSj)) {
                return map.get(strSj);
            }
            String strSP = tkc.sP();
            if (map.containsKey(strSP)) {
                return map.get(strSP);
            }
            String str = tkc.Sj() + "-" + tkc.TKC();
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        com.bytedance.adsdk.sP.sP.Sj sjMts = Mts();
        if (sjMts != null) {
            return sjMts.Sj(tkc);
        }
        return null;
    }

    private void Sj(Canvas canvas) {
        com.bytedance.adsdk.sP.TKC.TKC.sP sPVar = this.sU;
        Jcg jcg = this.EjP;
        if (sPVar == null || jcg == null) {
            return;
        }
        this.ley.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            this.ley.preScale(bounds.width() / jcg.EjP().width(), bounds.height() / jcg.EjP().height());
            this.ley.preTranslate(bounds.left, bounds.top);
        }
        sPVar.Sj(canvas, this.ley, this.f20177dx);
    }

    private void Sj(Canvas canvas, com.bytedance.adsdk.sP.TKC.TKC.sP sPVar) {
        if (this.EjP == null || sPVar == null) {
            return;
        }
        Wjd();
        canvas.getMatrix(this.xD);
        canvas.getClipBounds(this.LD);
        Sj(this.LD, this.fF);
        this.xD.mapRect(this.fF);
        Sj(this.fF, this.LD);
        if (this.RiZ) {
            this.Wjd.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            sPVar.Sj(this.Wjd, (Matrix) null, false);
        }
        this.xD.mapRect(this.Wjd);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        Sj(this.Wjd, fWidth, fHeight);
        if (!xD()) {
            RectF rectF = this.Wjd;
            Rect rect = this.LD;
            rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
        }
        int iCeil = (int) Math.ceil(this.Wjd.width());
        int iCeil2 = (int) Math.ceil(this.Wjd.height());
        if (iCeil == 0 || iCeil2 == 0) {
            return;
        }
        sP(iCeil, iCeil2);
        if (this.Ei) {
            this.ley.set(this.xD);
            this.ley.preScale(fWidth, fHeight);
            Matrix matrix = this.ley;
            RectF rectF2 = this.Wjd;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.LqL.eraseColor(0);
            sPVar.Sj(this.Yf, this.ley, this.f20177dx);
            this.xD.invert(this.Fm);
            this.Fm.mapRect(this.FPG, this.Wjd);
            Sj(this.FPG, this.Mts);
        }
        this.WMZ.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.LqL, this.WMZ, this.Mts, this.JcM);
    }

    private void Sj(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private void Sj(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    private void Sj(RectF rectF, float f10, float f11) {
        rectF.set(rectF.left * f10, rectF.top * f11, rectF.right * f10, rectF.bottom * f11);
    }
}
