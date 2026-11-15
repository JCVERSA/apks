package com.transsion.effectengine.bounceeffect;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.widget.AbsListView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.effectengine.bounceeffect.dynamicanimation.DynamicAnimation;
import com.transsion.effectengine.bounceeffect.dynamicanimation.SpringAnimation;
import defpackage.vyd;

public abstract class OverScrollBounceEffectDecoratorBase implements IOverScrollDecor, View.OnTouchListener, RecyclerView.OnItemTouchListener {
    protected static final float DEFAULT_TOUCH_DRAG_MOVE_DIALOG_RATIO = 0.4f;
    protected static final float DEFAULT_TOUCH_DRAG_MOVE_RATIO = 0.8f;
    protected static final float DEFAULT_TOUCH_DRAG_MOVE_SMALL_SCREEN_RATIO = 0.4f;
    protected static final float MAXIMUM_VELOCITY = 5000.0f;
    protected static final int MAX_SINGLE_DRAG_DISTANCE = 1000;
    protected static final float MINIUM_VELOCITY = 500.0f;
    protected static final float OPTIMIZED_DRAG_DAMPING = 1.11f;
    protected static final float OPTIMIZED_DRAG_STIFF = 311.0f;
    protected static final float OPTIMIZED_FLING_DAMPING = 1.005f;
    protected static final float OPTIMIZED_FLING_DAMPING_H = 0.94f;
    protected static final float OPTIMIZED_FLING_STIFF = 105.0f;
    protected static final float OPTIMIZED_FLING_STIFF_H = 80.0f;
    protected static final float OPTIMIZED_FRACTION_FACTOR = 0.65f;
    protected static final float OPTIMIZED_FRACTION_FACTOR_DIFF_TTB = 1.1f;
    protected static final float OPTIMIZED_FRACTION_FACTOR_H = 0.94f;
    protected static final float SPRING_MAX_VELOCITY = 3000.0f;
    public static final String TAG = "BounceEffect";
    protected static final int VELOCITY_UNIT = 1000;
    protected static float damping = 1.2f;
    protected static float stiffness = 400.0f;
    protected z1OoOif mCurrentState;
    protected float mDirectionYRaw;
    protected float mDragDampingHigh;
    protected float mDragDampingLow;
    protected float mDragDampingMedium;
    protected float mDragStiffnessHigh;
    protected float mDragStiffnessLow;
    protected float mDragStiffnessMedium;
    protected final z1OoOfor mIdleState;
    protected float mLastYRaw;
    protected float mScreenHeight;
    protected float mScreenWidth;
    protected int mTouchSlop;
    protected SpringAnimation mTranslationAnimation;
    protected VelocityTracker mVelocityTracker;
    protected final com.transsion.effectengine.bounceeffect.adapters.z1OoOfor mViewAdapter;
    protected final z1OoOnew mStartAttr = new z1OoOnew();
    protected boolean mNestedScrollEnabled = false;
    protected boolean mNestedEdgeReached = false;
    protected boolean mNestedFarEdgeReached = false;
    protected boolean mNestedEdgeReachedNeedUpdateFirstPoint = false;
    protected boolean mNestedFarEdgeReachedNeedUpdateFirstPoint = false;
    protected boolean mDoubleFrictionEnabled = false;
    protected int mScrollMode = 2;
    protected int mInitialTouchX = Integer.MAX_VALUE;
    protected int mInitialTouchY = Integer.MAX_VALUE;
    protected int mLastTouchX = Integer.MAX_VALUE;
    protected int mLastTouchY = Integer.MAX_VALUE;
    protected int mLastTouchPassedToRecyclerViewX = Integer.MAX_VALUE;
    protected int mLastTouchPassedToRecyclerViewY = Integer.MAX_VALUE;
    protected float mAccumulatedMissedScrollDelta = 0.0f;
    protected boolean mAvoidVelocity = false;
    protected boolean mJustCancelAnimation = false;
    protected com.transsion.effectengine.bounceeffect.z1OoOfor mBounceEdgeEffect = null;
    protected IOverScrollListener mOverScrollListener = null;
    protected boolean mCurIsFlingBounceBackState = false;
    protected boolean mIsFirstEnterFlingBounceBack = true;
    protected boolean mDialogModeEnabled = false;
    protected boolean mSmallDpModeEnabled = false;
    protected boolean mBigDpModeEnabled = false;
    protected boolean mMidDpModeEnabled = false;
    protected boolean mGridModeEnabled = false;
    protected boolean mCardModeEnabled = false;
    protected boolean mCenterDisplayModeEnabled = false;
    protected boolean mCustomDragBounceParameters = false;
    protected boolean mCustomDragSpringParameters = false;
    protected boolean mCustomFlingBounceParameters = false;
    protected boolean mUseInitialFrictionFactor = false;
    protected boolean mDiffFrictionFactor = true;
    protected boolean mRefreshRateLimited = false;
    protected boolean mVibrateEnable = false;
    protected boolean mFullDragFollowEnabled = false;
    protected float mDragMoveRatio = 0.8f;
    protected float mDragIndex = 4.0f;
    protected float mStiffness = 100.0f;
    protected float mDamping = 1.0f;
    protected final z1OoOdo mBounceBackState = new z1OoOdo();
    protected final z1OoOtry mOverScrollingState = new z1OoOtry();

    public class z1OoOdo implements z1OoOif, DynamicAnimation.z1OoOclass, DynamicAnimation.z1OoOconst {
        public final z1OoOint z1OoOdo;

        public z1OoOdo() {
            this.z1OoOdo = OverScrollBounceEffectDecoratorBase.this.createMotionAttributes();
        }

        @Override
        public final int z1OoOdo() {
            return 3;
        }

