package com.bytedance.adsdk.sP;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import org.json.JSONArray;

public class vS extends ImageView {
    private static final String Sj = "vS";
    private static final Ym<Throwable> sP = new Ym<Throwable>() {
        @Override
        public void Sj(Throwable th2) {
            com.bytedance.adsdk.sP.vS.vS.Sj(th2);
        }
    };
    private String Dq;
    private final Ym<Throwable> EjP;
    private final Set<EjP> Fmk;
    private Ym<Throwable> HiB;
    private final uA Jcg;
    private Sj LD;
    private final Runnable LqL;
    private Handler RiZ;
    private boolean TEQ;
    private final Ym<Jcg> TKC;
    private int TzV;
    private sP Yf;
    private boolean Ym;
    private Fmk<Jcg> Zq;

    private boolean f20180aa;
    private final Handler dNu;

    private com.bytedance.adsdk.sP.TKC.TKC.TKC f20181dx;

    private int f20182ib;
    private int kF;
    private JSONArray ley;
    private long sU;
    private final Set<Object> sef;
    private int uA;
    private int uP;
    private Jcg uvD;
    private int vS;
    private String wE;
    private int zR;

    static class AnonymousClass5 {
        static final int[] Sj;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            Sj = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private enum EjP {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    public interface Sj {
    }

    private static class TKC extends View.BaseSavedState {
        public static final Parcelable.Creator<TKC> CREATOR = new Parcelable.Creator<TKC>() {
            @Override
            public TKC createFromParcel(Parcel parcel) {
                return new TKC(parcel);
            }

            @Override
            public TKC[] newArray(int i10) {
                return new TKC[i10];
            }
        };
        boolean EjP;
        String HiB;
        int Jcg;
        String Sj;
        float TKC;
        int sP;
        int vS;

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.Sj);
            parcel.writeFloat(this.TKC);
            parcel.writeInt(this.EjP ? 1 : 0);
            parcel.writeString(this.HiB);
            parcel.writeInt(this.vS);
            parcel.writeInt(this.Jcg);
        }

        TKC(Parcelable parcelable) {
            super(parcelable);
        }

        private TKC(Parcel parcel) {
            super(parcel);
            this.Sj = parcel.readString();
            this.TKC = parcel.readFloat();
            this.EjP = parcel.readInt() == 1;
            this.HiB = parcel.readString();
            this.vS = parcel.readInt();
            this.Jcg = parcel.readInt();
        }
    }

    public interface sP {
    }

