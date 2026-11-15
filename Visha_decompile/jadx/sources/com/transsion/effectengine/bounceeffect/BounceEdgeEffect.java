package com.transsion.effectengine.bounceeffect;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.EdgeEffect;
import androidx.annotation.NonNull;
import com.transsion.effectengine.bounceeffect.BounceEdgeEffect;
import com.transsion.effectengine.bounceeffect.dynamicanimation.DynamicAnimation;
import com.transsion.effectengine.bounceeffect.dynamicanimation.SpringAnimation;
import defpackage.uyd;
import defpackage.vyd;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;

@TargetApi(14)
public class BounceEdgeEffect extends EdgeEffect {
    public static final int DIRECTION_BOTTOM = 3;
    public static final int DIRECTION_LEFT = 0;
    public static final int DIRECTION_RIGHT = 2;
    public static final int DIRECTION_TOP = 1;
    public static float mCurrentRefreshRate = 60.0f;
    public final View z1OoOdo;
    public final boolean z1OoOfor;
    public final SpringAnimation z1OoOif;
    public final float z1OoOint;
    public OverScrollBounceEffectDecoratorBase z1OoOnew;
    public z1OoOdo z1OoOtry;

    public static class z1OoOdo implements Runnable {
        public final WeakReference<Context> z1OoOdo;

        public z1OoOdo(Context context) {
            this.z1OoOdo = new WeakReference<>(context);
        }

        @Override
        public final void run() {
            Context context = this.z1OoOdo.get();
            if (context != null) {
                try {
                    Object obj = vyd.f;
                    if (obj != null) {
                        Bundle bundle = vyd.g;
                        bundle.clear();
                        bundle.putString("tran_vibrate_package", context.getPackageName());
                        Method method = vyd.e;
                        if (method != null) {
                            Log.d("Utils", "vibrateV2: inner vibratorName = list_edge.he");
                            method.invoke(obj, "list_edge.he", bundle);
                        }
                    }
                } catch (Exception e) {
                    Log.e("Utils", "Failed to invoke vibrate " + e.getMessage());
                }
            }
        }
    }

    public BounceEdgeEffect(@NonNull View view, int i) {
        this(view, i, null);
    }

    public static void z1OoOdo(OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase, DynamicAnimation dynamicAnimation, float f, float f2) {
        IOverScrollListener iOverScrollListener;
        if (overScrollBounceEffectDecoratorBase == null || (iOverScrollListener = overScrollBounceEffectDecoratorBase.mOverScrollListener) == null || !overScrollBounceEffectDecoratorBase.mNestedScrollEnabled) {
            return;
        }
        iOverScrollListener.onOverScrollUpdated(f);
        overScrollBounceEffectDecoratorBase.mCurIsFlingBounceBackState = f != 0.0f;
    }

    public void cancelBounceAnimation() {
        this.z1OoOif.cancel();
    }

    @Override
    public final boolean draw(Canvas canvas) {
        return false;
    }

    public SpringAnimation getBounceTranslationAnimation() {
        return this.z1OoOif;
    }