        @Override
        public final boolean z1OoOfor(MotionEvent motionEvent) {
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "touch down bounceback");
            if (OverScrollBounceEffectDecoratorBase.this.mStartAttr.z1OoOdo != motionEvent.getPointerId(0)) {
                return true;
            }
            int[] iArr = new int[2];
            OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView().getLocationOnScreen(iArr);
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
            int x = (int) (motionEvent.getX(0) + iArr[0] + 0.5f);
            overScrollBounceEffectDecoratorBase.mLastTouchX = x;
            overScrollBounceEffectDecoratorBase.mInitialTouchX = x;
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase2 = OverScrollBounceEffectDecoratorBase.this;
            int y = (int) (motionEvent.getY(0) + iArr[1] + 0.5f);
            overScrollBounceEffectDecoratorBase2.mLastTouchY = y;
            overScrollBounceEffectDecoratorBase2.mInitialTouchY = y;
            OverScrollBounceEffectDecoratorBase.this.initOrResetVelocityTracker();
            OverScrollBounceEffectDecoratorBase.this.mVelocityTracker.addMovement(motionEvent);
            if (!OverScrollBounceEffectDecoratorBase.this.mNestedScrollEnabled) {
                return true;
            }
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "touch down bounceback not handle");
            return false;
        }

        @Override
        public final boolean z1OoOif(MotionEvent motionEvent) {
            boolean zPerformOverscrollHandoff = false;
            if (OverScrollBounceEffectDecoratorBase.this.mStartAttr.z1OoOdo != motionEvent.getPointerId(0)) {
                return true;
            }
            View view = OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView();
            this.z1OoOdo.z1OoOdo(view, motionEvent, OverScrollBounceEffectDecoratorBase.this.mBounceBackState);
            OverScrollBounceEffectDecoratorBase.this.initVelocityTrackerIfNotExists();
            OverScrollBounceEffectDecoratorBase.this.mVelocityTracker.addMovement(motionEvent);
            z1OoOint z1oooint = this.z1OoOdo;
            if (!z1oooint.z1OoOfor) {
                return false;
            }
            float fClampOffsetToBoundary = z1oooint.z1OoOdo + z1oooint.z1OoOif;
            SpringAnimation springAnimation = OverScrollBounceEffectDecoratorBase.this.mTranslationAnimation;
            if (springAnimation != null && springAnimation.isRunning()) {
                OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
                overScrollBounceEffectDecoratorBase.mJustCancelAnimation = true;
                overScrollBounceEffectDecoratorBase.mTranslationAnimation.cancel();
            }
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase2 = OverScrollBounceEffectDecoratorBase.this;
            if (overScrollBounceEffectDecoratorBase2.mStartAttr.z1OoOif == this.z1OoOdo.z1OoOint) {
                overScrollBounceEffectDecoratorBase2.issueStateTransition(overScrollBounceEffectDecoratorBase2.mOverScrollingState);
                Log.d(OverScrollBounceEffectDecoratorBase.TAG, "touch move bounceback handled");
                return true;
            }
            OverScrollBounceEffectDecoratorBase.this.mStartAttr.getClass();
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "out bounceback:" + fClampOffsetToBoundary + "orig:0.0");
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase3 = OverScrollBounceEffectDecoratorBase.this;
            boolean z = overScrollBounceEffectDecoratorBase3.mStartAttr.z1OoOif;
            if ((z && !this.z1OoOdo.z1OoOint && fClampOffsetToBoundary <= 0.0f) || (!z && this.z1OoOdo.z1OoOint && fClampOffsetToBoundary >= 0.0f)) {
                overScrollBounceEffectDecoratorBase3.issueStateTransition(overScrollBounceEffectDecoratorBase3.mIdleState);
                fClampOffsetToBoundary = OverScrollBounceEffectDecoratorBase.this.clampOffsetToBoundary(fClampOffsetToBoundary);
                if (OverScrollBounceEffectDecoratorBase.this.shouldHandOffMoveToScroll(view)) {
                    zPerformOverscrollHandoff = OverScrollBounceEffectDecoratorBase.this.performOverscrollHandoff(view, motionEvent, fClampOffsetToBoundary);
                }
            }
            if (!zPerformOverscrollHandoff) {
                OverScrollBounceEffectDecoratorBase.this.translateView(view, fClampOffsetToBoundary);
            }
            return !zPerformOverscrollHandoff;
        }

        @Override
        public final void z1OoOdo(z1OoOif z1oooif) {
            if (z1oooif == this) {
                return;
            }
            OverScrollBounceEffectDecoratorBase.this.createAnimation();
            OverScrollBounceEffectDecoratorBase.this.mTranslationAnimation.addEndListener(this);
            OverScrollBounceEffectDecoratorBase.this.mTranslationAnimation.addUpdateListener(this);
            View view = OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView();
            OverScrollBounceEffectDecoratorBase.this.mScrollMode = view.getOverScrollMode();
            view.setOverScrollMode(2);
            if (OverScrollBounceEffectDecoratorBase.this.sanityCheck(view)) {
                OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
                if (!overScrollBounceEffectDecoratorBase.mAvoidVelocity) {
                    overScrollBounceEffectDecoratorBase.mTranslationAnimation.setStartVelocity(overScrollBounceEffectDecoratorBase.getVelocity(overScrollBounceEffectDecoratorBase.mVelocityTracker));
                }
                OverScrollBounceEffectDecoratorBase.this.mTranslationAnimation.start();
            }
        }

        @Override
        public final void z1OoOdo(DynamicAnimation dynamicAnimation, float f, float f2) {
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
            IOverScrollListener iOverScrollListener = overScrollBounceEffectDecoratorBase.mOverScrollListener;
            if (iOverScrollListener != null) {
                iOverScrollListener.onOverScrollUpdated(overScrollBounceEffectDecoratorBase.getTranslationProperty(overScrollBounceEffectDecoratorBase.getView()));
            }
        }

        @Override
        public final void z1OoOdo(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "onAnimationEnd");
            OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView().setOverScrollMode(OverScrollBounceEffectDecoratorBase.this.mScrollMode);
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
            if (overScrollBounceEffectDecoratorBase.mCurrentState == overScrollBounceEffectDecoratorBase.mBounceBackState) {
                if (overScrollBounceEffectDecoratorBase.mJustCancelAnimation) {
                    overScrollBounceEffectDecoratorBase.mJustCancelAnimation = false;
                } else {
                    overScrollBounceEffectDecoratorBase.issueStateTransition(overScrollBounceEffectDecoratorBase.mIdleState);
                }
            }
        }

        @Override
        public final boolean z1OoOdo(MotionEvent motionEvent) {
            if (OverScrollBounceEffectDecoratorBase.this.mStartAttr.z1OoOdo != motionEvent.getPointerId(0)) {
                return true;
            }
            if (OverScrollBounceEffectDecoratorBase.this.mTranslationAnimation != null) {
                Log.d(OverScrollBounceEffectDecoratorBase.TAG, "touch up bounceback start anim");
                OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
                if (overScrollBounceEffectDecoratorBase.sanityCheck(overScrollBounceEffectDecoratorBase.mViewAdapter.getView())) {
                    OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase2 = OverScrollBounceEffectDecoratorBase.this;
                    if (!overScrollBounceEffectDecoratorBase2.mAvoidVelocity) {
                        overScrollBounceEffectDecoratorBase2.mTranslationAnimation.setStartVelocity(overScrollBounceEffectDecoratorBase2.getVelocity(overScrollBounceEffectDecoratorBase2.mVelocityTracker));
                    }
                    OverScrollBounceEffectDecoratorBase.this.mTranslationAnimation.start();
                }
            }
            OverScrollBounceEffectDecoratorBase.this.recycleVelocityTracker();
            View view = OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView();
            this.z1OoOdo.z1OoOdo(view, motionEvent, OverScrollBounceEffectDecoratorBase.this.mOverScrollingState);
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "touch up bounceback");
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase3 = OverScrollBounceEffectDecoratorBase.this;
            if (overScrollBounceEffectDecoratorBase3.mStartAttr.z1OoOif != this.z1OoOdo.z1OoOint) {
                view.setOverScrollMode(overScrollBounceEffectDecoratorBase3.mScrollMode);
                Log.d(OverScrollBounceEffectDecoratorBase.TAG, "touch up bounceback not handle");
                return false;
            }
            if (overScrollBounceEffectDecoratorBase3.getView() instanceof RecyclerView) {
                ((RecyclerView) OverScrollBounceEffectDecoratorBase.this.getView()).stopScroll();
            }
            return true;
        }
    }

    public class z1OoOfor implements z1OoOif {
        public final z1OoOint z1OoOdo;

        public z1OoOfor() {
            this.z1OoOdo = OverScrollBounceEffectDecoratorBase.this.createMotionAttributes();
        }

        @Override
        public final int z1OoOdo() {
            return 0;
        }

        @Override
        public final boolean z1OoOfor(MotionEvent motionEvent) {
            int[] iArr = new int[2];
            OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView().getLocationOnScreen(iArr);
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
            int x = (int) (motionEvent.getX(0) + iArr[0] + 0.5f);
            overScrollBounceEffectDecoratorBase.mLastTouchX = x;
            overScrollBounceEffectDecoratorBase.mInitialTouchX = x;
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase2 = OverScrollBounceEffectDecoratorBase.this;
            int y = (int) (motionEvent.getY(0) + iArr[1] + 0.5f);
            overScrollBounceEffectDecoratorBase2.mLastTouchY = y;
            overScrollBounceEffectDecoratorBase2.mInitialTouchY = y;
            OverScrollBounceEffectDecoratorBase.this.initOrResetVelocityTracker();
            OverScrollBounceEffectDecoratorBase.this.mVelocityTracker.addMovement(motionEvent);
            return false;
        }

        @Override
        public final boolean z1OoOif(MotionEvent motionEvent) {
            com.transsion.effectengine.bounceeffect.z1OoOfor z1ooofor;
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
            if (overScrollBounceEffectDecoratorBase.mNestedScrollEnabled && !overScrollBounceEffectDecoratorBase.mNestedEdgeReached && !overScrollBounceEffectDecoratorBase.mNestedFarEdgeReached) {
                int[] iArr = new int[2];
                overScrollBounceEffectDecoratorBase.mViewAdapter.getView().getLocationOnScreen(iArr);
                OverScrollBounceEffectDecoratorBase.this.mLastTouchX = (int) (motionEvent.getX(0) + iArr[0] + 0.5f);
                OverScrollBounceEffectDecoratorBase.this.mLastTouchY = (int) (motionEvent.getY(0) + iArr[1] + 0.5f);
                return false;
            }
            if (overScrollBounceEffectDecoratorBase.mNestedEdgeReachedNeedUpdateFirstPoint || overScrollBounceEffectDecoratorBase.mNestedFarEdgeReachedNeedUpdateFirstPoint) {
                int[] iArr2 = new int[2];
                overScrollBounceEffectDecoratorBase.mViewAdapter.getView().getLocationOnScreen(iArr2);
                OverScrollBounceEffectDecoratorBase.this.mLastTouchX = (int) (motionEvent.getX(0) + iArr2[0] + 0.5f);
                OverScrollBounceEffectDecoratorBase.this.mLastTouchY = (int) (motionEvent.getY(0) + iArr2[1] + 0.5f);
                OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase2 = OverScrollBounceEffectDecoratorBase.this;
                overScrollBounceEffectDecoratorBase2.mNestedEdgeReachedNeedUpdateFirstPoint = false;
                overScrollBounceEffectDecoratorBase2.mNestedFarEdgeReachedNeedUpdateFirstPoint = false;
            }
            View view = OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView();
            boolean zZ1OoOdo = this.z1OoOdo.z1OoOdo(view, motionEvent, OverScrollBounceEffectDecoratorBase.this.mIdleState);
            this.z1OoOdo.z1OoOtry = false;
            OverScrollBounceEffectDecoratorBase.this.initVelocityTrackerIfNotExists();
            OverScrollBounceEffectDecoratorBase.this.mVelocityTracker.addMovement(motionEvent);
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase3 = OverScrollBounceEffectDecoratorBase.this;
            boolean z = overScrollBounceEffectDecoratorBase3.mCurIsFlingBounceBackState;
            if (z && overScrollBounceEffectDecoratorBase3.mNestedScrollEnabled && overScrollBounceEffectDecoratorBase3.mNestedEdgeReached && overScrollBounceEffectDecoratorBase3.mIsFirstEnterFlingBounceBack) {
                overScrollBounceEffectDecoratorBase3.mIsFirstEnterFlingBounceBack = false;
                return true;
            }
            if (z && overScrollBounceEffectDecoratorBase3.mNestedScrollEnabled && overScrollBounceEffectDecoratorBase3.mNestedEdgeReached && !this.z1OoOdo.z1OoOint && ((overScrollBounceEffectDecoratorBase3.mViewAdapter.isInAbsoluteStart() || OverScrollBounceEffectDecoratorBase.this.mViewAdapter.isInAbsoluteEnd()) && (z1ooofor = OverScrollBounceEffectDecoratorBase.this.mBounceEdgeEffect) != null)) {
                z1ooofor.z1OoOdo();
                OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase4 = OverScrollBounceEffectDecoratorBase.this;
                overScrollBounceEffectDecoratorBase4.mCurIsFlingBounceBackState = false;
                overScrollBounceEffectDecoratorBase4.mIsFirstEnterFlingBounceBack = true;
                overScrollBounceEffectDecoratorBase4.mStartAttr.z1OoOdo = motionEvent.getPointerId(0);
                OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase5 = OverScrollBounceEffectDecoratorBase.this;
                z1OoOnew z1ooonew = overScrollBounceEffectDecoratorBase5.mStartAttr;
                z1ooonew.getClass();
                z1ooonew.z1OoOif = !this.z1OoOdo.z1OoOint;
                overScrollBounceEffectDecoratorBase5.issueStateTransition(overScrollBounceEffectDecoratorBase5.mOverScrollingState);
                OverScrollBounceEffectDecoratorBase.this.resetAccumulatedMissedScrollDelta();
                OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase6 = OverScrollBounceEffectDecoratorBase.this;
                z1OoOint z1oooint = this.z1OoOdo;
                float frictionFactor = overScrollBounceEffectDecoratorBase6.getFrictionFactor(z1oooint.z1OoOdo, z1oooint.z1OoOif, z1oooint.z1OoOint == overScrollBounceEffectDecoratorBase6.mStartAttr.z1OoOif, z1oooint.z1OoOnew > 0.0f);
                z1OoOint z1oooint2 = this.z1OoOdo;
                float f = z1oooint2.z1OoOdo + (z1oooint2.z1OoOif * frictionFactor);
                OverScrollBounceEffectDecoratorBase.this.translateView(view, f);
                if (f > 40.0f && (view instanceof RecyclerView)) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    view.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, 0.0f, 0.0f, 0));
                    Log.d(OverScrollBounceEffectDecoratorBase.TAG, "Send action down event");
                }
                return true;
            }
            z1OoOint z1oooint3 = this.z1OoOdo;
            if (!z1oooint3.z1OoOfor || zZ1OoOdo) {
                return false;
            }
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase7 = OverScrollBounceEffectDecoratorBase.this;
            if (overScrollBounceEffectDecoratorBase7.mNestedScrollEnabled && ((overScrollBounceEffectDecoratorBase7.mNestedEdgeReached && !z1oooint3.z1OoOint) || (overScrollBounceEffectDecoratorBase7.mNestedFarEdgeReached && z1oooint3.z1OoOint))) {
                return false;
            }
            if (!(overScrollBounceEffectDecoratorBase7.mViewAdapter.isInAbsoluteStart() && this.z1OoOdo.z1OoOint) && (!OverScrollBounceEffectDecoratorBase.this.mViewAdapter.isInAbsoluteEnd() || this.z1OoOdo.z1OoOint)) {
                return false;
            }
            OverScrollBounceEffectDecoratorBase.this.mStartAttr.z1OoOdo = motionEvent.getPointerId(0);
            z1OoOnew z1ooonew2 = OverScrollBounceEffectDecoratorBase.this.mStartAttr;
            z1ooonew2.getClass();
            z1ooonew2.z1OoOif = this.z1OoOdo.z1OoOint;
            OverScrollBounceEffectDecoratorBase.this.mStartAttr.getClass();
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "about to switch to overscroll mode, start mDir:" + OverScrollBounceEffectDecoratorBase.this.mStartAttr.z1OoOif + " mAbsOffset:0.0");
            com.transsion.effectengine.bounceeffect.z1OoOfor z1ooofor2 = OverScrollBounceEffectDecoratorBase.this.mBounceEdgeEffect;
            if (z1ooofor2 != null) {
                z1ooofor2.z1OoOdo();
                OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase8 = OverScrollBounceEffectDecoratorBase.this;
                overScrollBounceEffectDecoratorBase8.mCurIsFlingBounceBackState = false;
                overScrollBounceEffectDecoratorBase8.mIsFirstEnterFlingBounceBack = true;
            }
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase9 = OverScrollBounceEffectDecoratorBase.this;
            overScrollBounceEffectDecoratorBase9.issueStateTransition(overScrollBounceEffectDecoratorBase9.mOverScrollingState);
            OverScrollBounceEffectDecoratorBase.this.resetAccumulatedMissedScrollDelta();
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase10 = OverScrollBounceEffectDecoratorBase.this;
            z1OoOint z1oooint4 = this.z1OoOdo;
            float frictionFactor2 = overScrollBounceEffectDecoratorBase10.getFrictionFactor(z1oooint4.z1OoOdo, z1oooint4.z1OoOif, z1oooint4.z1OoOint == overScrollBounceEffectDecoratorBase10.mStartAttr.z1OoOif, z1oooint4.z1OoOnew > 0.0f);
            z1OoOint z1oooint5 = this.z1OoOdo;
            OverScrollBounceEffectDecoratorBase.this.translateView(view, z1oooint5.z1OoOdo + (z1oooint5.z1OoOif * frictionFactor2));
            if (view instanceof AbsListView) {
                AbsListView absListView = (AbsListView) view;
                for (int i = 0; i < absListView.getChildCount(); i++) {
                    View childAt = absListView.getChildAt(i);
                    if (childAt != null) {
                        childAt.setPressed(false);
                        childAt.setSelected(false);
                    }
                }
                if (Build.VERSION.SDK_INT < 31) {
                    long jUptimeMillis2 = SystemClock.uptimeMillis();
                    absListView.onTouchEvent(MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0));
                }
            }
            if (!(view instanceof RecyclerView) || Build.VERSION.SDK_INT < 31) {
                view.cancelPendingInputEvents();
            }
            view.setPressed(false);
            view.setSelected(false);
            return true;
        }

        @Override
        public final void z1OoOdo(z1OoOif z1oooif) {
        }

        @Override
        public final boolean z1OoOdo(MotionEvent motionEvent) {
            OverScrollBounceEffectDecoratorBase.this.recycleVelocityTracker();
            return false;
        }
    }

    public interface z1OoOif {
        int z1OoOdo();

        void z1OoOdo(z1OoOif z1oooif);

        boolean z1OoOdo(MotionEvent motionEvent);

        boolean z1OoOfor(MotionEvent motionEvent);

        boolean z1OoOif(MotionEvent motionEvent);
    }

    public static abstract class z1OoOint {
        public boolean z1OoObyte;
        public float z1OoOdo;
        public boolean z1OoOfor;
        public float z1OoOif;
        public boolean z1OoOint;
        public float z1OoOnew;
        public boolean z1OoOtry;

        public abstract boolean z1OoOdo(View view, MotionEvent motionEvent, z1OoOif z1oooif);
    }

    public static class z1OoOnew {
        public int z1OoOdo;
        public boolean z1OoOif;
    }

    public class z1OoOtry implements z1OoOif {
        public final z1OoOint z1OoOdo;
        public int z1OoOif;

        public z1OoOtry() {
            this.z1OoOdo = OverScrollBounceEffectDecoratorBase.this.createMotionAttributes();
        }

        @Override
        public final int z1OoOdo() {
            return this.z1OoOif;
        }

        @Override
        public final boolean z1OoOfor(MotionEvent motionEvent) {
            int[] iArr = new int[2];
            OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView().getLocationOnScreen(iArr);
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
            int x = (int) (motionEvent.getX(0) + iArr[0] + 0.5f);
            overScrollBounceEffectDecoratorBase.mLastTouchX = x;
            overScrollBounceEffectDecoratorBase.mInitialTouchX = x;
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase2 = OverScrollBounceEffectDecoratorBase.this;
            int y = (int) (motionEvent.getY(0) + iArr[1] + 0.5f);
            overScrollBounceEffectDecoratorBase2.mLastTouchY = y;
            overScrollBounceEffectDecoratorBase2.mInitialTouchY = y;
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "touch down overscroll");
            OverScrollBounceEffectDecoratorBase.this.initOrResetVelocityTracker();
            OverScrollBounceEffectDecoratorBase.this.mVelocityTracker.addMovement(motionEvent);
            return true;
        }

        @Override
        public final boolean z1OoOif(MotionEvent motionEvent) {
            boolean zPerformOverscrollHandoff = false;
            if (OverScrollBounceEffectDecoratorBase.this.mStartAttr.z1OoOdo != motionEvent.getPointerId(0)) {
                OverScrollBounceEffectDecoratorBase.this.resetState();
                OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
                overScrollBounceEffectDecoratorBase.issueStateTransition(overScrollBounceEffectDecoratorBase.mBounceBackState);
                return true;
            }
            OverScrollBounceEffectDecoratorBase.this.initVelocityTrackerIfNotExists();
            OverScrollBounceEffectDecoratorBase.this.mVelocityTracker.addMovement(motionEvent);
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase2 = OverScrollBounceEffectDecoratorBase.this;
            if (overScrollBounceEffectDecoratorBase2.mNestedScrollEnabled && !overScrollBounceEffectDecoratorBase2.mNestedEdgeReached && !overScrollBounceEffectDecoratorBase2.mNestedFarEdgeReached) {
                int[] iArr = new int[2];
                overScrollBounceEffectDecoratorBase2.mViewAdapter.getView().getLocationOnScreen(iArr);
                OverScrollBounceEffectDecoratorBase.this.mLastTouchX = (int) (motionEvent.getX(0) + iArr[0] + 0.5f);
                OverScrollBounceEffectDecoratorBase.this.mLastTouchY = (int) (motionEvent.getY(0) + iArr[1] + 0.5f);
                return false;
            }
            View view = overScrollBounceEffectDecoratorBase2.mViewAdapter.getView();
            this.z1OoOdo.z1OoOdo(view, motionEvent, OverScrollBounceEffectDecoratorBase.this.mOverScrollingState);
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase3 = OverScrollBounceEffectDecoratorBase.this;
            z1OoOint z1oooint = this.z1OoOdo;
            float frictionFactor = overScrollBounceEffectDecoratorBase3.getFrictionFactor(z1oooint.z1OoOdo, z1oooint.z1OoOif, z1oooint.z1OoOint == overScrollBounceEffectDecoratorBase3.mStartAttr.z1OoOif, z1oooint.z1OoOnew > 0.0f);
            z1OoOint z1oooint2 = this.z1OoOdo;
            float fClampOffsetToBoundary = z1oooint2.z1OoOdo + (z1oooint2.z1OoOif * frictionFactor);
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase4 = OverScrollBounceEffectDecoratorBase.this;
            z1OoOfor z1ooofor = overScrollBounceEffectDecoratorBase4.mIdleState;
            z1OoOint z1oooint3 = z1ooofor.z1OoOdo;
            z1oooint3.z1OoOtry = false;
            boolean z = overScrollBounceEffectDecoratorBase4.mStartAttr.z1OoOif;
            if ((z && !z1oooint2.z1OoOint && fClampOffsetToBoundary <= 0.0f) || (!z && z1oooint2.z1OoOint && fClampOffsetToBoundary >= 0.0f)) {
                z1oooint3.z1OoOtry = true;
                z1oooint3.z1OoObyte = z1oooint2.z1OoOint;
                overScrollBounceEffectDecoratorBase4.issueStateTransition(z1ooofor);
                fClampOffsetToBoundary = OverScrollBounceEffectDecoratorBase.this.clampOffsetToBoundary(fClampOffsetToBoundary);
                if (OverScrollBounceEffectDecoratorBase.this.shouldHandOffMoveToScroll(view)) {
                    zPerformOverscrollHandoff = OverScrollBounceEffectDecoratorBase.this.performOverscrollHandoff(view, motionEvent, fClampOffsetToBoundary);
                }
            }
            if (!zPerformOverscrollHandoff) {
                OverScrollBounceEffectDecoratorBase.this.accumulateInterceptedScrollDelta(this.z1OoOdo.z1OoOif);
                OverScrollBounceEffectDecoratorBase.this.translateView(view, fClampOffsetToBoundary);
            }
            return !zPerformOverscrollHandoff;
        }

        @Override
        public final void z1OoOdo(z1OoOif z1oooif) {
            this.z1OoOif = OverScrollBounceEffectDecoratorBase.this.mStartAttr.z1OoOif ? 1 : 2;
        }

        @Override
        public final boolean z1OoOdo(MotionEvent motionEvent) {
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase = OverScrollBounceEffectDecoratorBase.this;
            overScrollBounceEffectDecoratorBase.issueStateTransition(overScrollBounceEffectDecoratorBase.mBounceBackState);
            OverScrollBounceEffectDecoratorBase.this.recycleVelocityTracker();
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "touch up overscroll");
            OverScrollBounceEffectDecoratorBase overScrollBounceEffectDecoratorBase2 = OverScrollBounceEffectDecoratorBase.this;
            if ((overScrollBounceEffectDecoratorBase2.mNestedScrollEnabled && (overScrollBounceEffectDecoratorBase2.mNestedFarEdgeReached || overScrollBounceEffectDecoratorBase2.mNestedEdgeReached)) || (overScrollBounceEffectDecoratorBase2.getView() instanceof ViewPager) || (OverScrollBounceEffectDecoratorBase.this.getView() instanceof ViewPager2)) {
                return false;
            }
            if (!(OverScrollBounceEffectDecoratorBase.this.getView() instanceof RecyclerView)) {
                return true;
            }
            ((RecyclerView) OverScrollBounceEffectDecoratorBase.this.getView()).stopScroll();
            return true;
        }
    }

    public OverScrollBounceEffectDecoratorBase(com.transsion.effectengine.bounceeffect.adapters.z1OoOfor z1ooofor) {
        this.mTouchSlop = 0;
        this.mViewAdapter = z1ooofor;
        z1OoOfor z1ooofor2 = new z1OoOfor();
        this.mIdleState = z1ooofor2;
        this.mCurrentState = z1ooofor2;
        ViewConfiguration.get(z1ooofor.getView().getContext());
        this.mTouchSlop = 3;
        initOrResetVelocityTracker();
        enable();
        initFoldScreenState(z1ooofor.getView().getContext());
        if (isVertical()) {
            return;
        }
        setVibrateEnable(false);
    }

    private void initFoldScreenState(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
        float f = displayMetrics.widthPixels;
        this.mScreenWidth = f;
        float f2 = displayMetrics.heightPixels;
        this.mScreenHeight = f2;
        float fMax = Math.max(f, f2);
        float fMin = Math.min(this.mScreenWidth, this.mScreenHeight);
        float f3 = displayMetrics.densityDpi / 160.0f;
        float f4 = fMax / f3;
        float f5 = fMin / f3;
        Log.d(TAG, "initFoldScreenState maxWidthDp=" + f4 + " minWidthDp=" + f5);
        if (f4 < 400.0f) {
            this.mSmallDpModeEnabled = true;
        } else if (f5 > 600.0f) {
            this.mBigDpModeEnabled = true;
        } else {
            this.mMidDpModeEnabled = true;
        }
    }

    public void initOrResetVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    public void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    public void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void resetOverScrollLastState() {
        this.mIdleState.z1OoOdo.z1OoOtry = false;
    }

    public void resetState() {
        this.mBounceBackState.getClass();
        z1OoOint z1oooint = this.mIdleState.z1OoOdo;
        z1oooint.z1OoOfor = false;
        z1oooint.z1OoOtry = false;
        this.mOverScrollingState.z1OoOdo.z1OoOfor = false;
        this.mInitialTouchX = Integer.MAX_VALUE;
        this.mInitialTouchY = Integer.MAX_VALUE;
        this.mLastTouchX = Integer.MAX_VALUE;
        this.mLastTouchY = Integer.MAX_VALUE;
        this.mLastTouchPassedToRecyclerViewX = Integer.MAX_VALUE;
        this.mLastTouchPassedToRecyclerViewY = Integer.MAX_VALUE;
        resetAccumulatedMissedScrollDelta();
    }

    public void accumulateInterceptedScrollDelta(float f) {
        this.mAccumulatedMissedScrollDelta -= f;
    }

    public void applyOverscrollHandoff(RecyclerView recyclerView, float f, float f2) {
        if (Math.abs(f) >= 0.5f) {
            int i = (int) f;
            if (isVertical()) {
                recyclerView.scrollBy(0, i);
            } else {
                recyclerView.scrollBy(i, 0);
            }
        }
        if (isVertical()) {
            recyclerView.setTranslationY(f2);
        } else {
            recyclerView.setTranslationX(f2);
        }
        IOverScrollListener iOverScrollListener = this.mOverScrollListener;
        if (iOverScrollListener != null) {
            iOverScrollListener.onOverScrollUpdated(f2);
        }
    }

    public float clampOffsetToBoundary(float f) {
        return this.mStartAttr.z1OoOif ? Math.min(f, 0.0f) : Math.max(f, 0.0f);
    }

    public float computeMissedRecyclerViewScrollDelta(View view, MotionEvent motionEvent) {
        if (!hasRecyclerViewHandoffAnchor()) {
            return 0.0f;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return isVertical() ? this.mLastTouchPassedToRecyclerViewY - ((int) ((motionEvent.getY(0) + iArr[1]) + 0.5f)) : this.mLastTouchPassedToRecyclerViewX - ((int) ((motionEvent.getX(0) + iArr[0]) + 0.5f));
    }

    public abstract void createAnimation();

    public abstract z1OoOint createMotionAttributes();

    @Override
    public void disable() {
        if (this.mCurrentState != this.mIdleState) {
            Log.e(TAG, "detaching while overscroll is in effect.");
            return;
        }
        getView().setOnTouchListener(null);
        if (!(getView() instanceof ViewPager2) || ((ViewPager2) getView()).getChildAt(0) == null) {
            return;
        }
        ((ViewPager2) getView()).getChildAt(0).setOnTouchListener(null);
    }

    @Override
    public void enable() {
        getView().setOnTouchListener(this);
        if (!(getView() instanceof ViewPager2) || ((ViewPager2) getView()).getChildAt(0) == null) {
            return;
        }
        ((ViewPager2) getView()).getChildAt(0).setOnTouchListener(this);
    }

    @Override
    public void enableNestedScrollMode(boolean z) {
        this.mNestedScrollEnabled = z;
    }

    public float frictionFactor(float f) {
        double d;
        double dPow;
        double dPow2;
        if (this.mCustomDragSpringParameters) {
            d = this.mDragMoveRatio;
            dPow2 = Math.pow(1.0f - f, this.mDragIndex);
        } else {
            d = 0.4000000059604645d;
            if (!this.mDialogModeEnabled) {
                float f2 = 1.0f - f;
                if (this.mSmallDpModeEnabled) {
                    dPow2 = Math.pow(f2, 4.0d);
                } else {
                    dPow = Math.pow(f2, 4.0d) * 0.800000011920929d;
                }
                return (float) dPow;
            }
            dPow2 = Math.pow(1.0f - f, 8.0d);
        }
        dPow = dPow2 * d;
        return (float) dPow;
    }

    public int getCurrentState() {
        return this.mCurrentState.z1OoOdo();
    }

    public abstract float getFrictionFactor(float f, float f2, boolean z, boolean z2);

    public abstract float getTranslationProperty(View view);

    public abstract float getVelocity(VelocityTracker velocityTracker);

    public boolean getVibrateEnable() {
        return this.mVibrateEnable;
    }

    public View getView() {
        return this.mViewAdapter.getView();
    }

    public float getYDirection() {
        return this.mDirectionYRaw;
    }

    public boolean hasRecyclerViewHandoffAnchor() {
        if (isVertical()) {
            return this.mLastTouchPassedToRecyclerViewY != Integer.MAX_VALUE;
        }
        return this.mLastTouchPassedToRecyclerViewX != Integer.MAX_VALUE;
    }

    public abstract boolean isBounceEdgeAnimRunning(BounceEdgeEffect bounceEdgeEffect);

    @Override
    public boolean isInIdleState() {
        return this.mCurrentState == this.mIdleState;
    }

    public boolean isRefreshRateLimited() {
        return this.mRefreshRateLimited;
    }

    public boolean isVertical() {
        return true;
    }

    public void issueStateTransition(z1OoOif z1oooif) {
        z1OoOif z1oooif2 = this.mCurrentState;
        this.mCurrentState = z1oooif;
        z1oooif.z1OoOdo(z1oooif2);
        Log.d(TAG, "from:" + z1oooif2.z1OoOdo() + TypedValues.TransitionType.S_TO + this.mCurrentState.z1OoOdo());
    }

    @Override
    public void notifyNestedScrollEdgeReached(boolean z) {
        boolean z2;
        SpringAnimation springAnimation;
        if (z) {
            if (!this.mNestedFarEdgeReached && !this.mNestedEdgeReached && (springAnimation = this.mTranslationAnimation) != null) {
                springAnimation.cancel();
            }
            z2 = true;
        } else {
            z2 = false;
        }
        this.mNestedEdgeReached = z2;
        this.mNestedEdgeReachedNeedUpdateFirstPoint = z2;
    }

    @Override
    public void notifyNestedScrollFarEdgeReached(boolean z) {
        boolean z2;
        SpringAnimation springAnimation;
        if (z) {
            if (!this.mNestedFarEdgeReached && !this.mNestedEdgeReached && (springAnimation = this.mTranslationAnimation) != null) {
                springAnimation.cancel();
            }
            z2 = true;
        } else {
            z2 = false;
        }
        this.mNestedFarEdgeReached = z2;
        this.mNestedFarEdgeReachedNeedUpdateFirstPoint = z2;
    }

    @Override
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return this.mCurrentState.z1OoOfor(motionEvent);
    }

    @Override
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mLastYRaw = motionEvent.getRawY();
            resetOverScrollLastState();
            boolean zZ1OoOfor = this.mCurrentState.z1OoOfor(motionEvent);
            if (!zZ1OoOfor && this.mCurrentState == this.mIdleState) {
                recordLastTouchPassedToRecyclerView(view, motionEvent);
            }
            return zZ1OoOfor;
        }
        if (action != 1) {
            if (action == 2) {
                this.mDirectionYRaw = motionEvent.getRawY() - this.mLastYRaw;
                this.mLastYRaw = motionEvent.getRawY();
                boolean zZ1OoOif = this.mCurrentState.z1OoOif(motionEvent);
                if (!zZ1OoOif && this.mCurrentState == this.mIdleState) {
                    recordLastTouchPassedToRecyclerView(view, motionEvent);
                }
                return zZ1OoOif;
            }
            if (action != 3) {
                if (action != 6) {
                    return false;
                }
                resetState();
                return false;
            }
        }
        resetState();
        return this.mCurrentState.z1OoOdo(motionEvent);
    }

    @Override
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
    }

    public boolean performOverscrollHandoff(View view, MotionEvent motionEvent, float f) {
        float translationProperty = getTranslationProperty(view) - f;
        float f2 = this.mAccumulatedMissedScrollDelta;
        float fResolveMissedRecyclerViewScrollDelta = resolveMissedRecyclerViewScrollDelta(view, motionEvent);
        if (!isVertical() && Math.abs(translationProperty) >= 0.5f) {
            fResolveMissedRecyclerViewScrollDelta += translationProperty;
        }
        resetAccumulatedMissedScrollDelta();
        reanchorTouchPoints(view, motionEvent);
        this.mIdleState.z1OoOdo.z1OoOtry = false;
        applyOverscrollHandoff((RecyclerView) view, fResolveMissedRecyclerViewScrollDelta, f);
        recordLastTouchPassedToRecyclerView(view, motionEvent);
        StringBuilder sb = new StringBuilder("overscroll handoff ");
        sb.append(isVertical() ? "vertical" : "horizontal");
        sb.append(" missedScrollDelta=");
        sb.append(fResolveMissedRecyclerViewScrollDelta);
        sb.append(" pendingTranslation=");
        sb.append(translationProperty);
        sb.append(" accumulated=");
        sb.append(f2);
        sb.append(" targetOffset=");
        sb.append(f);
        Log.d(TAG, sb.toString());
        return true;
    }

    public void reanchorTouchPoints(View view, MotionEvent motionEvent) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int x = (int) (motionEvent.getX(0) + iArr[0] + 0.5f);
        int y = (int) (motionEvent.getY(0) + iArr[1] + 0.5f);
        this.mLastTouchX = x;
        this.mInitialTouchX = x;
        this.mLastTouchY = y;
        this.mInitialTouchY = y;
        this.mIdleState.z1OoOdo.z1OoOfor = true;
    }

    public void recordLastTouchPassedToRecyclerView(View view, MotionEvent motionEvent) {
        if (view instanceof RecyclerView) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            this.mLastTouchPassedToRecyclerViewX = (int) (motionEvent.getX(0) + iArr[0] + 0.5f);
            this.mLastTouchPassedToRecyclerViewY = (int) (motionEvent.getY(0) + iArr[1] + 0.5f);
        }
    }

    public boolean requireOptParams() {
        return (!vyd.b || this.mCustomDragSpringParameters || this.mDialogModeEnabled || this.mSmallDpModeEnabled) ? false : true;
    }

    public void resetAccumulatedMissedScrollDelta() {
        this.mAccumulatedMissedScrollDelta = 0.0f;
    }

    public float resolveMissedRecyclerViewScrollDelta(View view, MotionEvent motionEvent) {
        float fComputeMissedRecyclerViewScrollDelta = computeMissedRecyclerViewScrollDelta(view, motionEvent);
        return Math.abs(this.mAccumulatedMissedScrollDelta) >= Math.abs(fComputeMissedRecyclerViewScrollDelta) ? this.mAccumulatedMissedScrollDelta : fComputeMissedRecyclerViewScrollDelta;
    }

    public abstract boolean sanityCheck(View view);

    @Override
    public void setAvoidVelocity(boolean z) {
        this.mAvoidVelocity = z;
    }

    public void setBounceEdgeEffect(com.transsion.effectengine.bounceeffect.z1OoOfor z1ooofor) {
        this.mBounceEdgeEffect = z1ooofor;
    }

    @Override
    public void setCardMode(boolean z) {
        this.mCardModeEnabled = z;
    }

    @Override
    public void setCenterDisplayMode(boolean z) {
        this.mCenterDisplayModeEnabled = z;
    }

    @Override
    public void setDialogMode(boolean z) {
        this.mDialogModeEnabled = z;
    }

    @Override
    public void setDiffFrictionFactor(boolean z) {
        this.mDiffFrictionFactor = z;
    }

    @Override
    public void setDoubleFriction(boolean z) {
        this.mDoubleFrictionEnabled = z;
    }

    @Override
    public void setDragBounceParameters(float f, float f2, float f3, float f4, float f5, float f6) {
        this.mCustomDragBounceParameters = true;
        this.mDragStiffnessLow = f;
        this.mDragDampingLow = f2;
        this.mDragStiffnessMedium = f3;
        this.mDragDampingMedium = f4;
        this.mDragStiffnessHigh = f5;
        this.mDragDampingHigh = f6;
    }

    @Override
    public void setDragSpringParameters(float f, float f2) {
        this.mCustomDragSpringParameters = true;
        this.mDragMoveRatio = f;
        this.mDragIndex = f2;
    }

    @Override
    public void setFlingBounceParameters(float f, float f2) {
        this.mCustomFlingBounceParameters = true;
        this.mStiffness = f;
        this.mDamping = f2;
    }

    @Override
    public void setFullDragFollowEnabled(boolean z) {
        this.mFullDragFollowEnabled = z;
        this.mTouchSlop = z ? 0 : ViewConfiguration.get(this.mViewAdapter.getView().getContext()).getScaledTouchSlop();
    }

    @Override
    public void setGridMode(boolean z) {
        this.mGridModeEnabled = z;
    }

    @Override
    public void setIsRefreshRateLimited(boolean z) {
        this.mRefreshRateLimited = z;
    }

    @Override
    public void setOverScrollListener(IOverScrollListener iOverScrollListener) {
        this.mOverScrollListener = iOverScrollListener;
    }

    @Override
    public void setUseInitialFrictionFactor(boolean z) {
        this.mUseInitialFrictionFactor = z;
    }

    @Override
    public void setVibrateEnable(boolean z) {
        this.mVibrateEnable = z;
    }

    public void setmCustomDragBounceParameters(boolean z) {
        this.mCustomDragBounceParameters = z;
    }

    public boolean shouldHandOffMoveToScroll(View view) {
        return view instanceof RecyclerView;
    }

    public abstract void translateView(View view, float f);

    public abstract void translateViewAndEvent(View view, float f, MotionEvent motionEvent);
}