    public vS(Context context) {
        super(context);
        this.TKC = new Ym<Jcg>() {
            @Override
            public void Sj(Jcg jcg) {
                vS.this.setComposition(jcg);
            }
        };
        this.EjP = new Ym<Throwable>() {
            @Override
            public void Sj(Throwable th2) {
                if (vS.this.vS != 0) {
                    vS vSVar = vS.this;
                    vSVar.setImageResource(vSVar.vS);
                }
                (vS.this.HiB == null ? vS.sP : vS.this.HiB).Sj(th2);
            }
        };
        this.vS = 0;
        this.Jcg = new uA();
        this.TEQ = false;
        this.Ym = false;
        this.f20180aa = true;
        this.Fmk = new HashSet();
        this.sef = new HashSet();
        this.dNu = new Handler(Looper.getMainLooper());
        this.TzV = 0;
        this.sU = 0L;
        this.LqL = new Runnable() {
            @Override
            public void run() {
                StringBuilder sb2 = new StringBuilder("--==--- timer callback, timer: ");
                sb2.append(vS.this.zR);
                sb2.append(", ");
                sb2.append(vS.this.f20182ib);
                if (vS.this.zR > vS.this.f20182ib) {
                    vS.TzV(vS.this);
                    com.bytedance.adsdk.sP.TKC.TKC.TKC tkc = vS.this.f20181dx;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(vS.this.zR);
                    tkc.Sj(sb3.toString());
                    vS.this.invalidate();
                    vS.this.Zq();
                    return;
                }
                if (vS.this.kF < 0 || vS.this.uP < 0) {
                    StringBuilder sb4 = new StringBuilder("--==--- timer end, frame invalid: ");
                    sb4.append(vS.this.kF);
                    sb4.append(",");
                    sb4.append(vS.this.uP);
                } else {
                    new StringBuilder("--==--- timer end, play anim, startframe: ").append(vS.this.kF);
                    vS.this.Sj();
                    vS vSVar = vS.this;
                    vSVar.setFrame(vSVar.kF);
                    vS.this.Sj(new ValueAnimator.AnimatorUpdateListener() {
                        @Override
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            if (vS.this.getFrame() < vS.this.uP - 1 || vS.this.getFrame() >= vS.this.uP + 2) {
                                return;
                            }
                            new StringBuilder("--==--- timer end, play anim, endframe: ").append(vS.this.uP);
                            vS.this.sP(this);
                            vS.this.vS();
                        }
                    });
                }
                if ((!TextUtils.isEmpty(vS.this.wE) || (vS.this.ley != null && vS.this.ley.length() > 0)) && vS.this.Yf != null) {
                    sP unused = vS.this.Yf;
                    String unused2 = vS.this.wE;
                    JSONArray unused3 = vS.this.ley;
                }
            }
        };
        Dq();
    }

    static int HiB(vS vSVar) {
        int i10 = vSVar.TzV;
        vSVar.TzV = i10 + 1;
        return i10;
    }

    static int TzV(vS vSVar) {
        int i10 = vSVar.zR;
        vSVar.zR = i10 - 1;
        return i10;
    }

    public Jcg.Sj getGlobalConfig() {
        Jcg jcgWE;
        uA uAVar = this.Jcg;
        if (uAVar == null || (jcgWE = uAVar.wE()) == null) {
            return null;
        }
        return jcgWE.Ym();
    }

    private Jcg.sP getGlobalEvent() {
        Jcg jcgWE;
        uA uAVar = this.Jcg;
        if (uAVar == null || (jcgWE = uAVar.wE()) == null) {
            return null;
        }
        return jcgWE.TEQ();
    }

    public String getPlayDelayedELExpressTimeS() {
        Jcg jcgWE;
        uA uAVar = this.Jcg;
        if (uAVar == null || (jcgWE = uAVar.wE()) == null) {
            return null;
        }
        return jcgWE.uA();
    }

    private void setCompositionTask(Fmk<Jcg> fmk) {
        this.Fmk.add(EjP.SET_ANIMATION);
        dNu();
        Fmk();
        this.Zq = fmk.Sj(this.TKC).TKC(this.EjP);
    }

    public boolean getClipToCompositionBounds() {
        return this.Jcg.TKC();
    }

    public Jcg getComposition() {
        return this.uvD;
    }

    public long getDuration() {
        Jcg jcg = this.uvD;
        if (jcg != null) {
            return (long) jcg.HiB();
        }
        return 0L;
    }

    public int getFrame() {
        return this.Jcg.RiZ();
    }

    public String getImageAssetsFolder() {
        return this.Jcg.EjP();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.Jcg.HiB();
    }

    public float getMaxFrame() {
        return this.Jcg.Zq();
    }

    public float getMinFrame() {
        return this.Jcg.sef();
    }

    public TzV getPerformanceTracker() {
        return this.Jcg.Dq();
    }

    public float getProgress() {
        return this.Jcg.Yf();
    }

    public RiZ getRenderMode() {
        return this.Jcg.vS();
    }

    public int getRepeatCount() {
        return this.Jcg.dx();
    }

    public int getRepeatMode() {
        return this.Jcg.sU();
    }

    public float getSpeed() {
        return this.Jcg.uvD();
    }

    @Override
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof uA) && ((uA) drawable).vS() == RiZ.SOFTWARE) {
            this.Jcg.invalidateSelf();
        }
    }

    @Override
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        uA uAVar = this.Jcg;
        if (drawable2 == uAVar) {
            super.invalidateDrawable(uAVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.Ym) {
            return;
        }
        this.Jcg.Ym();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uvD();
        Handler handler = this.RiZ;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        TKC();
        sP();
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        int i10;
        if (!(parcelable instanceof TKC)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        TKC tkc = (TKC) parcelable;
        super.onRestoreInstanceState(tkc.getSuperState());
        this.Dq = tkc.Sj;
        Set<EjP> set = this.Fmk;
        EjP ejP = EjP.SET_ANIMATION;
        if (!set.contains(ejP) && !TextUtils.isEmpty(this.Dq)) {
            setAnimation(this.Dq);
        }
        this.uA = tkc.sP;
        if (!this.Fmk.contains(ejP) && (i10 = this.uA) != 0) {
            setAnimation(i10);
        }
        if (!this.Fmk.contains(EjP.SET_PROGRESS)) {
            Sj(tkc.TKC, false);
        }
        if (!this.Fmk.contains(EjP.PLAY_OPTION) && tkc.EjP) {
            Sj();
        }
        if (!this.Fmk.contains(EjP.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(tkc.HiB);
        }
        if (!this.Fmk.contains(EjP.SET_REPEAT_MODE)) {
            setRepeatMode(tkc.vS);
        }
        if (this.Fmk.contains(EjP.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(tkc.Jcg);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        TKC tkc = new TKC(super.onSaveInstanceState());
        tkc.Sj = this.Dq;
        tkc.sP = this.uA;
        tkc.TKC = this.Jcg.Yf();
        tkc.EjP = this.Jcg.ib();
        tkc.HiB = this.Jcg.EjP();
        tkc.vS = this.Jcg.sU();
        tkc.Jcg = this.Jcg.dx();
        return tkc;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int[][] iArr;
        com.bytedance.adsdk.sP.TKC.TKC.Sj Sj2 = Sj(motionEvent);
        if (Sj2 == null) {
            if (getGlobalConfig() == null || getGlobalConfig().Sj != 1) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        }
        String strUA = Sj2.uA();
        if (Sj2 instanceof com.bytedance.adsdk.sP.TKC.TKC.sP) {
            if (getGlobalConfig() == null || getGlobalConfig().Sj != 1) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        }
        if (strUA != null && strUA.startsWith("CSJCLOSE")) {
            uvD();
        }
        TEQ teqSj = Sj(Sj2.HiB());
        if (teqSj != null && motionEvent.getAction() == 1) {
            Sj(strUA, teqSj.HiB(), teqSj.Jcg());
            int[][] iArrVS = teqSj.vS();
            if (iArrVS != null) {
                Sj(iArrVS);
            } else if (getGlobalEvent() != null && (iArr = getGlobalEvent().sP) != null) {
                Sj(iArr);
            }
        }
        if (strUA == null || !strUA.startsWith("CSJNTP")) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void setAnimation(int i10) {
        this.uA = i10;
        this.Dq = null;
        setCompositionTask(Sj(i10));
    }

    public void setAnimationFromJson(String str) {
        Sj(str, (String) null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f20180aa ? Dq.Sj(getContext(), str) : Dq.Sj(getContext(), str, (String) null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.Jcg.HiB(z10);
    }

    public void setCacheComposition(boolean z10) {
        this.f20180aa = z10;
    }

    public void setClipToCompositionBounds(boolean z10) {
        this.Jcg.Sj(z10);
    }

    public void setComposition(Jcg jcg) {
        if (HiB.Sj) {
            Log.v(Sj, "Set Composition \n".concat(String.valueOf(jcg)));
        }
        this.Jcg.setCallback(this);
        this.uvD = jcg;
        this.TEQ = true;
        boolean zSj = this.Jcg.Sj(jcg, getContext().getApplicationContext());
        this.TEQ = false;
        if (getDrawable() != this.Jcg || zSj) {
            if (!zSj) {
                TzV();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator<Object> it = this.sef.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.Jcg.Jcg(str);
    }

    public void setFailureListener(Ym<Throwable> ym2) {
        this.HiB = ym2;
    }

    public void setFallbackResource(int i10) {
        this.vS = i10;
    }

    public void setFontAssetDelegate(com.bytedance.adsdk.sP.TKC tkc) {
        this.Jcg.Sj(tkc);
    }

    public void setFontMap(Map<String, Typeface> map) {
        this.Jcg.Sj(map);
    }

    public void setFrame(int i10) {
        this.Jcg.TKC(i10);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.Jcg.Jcg(z10);
    }

    public void setImageAssetDelegate(com.bytedance.adsdk.sP.EjP ejP) {
        this.Jcg.Sj(ejP);
    }

    public void setImageAssetsFolder(String str) {
        this.Jcg.Sj(str);
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        Fmk();
        super.setImageBitmap(bitmap);
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        Fmk();
        super.setImageDrawable(drawable);
    }

    @Override
    public void setImageResource(int i10) {
        Fmk();
        super.setImageResource(i10);
    }

    public void setLottieAnimListener(Sj sj2) {
        this.LD = sj2;
    }

    public void setLottieClicklistener(sP sPVar) {
        this.Yf = sPVar;
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.Jcg.sP(z10);
    }

    public void setMaxFrame(int i10) {
        this.Jcg.sP(i10);
    }

    public void setMaxProgress(float f10) {
        this.Jcg.sP(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.Jcg.EjP(str);
    }

    public void setMinFrame(int i10) {
        this.Jcg.Sj(i10);
    }

    public void setMinProgress(float f10) {
        this.Jcg.Sj(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.Jcg.EjP(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.Jcg.TKC(z10);
    }

    public void setProgress(float f10) {
        Sj(f10, true);
    }

    public void setRenderMode(RiZ riZ) {
        this.Jcg.Sj(riZ);
    }

    public void setRepeatCount(int i10) {
        this.Fmk.add(EjP.SET_REPEAT_COUNT);
        this.Jcg.HiB(i10);
    }

    public void setRepeatMode(int i10) {
        this.Fmk.add(EjP.SET_REPEAT_MODE);
        this.Jcg.EjP(i10);
    }

    public void setSafeMode(boolean z10) {
        this.Jcg.vS(z10);
    }

    public void setSpeed(float f10) {
        this.Jcg.TKC(f10);
    }

    public void setTextDelegate(sU sUVar) {
        this.Jcg.Sj(sUVar);
    }

    public void setUseCompositionFrameRate(boolean z10) {
        this.Jcg.Dq(z10);
    }

    public void setView(View view) {
        this.Jcg.Sj(view);
    }

    @Override
    public void unscheduleDrawable(Drawable drawable) {
        uA uAVar;
        if (!this.TEQ && drawable == (uAVar = this.Jcg) && uAVar.zR()) {
            vS();
        } else if (!this.TEQ && (drawable instanceof uA)) {
            uA uAVar2 = (uA) drawable;
            if (uAVar2.zR()) {
                uAVar2.LqL();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    private void Dq() {
        setSaveEnabled(false);
        this.f20180aa = true;
        setFallbackResource(0);
        setImageAssetsFolder("");
        Sj(0.0f, false);
        Sj(false, getContext().getApplicationContext());
        setIgnoreDisabledSystemAnimations(false);
        this.Jcg.Sj(Boolean.valueOf(com.bytedance.adsdk.sP.vS.vS.Sj(getContext()) != 0.0f));
        uA();
        TEQ();
        aa();
    }

    private void EjP(Matrix matrix, float f10, float f11, float f12, float f13) {
        if (f12 >= f10 || f13 >= f11) {
            if (f12 / f13 >= f10 / f11) {
                float f14 = f10 / f12;
                matrix.preScale(f14, f14);
                matrix.postTranslate(0.0f, (f11 - (f13 * f14)) / 2.0f);
                return;
            } else {
                float f15 = f11 / f13;
                matrix.preScale(f15, f15);
                matrix.postTranslate((f10 - (f12 * f15)) / 2.0f, 0.0f);
                return;
            }
        }
        if (f12 / f13 >= f10 / f11) {
            float f16 = f10 / f12;
            matrix.preScale(f16, f16);
            matrix.postTranslate(0.0f, (f11 - (f13 * f16)) / 2.0f);
        } else {
            float f17 = f11 / f13;
            matrix.preScale(f17, f17);
            matrix.postTranslate((f10 - (f12 * f17)) / 2.0f, 0.0f);
        }
    }

    private void Fmk() {
        Fmk<Jcg> fmk = this.Zq;
        if (fmk != null) {
            fmk.sP(this.TKC);
            this.Zq.EjP(this.EjP);
        }
    }

    private void TEQ() {
        Sj(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i10;
                Object animatedValue = valueAnimator.getAnimatedValue();
                if (!(animatedValue instanceof Float) || ((Float) animatedValue).floatValue() < 0.98f) {
                    return;
                }
                vS.HiB(vS.this);
                Jcg.Sj globalConfig = vS.this.getGlobalConfig();
                if (globalConfig != null && (i10 = globalConfig.EjP) > 0 && i10 > vS.this.TzV) {
                    vS.this.sef();
                    vS.this.Sj();
                    vS.this.setProgress(0.0f);
                } else {
                    vS.this.sP(this);
                    if (vS.this.LD != null) {
                        Sj unused = vS.this.LD;
                    }
                }
            }
        });
    }

    private void TKC(Matrix matrix, float f10, float f11, float f12, float f13) {
        matrix.postTranslate((f10 - f12) / 2.0f, (f11 - f13) / 2.0f);
    }

    private void TzV() {
        boolean zEjP = EjP();
        setImageDrawable(null);
        setImageDrawable(this.Jcg);
        if (zEjP) {
            this.Jcg.Fmk();
        }
    }

    public void Ym() {
        final Jcg.Sj globalConfig = getGlobalConfig();
        if (globalConfig == null || globalConfig.HiB <= 0) {
            return;
        }
        if (TextUtils.isEmpty(globalConfig.vS) && globalConfig.Jcg == null) {
            return;
        }
        int maxFrame = globalConfig.HiB;
        if (maxFrame > getMaxFrame()) {
            maxFrame = (int) getMaxFrame();
        }
        final float maxFrame2 = maxFrame / getMaxFrame();
        Sj(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Object animatedValue = valueAnimator.getAnimatedValue();
                if (!(animatedValue instanceof Float) || ((Float) animatedValue).floatValue() < maxFrame2) {
                    return;
                }
                vS.this.sP(this);
                if (vS.this.Yf != null) {
                    sP unused = vS.this.Yf;
                }
            }
        });
    }

    public void Zq() {
        this.dNu.postDelayed(this.LqL, 1000L);
    }

    private void aa() {
        Sj(new Animator.AnimatorListener() {
            @Override
            public void onAnimationStart(Animator animator) {
                sU sUVarKF;
                final long jElapsedRealtime = SystemClock.elapsedRealtime() - vS.this.sU;
                vS.this.sP(this);
                String playDelayedELExpressTimeS = vS.this.getPlayDelayedELExpressTimeS();
                if (!TextUtils.isEmpty(playDelayedELExpressTimeS) && (sUVarKF = vS.this.Jcg.kF()) != null) {
                    try {
                        int i10 = Integer.parseInt(sUVarKF.Sj(playDelayedELExpressTimeS)) * 1000;
                        if (vS.this.sU > 0) {
                            long jElapsedRealtime2 = (vS.this.sU + ((long) i10)) - SystemClock.elapsedRealtime();
                            "--==-- lottie delayed time: ".concat(String.valueOf(jElapsedRealtime2));
                            if (jElapsedRealtime2 > 0) {
                                vS.this.vS();
                                vS.this.setVisibility(8);
                                if (vS.this.RiZ == null) {
                                    vS.this.RiZ = new Handler(Looper.getMainLooper());
                                }
                                vS.this.RiZ.removeCallbacksAndMessages(null);
                                vS.this.RiZ.postDelayed(new Runnable() {
                                    @Override
                                    public void run() {
                                        vS.this.setVisibility(0);
                                        vS.this.Sj();
                                        vS.this.Sj(jElapsedRealtime);
                                    }
                                }, jElapsedRealtime2);
                                return;
                            }
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
                vS.this.Sj(jElapsedRealtime);
            }

            @Override
            public void onAnimationCancel(Animator animator) {
            }

            @Override
            public void onAnimationEnd(Animator animator) {
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
            }
        });
    }

    private void dNu() {
        this.uvD = null;
        this.Jcg.TEQ();
    }

    private void sP(RectF rectF, RectF rectF2) {
        float width = getWidth();
        float height = getHeight();
        float fWidth = this.Jcg.getBounds().width();
        float fHeight = this.Jcg.getBounds().height();
        if (width == 0.0f || height == 0.0f || fWidth == 0.0f || fHeight == 0.0f) {
            return;
        }
        Matrix matrix = new Matrix();
        int i10 = AnonymousClass5.Sj[getScaleType().ordinal()];
        if (i10 == 1) {
            Sj(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 2) {
            sP(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 3) {
            TKC(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 4) {
            EjP(matrix, width, height, fWidth, fHeight);
        }
        matrix.mapRect(rectF, rectF2);
    }

    public void sef() {
        uA uAVar;
        int i10;
        int i11;
        final int i12;
        if (this.uvD == null || (uAVar = this.Jcg) == null) {
            return;
        }
        sU sUVarKF = uAVar.kF();
        Jcg.TKC tkcDq = this.uvD.Dq();
        if (tkcDq == null || sUVarKF == null) {
            return;
        }
        final int i13 = tkcDq.Sj;
        if (i13 < 0) {
            "--==--- timer fail, ke is invalid: ".concat(String.valueOf(i13));
            return;
        }
        int[] iArr = tkcDq.HiB;
        final int i14 = -1;
        if (iArr == null || iArr.length < 2) {
            i10 = -1;
            i11 = -1;
        } else {
            i11 = iArr[0];
            i10 = iArr[1];
        }
        String strSj = sUVarKF.Sj(tkcDq.TKC);
        String strSj2 = sUVarKF.Sj(tkcDq.EjP);
        try {
            i12 = Integer.parseInt(strSj);
            try {
                i14 = Integer.parseInt(strSj2);
            } catch (NumberFormatException unused) {
            }
        } catch (NumberFormatException unused2) {
            i12 = -1;
        }
        StringBuilder sb2 = new StringBuilder("--==--- prepare timer, startS: ");
        sb2.append(i12);
        sb2.append(", lenS: ");
        sb2.append(i14);
        if (TextUtils.isEmpty(tkcDq.sP)) {
            new StringBuilder("--==--- timer fail, id is invalid: ").append(tkcDq.sP);
            return;
        }
        new StringBuilder("--==--- timer, id:").append(tkcDq.sP);
        com.bytedance.adsdk.sP.TKC.TKC.TKC TKC2 = TKC(tkcDq.sP);
        if (TKC2 != null) {
            this.wE = tkcDq.vS;
            this.ley = tkcDq.Jcg;
            this.f20181dx = TKC2;
            this.zR = i12;
            this.f20182ib = i12 - i14;
            this.kF = i11;
            this.uP = i10;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.zR);
            TKC2.Sj(sb3.toString());
            Sj(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (vS.this.getFrame() < i13 - 1 || vS.this.getFrame() >= i13 + 2) {
                        return;
                    }
                    new StringBuilder("--==--- enter timer point, frame: ").append(vS.this.getFrame());
                    vS.this.sP(this);
                    if (i12 >= 0 && i14 >= 0) {
                        vS.this.Zq();
                    }
                    vS.this.vS();
                }
            });
        }
    }

    private void uA() {
        Sj(new Animator.AnimatorListener() {
            @Override
            public void onAnimationStart(Animator animator) {
                vS.this.sP(this);
                vS.this.sef();
                vS.this.Ym();
            }

            @Override
            public void onAnimationCancel(Animator animator) {
            }

            @Override
            public void onAnimationEnd(Animator animator) {
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
            }
        });
    }

    private void uvD() {
        this.dNu.removeCallbacksAndMessages(null);
    }

    public void HiB() {
        this.Fmk.add(EjP.PLAY_OPTION);
        this.Jcg.ley();
    }

    public void setMaxFrame(String str) {
        this.Jcg.TKC(str);
    }

    public void setMinFrame(String str) {
        this.Jcg.sP(str);
    }

    public void vS() {
        this.Ym = false;
        this.Jcg.LqL();
    }

    private com.bytedance.adsdk.sP.TKC.TKC.TKC TKC(String str) {
        com.bytedance.adsdk.sP.TKC.TKC.sP sPVarSP;
        uA uAVar = this.Jcg;
        if (uAVar == null || (sPVarSP = uAVar.sP()) == null) {
            return null;
        }
        return Sj(sPVarSP, str);
    }

    public void Sj(long j10) {
        Map<String, Object> map;
        Jcg.Sj globalConfig = getGlobalConfig();
        if (this.LD != null) {
            HashMap map2 = new HashMap();
            map2.put("duration", Long.valueOf(j10));
            if (globalConfig == null || (map = globalConfig.sP) == null || map.isEmpty()) {
                return;
            }
            map2.putAll(globalConfig.sP);
        }
    }

    public void setAnimation(String str) {
        this.Dq = str;
        this.uA = 0;
        setCompositionTask(sP(str));
    }

    public void TKC() {
        this.Jcg.TzV();
    }

    private TEQ Sj(String str) {
        uA uAVar;
        Jcg jcgWE;
        Map<String, TEQ> mapUvD;
        if (TextUtils.isEmpty(str) || (uAVar = this.Jcg) == null || (jcgWE = uAVar.wE()) == null || (mapUvD = jcgWE.uvD()) == null) {
            return null;
        }
        return mapUvD.get(str);
    }

    public boolean EjP() {
        return this.Jcg.zR();
    }

    private void sP(Matrix matrix, float f10, float f11, float f12, float f13) {
        if (f12 < f10 && f13 < f11) {
            matrix.postTranslate((f10 - f12) / 2.0f, (f11 - f13) / 2.0f);
            return;
        }
        if (f12 / f13 >= f10 / f11) {
            float f14 = f10 / f12;
            matrix.preScale(f14, f14);
            matrix.postTranslate(0.0f, (f11 - (f13 * f14)) / 2.0f);
        } else {
            float f15 = f11 / f13;
            matrix.preScale(f15, f15);
            matrix.postTranslate((f10 - (f12 * f15)) / 2.0f, 0.0f);
        }
    }

    private void Sj(int[][] iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        try {
            int[] iArr2 = iArr[0];
            int i10 = iArr2[0];
            final int i11 = iArr2[1];
            if (i10 < 0 || i11 < 0) {
                return;
            }
            "--==--- inel enter, play anim, startframe: ".concat(String.valueOf(i10));
            uvD();
            Sj();
            setFrame(i10);
            Sj(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (vS.this.getFrame() < i11 - 1 || vS.this.getFrame() >= i11 + 2) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder("--==--- inel enter, play anim end, endframe: ");
                    sb2.append(i11);
                    sb2.append(", realFrame: ");
                    sb2.append(vS.this.getFrame());
                    vS.this.sP(this);
                    vS.this.vS();
                }
            });
        } catch (Throwable unused) {
        }
    }

    private Fmk<Jcg> sP(final String str) {
        if (isInEditMode()) {
            return new Fmk<>(new Callable<aa<Jcg>>() {
                @Override
                public aa<Jcg> call() throws Exception {
                    return vS.this.f20180aa ? Dq.TKC(vS.this.getContext(), str) : Dq.TKC(vS.this.getContext(), str, null);
                }
            }, true);
        }
        return this.f20180aa ? Dq.sP(getContext(), str) : Dq.sP(getContext(), str, (String) null);
    }

    public void sP(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.Jcg.sP(animatorUpdateListener);
    }

    private void Sj(String str, String str2, JSONArray jSONArray) {
        Jcg.sP globalEvent = getGlobalEvent();
        if (globalEvent != null && str != null) {
            if (TextUtils.isEmpty(str2) && !str.contains("CSJNO")) {
                str2 = globalEvent.Sj;
            }
            if ((jSONArray == null || jSONArray.length() <= 0) && !str.contains("CSJLELNO")) {
                jSONArray = globalEvent.TKC;
            }
        }
        if (!TextUtils.isEmpty(str2) || jSONArray == null) {
            return;
        }
        jSONArray.length();
    }

    public void sP() {
        this.Jcg.dNu();
    }

    public void sP(Animator.AnimatorListener animatorListener) {
        this.Jcg.sP(animatorListener);
    }

    private com.bytedance.adsdk.sP.TKC.TKC.Sj Sj(MotionEvent motionEvent) {
        com.bytedance.adsdk.sP.TKC.TKC.sP sPVarSP;
        uA uAVar = this.Jcg;
        if (uAVar == null || (sPVarSP = uAVar.sP()) == null) {
            return null;
        }
        return Sj(sPVarSP, motionEvent);
    }

    private com.bytedance.adsdk.sP.TKC.TKC.Sj Sj(com.bytedance.adsdk.sP.TKC.TKC.sP sPVar, MotionEvent motionEvent) {
        com.bytedance.adsdk.sP.TKC.TKC.Sj Sj2;
        for (com.bytedance.adsdk.sP.TKC.TKC.Sj sj2 : sPVar.aa()) {
            if (sj2 instanceof com.bytedance.adsdk.sP.TKC.TKC.sP) {
                if (sj2.Dq() && sj2.vS() > 0.0f) {
                    RectF rectF = new RectF();
                    sj2.Sj(rectF, sj2.EjP(), true);
                    if (rectF.width() >= 3.0f && rectF.height() >= 3.0f && (Sj2 = Sj((com.bytedance.adsdk.sP.TKC.TKC.sP) sj2, motionEvent)) != null) {
                        return Sj2;
                    }
                }
            } else if (sj2.Dq() && sj2.vS() > 0.0f) {
                RectF rectF2 = new RectF();
                uA uAVar = this.Jcg;
                if (uAVar != null && uAVar.Jcg()) {
                    sj2.Sj(rectF2, sj2.EjP(), true);
                    RectF rectFLD = this.Jcg.LD();
                    if (rectFLD != null) {
                        Sj(rectF2, rectFLD);
                    }
                } else {
                    RectF rectF3 = new RectF();
                    sj2.Sj(rectF3, sj2.EjP(), true);
                    sP(rectF2, rectF3);
                }
                if (Sj(motionEvent, rectF2)) {
                    return sj2;
                }
            }
        }
        return null;
    }

    private boolean Sj(MotionEvent motionEvent, RectF rectF) {
        if (motionEvent != null && rectF != null) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (x10 >= rectF.left && x10 <= rectF.right && y10 >= rectF.top && y10 <= rectF.bottom) {
                return true;
            }
        }
        return false;
    }

    private void Sj(RectF rectF, RectF rectF2) {
        float width = getWidth();
        float height = getHeight();
        float fWidth = rectF2.width();
        float fHeight = rectF2.height();
        if (width == 0.0f || height == 0.0f || fWidth == 0.0f || fHeight == 0.0f) {
            return;
        }
        Matrix matrix = new Matrix();
        int i10 = AnonymousClass5.Sj[getScaleType().ordinal()];
        if (i10 == 1) {
            Sj(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 2) {
            sP(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 3) {
            TKC(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 4) {
            EjP(matrix, width, height, fWidth, fHeight);
        }
        matrix.mapRect(rectF);
    }

    private void Sj(Matrix matrix, float f10, float f11, float f12, float f13) {
        if (f12 / f13 >= f10 / f11) {
            float f14 = f11 / f13;
            matrix.preScale(f14, f14);
            matrix.postTranslate(-(((f12 * f14) - f10) / 2.0f), 0.0f);
        } else {
            float f15 = f10 / f12;
            matrix.preScale(f15, f15);
            matrix.postTranslate(0.0f, -(((f13 * f15) - f11) / 2.0f));
        }
    }

    public void Sj(boolean z10, Context context) {
        this.Jcg.Sj(z10, context);
    }

    private Fmk<Jcg> Sj(final int i10) {
        if (isInEditMode()) {
            return new Fmk<>(new Callable<aa<Jcg>>() {
                @Override
                public aa<Jcg> call() throws Exception {
                    return vS.this.f20180aa ? Dq.sP(vS.this.getContext(), i10) : Dq.sP(vS.this.getContext(), i10, (String) null);
                }
            }, true);
        }
        return this.f20180aa ? Dq.Sj(getContext(), i10) : Dq.Sj(getContext(), i10, (String) null);
    }

    public void Sj(String str, String str2) {
        Sj(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void Sj(InputStream inputStream, String str) {
        setCompositionTask(Dq.Sj(inputStream, str));
    }

    private com.bytedance.adsdk.sP.TKC.TKC.TKC Sj(com.bytedance.adsdk.sP.TKC.TKC.sP sPVar, String str) {
        for (com.bytedance.adsdk.sP.TKC.TKC.Sj sj2 : sPVar.aa()) {
            if (sj2 instanceof com.bytedance.adsdk.sP.TKC.TKC.sP) {
                com.bytedance.adsdk.sP.TKC.TKC.TKC tkcSj = Sj((com.bytedance.adsdk.sP.TKC.TKC.sP) sj2, str);
                if (tkcSj != null) {
                    return tkcSj;
                }
            } else if (TextUtils.equals(str, sj2.uA()) && (sj2 instanceof com.bytedance.adsdk.sP.TKC.TKC.TKC)) {
                return (com.bytedance.adsdk.sP.TKC.TKC.TKC) sj2;
            }
        }
        return null;
    }

    public void Sj() {
        if (this.sU == 0) {
            this.sU = SystemClock.elapsedRealtime();
        }
        this.Fmk.add(EjP.PLAY_OPTION);
        this.Jcg.Ym();
    }

    public void Sj(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.Jcg.Sj(animatorUpdateListener);
    }

    public void Sj(Animator.AnimatorListener animatorListener) {
        this.Jcg.Sj(animatorListener);
    }

    public void Sj(boolean z10) {
        this.Jcg.HiB(z10 ? -1 : 0);
    }

    public Bitmap Sj(String str, Bitmap bitmap) {
        return this.Jcg.Sj(str, bitmap);
    }

    private void Sj(float f10, boolean z10) {
        if (z10) {
            this.Fmk.add(EjP.SET_PROGRESS);
        }
        this.Jcg.EjP(f10);
    }
}