    public boolean isBounceEdgeAnimRunning() {
        SpringAnimation springAnimation = this.z1OoOif;
        if (springAnimation != null) {
            return springAnimation.isRunning();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0150  */
    /* JADX WARN: Code duplicated, block: B:121:0x0156  */
    /* JADX WARN: Code duplicated, block: B:160:0x01bd A[PHI: r6 r7
      0x01bd: PHI (r6v9 float) = (r6v2 float), (r6v0 float), (r6v0 float) binds: [B:172:0x01da, B:159:0x01bb, B:155:0x01b4] A[DONT_GENERATE, DONT_INLINE]
      0x01bd: PHI (r7v2 float) = (r7v1 float), (r7v0 float), (r7v0 float) binds: [B:172:0x01da, B:159:0x01bb, B:155:0x01b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:218:0x0237  */
    /* JADX WARN: Code duplicated, block: B:223:0x0245  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ff  */
    @Override
    public final void onAbsorb(int i) {
        OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase;
        View view = this.z1OoOdo;
        if (view == null) {
            return;
        }
        float translationY = this.z1OoOfor ? view.getTranslationY() : view.getTranslationX();
        Log.d("BounceEdgeEffect", "view tanslation:" + translationY);
        if (translationY > Float.MAX_VALUE || translationY < -3.4028235E38f || this.z1OoOif.isRunning()) {
            return;
        }
        OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase2 = this.z1OoOnew;
        if (overScrollBounceEffectDecoratorBase2 != null && this.z1OoOfor && overScrollBounceEffectDecoratorBase2.getYDirection() * this.z1OoOint < 0.0f) {
            Log.e("BounceEdgeEffect", "onAbsorb: mBase.getDirection() = " + this.z1OoOnew.getYDirection() + " error absorb.");
            return;
        }
        View view2 = this.z1OoOdo;
        mCurrentRefreshRate = view2 == null ? 60.0f : ((WindowManager) view2.getContext().getSystemService("window")).getDefaultDisplay().getRefreshRate();
        float f = 0.6f;
        float f2 = 180.0f;
        float f3 = 0.5f;
        float f4 = 150.0f;
        if (vyd.b) {
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase3 = this.z1OoOnew;
            if (overScrollBounceEffectDecoratorBase3 == null) {
                f = 1.0f;
                f2 = 200.0f;
            } else if (overScrollBounceEffectDecoratorBase3.mCustomFlingBounceParameters) {
                f2 = overScrollBounceEffectDecoratorBase3.mStiffness;
                f = overScrollBounceEffectDecoratorBase3.mDamping;
            } else {
                boolean z = this.z1OoOfor;
                if ((z && overScrollBounceEffectDecoratorBase3.mBigDpModeEnabled && overScrollBounceEffectDecoratorBase3.mCardModeEnabled) || ((z && overScrollBounceEffectDecoratorBase3.mBigDpModeEnabled && overScrollBounceEffectDecoratorBase3.mGridModeEnabled) || (z && overScrollBounceEffectDecoratorBase3.mBigDpModeEnabled))) {
                    f2 = 105.0f;
                    f = 1.005f;
                } else if ((z && overScrollBounceEffectDecoratorBase3.mSmallDpModeEnabled && overScrollBounceEffectDecoratorBase3.mCenterDisplayModeEnabled) || (z && overScrollBounceEffectDecoratorBase3.mSmallDpModeEnabled)) {
                    f = 0.5f;
                    f2 = 150.0f;
                } else if ((z && overScrollBounceEffectDecoratorBase3.mMidDpModeEnabled && overScrollBounceEffectDecoratorBase3.mCardModeEnabled) || ((z && overScrollBounceEffectDecoratorBase3.mMidDpModeEnabled && overScrollBounceEffectDecoratorBase3.mGridModeEnabled) || (z && overScrollBounceEffectDecoratorBase3.mMidDpModeEnabled))) {
                    f2 = 105.0f;
                    f = 1.005f;
                } else if ((!z && overScrollBounceEffectDecoratorBase3.mBigDpModeEnabled && overScrollBounceEffectDecoratorBase3.mCardModeEnabled) || ((!z && overScrollBounceEffectDecoratorBase3.mBigDpModeEnabled && overScrollBounceEffectDecoratorBase3.mGridModeEnabled) || (!z && overScrollBounceEffectDecoratorBase3.mBigDpModeEnabled))) {
                    f2 = 80.0f;
                    f = 0.94f;
                } else if ((z || !overScrollBounceEffectDecoratorBase3.mSmallDpModeEnabled || !overScrollBounceEffectDecoratorBase3.mCenterDisplayModeEnabled) && (z || !overScrollBounceEffectDecoratorBase3.mSmallDpModeEnabled)) {
                    if (!(!z && overScrollBounceEffectDecoratorBase3.mMidDpModeEnabled && overScrollBounceEffectDecoratorBase3.mCardModeEnabled) && (!(!z && overScrollBounceEffectDecoratorBase3.mMidDpModeEnabled && overScrollBounceEffectDecoratorBase3.mGridModeEnabled) && (z || !overScrollBounceEffectDecoratorBase3.mMidDpModeEnabled))) {
                        f = 1.0f;
                        f2 = 200.0f;
                    } else {
                        f2 = 80.0f;
                        f = 0.94f;
                    }
                }
            }
            SpringAnimation springAnimation = this.z1OoOif;
            if (springAnimation != null) {
                springAnimation.setSpring(new com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOint(0.0f).z1OoOif(f2).z1OoOdo(f));
            }
        } else {
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase4 = this.z1OoOnew;
            if (overScrollBounceEffectDecoratorBase4 == null) {
                f = 1.0f;
                f2 = 200.0f;
            } else if (overScrollBounceEffectDecoratorBase4.mCustomFlingBounceParameters) {
                f2 = overScrollBounceEffectDecoratorBase4.mStiffness;
                f = overScrollBounceEffectDecoratorBase4.mDamping;
            } else {
                boolean z2 = this.z1OoOfor;
                float f5 = 240.0f;
                if (z2 && overScrollBounceEffectDecoratorBase4.mBigDpModeEnabled && overScrollBounceEffectDecoratorBase4.mCardModeEnabled) {
                    f = 0.86f;
                } else if (z2 && overScrollBounceEffectDecoratorBase4.mBigDpModeEnabled && overScrollBounceEffectDecoratorBase4.mGridModeEnabled) {
                    f = 0.93f;
                    f2 = 245.0f;
                } else {
                    if (z2 && overScrollBounceEffectDecoratorBase4.mBigDpModeEnabled) {
                        f2 = 235.0f;
                    } else if ((z2 && overScrollBounceEffectDecoratorBase4.mSmallDpModeEnabled && overScrollBounceEffectDecoratorBase4.mCenterDisplayModeEnabled) || (z2 && overScrollBounceEffectDecoratorBase4.mSmallDpModeEnabled)) {
                        f = f3;
                        f2 = f4;
                    } else if (z2 && overScrollBounceEffectDecoratorBase4.mMidDpModeEnabled && overScrollBounceEffectDecoratorBase4.mCardModeEnabled) {
                        f2 = 245.0f;
                    } else {
                        f3 = 0.95f;
                        f4 = 250.0f;
                        if (z2 && overScrollBounceEffectDecoratorBase4.mMidDpModeEnabled && overScrollBounceEffectDecoratorBase4.mGridModeEnabled) {
                            f = f3;
                            f2 = f4;
                        } else if (z2 && overScrollBounceEffectDecoratorBase4.mMidDpModeEnabled) {
                            f2 = f5;
                            f = 0.9f;
                        } else {
                            f5 = 255.0f;
                            if (!z2 && overScrollBounceEffectDecoratorBase4.mBigDpModeEnabled && overScrollBounceEffectDecoratorBase4.mCardModeEnabled) {
                                f = 0.92f;
                            } else if (!z2 && overScrollBounceEffectDecoratorBase4.mBigDpModeEnabled && overScrollBounceEffectDecoratorBase4.mGridModeEnabled) {
                                f2 = 260.0f;
                                f = 0.95f;
                            } else if (!z2 && overScrollBounceEffectDecoratorBase4.mBigDpModeEnabled) {
                                f2 = 250.0f;
                                f = 0.9f;
                            } else if ((z2 || !overScrollBounceEffectDecoratorBase4.mSmallDpModeEnabled || !overScrollBounceEffectDecoratorBase4.mCenterDisplayModeEnabled) && (z2 || !overScrollBounceEffectDecoratorBase4.mSmallDpModeEnabled)) {
                                if (z2 || !overScrollBounceEffectDecoratorBase4.mMidDpModeEnabled || !overScrollBounceEffectDecoratorBase4.mCardModeEnabled) {
                                    if (!z2 && overScrollBounceEffectDecoratorBase4.mMidDpModeEnabled && overScrollBounceEffectDecoratorBase4.mGridModeEnabled) {
                                        f = 0.93f;
                                        f2 = 245.0f;
                                    } else if (z2 || !overScrollBounceEffectDecoratorBase4.mMidDpModeEnabled) {
                                        f = 1.0f;
                                        f2 = 200.0f;
                                    } else {
                                        f2 = 250.0f;
                                    }
                                }
                                f2 = f5;
                                f = 0.9f;
                            }
                        }
                    }
                    f = 0.88f;
                }
                f2 = f5;
            }
            SpringAnimation springAnimation2 = this.z1OoOif;
            if (springAnimation2 != null) {
                springAnimation2.setSpring(new com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOint(0.0f).z1OoOif(f2).z1OoOdo(f));
            }
            Log.d("BounceEdgeEffect", "setDampingParameters stiffness=" + f2 + " damping=" + f);
        }
        this.z1OoOif.setStartVelocity(i * this.z1OoOint);
        this.z1OoOif.start();
        if (z1OoOdo()) {
            Log.d("BounceEdgeEffect", "Maintain a high refresh rate.");
            uyd.a(1);
        }
        if (this.z1OoOdo != null && (overScrollBounceEffectDecoratorBase = this.z1OoOnew) != null && overScrollBounceEffectDecoratorBase.getVibrateEnable() && vyd.c && vyd.d && z1OoOdo(this.z1OoOdo)) {
            View view3 = this.z1OoOdo;
            if (view3 != null && this.z1OoOtry == null) {
                this.z1OoOtry = new z1OoOdo(view3.getContext());
            }
            Handler handler = this.z1OoOdo.getHandler();
            if (handler != null) {
                handler.removeCallbacks(this.z1OoOtry);
                handler.post(this.z1OoOtry);
            }
        }
    }

    @Override
    public final void onPull(float f) {
        Log.d("BounceEdgeEffect", "onPull");
    }

    @Override
    public final void onRelease() {
        Log.d("BounceEdgeEffect", "onRelease");
    }

    public void setBase(IOverScrollDecor iOverScrollDecor) {
        if (iOverScrollDecor instanceof OverScrollBounceEffectDecoratorBase) {
            this.z1OoOnew = (OverScrollBounceEffectDecoratorBase) iOverScrollDecor;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0035  */
    /* JADX WARN: Code duplicated, block: B:19:0x0044  */
    public BounceEdgeEffect(@NonNull View view, int i, final OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase) {
        float f;
        float f2;
        super(view.getContext());
        this.z1OoOfor = true;
        this.z1OoOint = 0.0f;
        this.z1OoOdo = view;
        this.z1OoOnew = overScrollBounceEffectDecoratorBase;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    this.z1OoOint = -1.0f;
                } else if (i == 3) {
                    this.z1OoOint = -1.0f;
                }
                if (this.z1OoOfor) {
                    this.z1OoOif = new SpringAnimation(view, DynamicAnimation.TRANSLATION_Y);
                    f = 105.0f;
                    f2 = 1.005f;
                } else {
                    this.z1OoOif = new SpringAnimation(view, DynamicAnimation.TRANSLATION_X);
                    f = 80.0f;
                    f2 = 0.94f;
                }
                this.z1OoOif.setSpring(new com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOint(0.0f).z1OoOif(f).z1OoOdo(f2)).addEndListener(new DynamicAnimation.z1OoOclass() {
                    @Override
                    public final void z1OoOdo(DynamicAnimation dynamicAnimation, boolean z, float f3, float f4) {
                        this.a.z1OoOdo(dynamicAnimation, z, f3, f4);
                    }
                });
                this.z1OoOif.addUpdateListener(new DynamicAnimation.z1OoOconst() {
                    @Override
                    public final void z1OoOdo(DynamicAnimation dynamicAnimation, float f3, float f4) {
                        BounceEdgeEffect.z1OoOdo(overScrollBounceEffectDecoratorBase, dynamicAnimation, f3, f4);
                    }
                });
            }
            this.z1OoOint = 1.0f;
            this.z1OoOfor = true;
            if (this.z1OoOfor) {
                this.z1OoOif = new SpringAnimation(view, DynamicAnimation.TRANSLATION_Y);
                f = 105.0f;
                f2 = 1.005f;
            } else {
                this.z1OoOif = new SpringAnimation(view, DynamicAnimation.TRANSLATION_X);
                f = 80.0f;
                f2 = 0.94f;
            }
            this.z1OoOif.setSpring(new com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOint(0.0f).z1OoOif(f).z1OoOdo(f2)).addEndListener(new DynamicAnimation.z1OoOclass() {
                @Override
                public final void z1OoOdo(DynamicAnimation dynamicAnimation, boolean z, float f3, float f4) {
                    this.a.z1OoOdo(dynamicAnimation, z, f3, f4);
                }
            });
            this.z1OoOif.addUpdateListener(new DynamicAnimation.z1OoOconst() {
                @Override
                public final void z1OoOdo(DynamicAnimation dynamicAnimation, float f3, float f4) {
                    BounceEdgeEffect.z1OoOdo(overScrollBounceEffectDecoratorBase, dynamicAnimation, f3, f4);
                }
            });
        }
        this.z1OoOint = 1.0f;
        this.z1OoOfor = false;
        if (this.z1OoOfor) {
            this.z1OoOif = new SpringAnimation(view, DynamicAnimation.TRANSLATION_Y);
            f = 105.0f;
            f2 = 1.005f;
        } else {
            this.z1OoOif = new SpringAnimation(view, DynamicAnimation.TRANSLATION_X);
            f = 80.0f;
            f2 = 0.94f;
        }
        this.z1OoOif.setSpring(new com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOint(0.0f).z1OoOif(f).z1OoOdo(f2)).addEndListener(new DynamicAnimation.z1OoOclass() {
            @Override
            public final void z1OoOdo(DynamicAnimation dynamicAnimation, boolean z, float f3, float f4) {
                this.a.z1OoOdo(dynamicAnimation, z, f3, f4);
            }
        });
        this.z1OoOif.addUpdateListener(new DynamicAnimation.z1OoOconst() {
            @Override
            public final void z1OoOdo(DynamicAnimation dynamicAnimation, float f3, float f4) {
                BounceEdgeEffect.z1OoOdo(overScrollBounceEffectDecoratorBase, dynamicAnimation, f3, f4);
            }
        });
    }

    @Override
    public final void onPull(float f, float f2) {
        Log.d("BounceEdgeEffect", "onPull2：" + f);
    }

    public final boolean z1OoOdo() {
        OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase;
        if (!vyd.b || !this.z1OoOfor || (overScrollBounceEffectDecoratorBase = this.z1OoOnew) == null) {
            return false;
        }
        boolean zIsRefreshRateLimited = overScrollBounceEffectDecoratorBase.isRefreshRateLimited();
        Log.d("BounceEdgeEffect", "checkStartModifyRefreshRateStatus: isRefreshRateLimited = " + zIsRefreshRateLimited);
        return !zIsRefreshRateLimited;
    }

    public static boolean z1OoOdo(@NonNull View view) {
        Context context = view.getContext();
        if (context == null) {
            return false;
        }
        boolean z = context.checkSelfPermission("android.permission.VIBRATE") == 0;
        Log.d("BounceEdgeEffect", "hasVibratePermission: granted = " + z);
        return z;
    }

    public void z1OoOdo(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase;
        if (vyd.b && this.z1OoOfor && (overScrollBounceEffectDecoratorBase = this.z1OoOnew) != null) {
            boolean zIsBounceEdgeAnimRunning = overScrollBounceEffectDecoratorBase.isBounceEdgeAnimRunning(this);
            boolean zIsRefreshRateLimited = this.z1OoOnew.isRefreshRateLimited();
            Log.d("BounceEdgeEffect", "checkModifyRefreshRateStatus: mIsVertical = " + this.z1OoOfor + "  isBounceEdgeAnimRunning = " + zIsBounceEdgeAnimRunning + " isRefreshRateLimited = " + zIsRefreshRateLimited);
            if (!zIsBounceEdgeAnimRunning && !zIsRefreshRateLimited) {
                Log.d("BounceEdgeEffect", "Cancel high refresh rate.");
                uyd.a(0);
            }
        }
        Log.d(OverScrollBounceEffectDecoratorBase.TAG, "fling anim end--------  mIsVertical = " + this.z1OoOfor);
    }
}
