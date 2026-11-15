package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class RecyclerView extends ViewGroup implements ScrollingView, NestedScrollingChild2, NestedScrollingChild3 {
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final float FLING_DESTRETCH_FACTOR = 4.0f;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final float INFLEXION = 0.35f;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    private static final float SCROLL_FRICTION = 0.015f;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static boolean sDebugAssertionsEnabled;
    static final y sDefaultEdgeEffectFactory;
    static final Interpolator sQuinticInterpolator;
    static boolean sVerboseLoggingEnabled;
    androidx.recyclerview.widget.o mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    Adapter mAdapter;
    androidx.recyclerview.widget.a mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private h mChildDrawingOrderCallback;
    androidx.recyclerview.widget.e mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;

    @NonNull
    private i mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    GapWorker mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private q mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    j mItemAnimator;
    private j.b mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<l> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;
    m mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final v mObserver;
    private List<o> mOnChildAttachStateListeners;
    private p mOnFlingListener;
    private final ArrayList<q> mOnItemTouchListeners;
    final List<a0> mPendingAccessibilityImportanceChange;
    SavedState mPendingSavedState;
    private final float mPhysicalCoef;
    boolean mPostedAnimatorRunner;
    GapWorker.a mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final t mRecycler;
    u mRecyclerListener;
    final List<u> mRecyclerListeners;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private r mScrollListener;
    private List<r> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private NestedScrollingChildHelper mScrollingChildHelper;
    final x mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final ViewFlinger mViewFlinger;
    private final androidx.recyclerview.widget.u.b mViewInfoProcessCallback;
    final androidx.recyclerview.widget.u mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    private static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST = false;
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC = true;
    static final boolean POST_UPDATES_ON_ANIMATION = true;
    static final boolean ALLOW_THREAD_GAP_WORK = true;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION = false;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD = false;

    public static abstract class Adapter {
        private final f mObservable = new f();
        private boolean mHasStableIds = false;
        private StateRestorationPolicy mStateRestorationPolicy = StateRestorationPolicy.ALLOW;

        public enum StateRestorationPolicy {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        public final void bindViewHolder(@NonNull a0 a0Var, int i10) {
            boolean z10 = a0Var.mBindingAdapter == null;
            if (z10) {
                a0Var.mPosition = i10;
                if (hasStableIds()) {
                    a0Var.mItemId = getItemId(i10);
                }
                a0Var.setFlags(1, 519);
                androidx.core.os.s.a(RecyclerView.TRACE_BIND_VIEW_TAG);
            }
            a0Var.mBindingAdapter = this;
            if (RecyclerView.sDebugAssertionsEnabled) {
                if (a0Var.itemView.getParent() == null && ViewCompat.isAttachedToWindow(a0Var.itemView) != a0Var.isTmpDetached()) {
                    throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + a0Var.isTmpDetached() + ", attached to window: " + ViewCompat.isAttachedToWindow(a0Var.itemView) + ", holder: " + a0Var);
                }
                if (a0Var.itemView.getParent() == null && ViewCompat.isAttachedToWindow(a0Var.itemView)) {
                    throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + a0Var);
                }
            }
            onBindViewHolder(a0Var, i10, a0Var.getUnmodifiedPayloads());
            if (z10) {
                a0Var.clearPayload();
                ViewGroup.LayoutParams layoutParams = a0Var.itemView.getLayoutParams();
                if (layoutParams instanceof n) {
                    ((n) layoutParams).mInsetsDirty = true;
                }
                androidx.core.os.s.b();
            }
        }

        boolean canRestoreState() {
            int i10 = e.f13918a[this.mStateRestorationPolicy.ordinal()];
            if (i10 != 1) {
                return i10 != 2 || getItemCount() > 0;
            }
            return false;
        }

        @NonNull
        public final a0 createViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            try {
                androidx.core.os.s.a(RecyclerView.TRACE_CREATE_VIEW_TAG);
                a0 a0VarOnCreateViewHolder = onCreateViewHolder(viewGroup, i10);
                if (a0VarOnCreateViewHolder.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                a0VarOnCreateViewHolder.mItemViewType = i10;
                androidx.core.os.s.b();
                return a0VarOnCreateViewHolder;
            } catch (Throwable th2) {
                androidx.core.os.s.b();
                throw th2;
            }
        }

        public int findRelativeAdapterPositionIn(@NonNull Adapter adapter, @NonNull a0 a0Var, int i10) {
            if (adapter == this) {
                return i10;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i10) {
            return -1L;
        }

        public int getItemViewType(int i10) {
            return 0;
        }

        @NonNull
        public final StateRestorationPolicy getStateRestorationPolicy() {
            return this.mStateRestorationPolicy;
        }

        public final boolean hasObservers() {
            return this.mObservable.a();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.b();
        }

        public final void notifyItemChanged(int i10) {
            this.mObservable.d(i10, 1);
        }

        public final void notifyItemInserted(int i10) {
            this.mObservable.f(i10, 1);
        }

        public final void notifyItemMoved(int i10, int i11) {
            this.mObservable.c(i10, i11);
        }

        public final void notifyItemRangeChanged(int i10, int i11) {
            this.mObservable.d(i10, i11);
        }

        public final void notifyItemRangeInserted(int i10, int i11) {
            this.mObservable.f(i10, i11);
        }

        public final void notifyItemRangeRemoved(int i10, int i11) {
            this.mObservable.g(i10, i11);
        }

        public final void notifyItemRemoved(int i10) {
            this.mObservable.g(i10, 1);
        }

        public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(a0 a0Var, int i10);

        public void onBindViewHolder(@NonNull a0 a0Var, int i10, @NonNull List<Object> list) {
            onBindViewHolder(a0Var, i10);
        }

        @NonNull
        public abstract a0 onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10);

        public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(@NonNull a0 a0Var) {
            return false;
        }

        public void onViewAttachedToWindow(@NonNull a0 a0Var) {
        }

        public void onViewDetachedFromWindow(@NonNull a0 a0Var) {
        }

        public void onViewRecycled(@NonNull a0 a0Var) {
        }

        public void registerAdapterDataObserver(@NonNull g gVar) {
            this.mObservable.registerObserver(gVar);
        }

        public void setHasStableIds(boolean z10) {
            if (hasObservers()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.mHasStableIds = z10;
        }

        public void setStateRestorationPolicy(@NonNull StateRestorationPolicy stateRestorationPolicy) {
            this.mStateRestorationPolicy = stateRestorationPolicy;
            this.mObservable.h();
        }

        public void unregisterAdapterDataObserver(@NonNull g gVar) {
            this.mObservable.unregisterObserver(gVar);
        }

        public final void notifyItemChanged(int i10, @Nullable Object obj) {
            this.mObservable.e(i10, 1, obj);
        }

        public final void notifyItemRangeChanged(int i10, int i11, @Nullable Object obj) {
            this.mObservable.e(i10, i11, obj);
        }
    }

    class ViewFlinger implements Runnable {
        private boolean mEatRunOnAnimationRequest;
        Interpolator mInterpolator;
        private int mLastFlingX;
        private int mLastFlingY;
        OverScroller mOverScroller;
        private boolean mReSchedulePostAnimationCallback;

        ViewFlinger() {
            Interpolator interpolator = RecyclerView.sQuinticInterpolator;
            this.mInterpolator = interpolator;
            this.mEatRunOnAnimationRequest = false;
            this.mReSchedulePostAnimationCallback = false;
            this.mOverScroller = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        private int computeScrollDuration(int i10, int i11) {
            int iAbs = Math.abs(i10);
            int iAbs2 = Math.abs(i11);
            boolean z10 = iAbs > iAbs2;
            RecyclerView recyclerView = RecyclerView.this;
            int width = z10 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z10) {
                iAbs = iAbs2;
            }
            return Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
        }

        private void internalPostOnAnimation() {
            RecyclerView.this.removeCallbacks(this);
            ViewCompat.postOnAnimation(RecyclerView.this, this);
        }

        public void fling(int i10, int i11) {
            RecyclerView.this.setScrollState(2);
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            Interpolator interpolator = this.mInterpolator;
            Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
            if (interpolator != interpolator2) {
                this.mInterpolator = interpolator2;
                this.mOverScroller = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.mOverScroller.fling(0, 0, i10, i11, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            postOnAnimation();
        }

        void postOnAnimation() {
            if (this.mEatRunOnAnimationRequest) {
                this.mReSchedulePostAnimationCallback = true;
            } else {
                internalPostOnAnimation();
            }
        }

        @Override
        public void run() {
            int i10;
            int i11;
            int i12;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mLayout == null) {
                stop();
                return;
            }
            this.mReSchedulePostAnimationCallback = false;
            this.mEatRunOnAnimationRequest = true;
            recyclerView.consumePendingUpdateOperations();
            OverScroller overScroller = this.mOverScroller;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i13 = currX - this.mLastFlingX;
                int i14 = currY - this.mLastFlingY;
                this.mLastFlingX = currX;
                this.mLastFlingY = currY;
                int iConsumeFlingInHorizontalStretch = RecyclerView.this.consumeFlingInHorizontalStretch(i13);
                int iConsumeFlingInVerticalStretch = RecyclerView.this.consumeFlingInVerticalStretch(i14);
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.mReusableIntPair;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.dispatchNestedPreScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.mReusableIntPair;
                    iConsumeFlingInHorizontalStretch -= iArr2[0];
                    iConsumeFlingInVerticalStretch -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.considerReleasingGlowsOnScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.mAdapter != null) {
                    int[] iArr3 = recyclerView3.mReusableIntPair;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.scrollStep(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.mReusableIntPair;
                    i11 = iArr4[0];
                    i10 = iArr4[1];
                    iConsumeFlingInHorizontalStretch -= i11;
                    iConsumeFlingInVerticalStretch -= i10;
                    w wVar = recyclerView4.mLayout.mSmoothScroller;
                    if (wVar != null && !wVar.g() && wVar.h()) {
                        int iB = RecyclerView.this.mState.b();
                        if (iB == 0) {
                            wVar.r();
                        } else if (wVar.f() >= iB) {
                            wVar.p(iB - 1);
                            wVar.j(i11, i10);
                        } else {
                            wVar.j(i11, i10);
                        }
                    }
                } else {
                    i10 = 0;
                    i11 = 0;
                }
                if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.mReusableIntPair;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.dispatchNestedScroll(i11, i10, iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.mReusableIntPair;
                int i15 = iConsumeFlingInHorizontalStretch - iArr6[0];
                int i16 = iConsumeFlingInVerticalStretch - iArr6[1];
                if (i11 != 0 || i10 != 0) {
                    recyclerView6.dispatchOnScrolled(i11, i10);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z10 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i15 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i16 != 0));
                w wVar2 = RecyclerView.this.mLayout.mSmoothScroller;
                if ((wVar2 == null || !wVar2.g()) && z10) {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        if (i15 < 0) {
                            i12 = -currVelocity;
                        } else {
                            i12 = i15 > 0 ? currVelocity : 0;
                        }
                        if (i16 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i16 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.absorbGlows(i12, currVelocity);
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        RecyclerView.this.mPrefetchRegistry.b();
                    }
                } else {
                    postOnAnimation();
                    RecyclerView recyclerView7 = RecyclerView.this;
                    GapWorker gapWorker = recyclerView7.mGapWorker;
                    if (gapWorker != null) {
                        gapWorker.postFromTraversal(recyclerView7, i11, i10);
                    }
                }
            }
            w wVar3 = RecyclerView.this.mLayout.mSmoothScroller;
            if (wVar3 != null && wVar3.g()) {
                wVar3.j(0, 0);
            }
            this.mEatRunOnAnimationRequest = false;
            if (this.mReSchedulePostAnimationCallback) {
                internalPostOnAnimation();
            } else {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.stopNestedScroll(1);
            }
        }

        public void smoothScrollBy(int i10, int i11, int i12, @Nullable Interpolator interpolator) {
            if (i12 == Integer.MIN_VALUE) {
                i12 = computeScrollDuration(i10, i11);
            }
            int i13 = i12;
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            if (this.mInterpolator != interpolator) {
                this.mInterpolator = interpolator;
                this.mOverScroller = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            RecyclerView.this.setScrollState(2);
            this.mOverScroller.startScroll(0, 0, i10, i11, i13);
            postOnAnimation();
        }

        public void stop() {
            RecyclerView.this.removeCallbacks(this);
            this.mOverScroller.abortAnimation();
        }
    }

    class a implements Interpolator {
        a() {
        }

        @Override
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    public static abstract class a0 {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;

        @NonNull
        public final View itemView;
        Adapter mBindingAdapter;
        int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        a0 mShadowedHolder = null;
        a0 mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        t mScrapContainer = null;
        boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        int mPendingAccessibilityState = -1;

        public a0(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        private void e() {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
        }

        void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
            } else if ((1024 & this.mFlags) == 0) {
                e();
                this.mPayloads.add(obj);
            }
        }

        void addFlags(int i10) {
            this.mFlags = i10 | this.mFlags;
        }

        void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        boolean doesTransientStatePreventRecycling() {
            return (this.mFlags & 16) == 0 && ViewCompat.hasTransientState(this.itemView);
        }

        void flagRemovedAndOffsetPosition(int i10, int i11, boolean z10) {
            addFlags(8);
            offsetPosition(i11, z10);
            this.mPosition = i10;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionInRecyclerView(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        @Nullable
        public final Adapter getBindingAdapter() {
            return this.mBindingAdapter;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            Adapter adapter;
            int adapterPositionInRecyclerView;
            if (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (adapter = recyclerView.getAdapter()) == null || (adapterPositionInRecyclerView = this.mOwnerRecyclerView.getAdapterPositionInRecyclerView(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.mBindingAdapter, this, adapterPositionInRecyclerView);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i10 = this.mPreLayoutPosition;
            return i10 == -1 ? this.mPosition : i10;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i10 = this.mPreLayoutPosition;
            return i10 == -1 ? this.mPosition : i10;
        }

        List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }

        boolean hasAnyOfTheFlags(int i10) {
            return (i10 & this.mFlags) != 0;
        }

        boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            return (this.mFlags & 16) == 0 && !ViewCompat.hasTransientState(this.itemView);
        }

        boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        boolean isScrap() {
            return this.mScrapContainer != null;
        }

        boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        void offsetPosition(int i10, boolean z10) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z10) {
                this.mPreLayoutPosition += i10;
            }
            this.mPosition += i10;
            if (this.itemView.getLayoutParams() != null) {
                ((n) this.itemView.getLayoutParams()).mInsetsDirty = true;
            }
        }

        void onEnteredHiddenState(RecyclerView recyclerView) {
            int i10 = this.mPendingAccessibilityState;
            if (i10 != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i10;
            } else {
                this.mWasImportantForAccessibilityBeforeHidden = ViewCompat.getImportantForAccessibility(this.itemView);
            }
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        void resetInternal() {
            if (RecyclerView.sDebugAssertionsEnabled && isTmpDetached()) {
                throw new IllegalStateException("Attempting to reset temp-detached ViewHolder: " + this + ". ViewHolders should be fully detached before resetting.");
            }
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        void setFlags(int i10, int i11) {
            this.mFlags = (i10 & i11) | (this.mFlags & (~i11));
        }

        public final void setIsRecyclable(boolean z10) {
            int i10 = this.mIsRecyclableCount;
            int i11 = z10 ? i10 - 1 : i10 + 1;
            this.mIsRecyclableCount = i11;
            if (i11 < 0) {
                this.mIsRecyclableCount = 0;
                if (RecyclerView.sDebugAssertionsEnabled) {
                    throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                }
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z10 && i11 == 1) {
                this.mFlags |= 16;
            } else if (z10 && i11 == 0) {
                this.mFlags &= -17;
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("setIsRecyclable val:");
                sb2.append(z10);
                sb2.append(":");
                sb2.append(this);
            }
        }

        void setScrapContainer(t tVar, boolean z10) {
            this.mScrapContainer = tVar;
            this.mInChangeScrap = z10;
        }

        boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
            if (isScrap()) {
                sb2.append(" scrap ");
                sb2.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb2.append(" invalid");
            }
            if (!isBound()) {
                sb2.append(" unbound");
            }
            if (needsUpdate()) {
                sb2.append(" update");
            }
            if (isRemoved()) {
                sb2.append(" removed");
            }
            if (shouldIgnore()) {
                sb2.append(" ignored");
            }
            if (isTmpDetached()) {
                sb2.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb2.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb2.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb2.append(" no parent");
            }
            sb2.append("}");
            return sb2.toString();
        }

        void unScrap() {
            this.mScrapContainer.O(this);
        }

        boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    class b implements androidx.recyclerview.widget.u.b {
        b() {
        }

        @Override
        public void a(a0 a0Var, j.c cVar, j.c cVar2) {
            RecyclerView.this.animateAppearance(a0Var, cVar, cVar2);
        }

        @Override
        public void b(a0 a0Var) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mLayout.removeAndRecycleView(a0Var.itemView, recyclerView.mRecycler);
        }

        @Override
        public void c(a0 a0Var, j.c cVar, j.c cVar2) {
            RecyclerView.this.mRecycler.O(a0Var);
            RecyclerView.this.animateDisappearance(a0Var, cVar, cVar2);
        }

        @Override
        public void d(a0 a0Var, j.c cVar, j.c cVar2) {
            a0Var.setIsRecyclable(false);
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mDataSetHasChangedAfterLayout) {
                if (recyclerView.mItemAnimator.animateChange(a0Var, a0Var, cVar, cVar2)) {
                    RecyclerView.this.postAnimationRunner();
                }
            } else if (recyclerView.mItemAnimator.animatePersistence(a0Var, cVar, cVar2)) {
                RecyclerView.this.postAnimationRunner();
            }
        }
    }

    class c implements androidx.recyclerview.widget.e.b {
        c() {
        }

        @Override
        public void a(View view) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
            }
        }

        @Override
        public a0 b(View view) {
            return RecyclerView.getChildViewHolderInt(view);
        }

        @Override
        public void c(int i10) {
            View childAt = getChildAt(i10);
            if (childAt != null) {
                a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt != null) {
                    if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                    }
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("tmpDetach ");
                        sb2.append(childViewHolderInt);
                    }
                    childViewHolderInt.addFlags(256);
                }
            } else if (RecyclerView.sDebugAssertionsEnabled) {
                throw new IllegalArgumentException("No view at offset " + i10 + RecyclerView.this.exceptionLabel());
            }
            RecyclerView.this.detachViewFromParent(i10);
        }

        @Override
        public void d(View view, int i10) {
            RecyclerView.this.addView(view, i10);
            RecyclerView.this.dispatchChildAttached(view);
        }

        @Override
        public void e() {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                RecyclerView.this.dispatchChildDetached(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override
        public int f(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override
        public void g(View view) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            }
        }

        @Override
        public View getChildAt(int i10) {
            return RecyclerView.this.getChildAt(i10);
        }

        @Override
        public int getChildCount() {
            return RecyclerView.this.getChildCount();
        }

        @Override
        public void h(int i10) {
            View childAt = RecyclerView.this.getChildAt(i10);
            if (childAt != null) {
                RecyclerView.this.dispatchChildDetached(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i10);
        }

        @Override
        public void i(View view, int i10, ViewGroup.LayoutParams layoutParams) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("reAttach ");
                    sb2.append(childViewHolderInt);
                }
                childViewHolderInt.clearTmpDetachFlag();
            } else if (RecyclerView.sDebugAssertionsEnabled) {
                throw new IllegalArgumentException("No ViewHolder found for child: " + view + ", index: " + i10 + RecyclerView.this.exceptionLabel());
            }
            RecyclerView.this.attachViewToParent(view, i10, layoutParams);
        }
    }

    class d implements androidx.recyclerview.widget.a.InterfaceC0105a {
        d() {
        }

        @Override
        public void a(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForMove(i10, i11);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override
        public void b(androidx.recyclerview.widget.a.b bVar) {
            i(bVar);
        }

        @Override
        public void c(androidx.recyclerview.widget.a.b bVar) {
            i(bVar);
        }

        @Override
        public void d(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForRemove(i10, i11, false);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override
        public void e(int i10, int i11, Object obj) {
            RecyclerView.this.viewRangeUpdate(i10, i11, obj);
            RecyclerView.this.mItemsChanged = true;
        }

        @Override
        public a0 f(int i10) {
            a0 a0VarFindViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i10, true);
            if (a0VarFindViewHolderForPosition == null) {
                return null;
            }
            if (!RecyclerView.this.mChildHelper.n(a0VarFindViewHolderForPosition.itemView)) {
                return a0VarFindViewHolderForPosition;
            }
            int i11 = RecyclerView.HORIZONTAL;
            return null;
        }

        @Override
        public void g(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForInsert(i10, i11);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override
        public void h(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForRemove(i10, i11, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mItemsAddedOrRemoved = true;
            recyclerView.mState.f13965d += i11;
        }

        void i(androidx.recyclerview.widget.a.b bVar) {
            int i10 = bVar.f14032a;
            if (i10 == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mLayout.onItemsAdded(recyclerView, bVar.f14033b, bVar.f14035d);
                return;
            }
            if (i10 == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.mLayout.onItemsRemoved(recyclerView2, bVar.f14033b, bVar.f14035d);
            } else if (i10 == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.mLayout.onItemsUpdated(recyclerView3, bVar.f14033b, bVar.f14035d, bVar.f14034c);
            } else {
                if (i10 != 8) {
                    return;
                }
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.mLayout.onItemsMoved(recyclerView4, bVar.f14033b, bVar.f14035d, 1);
            }
        }
    }

    static class e {

        static final int[] f13918a;

        static {
            int[] iArr = new int[Adapter.StateRestorationPolicy.values().length];
            f13918a = iArr;
            try {
                iArr[Adapter.StateRestorationPolicy.PREVENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13918a[Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static class f extends Observable {
        f() {
        }

        public boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onChanged();
            }
        }

        public void c(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i10, i11, 1);
            }
        }

        public void d(int i10, int i11) {
            e(i10, i11, null);
        }

        public void e(int i10, int i11, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i10, i11, obj);
            }
        }

        public void f(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i10, i11);
            }
        }

        public void g(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i10, i11);
            }
        }

        public void h() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((g) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
            }
        }
    }

    public static abstract class g {
        public void onItemRangeChanged(int i10, int i11) {
        }

        public void onItemRangeChanged(int i10, int i11, Object obj) {
            onItemRangeChanged(i10, i11);
        }

        public void onChanged() {
        }

        public void onStateRestorationPolicyChanged() {
        }

        public void onItemRangeInserted(int i10, int i11) {
        }

        public void onItemRangeRemoved(int i10, int i11) {
        }

        public void onItemRangeMoved(int i10, int i11, int i12) {
        }
    }

    public interface h {
    }

    public static class i {
        protected EdgeEffect a(RecyclerView recyclerView, int i10) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class j {
        public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        public static final int FLAG_CHANGED = 2;
        public static final int FLAG_INVALIDATED = 4;
        public static final int FLAG_MOVED = 2048;
        public static final int FLAG_REMOVED = 8;
        private b mListener = null;
        private ArrayList<a> mFinishedListeners = new ArrayList<>();
        private long mAddDuration = 120;
        private long mRemoveDuration = 120;
        private long mMoveDuration = 250;
        private long mChangeDuration = 250;

        public interface a {
            void a();
        }

        interface b {
            void a(a0 a0Var);
        }

        public static class c {

            public int f13919a;

            public int f13920b;

            public int f13921c;

            public int f13922d;

            public c a(a0 a0Var) {
                return b(a0Var, 0);
            }

            public c b(a0 a0Var, int i10) {
                View view = a0Var.itemView;
                this.f13919a = view.getLeft();
                this.f13920b = view.getTop();
                this.f13921c = view.getRight();
                this.f13922d = view.getBottom();
                return this;
            }
        }

        static int buildAdapterChangeFlagsForAnimations(a0 a0Var) {
            int i10 = a0Var.mFlags;
            int i11 = i10 & 14;
            if (a0Var.isInvalid()) {
                return 4;
            }
            if ((i10 & 4) != 0) {
                return i11;
            }
            int oldPosition = a0Var.getOldPosition();
            int absoluteAdapterPosition = a0Var.getAbsoluteAdapterPosition();
            return (oldPosition == -1 || absoluteAdapterPosition == -1 || oldPosition == absoluteAdapterPosition) ? i11 : i11 | 2048;
        }

        public abstract boolean animateAppearance(a0 a0Var, c cVar, c cVar2);

        public abstract boolean animateChange(a0 a0Var, a0 a0Var2, c cVar, c cVar2);

        public abstract boolean animateDisappearance(a0 a0Var, c cVar, c cVar2);

        public abstract boolean animatePersistence(a0 a0Var, c cVar, c cVar2);

        public boolean canReuseUpdatedViewHolder(a0 a0Var) {
            return true;
        }

        public final void dispatchAnimationFinished(@NonNull a0 a0Var) {
            onAnimationFinished(a0Var);
            b bVar = this.mListener;
            if (bVar != null) {
                bVar.a(a0Var);
            }
        }

        public final void dispatchAnimationStarted(@NonNull a0 a0Var) {
            onAnimationStarted(a0Var);
        }

        public final void dispatchAnimationsFinished() {
            if (this.mFinishedListeners.size() <= 0) {
                this.mFinishedListeners.clear();
            } else {
                android.support.v4.media.session.c.a(this.mFinishedListeners.get(0));
                throw null;
            }
        }

        public abstract void endAnimation(a0 a0Var);

        public abstract void endAnimations();

        public long getAddDuration() {
            return this.mAddDuration;
        }

        public long getChangeDuration() {
            return this.mChangeDuration;
        }

        public long getMoveDuration() {
            return this.mMoveDuration;
        }

        public long getRemoveDuration() {
            return this.mRemoveDuration;
        }

        public abstract boolean isRunning();

        public final boolean isRunning(@Nullable a aVar) {
            boolean zIsRunning = isRunning();
            if (aVar != null) {
                if (zIsRunning) {
                    this.mFinishedListeners.add(aVar);
                } else {
                    aVar.a();
                }
            }
            return zIsRunning;
        }

        @NonNull
        public c obtainHolderInfo() {
            return new c();
        }

        @NonNull
        public c recordPostLayoutInformation(@NonNull x xVar, @NonNull a0 a0Var) {
            return obtainHolderInfo().a(a0Var);
        }

        @NonNull
        public c recordPreLayoutInformation(@NonNull x xVar, @NonNull a0 a0Var, int i10, @NonNull List<Object> list) {
            return obtainHolderInfo().a(a0Var);
        }

        public abstract void runPendingAnimations();

        public void setAddDuration(long j10) {
            this.mAddDuration = j10;
        }

        public void setChangeDuration(long j10) {
            this.mChangeDuration = j10;
        }

        void setListener(b bVar) {
            this.mListener = bVar;
        }

        public void setMoveDuration(long j10) {
            this.mMoveDuration = j10;
        }

        public void setRemoveDuration(long j10) {
            this.mRemoveDuration = j10;
        }

        public boolean canReuseUpdatedViewHolder(a0 a0Var, List list) {
            return canReuseUpdatedViewHolder(a0Var);
        }

        public void onAnimationFinished(@NonNull a0 a0Var) {
        }

        public void onAnimationStarted(@NonNull a0 a0Var) {
        }
    }

    private class k implements j.b {
        k() {
        }

        @Override
        public void a(a0 a0Var) {
            a0Var.setIsRecyclable(true);
            if (a0Var.mShadowedHolder != null && a0Var.mShadowingHolder == null) {
                a0Var.mShadowedHolder = null;
            }
            a0Var.mShadowingHolder = null;
            if (a0Var.shouldBeKeptAsChild() || RecyclerView.this.removeAnimatingView(a0Var.itemView) || !a0Var.isTmpDetached()) {
                return;
            }
            RecyclerView.this.removeDetachedView(a0Var.itemView, false);
        }
    }

    public static abstract class l {
        @Deprecated
        public void getItemOffsets(@NonNull Rect rect, int i10, @NonNull RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        @Deprecated
        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, x xVar) {
            getItemOffsets(rect, ((n) view.getLayoutParams()).getViewLayoutPosition(), recyclerView);
        }

        public void onDraw(Canvas canvas, RecyclerView recyclerView, x xVar) {
            onDraw(canvas, recyclerView);
        }

        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull x xVar) {
            onDrawOver(canvas, recyclerView);
        }
    }

    public static abstract class m {
        boolean mAutoMeasure;
        androidx.recyclerview.widget.e mChildHelper;
        private int mHeight;
        private int mHeightMode;
        androidx.recyclerview.widget.t mHorizontalBoundCheck;
        private final androidx.recyclerview.widget.t.b mHorizontalBoundCheckCallback;
        boolean mIsAttachedToWindow;
        private boolean mItemPrefetchEnabled;
        private boolean mMeasurementCacheEnabled;
        int mPrefetchMaxCountObserved;
        boolean mPrefetchMaxObservedInInitialPrefetch;
        RecyclerView mRecyclerView;
        boolean mRequestedSimpleAnimations;

        @Nullable
        w mSmoothScroller;
        androidx.recyclerview.widget.t mVerticalBoundCheck;
        private final androidx.recyclerview.widget.t.b mVerticalBoundCheckCallback;
        private int mWidth;
        private int mWidthMode;

        class a implements androidx.recyclerview.widget.t.b {
            a() {
            }

            @Override
            public int a(View view) {
                return m.this.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).leftMargin;
            }

            @Override
            public int b() {
                return m.this.getPaddingLeft();
            }

            @Override
            public int c() {
                return m.this.getWidth() - m.this.getPaddingRight();
            }

            @Override
            public int d(View view) {
                return m.this.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).rightMargin;
            }

            @Override
            public View getChildAt(int i10) {
                return m.this.getChildAt(i10);
            }
        }

        class b implements androidx.recyclerview.widget.t.b {
            b() {
            }

            @Override
            public int a(View view) {
                return m.this.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).topMargin;
            }

            @Override
            public int b() {
                return m.this.getPaddingTop();
            }

            @Override
            public int c() {
                return m.this.getHeight() - m.this.getPaddingBottom();
            }

            @Override
            public int d(View view) {
                return m.this.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((n) view.getLayoutParams())).bottomMargin;
            }

            @Override
            public View getChildAt(int i10) {
                return m.this.getChildAt(i10);
            }
        }

        public interface c {
            void a(int i10, int i11);
        }

        public static class d {

            public int f13926a;

            public int f13927b;

            public boolean f13928c;

            public boolean f13929d;
        }

        public m() {
            a aVar = new a();
            this.mHorizontalBoundCheckCallback = aVar;
            b bVar = new b();
            this.mVerticalBoundCheckCallback = bVar;
            this.mHorizontalBoundCheck = new androidx.recyclerview.widget.t(aVar);
            this.mVerticalBoundCheck = new androidx.recyclerview.widget.t(bVar);
            this.mRequestedSimpleAnimations = false;
            this.mIsAttachedToWindow = false;
            this.mAutoMeasure = false;
            this.mMeasurementCacheEnabled = true;
            this.mItemPrefetchEnabled = true;
        }

        public static int chooseSize(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i11, i12) : size;
            }
            return Math.min(size, Math.max(i11, i12));
        }

        private void e(View view, int i10, boolean z10) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z10 || childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.b(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.p(childViewHolderInt);
            }
            n nVar = (n) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.c(view, i10, view.getLayoutParams(), false);
            } else if (view.getParent() == this.mRecyclerView) {
                int iM = this.mChildHelper.m(view);
                if (i10 == -1) {
                    i10 = this.mChildHelper.g();
                }
                if (iM == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view) + this.mRecyclerView.exceptionLabel());
                }
                if (iM != i10) {
                    this.mRecyclerView.mLayout.moveView(iM, i10);
                }
            } else {
                this.mChildHelper.a(view, i10, false);
                nVar.mInsetsDirty = true;
                w wVar = this.mSmoothScroller;
                if (wVar != null && wVar.h()) {
                    this.mSmoothScroller.k(view);
                }
            }
            if (nVar.mPendingInvalidate) {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("consuming pending invalidate on child ");
                    sb2.append(nVar.mViewHolder);
                }
                childViewHolderInt.itemView.invalidate();
                nVar.mPendingInvalidate = false;
            }
        }

        private void f(int i10, View view) {
            this.mChildHelper.d(i10);
        }

        private int[] g(View view, Rect rect) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i10 = left - paddingLeft;
            int iMin = Math.min(0, i10);
            int i11 = top - paddingTop;
            int iMin2 = Math.min(0, i11);
            int i12 = iWidth - width;
            int iMax = Math.max(0, i12);
            int iMax2 = Math.max(0, iHeight - height);
            if (getLayoutDirection() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i10, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i12);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i11, iMax2);
            }
            return new int[]{iMax, iMin2};
        }

        /* JADX WARN: Code duplicated, block: B:5:0x000c A[PHI: r3
          0x000c: PHI (r3v5 int) = (r3v0 int), (r3v2 int), (r3v0 int) binds: [B:7:0x0010, B:11:0x0016, B:4:0x000a] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:6:0x000e  */
        @Deprecated
        public static int getChildMeasureSpec(int i10, int i11, int i12, boolean z10) {
            int i13 = i10 - i11;
            int i14 = 0;
            int iMax = Math.max(0, i13);
            if (z10) {
                if (i12 >= 0) {
                    i14 = 1073741824;
                } else {
                    i12 = 0;
                }
            } else if (i12 >= 0) {
                i14 = 1073741824;
            } else if (i12 == -1) {
                i12 = iMax;
                i14 = 1073741824;
            } else if (i12 == -2) {
                i14 = Integer.MIN_VALUE;
                i12 = iMax;
            } else {
                i12 = 0;
            }
            return View.MeasureSpec.makeMeasureSpec(i12, i14);
        }

        public static d getProperties(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
            d dVar = new d();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.recyclerview.R.styleable.RecyclerView, i10, i11);
            dVar.f13926a = typedArrayObtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_android_orientation, 1);
            dVar.f13927b = typedArrayObtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_spanCount, 1);
            dVar.f13928c = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_reverseLayout, false);
            dVar.f13929d = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_stackFromEnd, false);
            typedArrayObtainStyledAttributes.recycle();
            return dVar;
        }

        private boolean h(RecyclerView recyclerView, int i10, int i11) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(focusedChild, rect);
            return rect.left - i10 < width && rect.right - i10 > paddingLeft && rect.top - i11 < height && rect.bottom - i11 > paddingTop;
        }

        private static boolean i(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (i12 > 0 && i10 != i12) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i10;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i10;
            }
            return true;
        }

        private void j(t tVar, int i10, View view) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.shouldIgnore()) {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("ignoring view ");
                    sb2.append(childViewHolderInt);
                    return;
                }
                return;
            }
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
                removeViewAt(i10);
                tVar.H(childViewHolderInt);
            } else {
                detachViewAt(i10);
                tVar.I(view);
                this.mRecyclerView.mViewInfoStore.k(childViewHolderInt);
            }
        }

        @SuppressLint({"UnknownNullness"})
        public void addDisappearingView(View view) {
            addDisappearingView(view, -1);
        }

        @SuppressLint({"UnknownNullness"})
        public void addView(View view) {
            addView(view, -1);
        }

        public void assertInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertInLayoutOrScroll(str);
            }
        }

        public void assertNotInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public void attachView(@NonNull View view, int i10, n nVar) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.b(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.p(childViewHolderInt);
            }
            this.mChildHelper.c(view, i10, nVar, childViewHolderInt.isRemoved());
        }

        public void calculateItemDecorationsForChild(@NonNull View view, @NonNull Rect rect) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public boolean canScrollHorizontally() {
            return false;
        }

        public boolean canScrollVertically() {
            return false;
        }

        public boolean checkLayoutParams(n nVar) {
            return nVar != null;
        }

        public int computeHorizontalScrollExtent(x xVar) {
            return 0;
        }

        public int computeHorizontalScrollOffset(x xVar) {
            return 0;
        }

        public int computeHorizontalScrollRange(x xVar) {
            return 0;
        }

        public int computeVerticalScrollExtent(x xVar) {
            return 0;
        }

        public int computeVerticalScrollOffset(x xVar) {
            return 0;
        }

        public int computeVerticalScrollRange(x xVar) {
            return 0;
        }

        public void detachAndScrapAttachedViews(@NonNull t tVar) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                j(tVar, childCount, getChildAt(childCount));
            }
        }

        public void detachAndScrapView(@NonNull View view, @NonNull t tVar) {
            j(tVar, this.mChildHelper.m(view), view);
        }

        public void detachAndScrapViewAt(int i10, @NonNull t tVar) {
            j(tVar, i10, getChildAt(i10));
        }

        public void detachView(@NonNull View view) {
            int iM = this.mChildHelper.m(view);
            if (iM >= 0) {
                f(iM, view);
            }
        }

        public void detachViewAt(int i10) {
            f(i10, getChildAt(i10));
        }

        void dispatchAttachedToWindow(RecyclerView recyclerView) {
            this.mIsAttachedToWindow = true;
            onAttachedToWindow(recyclerView);
        }

        void dispatchDetachedFromWindow(RecyclerView recyclerView, t tVar) {
            this.mIsAttachedToWindow = false;
            onDetachedFromWindow(recyclerView, tVar);
        }

        @SuppressLint({"UnknownNullness"})
        public void endAnimation(View view) {
            j jVar = this.mRecyclerView.mItemAnimator;
            if (jVar != null) {
                jVar.endAnimation(RecyclerView.getChildViewHolderInt(view));
            }
        }

        @Nullable
        public View findContainingItemView(@NonNull View view) {
            View viewFindContainingItemView;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (viewFindContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.n(viewFindContainingItemView)) {
                return null;
            }
            return viewFindContainingItemView;
        }

        public View findViewByPosition(int i10) {
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i10 && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.e() || !childViewHolderInt.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        public abstract n generateDefaultLayoutParams();

        @SuppressLint({"UnknownNullness"})
        public n generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof n) {
                return new n((n) layoutParams);
            }
            return layoutParams instanceof ViewGroup.MarginLayoutParams ? new n((ViewGroup.MarginLayoutParams) layoutParams) : new n(layoutParams);
        }

        public int getBaseline() {
            return -1;
        }

        public int getBottomDecorationHeight(@NonNull View view) {
            return ((n) view.getLayoutParams()).mDecorInsets.bottom;
        }

        @Nullable
        public View getChildAt(int i10) {
            androidx.recyclerview.widget.e eVar = this.mChildHelper;
            if (eVar != null) {
                return eVar.f(i10);
            }
            return null;
        }

        public int getChildCount() {
            androidx.recyclerview.widget.e eVar = this.mChildHelper;
            if (eVar != null) {
                return eVar.g();
            }
            return 0;
        }

        public boolean getClipToPadding() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.mClipToPadding;
        }

        public int getColumnCountForAccessibility(@NonNull t tVar, @NonNull x xVar) {
            return -1;
        }

        public int getDecoratedBottom(@NonNull View view) {
            return view.getBottom() + getBottomDecorationHeight(view);
        }

        public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public int getDecoratedLeft(@NonNull View view) {
            return view.getLeft() - getLeftDecorationWidth(view);
        }

        public int getDecoratedMeasuredHeight(@NonNull View view) {
            Rect rect = ((n) view.getLayoutParams()).mDecorInsets;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int getDecoratedMeasuredWidth(@NonNull View view) {
            Rect rect = ((n) view.getLayoutParams()).mDecorInsets;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int getDecoratedRight(@NonNull View view) {
            return view.getRight() + getRightDecorationWidth(view);
        }

        public int getDecoratedTop(@NonNull View view) {
            return view.getTop() - getTopDecorationHeight(view);
        }

        @Nullable
        public View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getHeightMode() {
            return this.mHeightMode;
        }

        public int getItemCount() {
            RecyclerView recyclerView = this.mRecyclerView;
            Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public int getItemViewType(@NonNull View view) {
            return RecyclerView.getChildViewHolderInt(view).getItemViewType();
        }

        public int getLayoutDirection() {
            return ViewCompat.getLayoutDirection(this.mRecyclerView);
        }

        public int getLeftDecorationWidth(@NonNull View view) {
            return ((n) view.getLayoutParams()).mDecorInsets.left;
        }

        public int getMinimumHeight() {
            return ViewCompat.getMinimumHeight(this.mRecyclerView);
        }

        public int getMinimumWidth() {
            return ViewCompat.getMinimumWidth(this.mRecyclerView);
        }

        public int getPaddingBottom() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int getPaddingEnd() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return ViewCompat.getPaddingEnd(recyclerView);
            }
            return 0;
        }

        public int getPaddingLeft() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int getPaddingRight() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int getPaddingStart() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return ViewCompat.getPaddingStart(recyclerView);
            }
            return 0;
        }

        public int getPaddingTop() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getPosition(@NonNull View view) {
            return ((n) view.getLayoutParams()).getViewLayoutPosition();
        }

        public int getRightDecorationWidth(@NonNull View view) {
            return ((n) view.getLayoutParams()).mDecorInsets.right;
        }

        public int getRowCountForAccessibility(@NonNull t tVar, @NonNull x xVar) {
            return -1;
        }

        public int getSelectionModeForAccessibility(@NonNull t tVar, @NonNull x xVar) {
            return 0;
        }

        public int getTopDecorationHeight(@NonNull View view) {
            return ((n) view.getLayoutParams()).mDecorInsets.top;
        }

        public void getTransformedBoundingBox(@NonNull View view, boolean z10, @NonNull Rect rect) {
            Matrix matrix;
            if (z10) {
                Rect rect2 = ((n) view.getLayoutParams()).mDecorInsets;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.mRecyclerView.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public int getWidth() {
            return this.mWidth;
        }

        public int getWidthMode() {
            return this.mWidthMode;
        }

        boolean hasFlexibleChildInBothOrientations() {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i10).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasFocus() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.hasFocus();
        }

        public void ignoreView(@NonNull View view) {
            ViewParent parent = view.getParent();
            RecyclerView recyclerView = this.mRecyclerView;
            if (parent != recyclerView || recyclerView.indexOfChild(view) == -1) {
                throw new IllegalArgumentException("View should be fully attached to be ignored" + this.mRecyclerView.exceptionLabel());
            }
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.addFlags(128);
            this.mRecyclerView.mViewInfoStore.q(childViewHolderInt);
        }

        public boolean isAttachedToWindow() {
            return this.mIsAttachedToWindow;
        }

        public boolean isAutoMeasureEnabled() {
            return this.mAutoMeasure;
        }

        public boolean isFocused() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.isFocused();
        }

        public final boolean isItemPrefetchEnabled() {
            return this.mItemPrefetchEnabled;
        }

        public boolean isLayoutHierarchical(@NonNull t tVar, @NonNull x xVar) {
            return false;
        }

        public boolean isMeasurementCacheEnabled() {
            return this.mMeasurementCacheEnabled;
        }

        public boolean isSmoothScrolling() {
            w wVar = this.mSmoothScroller;
            return wVar != null && wVar.h();
        }

        public boolean isViewPartiallyVisible(@NonNull View view, boolean z10, boolean z11) {
            boolean z12 = this.mHorizontalBoundCheck.b(view, 24579) && this.mVerticalBoundCheck.b(view, 24579);
            return z10 ? z12 : !z12;
        }

        public void layoutDecorated(@NonNull View view, int i10, int i11, int i12, int i13) {
            Rect rect = ((n) view.getLayoutParams()).mDecorInsets;
            view.layout(i10 + rect.left, i11 + rect.top, i12 - rect.right, i13 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(@NonNull View view, int i10, int i11, int i12, int i13) {
            n nVar = (n) view.getLayoutParams();
            Rect rect = nVar.mDecorInsets;
            view.layout(i10 + rect.left + ((ViewGroup.MarginLayoutParams) nVar).leftMargin, i11 + rect.top + ((ViewGroup.MarginLayoutParams) nVar).topMargin, (i12 - rect.right) - ((ViewGroup.MarginLayoutParams) nVar).rightMargin, (i13 - rect.bottom) - ((ViewGroup.MarginLayoutParams) nVar).bottomMargin);
        }

        public void measureChild(@NonNull View view, int i10, int i11) {
            n nVar = (n) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i12 = i10 + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
            int i13 = i11 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + i12, ((ViewGroup.MarginLayoutParams) nVar).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + i13, ((ViewGroup.MarginLayoutParams) nVar).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, nVar)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void measureChildWithMargins(@NonNull View view, int i10, int i11) {
            n nVar = (n) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i12 = i10 + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
            int i13 = i11 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin + i12, ((ViewGroup.MarginLayoutParams) nVar).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin + i13, ((ViewGroup.MarginLayoutParams) nVar).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, nVar)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void moveView(int i10, int i11) {
            View childAt = getChildAt(i10);
            if (childAt != null) {
                detachViewAt(i10);
                attachView(childAt, i11);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i10 + this.mRecyclerView.toString());
            }
        }

        public void offsetChildrenHorizontal(int i10) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i10);
            }
        }

        public void offsetChildrenVertical(int i10) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i10);
            }
        }

        public boolean onAddFocusables(@NonNull RecyclerView recyclerView, @NonNull ArrayList<View> arrayList, int i10, int i11) {
            return false;
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        public View onFocusSearchFailed(View view, int i10, t tVar, x xVar) {
            return null;
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityEvent(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
        }

        void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfo(recyclerView.mRecycler, recyclerView.mState, accessibilityNodeInfoCompat);
        }

        public void onInitializeAccessibilityNodeInfoForItem(t tVar, x xVar, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        @Nullable
        public View onInterceptFocusSearch(@NonNull View view, int i10) {
            return null;
        }

        public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i10, int i11) {
        }

        public void onLayoutChildren(t tVar, x xVar) {
            Log.e(RecyclerView.TAG, "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public void onMeasure(@NonNull t tVar, @NonNull x xVar, int i10, int i11) {
            this.mRecyclerView.defaultOnMeasure(i10, i11);
        }

        @Deprecated
        public boolean onRequestChildFocus(@NonNull RecyclerView recyclerView, @NonNull View view, @Nullable View view2) {
            return isSmoothScrolling() || recyclerView.isComputingLayout();
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        void onSmoothScrollerStopped(w wVar) {
            if (this.mSmoothScroller == wVar) {
                this.mSmoothScroller = null;
            }
        }

        boolean performAccessibilityAction(int i10, @Nullable Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityAction(recyclerView.mRecycler, recyclerView.mState, i10, bundle);
        }

        public boolean performAccessibilityActionForItem(@NonNull t tVar, @NonNull x xVar, @NonNull View view, int i10, @Nullable Bundle bundle) {
            return false;
        }

        public void postOnAnimation(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                ViewCompat.postOnAnimation(recyclerView, runnable);
            }
        }

        public void removeAllViews() {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                this.mChildHelper.q(childCount);
            }
        }

        public void removeAndRecycleAllViews(@NonNull t tVar) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                    removeAndRecycleViewAt(childCount, tVar);
                }
            }
        }

        void removeAndRecycleScrapInt(t tVar) {
            int iJ = tVar.j();
            for (int i10 = iJ - 1; i10 >= 0; i10--) {
                View viewN = tVar.n(i10);
                a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(viewN);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(viewN, false);
                    }
                    j jVar = this.mRecyclerView.mItemAnimator;
                    if (jVar != null) {
                        jVar.endAnimation(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    tVar.D(viewN);
                }
            }
            tVar.e();
            if (iJ > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public void removeAndRecycleView(@NonNull View view, @NonNull t tVar) {
            removeView(view);
            tVar.G(view);
        }

        public void removeAndRecycleViewAt(int i10, @NonNull t tVar) {
            View childAt = getChildAt(i10);
            removeViewAt(i10);
            tVar.G(childAt);
        }

        public boolean removeCallbacks(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void removeDetachedView(@NonNull View view) {
            this.mRecyclerView.removeDetachedView(view, false);
        }

        @SuppressLint({"UnknownNullness"})
        public void removeView(View view) {
            this.mChildHelper.p(view);
        }

        public void removeViewAt(int i10) {
            if (getChildAt(i10) != null) {
                this.mChildHelper.q(i10);
            }
        }

        public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z10) {
            return requestChildRectangleOnScreen(recyclerView, view, rect, z10, false);
        }

        public void requestLayout() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public void requestSimpleAnimationsInNextLayout() {
            this.mRequestedSimpleAnimations = true;
        }

        public int scrollHorizontallyBy(int i10, t tVar, x xVar) {
            return 0;
        }

        public void scrollToPosition(int i10) {
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.e(RecyclerView.TAG, "You MUST implement scrollToPosition. It will soon become abstract");
            }
        }

        public int scrollVerticallyBy(int i10, t tVar, x xVar) {
            return 0;
        }

        @Deprecated
        public void setAutoMeasureEnabled(boolean z10) {
            this.mAutoMeasure = z10;
        }

        void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public final void setItemPrefetchEnabled(boolean z10) {
            if (z10 != this.mItemPrefetchEnabled) {
                this.mItemPrefetchEnabled = z10;
                this.mPrefetchMaxCountObserved = 0;
                RecyclerView recyclerView = this.mRecyclerView;
                if (recyclerView != null) {
                    recyclerView.mRecycler.P();
                }
            }
        }

        void setMeasureSpecs(int i10, int i11) {
            this.mWidth = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            this.mWidthMode = mode;
            if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize(i11);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.mHeightMode = mode2;
            if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.mHeight = 0;
        }

        public void setMeasuredDimension(Rect rect, int i10, int i11) {
            setMeasuredDimension(chooseSize(i10, rect.width() + getPaddingLeft() + getPaddingRight(), getMinimumWidth()), chooseSize(i11, rect.height() + getPaddingTop() + getPaddingBottom(), getMinimumHeight()));
        }

        void setMeasuredDimensionFromChildren(int i10, int i11) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.defaultOnMeasure(i10, i11);
                return;
            }
            int i12 = Integer.MIN_VALUE;
            int i13 = Integer.MAX_VALUE;
            int i14 = Integer.MIN_VALUE;
            int i15 = Integer.MAX_VALUE;
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt = getChildAt(i16);
                Rect rect = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(childAt, rect);
                int i17 = rect.left;
                if (i17 < i15) {
                    i15 = i17;
                }
                int i18 = rect.right;
                if (i18 > i12) {
                    i12 = i18;
                }
                int i19 = rect.top;
                if (i19 < i13) {
                    i13 = i19;
                }
                int i20 = rect.bottom;
                if (i20 > i14) {
                    i14 = i20;
                }
            }
            this.mRecyclerView.mTempRect.set(i15, i13, i12, i14);
            setMeasuredDimension(this.mRecyclerView.mTempRect, i10, i11);
        }

        public void setMeasurementCacheEnabled(boolean z10) {
            this.mMeasurementCacheEnabled = z10;
        }

        void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                this.mWidth = 0;
                this.mHeight = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.mChildHelper;
                this.mWidth = recyclerView.getWidth();
                this.mHeight = recyclerView.getHeight();
            }
            this.mWidthMode = 1073741824;
            this.mHeightMode = 1073741824;
        }

        boolean shouldMeasureChild(View view, int i10, int i11, n nVar) {
            return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && i(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) nVar).width) && i(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) nVar).height)) ? false : true;
        }

        boolean shouldMeasureTwice() {
            return false;
        }

        boolean shouldReMeasureChild(View view, int i10, int i11, n nVar) {
            return (this.mMeasurementCacheEnabled && i(view.getMeasuredWidth(), i10, ((ViewGroup.MarginLayoutParams) nVar).width) && i(view.getMeasuredHeight(), i11, ((ViewGroup.MarginLayoutParams) nVar).height)) ? false : true;
        }

        public void smoothScrollToPosition(RecyclerView recyclerView, x xVar, int i10) {
            Log.e(RecyclerView.TAG, "You must override smoothScrollToPosition to support smooth scrolling");
        }

        @SuppressLint({"UnknownNullness"})
        public void startSmoothScroll(w wVar) {
            w wVar2 = this.mSmoothScroller;
            if (wVar2 != null && wVar != wVar2 && wVar2.h()) {
                this.mSmoothScroller.r();
            }
            this.mSmoothScroller = wVar;
            wVar.q(this.mRecyclerView, this);
        }

        public void stopIgnoringView(@NonNull View view) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.stopIgnoring();
            childViewHolderInt.resetInternal();
            childViewHolderInt.addFlags(4);
        }

        void stopSmoothScroller() {
            w wVar = this.mSmoothScroller;
            if (wVar != null) {
                wVar.r();
            }
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }

        @SuppressLint({"UnknownNullness"})
        public void addDisappearingView(View view, int i10) {
            e(view, i10, true);
        }

        @SuppressLint({"UnknownNullness"})
        public void addView(View view, int i10) {
            e(view, i10, false);
        }

        public void onDetachedFromWindow(RecyclerView recyclerView, t tVar) {
            onDetachedFromWindow(recyclerView);
        }

        public void onInitializeAccessibilityEvent(@NonNull t tVar, @NonNull x xVar, @NonNull AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z10 = true;
            if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
                z10 = false;
            }
            accessibilityEvent.setScrollable(z10);
            Adapter adapter = this.mRecyclerView.mAdapter;
            if (adapter != null) {
                accessibilityEvent.setItemCount(adapter.getItemCount());
            }
        }

        public void onInitializeAccessibilityNodeInfo(t tVar, x xVar, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCountForAccessibility(tVar, xVar), getColumnCountForAccessibility(tVar, xVar), isLayoutHierarchical(tVar, xVar), getSelectionModeForAccessibility(tVar, xVar)));
        }

        void onInitializeAccessibilityNodeInfoForItem(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.mChildHelper.n(childViewHolderInt.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, accessibilityNodeInfoCompat);
        }

        public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i10, int i11, @Nullable Object obj) {
            onItemsUpdated(recyclerView, i10, i11);
        }

        public boolean onRequestChildFocus(@NonNull RecyclerView recyclerView, @NonNull x xVar, @NonNull View view, @Nullable View view2) {
            return onRequestChildFocus(recyclerView, view, view2);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0067 A[PHI: r9
          0x0067: PHI (r9v8 int) = (r9v5 int), (r9v11 int) binds: [B:29:0x0084, B:20:0x0057] A[DONT_GENERATE, DONT_INLINE]] */
        public boolean performAccessibilityAction(t tVar, x xVar, int i10, Bundle bundle) {
            int paddingTop;
            int paddingLeft;
            int i11;
            int i12;
            if (this.mRecyclerView == null) {
                return false;
            }
            int height = getHeight();
            int width = getWidth();
            Rect rect = new Rect();
            if (this.mRecyclerView.getMatrix().isIdentity() && this.mRecyclerView.getGlobalVisibleRect(rect)) {
                height = rect.height();
                width = rect.width();
            }
            if (i10 == 4096) {
                paddingTop = this.mRecyclerView.canScrollVertically(1) ? (height - getPaddingTop()) - getPaddingBottom() : 0;
                if (this.mRecyclerView.canScrollHorizontally(1)) {
                    paddingLeft = (width - getPaddingLeft()) - getPaddingRight();
                    i11 = paddingTop;
                    i12 = paddingLeft;
                } else {
                    i11 = paddingTop;
                    i12 = 0;
                }
            } else if (i10 != 8192) {
                i12 = 0;
                i11 = 0;
            } else {
                paddingTop = this.mRecyclerView.canScrollVertically(-1) ? -((height - getPaddingTop()) - getPaddingBottom()) : 0;
                if (this.mRecyclerView.canScrollHorizontally(-1)) {
                    paddingLeft = -((width - getPaddingLeft()) - getPaddingRight());
                    i11 = paddingTop;
                    i12 = paddingLeft;
                } else {
                    i11 = paddingTop;
                    i12 = 0;
                }
            }
            if (i11 == 0 && i12 == 0) {
                return false;
            }
            this.mRecyclerView.smoothScrollBy(i12, i11, null, Integer.MIN_VALUE, true);
            return true;
        }

        boolean performAccessibilityActionForItem(@NonNull View view, int i10, @Nullable Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityActionForItem(recyclerView.mRecycler, recyclerView.mState, view, i10, bundle);
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
            int[] iArrG = g(view, rect);
            int i10 = iArrG[0];
            int i11 = iArrG[1];
            if ((z11 && !h(recyclerView, i10, i11)) || (i10 == 0 && i11 == 0)) {
                return false;
            }
            if (z10) {
                recyclerView.scrollBy(i10, i11);
            } else {
                recyclerView.smoothScrollBy(i10, i11);
            }
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001a  */
        /* JADX WARN: Code duplicated, block: B:14:0x0022  */
        /* JADX WARN: Code duplicated, block: B:5:0x0010  */
        public static int getChildMeasureSpec(int i10, int i11, int i12, int i13, boolean z10) {
            int iMax = Math.max(0, i10 - i12);
            if (z10) {
                if (i13 >= 0) {
                    i11 = 1073741824;
                } else if (i13 != -1 || (i11 != Integer.MIN_VALUE && (i11 == 0 || i11 != 1073741824))) {
                    i11 = 0;
                    i13 = 0;
                } else {
                    i13 = iMax;
                }
            } else if (i13 >= 0) {
                i11 = 1073741824;
            } else if (i13 == -1) {
                i13 = iMax;
            } else if (i13 != -2) {
                i11 = 0;
                i13 = 0;
            } else if (i11 == Integer.MIN_VALUE || i11 == 1073741824) {
                i13 = iMax;
                i11 = Integer.MIN_VALUE;
            } else {
                i13 = iMax;
                i11 = 0;
            }
            return View.MeasureSpec.makeMeasureSpec(i13, i11);
        }

        public void attachView(@NonNull View view, int i10) {
            attachView(view, i10, (n) view.getLayoutParams());
        }

        @SuppressLint({"UnknownNullness"})
        public n generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new n(context, attributeSet);
        }

        public void setMeasuredDimension(int i10, int i11) {
            this.mRecyclerView.setMeasuredDimension(i10, i11);
        }

        public void attachView(@NonNull View view) {
            attachView(view, -1);
        }

        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        public void onItemsChanged(@NonNull RecyclerView recyclerView) {
        }

        public void onLayoutCompleted(x xVar) {
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public void onScrollStateChanged(int i10) {
        }

        public void collectInitialPrefetchPositions(int i10, c cVar) {
        }

        public void onAdapterChanged(@Nullable Adapter adapter, @Nullable Adapter adapter2) {
        }

        public void onItemsAdded(@NonNull RecyclerView recyclerView, int i10, int i11) {
        }

        public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i10, int i11) {
        }

        public void collectAdjacentPrefetchPositions(int i10, int i11, x xVar, c cVar) {
        }

        public void onItemsMoved(@NonNull RecyclerView recyclerView, int i10, int i11, int i12) {
        }
    }

    public interface o {
        void onChildViewAttachedToWindow(View view);

        void onChildViewDetachedFromWindow(View view);
    }

    public static abstract class p {
        public abstract boolean onFling(int i10, int i11);
    }

    public interface q {
        void a(RecyclerView recyclerView, MotionEvent motionEvent);

        boolean b(RecyclerView recyclerView, MotionEvent motionEvent);

        void c(boolean z10);
    }

    public static class s {

        SparseArray f13930a = new SparseArray();

        int f13931b = 0;

        Set f13932c = Collections.newSetFromMap(new IdentityHashMap());

        static class a {

            final ArrayList f13933a = new ArrayList();

            int f13934b = 5;

            long f13935c = 0;

            long f13936d = 0;

            a() {
            }
        }

        private a i(int i10) {
            a aVar = (a) this.f13930a.get(i10);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f13930a.put(i10, aVar2);
            return aVar2;
        }

        void a() {
            this.f13931b++;
        }

        void b(Adapter adapter) {
            this.f13932c.add(adapter);
        }

        public void c() {
            for (int i10 = 0; i10 < this.f13930a.size(); i10++) {
                a aVar = (a) this.f13930a.valueAt(i10);
                Iterator it = aVar.f13933a.iterator();
                while (it.hasNext()) {
                    h1.a.b(((a0) it.next()).itemView);
                }
                aVar.f13933a.clear();
            }
        }

        void d() {
            this.f13931b--;
        }

        void e(Adapter adapter, boolean z10) {
            this.f13932c.remove(adapter);
            if (this.f13932c.size() != 0 || z10) {
                return;
            }
            for (int i10 = 0; i10 < this.f13930a.size(); i10++) {
                SparseArray sparseArray = this.f13930a;
                ArrayList arrayList = ((a) sparseArray.get(sparseArray.keyAt(i10))).f13933a;
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    h1.a.b(((a0) arrayList.get(i11)).itemView);
                }
            }
        }

        void f(int i10, long j10) {
            a aVarI = i(i10);
            aVarI.f13936d = l(aVarI.f13936d, j10);
        }

        void g(int i10, long j10) {
            a aVarI = i(i10);
            aVarI.f13935c = l(aVarI.f13935c, j10);
        }

        public a0 h(int i10) {
            a aVar = (a) this.f13930a.get(i10);
            if (aVar == null || aVar.f13933a.isEmpty()) {
                return null;
            }
            ArrayList arrayList = aVar.f13933a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!((a0) arrayList.get(size)).isAttachedToTransitionOverlay()) {
                    return (a0) arrayList.remove(size);
                }
            }
            return null;
        }

        void j(Adapter adapter, Adapter adapter2, boolean z10) {
            if (adapter != null) {
                d();
            }
            if (!z10 && this.f13931b == 0) {
                c();
            }
            if (adapter2 != null) {
                a();
            }
        }

        public void k(a0 a0Var) {
            int itemViewType = a0Var.getItemViewType();
            ArrayList arrayList = i(itemViewType).f13933a;
            if (((a) this.f13930a.get(itemViewType)).f13934b <= arrayList.size()) {
                h1.a.b(a0Var.itemView);
            } else {
                if (RecyclerView.sDebugAssertionsEnabled && arrayList.contains(a0Var)) {
                    throw new IllegalArgumentException("this scrap item already exists");
                }
                a0Var.resetInternal();
                arrayList.add(a0Var);
            }
        }

        long l(long j10, long j11) {
            return j10 == 0 ? j11 : ((j10 / 4) * 3) + (j11 / 4);
        }

        public void m(int i10, int i11) {
            a aVarI = i(i10);
            aVarI.f13934b = i11;
            ArrayList arrayList = aVarI.f13933a;
            while (arrayList.size() > i11) {
                arrayList.remove(arrayList.size() - 1);
            }
        }

        boolean n(int i10, long j10, long j11) {
            long j12 = i(i10).f13936d;
            return j12 == 0 || j10 + j12 < j11;
        }

        boolean o(int i10, long j10, long j11) {
            long j12 = i(i10).f13935c;
            return j12 == 0 || j10 + j12 < j11;
        }
    }

    public final class t {

        final ArrayList f13937a;

        ArrayList f13938b;

        final ArrayList f13939c;

        private final List f13940d;

        private int f13941e;

        int f13942f;

        s f13943g;

        private z f13944h;

        public t() {
            ArrayList arrayList = new ArrayList();
            this.f13937a = arrayList;
            this.f13938b = null;
            this.f13939c = new ArrayList();
            this.f13940d = Collections.unmodifiableList(arrayList);
            this.f13941e = 2;
            this.f13942f = 2;
        }

        private void B(Adapter adapter) {
            C(adapter, false);
        }

        private void C(Adapter adapter, boolean z10) {
            s sVar = this.f13943g;
            if (sVar != null) {
                sVar.e(adapter, z10);
            }
        }

        private boolean M(a0 a0Var, int i10, int i11, long j10) {
            a0Var.mBindingAdapter = null;
            a0Var.mOwnerRecyclerView = RecyclerView.this;
            int itemViewType = a0Var.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            boolean z10 = false;
            if (j10 != Long.MAX_VALUE && !this.f13943g.n(itemViewType, nanoTime, j10)) {
                return false;
            }
            if (a0Var.isTmpDetached()) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.attachViewToParent(a0Var.itemView, recyclerView.getChildCount(), a0Var.itemView.getLayoutParams());
                z10 = true;
            }
            RecyclerView.this.mAdapter.bindViewHolder(a0Var, i10);
            if (z10) {
                RecyclerView.this.detachViewFromParent(a0Var.itemView);
            }
            this.f13943g.f(a0Var.getItemViewType(), RecyclerView.this.getNanoTime() - nanoTime);
            b(a0Var);
            if (RecyclerView.this.mState.e()) {
                a0Var.mPreLayoutPosition = i11;
            }
            return true;
        }

        private void b(a0 a0Var) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                View view = a0Var.itemView;
                if (ViewCompat.getImportantForAccessibility(view) == 0) {
                    ViewCompat.setImportantForAccessibility(view, 1);
                }
                androidx.recyclerview.widget.o oVar = RecyclerView.this.mAccessibilityDelegate;
                if (oVar == null) {
                    return;
                }
                AccessibilityDelegateCompat accessibilityDelegateCompatA = oVar.a();
                if (accessibilityDelegateCompatA instanceof androidx.recyclerview.widget.o.a) {
                    ((androidx.recyclerview.widget.o.a) accessibilityDelegateCompatA).b(view);
                }
                ViewCompat.setAccessibilityDelegate(view, accessibilityDelegateCompatA);
            }
        }

        private void q(ViewGroup viewGroup, boolean z10) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    q((ViewGroup) childAt, true);
                }
            }
            if (z10) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        private void r(a0 a0Var) {
            View view = a0Var.itemView;
            if (view instanceof ViewGroup) {
                q((ViewGroup) view, false);
            }
        }

        private void u() {
            if (this.f13943g != null) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mAdapter == null || !recyclerView.isAttachedToWindow()) {
                    return;
                }
                this.f13943g.b(RecyclerView.this.mAdapter);
            }
        }

        void A() {
            for (int i10 = 0; i10 < this.f13939c.size(); i10++) {
                h1.a.b(((a0) this.f13939c.get(i10)).itemView);
            }
            B(RecyclerView.this.mAdapter);
        }

        void D(View view) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.mScrapContainer = null;
            childViewHolderInt.mInChangeScrap = false;
            childViewHolderInt.clearReturnedFromScrapFlag();
            H(childViewHolderInt);
        }

        void E() {
            for (int size = this.f13939c.size() - 1; size >= 0; size--) {
                F(size);
            }
            this.f13939c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                RecyclerView.this.mPrefetchRegistry.b();
            }
        }

        void F(int i10) {
            if (RecyclerView.sVerboseLoggingEnabled) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Recycling cached view at index ");
                sb2.append(i10);
            }
            a0 a0Var = (a0) this.f13939c.get(i10);
            if (RecyclerView.sVerboseLoggingEnabled) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("CachedViewHolder to be recycled: ");
                sb3.append(a0Var);
            }
            a(a0Var, true);
            this.f13939c.remove(i10);
        }

        public void G(View view) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            H(childViewHolderInt);
            if (RecyclerView.this.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
                return;
            }
            RecyclerView.this.mItemAnimator.endAnimation(childViewHolderInt);
        }

        void H(a0 a0Var) {
            boolean z10;
            boolean z11 = false;
            boolean z12 = true;
            if (a0Var.isScrap() || a0Var.itemView.getParent() != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Scrapped or attached views may not be recycled. isScrap:");
                sb2.append(a0Var.isScrap());
                sb2.append(" isAttached:");
                sb2.append(a0Var.itemView.getParent() != null);
                sb2.append(RecyclerView.this.exceptionLabel());
                throw new IllegalArgumentException(sb2.toString());
            }
            if (a0Var.isTmpDetached()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + a0Var + RecyclerView.this.exceptionLabel());
            }
            if (a0Var.shouldIgnore()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.exceptionLabel());
            }
            boolean zDoesTransientStatePreventRecycling = a0Var.doesTransientStatePreventRecycling();
            Adapter adapter = RecyclerView.this.mAdapter;
            boolean z13 = adapter != null && zDoesTransientStatePreventRecycling && adapter.onFailedToRecycleView(a0Var);
            if (RecyclerView.sDebugAssertionsEnabled && this.f13939c.contains(a0Var)) {
                throw new IllegalArgumentException("cached view received recycle internal? " + a0Var + RecyclerView.this.exceptionLabel());
            }
            if (z13 || a0Var.isRecyclable()) {
                if (this.f13942f <= 0 || a0Var.hasAnyOfTheFlags(526)) {
                    z10 = false;
                } else {
                    int size = this.f13939c.size();
                    if (size >= this.f13942f && size > 0) {
                        F(0);
                        size--;
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !RecyclerView.this.mPrefetchRegistry.d(a0Var.mPosition)) {
                        int i10 = size - 1;
                        while (i10 >= 0) {
                            if (!RecyclerView.this.mPrefetchRegistry.d(((a0) this.f13939c.get(i10)).mPosition)) {
                                break;
                            } else {
                                i10--;
                            }
                        }
                        size = i10 + 1;
                    }
                    this.f13939c.add(size, a0Var);
                    z10 = true;
                }
                if (z10) {
                    z12 = false;
                } else {
                    a(a0Var, true);
                }
                z11 = z10;
            } else {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists");
                    sb3.append(RecyclerView.this.exceptionLabel());
                }
                z12 = false;
            }
            RecyclerView.this.mViewInfoStore.q(a0Var);
            if (z11 || z12 || !zDoesTransientStatePreventRecycling) {
                return;
            }
            h1.a.b(a0Var.itemView);
            a0Var.mBindingAdapter = null;
            a0Var.mOwnerRecyclerView = null;
        }

        void I(View view) {
            a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f13938b == null) {
                    this.f13938b = new ArrayList();
                }
                childViewHolderInt.setScrapContainer(this, true);
                this.f13938b.add(childViewHolderInt);
                return;
            }
            if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || RecyclerView.this.mAdapter.hasStableIds()) {
                childViewHolderInt.setScrapContainer(this, false);
                this.f13937a.add(childViewHolderInt);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.exceptionLabel());
            }
        }

        void J(s sVar) {
            B(RecyclerView.this.mAdapter);
            s sVar2 = this.f13943g;
            if (sVar2 != null) {
                sVar2.d();
            }
            this.f13943g = sVar;
            if (sVar != null && RecyclerView.this.getAdapter() != null) {
                this.f13943g.a();
            }
            u();
        }

        void K(z zVar) {
            this.f13944h = zVar;
        }

        public void L(int i10) {
            this.f13941e = i10;
            P();
        }

        /* JADX WARN: Code duplicated, block: B:101:0x0200  */
        /* JADX WARN: Code duplicated, block: B:109:0x0242  */
        /* JADX WARN: Code duplicated, block: B:110:0x0250  */
        /* JADX WARN: Code duplicated, block: B:112:0x0258  */
        /* JADX WARN: Code duplicated, block: B:113:0x0266  */
        /* JADX WARN: Code duplicated, block: B:116:0x026c A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:118:0x026f  */
        /* JADX WARN: Code duplicated, block: B:18:0x0037 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:19:0x0039  */
        /* JADX WARN: Code duplicated, block: B:21:0x0043  */
        /* JADX WARN: Code duplicated, block: B:22:0x004e  */
        /* JADX WARN: Code duplicated, block: B:24:0x0054  */
        /* JADX WARN: Code duplicated, block: B:27:0x005c  */
        /* JADX WARN: Code duplicated, block: B:29:0x005f  */
        /* JADX WARN: Code duplicated, block: B:75:0x0162 A[PHI: r1 r4
          0x0162: PHI (r1v12 androidx.recyclerview.widget.RecyclerView$a0) = (r1v11 androidx.recyclerview.widget.RecyclerView$a0), (r1v33 androidx.recyclerview.widget.RecyclerView$a0) binds: [B:28:0x005d, B:62:0x0118] A[DONT_GENERATE, DONT_INLINE]
          0x0162: PHI (r4v3 boolean) = (r4v2 boolean), (r4v7 boolean) binds: [B:28:0x005d, B:62:0x0118] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:85:0x01bb  */
        /* JADX WARN: Code duplicated, block: B:91:0x01e7  */
        /* JADX WARN: Code duplicated, block: B:93:0x01ed  */
        a0 N(int i10, boolean z10, long j10) {
            a0 childViewHolder;
            boolean z11;
            a0 a0Var;
            boolean z12;
            boolean zM;
            ViewGroup.LayoutParams layoutParams;
            n nVar;
            int iM;
            RecyclerView recyclerViewFindNestedRecyclerView;
            z zVar;
            View viewA;
            if (i10 < 0 || i10 >= RecyclerView.this.mState.b()) {
                throw new IndexOutOfBoundsException("Invalid item position " + i10 + "(" + i10 + "). Item count:" + RecyclerView.this.mState.b() + RecyclerView.this.exceptionLabel());
            }
            if (RecyclerView.this.mState.e()) {
                childViewHolder = h(i10);
                if (childViewHolder != null) {
                    z11 = true;
                }
                if (childViewHolder == null && (childViewHolder = m(i10, z10)) != null) {
                    if (Q(childViewHolder)) {
                        z11 = true;
                    } else {
                        if (!z10) {
                            childViewHolder.addFlags(4);
                            if (childViewHolder.isScrap()) {
                                RecyclerView.this.removeDetachedView(childViewHolder.itemView, false);
                                childViewHolder.unScrap();
                            } else if (childViewHolder.wasReturnedFromScrap()) {
                                childViewHolder.clearReturnedFromScrapFlag();
                            }
                            H(childViewHolder);
                        }
                        childViewHolder = null;
                    }
                }
                if (childViewHolder == null) {
                    a0Var = childViewHolder;
                } else {
                    iM = RecyclerView.this.mAdapterHelper.m(i10);
                    if (iM >= 0 || iM >= RecyclerView.this.mAdapter.getItemCount()) {
                        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i10 + "(offset:" + iM + ").state:" + RecyclerView.this.mState.b() + RecyclerView.this.exceptionLabel());
                    }
                    int itemViewType = RecyclerView.this.mAdapter.getItemViewType(iM);
                    if (RecyclerView.this.mAdapter.hasStableIds() && (childViewHolder = l(RecyclerView.this.mAdapter.getItemId(iM), itemViewType, z10)) != null) {
                        childViewHolder.mPosition = iM;
                        z11 = true;
                    }
                    if (childViewHolder == null && (zVar = this.f13944h) != null && (viewA = zVar.a(this, i10, itemViewType)) != null) {
                        childViewHolder = RecyclerView.this.getChildViewHolder(viewA);
                        if (childViewHolder == null) {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder" + RecyclerView.this.exceptionLabel());
                        }
                        if (childViewHolder.shouldIgnore()) {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view." + RecyclerView.this.exceptionLabel());
                        }
                    }
                    if (childViewHolder == null) {
                        if (RecyclerView.sVerboseLoggingEnabled) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("tryGetViewHolderForPositionByDeadline(");
                            sb2.append(i10);
                            sb2.append(") fetching from shared pool");
                        }
                        a0 a0VarH = i().h(itemViewType);
                        if (a0VarH != null) {
                            a0VarH.resetInternal();
                            if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                                r(a0VarH);
                            }
                        }
                        childViewHolder = a0VarH;
                    }
                    if (childViewHolder == null) {
                        long nanoTime = RecyclerView.this.getNanoTime();
                        if (j10 != Long.MAX_VALUE && !this.f13943g.o(itemViewType, nanoTime, j10)) {
                            return null;
                        }
                        RecyclerView recyclerView = RecyclerView.this;
                        a0 a0VarCreateViewHolder = recyclerView.mAdapter.createViewHolder(recyclerView, itemViewType);
                        if (RecyclerView.ALLOW_THREAD_GAP_WORK && (recyclerViewFindNestedRecyclerView = RecyclerView.findNestedRecyclerView(a0VarCreateViewHolder.itemView)) != null) {
                            a0VarCreateViewHolder.mNestedRecyclerView = new WeakReference<>(recyclerViewFindNestedRecyclerView);
                        }
                        this.f13943g.g(itemViewType, RecyclerView.this.getNanoTime() - nanoTime);
                        int i11 = RecyclerView.HORIZONTAL;
                        a0Var = a0VarCreateViewHolder;
                    } else {
                        a0Var = childViewHolder;
                    }
                }
                z12 = z11;
                if (z12 && !RecyclerView.this.mState.e() && a0Var.hasAnyOfTheFlags(8192)) {
                    a0Var.setFlags(0, 8192);
                    if (RecyclerView.this.mState.f13972k) {
                        int iBuildAdapterChangeFlagsForAnimations = j.buildAdapterChangeFlagsForAnimations(a0Var) | 4096;
                        RecyclerView recyclerView2 = RecyclerView.this;
                        RecyclerView.this.recordAnimationInfoIfBouncedHiddenView(a0Var, recyclerView2.mItemAnimator.recordPreLayoutInformation(recyclerView2.mState, a0Var, iBuildAdapterChangeFlagsForAnimations, a0Var.getUnmodifiedPayloads()));
                    }
                }
                if (RecyclerView.this.mState.e() || !a0Var.isBound()) {
                    if (a0Var.isBound() || a0Var.needsUpdate() || a0Var.isInvalid()) {
                        if (!RecyclerView.sDebugAssertionsEnabled && a0Var.isRemoved()) {
                            throw new IllegalStateException("Removed holder should be bound and it should come here only in pre-layout. Holder: " + a0Var + RecyclerView.this.exceptionLabel());
                        }
                        zM = M(a0Var, RecyclerView.this.mAdapterHelper.m(i10), i10, j10);
                    }
                    layoutParams = a0Var.itemView.getLayoutParams();
                    if (layoutParams == null) {
                        nVar = (n) RecyclerView.this.generateDefaultLayoutParams();
                        a0Var.itemView.setLayoutParams(nVar);
                    } else if (RecyclerView.this.checkLayoutParams(layoutParams)) {
                        nVar = (n) layoutParams;
                    } else {
                        nVar = (n) RecyclerView.this.generateLayoutParams(layoutParams);
                        a0Var.itemView.setLayoutParams(nVar);
                    }
                    nVar.mViewHolder = a0Var;
                    nVar.mPendingInvalidate = !z12 && zM;
                    return a0Var;
                }
                a0Var.mPreLayoutPosition = i10;
                zM = false;
                layoutParams = a0Var.itemView.getLayoutParams();
                if (layoutParams == null) {
                    nVar = (n) RecyclerView.this.generateDefaultLayoutParams();
                    a0Var.itemView.setLayoutParams(nVar);
                } else if (RecyclerView.this.checkLayoutParams(layoutParams)) {
                    nVar = (n) RecyclerView.this.generateLayoutParams(layoutParams);
                    a0Var.itemView.setLayoutParams(nVar);
                } else {
                    nVar = (n) layoutParams;
                }
                nVar.mViewHolder = a0Var;
                nVar.mPendingInvalidate = !z12 && zM;
                return a0Var;
            }
            childViewHolder = null;
            z11 = false;
            if (childViewHolder == null) {
                if (Q(childViewHolder)) {
                    if (!z10) {
                        childViewHolder.addFlags(4);
                        if (childViewHolder.isScrap()) {
                            RecyclerView.this.removeDetachedView(childViewHolder.itemView, false);
                            childViewHolder.unScrap();
                        } else if (childViewHolder.wasReturnedFromScrap()) {
                            childViewHolder.clearReturnedFromScrapFlag();
                        }
                        H(childViewHolder);
                    }
                    childViewHolder = null;
                } else {
                    z11 = true;
                }
            }
            if (childViewHolder == null) {
                iM = RecyclerView.this.mAdapterHelper.m(i10);
                if (iM >= 0) {
                }
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i10 + "(offset:" + iM + ").state:" + RecyclerView.this.mState.b() + RecyclerView.this.exceptionLabel());
            }
            a0Var = childViewHolder;
            z12 = z11;
            if (z12) {
                a0Var.setFlags(0, 8192);
                if (RecyclerView.this.mState.f13972k) {
                    int iBuildAdapterChangeFlagsForAnimations2 = j.buildAdapterChangeFlagsForAnimations(a0Var) | 4096;
                    RecyclerView recyclerView3 = RecyclerView.this;
                    RecyclerView.this.recordAnimationInfoIfBouncedHiddenView(a0Var, recyclerView3.mItemAnimator.recordPreLayoutInformation(recyclerView3.mState, a0Var, iBuildAdapterChangeFlagsForAnimations2, a0Var.getUnmodifiedPayloads()));
                }
            }
            if (RecyclerView.this.mState.e()) {
                if (a0Var.isBound()) {
                }
                if (!RecyclerView.sDebugAssertionsEnabled) {
                }
                zM = M(a0Var, RecyclerView.this.mAdapterHelper.m(i10), i10, j10);
            } else {
                if (a0Var.isBound()) {
                }
                if (!RecyclerView.sDebugAssertionsEnabled) {
                }
                zM = M(a0Var, RecyclerView.this.mAdapterHelper.m(i10), i10, j10);
            }
            layoutParams = a0Var.itemView.getLayoutParams();
            if (layoutParams == null) {
                nVar = (n) RecyclerView.this.generateDefaultLayoutParams();
                a0Var.itemView.setLayoutParams(nVar);
            } else if (RecyclerView.this.checkLayoutParams(layoutParams)) {
                nVar = (n) RecyclerView.this.generateLayoutParams(layoutParams);
                a0Var.itemView.setLayoutParams(nVar);
            } else {
                nVar = (n) layoutParams;
            }
            nVar.mViewHolder = a0Var;
            nVar.mPendingInvalidate = !z12 && zM;
            return a0Var;
        }

        void O(a0 a0Var) {
            if (a0Var.mInChangeScrap) {
                this.f13938b.remove(a0Var);
            } else {
                this.f13937a.remove(a0Var);
            }
            a0Var.mScrapContainer = null;
            a0Var.mInChangeScrap = false;
            a0Var.clearReturnedFromScrapFlag();
        }

        void P() {
            m mVar = RecyclerView.this.mLayout;
            this.f13942f = this.f13941e + (mVar != null ? mVar.mPrefetchMaxCountObserved : 0);
            for (int size = this.f13939c.size() - 1; size >= 0 && this.f13939c.size() > this.f13942f; size--) {
                F(size);
            }
        }

        boolean Q(a0 a0Var) {
            if (a0Var.isRemoved()) {
                if (!RecyclerView.sDebugAssertionsEnabled || RecyclerView.this.mState.e()) {
                    return RecyclerView.this.mState.e();
                }
                throw new IllegalStateException("should not receive a removed view unless it is pre layout" + RecyclerView.this.exceptionLabel());
            }
            int i10 = a0Var.mPosition;
            if (i10 >= 0 && i10 < RecyclerView.this.mAdapter.getItemCount()) {
                if (RecyclerView.this.mState.e() || RecyclerView.this.mAdapter.getItemViewType(a0Var.mPosition) == a0Var.getItemViewType()) {
                    return !RecyclerView.this.mAdapter.hasStableIds() || a0Var.getItemId() == RecyclerView.this.mAdapter.getItemId(a0Var.mPosition);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + a0Var + RecyclerView.this.exceptionLabel());
        }

        void R(int i10, int i11) {
            int i12;
            int i13 = i11 + i10;
            for (int size = this.f13939c.size() - 1; size >= 0; size--) {
                a0 a0Var = (a0) this.f13939c.get(size);
                if (a0Var != null && (i12 = a0Var.mPosition) >= i10 && i12 < i13) {
                    a0Var.addFlags(2);
                    F(size);
                }
            }
        }

        void a(a0 a0Var, boolean z10) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(a0Var);
            View view = a0Var.itemView;
            androidx.recyclerview.widget.o oVar = RecyclerView.this.mAccessibilityDelegate;
            if (oVar != null) {
                AccessibilityDelegateCompat accessibilityDelegateCompatA = oVar.a();
                ViewCompat.setAccessibilityDelegate(view, accessibilityDelegateCompatA instanceof androidx.recyclerview.widget.o.a ? ((androidx.recyclerview.widget.o.a) accessibilityDelegateCompatA).a(view) : null);
            }
            if (z10) {
                g(a0Var);
            }
            a0Var.mBindingAdapter = null;
            a0Var.mOwnerRecyclerView = null;
            i().k(a0Var);
        }

        public void c() {
            this.f13937a.clear();
            E();
        }

        void d() {
            int size = this.f13939c.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((a0) this.f13939c.get(i10)).clearOldPosition();
            }
            int size2 = this.f13937a.size();
            for (int i11 = 0; i11 < size2; i11++) {
                ((a0) this.f13937a.get(i11)).clearOldPosition();
            }
            ArrayList arrayList = this.f13938b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i12 = 0; i12 < size3; i12++) {
                    ((a0) this.f13938b.get(i12)).clearOldPosition();
                }
            }
        }

        void e() {
            this.f13937a.clear();
            ArrayList arrayList = this.f13938b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        public int f(int i10) {
            if (i10 >= 0 && i10 < RecyclerView.this.mState.b()) {
                return !RecyclerView.this.mState.e() ? i10 : RecyclerView.this.mAdapterHelper.m(i10);
            }
            throw new IndexOutOfBoundsException("invalid position " + i10 + ". State item count is " + RecyclerView.this.mState.b() + RecyclerView.this.exceptionLabel());
        }

        void g(a0 a0Var) {
            RecyclerView.this.getClass();
            if (RecyclerView.this.mRecyclerListeners.size() > 0) {
                android.support.v4.media.session.c.a(RecyclerView.this.mRecyclerListeners.get(0));
                throw null;
            }
            Adapter adapter = RecyclerView.this.mAdapter;
            if (adapter != null) {
                adapter.onViewRecycled(a0Var);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.q(a0Var);
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("dispatchViewRecycled: ");
                sb2.append(a0Var);
            }
        }

        a0 h(int i10) {
            int size;
            int iM;
            ArrayList arrayList = this.f13938b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    a0 a0Var = (a0) this.f13938b.get(i11);
                    if (!a0Var.wasReturnedFromScrap() && a0Var.getLayoutPosition() == i10) {
                        a0Var.addFlags(32);
                        return a0Var;
                    }
                }
                if (RecyclerView.this.mAdapter.hasStableIds() && (iM = RecyclerView.this.mAdapterHelper.m(i10)) > 0 && iM < RecyclerView.this.mAdapter.getItemCount()) {
                    long itemId = RecyclerView.this.mAdapter.getItemId(iM);
                    for (int i12 = 0; i12 < size; i12++) {
                        a0 a0Var2 = (a0) this.f13938b.get(i12);
                        if (!a0Var2.wasReturnedFromScrap() && a0Var2.getItemId() == itemId) {
                            a0Var2.addFlags(32);
                            return a0Var2;
                        }
                    }
                }
            }
            return null;
        }

        s i() {
            if (this.f13943g == null) {
                this.f13943g = new s();
                u();
            }
            return this.f13943g;
        }

        int j() {
            return this.f13937a.size();
        }

        public List k() {
            return this.f13940d;
        }

        a0 l(long j10, int i10, boolean z10) {
            for (int size = this.f13937a.size() - 1; size >= 0; size--) {
                a0 a0Var = (a0) this.f13937a.get(size);
                if (a0Var.getItemId() == j10 && !a0Var.wasReturnedFromScrap()) {
                    if (i10 == a0Var.getItemViewType()) {
                        a0Var.addFlags(32);
                        if (a0Var.isRemoved() && !RecyclerView.this.mState.e()) {
                            a0Var.setFlags(2, 14);
                        }
                        return a0Var;
                    }
                    if (!z10) {
                        this.f13937a.remove(size);
                        RecyclerView.this.removeDetachedView(a0Var.itemView, false);
                        D(a0Var.itemView);
                    }
                }
            }
            int size2 = this.f13939c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                a0 a0Var2 = (a0) this.f13939c.get(size2);
                if (a0Var2.getItemId() == j10 && !a0Var2.isAttachedToTransitionOverlay()) {
                    if (i10 == a0Var2.getItemViewType()) {
                        if (!z10) {
                            this.f13939c.remove(size2);
                        }
                        return a0Var2;
                    }
                    if (!z10) {
                        F(size2);
                        return null;
                    }
                }
            }
        }

        a0 m(int i10, boolean z10) {
            View viewE;
            int size = this.f13937a.size();
            for (int i11 = 0; i11 < size; i11++) {
                a0 a0Var = (a0) this.f13937a.get(i11);
                if (!a0Var.wasReturnedFromScrap() && a0Var.getLayoutPosition() == i10 && !a0Var.isInvalid() && (RecyclerView.this.mState.f13969h || !a0Var.isRemoved())) {
                    a0Var.addFlags(32);
                    return a0Var;
                }
            }
            if (!z10 && (viewE = RecyclerView.this.mChildHelper.e(i10)) != null) {
                a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(viewE);
                RecyclerView.this.mChildHelper.s(viewE);
                int iM = RecyclerView.this.mChildHelper.m(viewE);
                if (iM != -1) {
                    RecyclerView.this.mChildHelper.d(iM);
                    I(viewE);
                    childViewHolderInt.addFlags(8224);
                    return childViewHolderInt;
                }
                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt + RecyclerView.this.exceptionLabel());
            }
            int size2 = this.f13939c.size();
            for (int i12 = 0; i12 < size2; i12++) {
                a0 a0Var2 = (a0) this.f13939c.get(i12);
                if (!a0Var2.isInvalid() && a0Var2.getLayoutPosition() == i10 && !a0Var2.isAttachedToTransitionOverlay()) {
                    if (!z10) {
                        this.f13939c.remove(i12);
                    }
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("getScrapOrHiddenOrCachedHolderForPosition(");
                        sb2.append(i10);
                        sb2.append(") found match in cache: ");
                        sb2.append(a0Var2);
                    }
                    return a0Var2;
                }
            }
            return null;
        }

        View n(int i10) {
            return ((a0) this.f13937a.get(i10)).itemView;
        }

        public View o(int i10) {
            return p(i10, false);
        }

        View p(int i10, boolean z10) {
            return N(i10, z10, Long.MAX_VALUE).itemView;
        }

        void s() {
            int size = this.f13939c.size();
            for (int i10 = 0; i10 < size; i10++) {
                n nVar = (n) ((a0) this.f13939c.get(i10)).itemView.getLayoutParams();
                if (nVar != null) {
                    nVar.mInsetsDirty = true;
                }
            }
        }

        void t() {
            int size = this.f13939c.size();
            for (int i10 = 0; i10 < size; i10++) {
                a0 a0Var = (a0) this.f13939c.get(i10);
                if (a0Var != null) {
                    a0Var.addFlags(6);
                    a0Var.addChangePayload(null);
                }
            }
            Adapter adapter = RecyclerView.this.mAdapter;
            if (adapter == null || !adapter.hasStableIds()) {
                E();
            }
        }

        void v(int i10, int i11) {
            int size = this.f13939c.size();
            for (int i12 = 0; i12 < size; i12++) {
                a0 a0Var = (a0) this.f13939c.get(i12);
                if (a0Var != null && a0Var.mPosition >= i10) {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("offsetPositionRecordsForInsert cached ");
                        sb2.append(i12);
                        sb2.append(" holder ");
                        sb2.append(a0Var);
                        sb2.append(" now at position ");
                        sb2.append(a0Var.mPosition + i11);
                    }
                    a0Var.offsetPosition(i11, false);
                }
            }
        }

        void w(int i10, int i11) {
            int i12;
            int i13;
            int i14;
            int i15;
            if (i10 < i11) {
                i12 = -1;
                i14 = i10;
                i13 = i11;
            } else {
                i12 = 1;
                i13 = i10;
                i14 = i11;
            }
            int size = this.f13939c.size();
            for (int i16 = 0; i16 < size; i16++) {
                a0 a0Var = (a0) this.f13939c.get(i16);
                if (a0Var != null && (i15 = a0Var.mPosition) >= i14 && i15 <= i13) {
                    if (i15 == i10) {
                        a0Var.offsetPosition(i11 - i10, false);
                    } else {
                        a0Var.offsetPosition(i12, false);
                    }
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("offsetPositionRecordsForMove cached child ");
                        sb2.append(i16);
                        sb2.append(" holder ");
                        sb2.append(a0Var);
                    }
                }
            }
        }

        void x(int i10, int i11, boolean z10) {
            int i12 = i10 + i11;
            for (int size = this.f13939c.size() - 1; size >= 0; size--) {
                a0 a0Var = (a0) this.f13939c.get(size);
                if (a0Var != null) {
                    int i13 = a0Var.mPosition;
                    if (i13 >= i12) {
                        if (RecyclerView.sVerboseLoggingEnabled) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("offsetPositionRecordsForRemove cached ");
                            sb2.append(size);
                            sb2.append(" holder ");
                            sb2.append(a0Var);
                            sb2.append(" now at position ");
                            sb2.append(a0Var.mPosition - i11);
                        }
                        a0Var.offsetPosition(-i11, z10);
                    } else if (i13 >= i10) {
                        a0Var.addFlags(8);
                        F(size);
                    }
                }
            }
        }

        void y(Adapter adapter, Adapter adapter2, boolean z10) {
            c();
            C(adapter, true);
            i().j(adapter, adapter2, z10);
            u();
        }

        void z() {
            u();
        }
    }

    public interface u {
    }

    private class v extends g {
        v() {
        }

        void a() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mHasFixedSize && recyclerView.mIsAttached) {
                    ViewCompat.postOnAnimation(recyclerView, recyclerView.mUpdateChildViewsRunnable);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.mAdapterUpdateDuringMeasure = true;
            recyclerView2.requestLayout();
        }

        @Override
        public void onChanged() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mState.f13968g = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (RecyclerView.this.mAdapterHelper.p()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        @Override
        public void onItemRangeChanged(int i10, int i11, Object obj) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.r(i10, i11, obj)) {
                a();
            }
        }

        @Override
        public void onItemRangeInserted(int i10, int i11) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.s(i10, i11)) {
                a();
            }
        }

        @Override
        public void onItemRangeMoved(int i10, int i11, int i12) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.t(i10, i11, i12)) {
                a();
            }
        }

        @Override
        public void onItemRangeRemoved(int i10, int i11) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.u(i10, i11)) {
                a();
            }
        }

        @Override
        public void onStateRestorationPolicyChanged() {
            Adapter adapter;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mPendingSavedState == null || (adapter = recyclerView.mAdapter) == null || !adapter.canRestoreState()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    public static abstract class w {

        private RecyclerView f13948b;

        private m f13949c;

        private boolean f13950d;

        private boolean f13951e;

        private View f13952f;

        private boolean f13954h;

        private int f13947a = -1;

        private final a f13953g = new a(0, 0);

        public static class a {

            private int f13955a;

            private int f13956b;

            private int f13957c;

            private int f13958d;

            private Interpolator f13959e;

            private boolean f13960f;

            private int f13961g;

            public a(int i10, int i11) {
                this(i10, i11, Integer.MIN_VALUE, null);
            }

            private void e() {
                if (this.f13959e != null && this.f13957c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f13957c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            boolean a() {
                return this.f13958d >= 0;
            }

            public void b(int i10) {
                this.f13958d = i10;
            }

            void c(RecyclerView recyclerView) {
                int i10 = this.f13958d;
                if (i10 >= 0) {
                    this.f13958d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i10);
                    this.f13960f = false;
                } else {
                    if (!this.f13960f) {
                        this.f13961g = 0;
                        return;
                    }
                    e();
                    recyclerView.mViewFlinger.smoothScrollBy(this.f13955a, this.f13956b, this.f13957c, this.f13959e);
                    int i11 = this.f13961g + 1;
                    this.f13961g = i11;
                    if (i11 > 10) {
                        Log.e(RecyclerView.TAG, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f13960f = false;
                }
            }

            public void d(int i10, int i11, int i12, Interpolator interpolator) {
                this.f13955a = i10;
                this.f13956b = i11;
                this.f13957c = i12;
                this.f13959e = interpolator;
                this.f13960f = true;
            }

            public a(int i10, int i11, int i12, Interpolator interpolator) {
                this.f13958d = -1;
                this.f13960f = false;
                this.f13961g = 0;
                this.f13955a = i10;
                this.f13956b = i11;
                this.f13957c = i12;
                this.f13959e = interpolator;
            }
        }

        public interface b {
            PointF computeScrollVectorForPosition(int i10);
        }

        public PointF a(int i10) {
            Object objE = e();
            if (objE instanceof b) {
                return ((b) objE).computeScrollVectorForPosition(i10);
            }
            Log.w(RecyclerView.TAG, "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName());
            return null;
        }

        public View b(int i10) {
            return this.f13948b.mLayout.findViewByPosition(i10);
        }

        public int c() {
            return this.f13948b.mLayout.getChildCount();
        }

        public int d(View view) {
            return this.f13948b.getChildLayoutPosition(view);
        }

        public m e() {
            return this.f13949c;
        }

        public int f() {
            return this.f13947a;
        }

        public boolean g() {
            return this.f13950d;
        }

        public boolean h() {
            return this.f13951e;
        }

        protected void i(PointF pointF) {
            float f10 = pointF.x;
            float f11 = pointF.y;
            float fSqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
            pointF.x /= fSqrt;
            pointF.y /= fSqrt;
        }

        void j(int i10, int i11) {
            PointF pointFA;
            RecyclerView recyclerView = this.f13948b;
            if (this.f13947a == -1 || recyclerView == null) {
                r();
            }
            if (this.f13950d && this.f13952f == null && this.f13949c != null && (pointFA = a(this.f13947a)) != null) {
                float f10 = pointFA.x;
                if (f10 != 0.0f || pointFA.y != 0.0f) {
                    recyclerView.scrollStep((int) Math.signum(f10), (int) Math.signum(pointFA.y), null);
                }
            }
            this.f13950d = false;
            View view = this.f13952f;
            if (view != null) {
                if (d(view) == this.f13947a) {
                    o(this.f13952f, recyclerView.mState, this.f13953g);
                    this.f13953g.c(recyclerView);
                    r();
                } else {
                    Log.e(RecyclerView.TAG, "Passed over target position while smooth scrolling.");
                    this.f13952f = null;
                }
            }
            if (this.f13951e) {
                l(i10, i11, recyclerView.mState, this.f13953g);
                boolean zA = this.f13953g.a();
                this.f13953g.c(recyclerView);
                if (zA && this.f13951e) {
                    this.f13950d = true;
                    recyclerView.mViewFlinger.postOnAnimation();
                }
            }
        }

        protected void k(View view) {
            if (d(view) == f()) {
                this.f13952f = view;
                int i10 = RecyclerView.HORIZONTAL;
            }
        }

        protected abstract void l(int i10, int i11, x xVar, a aVar);

        protected abstract void m();

        protected abstract void n();

        protected abstract void o(View view, x xVar, a aVar);

        public void p(int i10) {
            this.f13947a = i10;
        }

        void q(RecyclerView recyclerView, m mVar) {
            recyclerView.mViewFlinger.stop();
            if (this.f13954h) {
                Log.w(RecyclerView.TAG, "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.f13948b = recyclerView;
            this.f13949c = mVar;
            int i10 = this.f13947a;
            if (i10 == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.mState.f13962a = i10;
            this.f13951e = true;
            this.f13950d = true;
            this.f13952f = b(f());
            m();
            this.f13948b.mViewFlinger.postOnAnimation();
            this.f13954h = true;
        }

        protected final void r() {
            if (this.f13951e) {
                this.f13951e = false;
                n();
                this.f13948b.mState.f13962a = -1;
                this.f13952f = null;
                this.f13947a = -1;
                this.f13950d = false;
                this.f13949c.onSmoothScrollerStopped(this);
                this.f13949c = null;
                this.f13948b = null;
            }
        }
    }

    public static class x {

        private SparseArray f13963b;

        int f13974m;

        long f13975n;

        int f13976o;

        int f13977p;

        int f13978q;

        int f13962a = -1;

        int f13964c = 0;

        int f13965d = 0;

        int f13966e = 1;

        int f13967f = 0;

        boolean f13968g = false;

        boolean f13969h = false;

        boolean f13970i = false;

        boolean f13971j = false;

        boolean f13972k = false;

        boolean f13973l = false;

        void a(int i10) {
            if ((this.f13966e & i10) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i10) + " but it is " + Integer.toBinaryString(this.f13966e));
        }

        public int b() {
            return this.f13969h ? this.f13964c - this.f13965d : this.f13967f;
        }

        public int c() {
            return this.f13962a;
        }

        public boolean d() {
            return this.f13962a != -1;
        }

        public boolean e() {
            return this.f13969h;
        }

        void f(Adapter adapter) {
            this.f13966e = 1;
            this.f13967f = adapter.getItemCount();
            this.f13969h = false;
            this.f13970i = false;
            this.f13971j = false;
        }

        public boolean g() {
            return this.f13973l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f13962a + ", mData=" + this.f13963b + ", mItemCount=" + this.f13967f + ", mIsMeasuring=" + this.f13971j + ", mPreviousLayoutItemCount=" + this.f13964c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f13965d + ", mStructureChanged=" + this.f13968g + ", mInPreLayout=" + this.f13969h + ", mRunSimpleAnimations=" + this.f13972k + ", mRunPredictiveAnimations=" + this.f13973l + '}';
        }
    }

    static class y extends i {
        y() {
        }

        @Override
        protected EdgeEffect a(RecyclerView recyclerView, int i10) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class z {
        public abstract View a(t tVar, int i10, int i11);
    }

    static {
        Class<?> cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new a();
        sDefaultEdgeEffectFactory = new y();
    }

    public RecyclerView(@NonNull Context context) {
        this(context, null);
    }

    private void addAnimatingView(a0 a0Var) {
        View view = a0Var.itemView;
        boolean z10 = view.getParent() == this;
        this.mRecycler.O(getChildViewHolder(view));
        if (a0Var.isTmpDetached()) {
            this.mChildHelper.c(view, -1, view.getLayoutParams(), true);
        } else if (z10) {
            this.mChildHelper.k(view);
        } else {
            this.mChildHelper.b(view, true);
        }
    }

    private void animateChange(@NonNull a0 a0Var, @NonNull a0 a0Var2, @NonNull j.c cVar, @NonNull j.c cVar2, boolean z10, boolean z11) {
        a0Var.setIsRecyclable(false);
        if (z10) {
            addAnimatingView(a0Var);
        }
        if (a0Var != a0Var2) {
            if (z11) {
                addAnimatingView(a0Var2);
            }
            a0Var.mShadowedHolder = a0Var2;
            addAnimatingView(a0Var);
            this.mRecycler.O(a0Var);
            a0Var2.setIsRecyclable(false);
            a0Var2.mShadowingHolder = a0Var;
        }
        if (this.mItemAnimator.animateChange(a0Var, a0Var2, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    private void cancelScroll() {
        resetScroll();
        setScrollState(0);
    }

    static void clearNestedRecyclerViewIfNotNested(@NonNull a0 a0Var) {
        WeakReference<RecyclerView> weakReference = a0Var.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == a0Var.itemView) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            a0Var.mNestedRecyclerView = null;
        }
    }

    private int consumeFlingInStretch(int i10, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i11) {
        if (i10 > 0 && edgeEffect != null && androidx.core.widget.g.b(edgeEffect) != 0.0f) {
            int iRound = Math.round(((-i11) / FLING_DESTRETCH_FACTOR) * androidx.core.widget.g.d(edgeEffect, ((-i10) * FLING_DESTRETCH_FACTOR) / i11, 0.5f));
            if (iRound != i10) {
                edgeEffect.finish();
            }
            return i10 - iRound;
        }
        if (i10 >= 0 || edgeEffect2 == null || androidx.core.widget.g.b(edgeEffect2) == 0.0f) {
            return i10;
        }
        float f10 = i11;
        int iRound2 = Math.round((f10 / FLING_DESTRETCH_FACTOR) * androidx.core.widget.g.d(edgeEffect2, (i10 * FLING_DESTRETCH_FACTOR) / f10, 0.5f));
        if (iRound2 != i10) {
            edgeEffect2.finish();
        }
        return i10 - iRound2;
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i10, int i11) {
        Object[] objArr;
        Constructor constructor;
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return;
            }
            String fullClassName = getFullClassName(context, strTrim);
            try {
                Class<? extends U> clsAsSubclass = Class.forName(fullClassName, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(m.class);
                try {
                    constructor = clsAsSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i10), Integer.valueOf(i11)};
                } catch (NoSuchMethodException e10) {
                    objArr = null;
                    try {
                        constructor = clsAsSubclass.getConstructor(null);
                    } catch (NoSuchMethodException e11) {
                        e11.initCause(e10);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e11);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((m) constructor.newInstance(objArr));
            } catch (ClassCastException e12) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + fullClassName, e12);
            } catch (ClassNotFoundException e13) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + fullClassName, e13);
            } catch (IllegalAccessException e14) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + fullClassName, e14);
            } catch (InstantiationException e15) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e15);
            } catch (InvocationTargetException e16) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e16);
            }
        }
    }

    private boolean didChildRangeChange(int i10, int i11) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        return (iArr[0] == i10 && iArr[1] == i11) ? false : true;
    }

    private void dispatchContentChangedIfNecessary() {
        int i10 = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i10 == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        accessibilityEventObtain.setEventType(2048);
        AccessibilityEventCompat.setContentChangeTypes(accessibilityEventObtain, i10);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    private void dispatchLayoutStep1() {
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f13971j = false;
        startInterceptRequestLayout();
        this.mViewInfoStore.f();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        x xVar = this.mState;
        xVar.f13970i = xVar.f13972k && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        xVar.f13969h = xVar.f13973l;
        xVar.f13967f = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.f13972k) {
            int iG = this.mChildHelper.g();
            for (int i10 = 0; i10 < iG; i10++) {
                a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i10));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.e(childViewHolderInt, this.mItemAnimator.recordPreLayoutInformation(this.mState, childViewHolderInt, j.buildAdapterChangeFlagsForAnimations(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (this.mState.f13970i && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.c(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f13973l) {
            saveOldPositions();
            x xVar2 = this.mState;
            boolean z10 = xVar2.f13968g;
            xVar2.f13968g = false;
            this.mLayout.onLayoutChildren(this.mRecycler, xVar2);
            this.mState.f13968g = z10;
            for (int i11 = 0; i11 < this.mChildHelper.g(); i11++) {
                a0 childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.f(i11));
                if (!childViewHolderInt2.shouldIgnore() && !this.mViewInfoStore.i(childViewHolderInt2)) {
                    int iBuildAdapterChangeFlagsForAnimations = j.buildAdapterChangeFlagsForAnimations(childViewHolderInt2);
                    boolean zHasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                    if (!zHasAnyOfTheFlags) {
                        iBuildAdapterChangeFlagsForAnimations |= 4096;
                    }
                    j.c cVarRecordPreLayoutInformation = this.mItemAnimator.recordPreLayoutInformation(this.mState, childViewHolderInt2, iBuildAdapterChangeFlagsForAnimations, childViewHolderInt2.getUnmodifiedPayloads());
                    if (zHasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, cVarRecordPreLayoutInformation);
                    } else {
                        this.mViewInfoStore.a(childViewHolderInt2, cVarRecordPreLayoutInformation);
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f13966e = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.j();
        this.mState.f13967f = this.mAdapter.getItemCount();
        this.mState.f13965d = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.mLayoutState;
            if (parcelable != null) {
                this.mLayout.onRestoreInstanceState(parcelable);
            }
            this.mPendingSavedState = null;
        }
        x xVar = this.mState;
        xVar.f13969h = false;
        this.mLayout.onLayoutChildren(this.mRecycler, xVar);
        x xVar2 = this.mState;
        xVar2.f13968g = false;
        xVar2.f13972k = xVar2.f13972k && this.mItemAnimator != null;
        xVar2.f13966e = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        x xVar = this.mState;
        xVar.f13966e = 1;
        if (xVar.f13972k) {
            for (int iG = this.mChildHelper.g() - 1; iG >= 0; iG--) {
                a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(iG));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    j.c cVarRecordPostLayoutInformation = this.mItemAnimator.recordPostLayoutInformation(this.mState, childViewHolderInt);
                    a0 a0VarG = this.mViewInfoStore.g(changedHolderKey);
                    if (a0VarG == null || a0VarG.shouldIgnore()) {
                        this.mViewInfoStore.d(childViewHolderInt, cVarRecordPostLayoutInformation);
                    } else {
                        boolean zH = this.mViewInfoStore.h(a0VarG);
                        boolean zH2 = this.mViewInfoStore.h(childViewHolderInt);
                        if (zH && a0VarG == childViewHolderInt) {
                            this.mViewInfoStore.d(childViewHolderInt, cVarRecordPostLayoutInformation);
                        } else {
                            j.c cVarN = this.mViewInfoStore.n(a0VarG);
                            this.mViewInfoStore.d(childViewHolderInt, cVarRecordPostLayoutInformation);
                            j.c cVarM = this.mViewInfoStore.m(childViewHolderInt);
                            if (cVarN == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, a0VarG);
                            } else {
                                animateChange(a0VarG, childViewHolderInt, cVarN, cVarM, zH, zH2);
                            }
                        }
                    }
                }
            }
            this.mViewInfoStore.o(this.mViewInfoProcessCallback);
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        x xVar2 = this.mState;
        xVar2.f13964c = xVar2.f13967f;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        xVar2.f13972k = false;
        xVar2.f13973l = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        ArrayList arrayList = this.mRecycler.f13938b;
        if (arrayList != null) {
            arrayList.clear();
        }
        m mVar = this.mLayout;
        if (mVar.mPrefetchMaxObservedInInitialPrefetch) {
            mVar.mPrefetchMaxCountObserved = 0;
            mVar.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.P();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mViewInfoStore.f();
        int[] iArr = this.mMinMaxLayoutPositions;
        if (didChildRangeChange(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private boolean dispatchToOnItemTouchListeners(MotionEvent motionEvent) {
        q qVar = this.mInterceptingOnItemTouchListener;
        if (qVar == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return findInterceptingOnItemTouchListener(motionEvent);
        }
        qVar.a(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.mInterceptingOnItemTouchListener = null;
        }
        return true;
    }

    private boolean findInterceptingOnItemTouchListener(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            q qVar = this.mOnItemTouchListeners.get(i10);
            if (qVar.b(this, motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = qVar;
                return true;
            }
        }
        return false;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int iG = this.mChildHelper.g();
        if (iG == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i10 = Integer.MAX_VALUE;
        int i11 = Integer.MIN_VALUE;
        for (int i12 = 0; i12 < iG; i12++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i12));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i10) {
                    i10 = layoutPosition;
                }
                if (layoutPosition > i11) {
                    i11 = layoutPosition;
                }
            }
        }
        iArr[0] = i10;
        iArr[1] = i11;
    }

    @Nullable
    static RecyclerView findNestedRecyclerView(@NonNull View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            RecyclerView recyclerViewFindNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i10));
            if (recyclerViewFindNestedRecyclerView != null) {
                return recyclerViewFindNestedRecyclerView;
            }
        }
        return null;
    }

    @Nullable
    private View findNextViewToFocus() {
        a0 a0VarFindViewHolderForAdapterPosition;
        x xVar = this.mState;
        int i10 = xVar.f13974m;
        if (i10 == -1) {
            i10 = 0;
        }
        int iB = xVar.b();
        for (int i11 = i10; i11 < iB; i11++) {
            a0 a0VarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i11);
            if (a0VarFindViewHolderForAdapterPosition2 == null) {
                break;
            }
            if (a0VarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return a0VarFindViewHolderForAdapterPosition2.itemView;
            }
        }
        int iMin = Math.min(iB, i10);
        do {
            iMin--;
            if (iMin < 0 || (a0VarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin)) == null) {
                return null;
            }
        } while (!a0VarFindViewHolderForAdapterPosition.itemView.hasFocusable());
        return a0VarFindViewHolderForAdapterPosition.itemView;
    }

    static a0 getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((n) view.getLayoutParams()).mViewHolder;
    }

    static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        n nVar = (n) view.getLayoutParams();
        Rect rect2 = nVar.mDecorInsets;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) nVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) nVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) nVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin);
    }

    private int getDeepestFocusedViewWithId(View view) {
        int id2 = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id2 = view.getId();
            }
        }
        return id2;
    }

    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new NestedScrollingChildHelper(this);
        }
        return this.mScrollingChildHelper;
    }

    private float getSplineFlingDistance(int i10) {
        double dLog = Math.log((Math.abs(i10) * INFLEXION) / (this.mPhysicalCoef * SCROLL_FRICTION));
        float f10 = DECELERATION_RATE;
        return (float) (((double) (this.mPhysicalCoef * SCROLL_FRICTION)) * Math.exp((((double) f10) / (((double) f10) - 1.0d)) * dLog));
    }

    private void handleMissingPreInfoForChangeError(long j10, a0 a0Var, a0 a0Var2) {
        int iG = this.mChildHelper.g();
        for (int i10 = 0; i10 < iG; i10++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i10));
            if (childViewHolderInt != a0Var && getChangedHolderKey(childViewHolderInt) == j10) {
                Adapter adapter = this.mAdapter;
                if (adapter == null || !adapter.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + a0Var + exceptionLabel());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + a0Var + exceptionLabel());
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + a0Var2 + " cannot be found but it is necessary for " + a0Var + exceptionLabel());
    }

    private boolean hasUpdatedView() {
        int iG = this.mChildHelper.g();
        for (int i10 = 0; i10 < iG; i10++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i10));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private void initAutofill() {
        if (ViewCompat.getImportantForAutofill(this) == 0) {
            ViewCompat.setImportantForAutofill(this, 8);
        }
    }

    private void initChildrenHelper() {
        this.mChildHelper = new androidx.recyclerview.widget.e(new c());
    }

    private boolean isPreferredNextFocus(View view, View view2, int i10) {
        int i11;
        if (view2 == null || view2 == this || view2 == view || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        byte b10 = -1;
        int i12 = this.mLayout.getLayoutDirection() == 1 ? -1 : 1;
        Rect rect = this.mTempRect;
        int i13 = rect.left;
        Rect rect2 = this.mTempRect2;
        int i14 = rect2.left;
        if ((i13 < i14 || rect.right <= i14) && rect.right < rect2.right) {
            i11 = 1;
        } else {
            int i15 = rect.right;
            int i16 = rect2.right;
            i11 = ((i15 > i16 || i13 >= i16) && i13 > i14) ? -1 : 0;
        }
        int i17 = rect.top;
        int i18 = rect2.top;
        if ((i17 < i18 || rect.bottom <= i18) && rect.bottom < rect2.bottom) {
            b10 = 1;
        } else {
            int i19 = rect.bottom;
            int i20 = rect2.bottom;
            if ((i19 <= i20 && i17 < i20) || i17 <= i18) {
                b10 = 0;
            }
        }
        if (i10 == 1) {
            return b10 < 0 || (b10 == 0 && i11 * i12 < 0);
        }
        if (i10 == 2) {
            return b10 > 0 || (b10 == 0 && i11 * i12 > 0);
        }
        if (i10 == 17) {
            return i11 < 0;
        }
        if (i10 == 33) {
            return b10 < 0;
        }
        if (i10 == 66) {
            return i11 > 0;
        }
        if (i10 == 130) {
            return b10 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i10 + exceptionLabel());
    }

    private void nestedScrollByInternal(int i10, int i11, @Nullable MotionEvent motionEvent, int i12) {
        m mVar = this.mLayout;
        if (mVar == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean zCanScrollHorizontally = mVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        int i13 = zCanScrollVertically ? (zCanScrollHorizontally ? 1 : 0) | 2 : zCanScrollHorizontally ? 1 : 0;
        float height = motionEvent == null ? getHeight() / 2.0f : motionEvent.getY();
        float width = motionEvent == null ? getWidth() / 2.0f : motionEvent.getX();
        int iReleaseHorizontalGlow = i10 - releaseHorizontalGlow(i10, height);
        int iReleaseVerticalGlow = i11 - releaseVerticalGlow(i11, width);
        startNestedScroll(i13, i12);
        if (dispatchNestedPreScroll(zCanScrollHorizontally ? iReleaseHorizontalGlow : 0, zCanScrollVertically ? iReleaseVerticalGlow : 0, this.mReusableIntPair, this.mScrollOffset, i12)) {
            int[] iArr2 = this.mReusableIntPair;
            iReleaseHorizontalGlow -= iArr2[0];
            iReleaseVerticalGlow -= iArr2[1];
        }
        scrollByInternal(zCanScrollHorizontally ? iReleaseHorizontalGlow : 0, zCanScrollVertically ? iReleaseVerticalGlow : 0, motionEvent, i12);
        GapWorker gapWorker = this.mGapWorker;
        if (gapWorker != null && (iReleaseHorizontalGlow != 0 || iReleaseVerticalGlow != 0)) {
            gapWorker.postFromTraversal(this, iReleaseHorizontalGlow, iReleaseVerticalGlow);
        }
        stopNestedScroll(i12);
    }

    private void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i10);
            int x10 = (int) (motionEvent.getX(i10) + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y10 = (int) (motionEvent.getY(i10) + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z10;
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.y();
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.w();
        } else {
            this.mAdapterHelper.j();
        }
        boolean z11 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f13972k = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z10 = this.mDataSetHasChangedAfterLayout) || z11 || this.mLayout.mRequestedSimpleAnimations) && (!z10 || this.mAdapter.hasStableIds());
        x xVar = this.mState;
        xVar.f13973l = xVar.f13972k && z11 && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    /* JADX WARN: Code duplicated, block: B:13:0x0056  */
    /* JADX WARN: Code duplicated, block: B:15:0x005a  */
    /* JADX WARN: Code duplicated, block: B:16:0x0071  */
    private void pullGlows(float f10, float f11, float f12, float f13) {
        boolean z10;
        boolean z11 = true;
        if (f11 >= 0.0f) {
            if (f11 > 0.0f) {
                ensureRightGlow();
                androidx.core.widget.g.d(this.mRightGlow, f11 / getWidth(), f12 / getHeight());
            } else {
                z10 = false;
            }
            if (f13 < 0.0f) {
                ensureTopGlow();
                androidx.core.widget.g.d(this.mTopGlow, (-f13) / getHeight(), f10 / getWidth());
            } else if (f13 > 0.0f) {
                ensureBottomGlow();
                androidx.core.widget.g.d(this.mBottomGlow, f13 / getHeight(), 1.0f - (f10 / getWidth()));
            } else {
                z11 = z10;
            }
            if (z11 && f11 == 0.0f && f13 == 0.0f) {
                return;
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
        ensureLeftGlow();
        androidx.core.widget.g.d(this.mLeftGlow, (-f11) / getWidth(), 1.0f - (f12 / getHeight()));
        z10 = true;
        if (f13 < 0.0f) {
            ensureTopGlow();
            androidx.core.widget.g.d(this.mTopGlow, (-f13) / getHeight(), f10 / getWidth());
        } else if (f13 > 0.0f) {
            ensureBottomGlow();
            androidx.core.widget.g.d(this.mBottomGlow, f13 / getHeight(), 1.0f - (f10 / getWidth()));
        } else {
            z11 = z10;
        }
        if (z11) {
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    private void recoverFocusFromState() {
        View viewFindViewById;
        if (!this.mPreserveFocusAfterLayout || this.mAdapter == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!IGNORE_DETACHED_FOCUSED_CHILD || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.mChildHelper.n(focusedChild)) {
                    return;
                }
            } else if (this.mChildHelper.g() == 0) {
                requestFocus();
                return;
            }
        }
        View viewFindNextViewToFocus = null;
        a0 a0VarFindViewHolderForItemId = (this.mState.f13975n == -1 || !this.mAdapter.hasStableIds()) ? null : findViewHolderForItemId(this.mState.f13975n);
        if (a0VarFindViewHolderForItemId != null && !this.mChildHelper.n(a0VarFindViewHolderForItemId.itemView) && a0VarFindViewHolderForItemId.itemView.hasFocusable()) {
            viewFindNextViewToFocus = a0VarFindViewHolderForItemId.itemView;
        } else if (this.mChildHelper.g() > 0) {
            viewFindNextViewToFocus = findNextViewToFocus();
        }
        if (viewFindNextViewToFocus != null) {
            int i10 = this.mState.f13976o;
            if (i10 != -1 && (viewFindViewById = viewFindNextViewToFocus.findViewById(i10)) != null && viewFindViewById.isFocusable()) {
                viewFindNextViewToFocus = viewFindViewById;
            }
            viewFindNextViewToFocus.requestFocus();
        }
    }

    private void releaseGlows() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private int releaseHorizontalGlow(int i10, float f10) {
        float height = f10 / getHeight();
        float width = i10 / getWidth();
        EdgeEffect edgeEffect = this.mLeftGlow;
        float f11 = 0.0f;
        if (edgeEffect == null || androidx.core.widget.g.b(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mRightGlow;
            if (edgeEffect2 != null && androidx.core.widget.g.b(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.mRightGlow.onRelease();
                } else {
                    float fD = androidx.core.widget.g.d(this.mRightGlow, width, height);
                    if (androidx.core.widget.g.b(this.mRightGlow) == 0.0f) {
                        this.mRightGlow.onRelease();
                    }
                    f11 = fD;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.mLeftGlow.onRelease();
            } else {
                float f12 = -androidx.core.widget.g.d(this.mLeftGlow, -width, 1.0f - height);
                if (androidx.core.widget.g.b(this.mLeftGlow) == 0.0f) {
                    this.mLeftGlow.onRelease();
                }
                f11 = f12;
            }
            invalidate();
        }
        return Math.round(f11 * getWidth());
    }

    private int releaseVerticalGlow(int i10, float f10) {
        float width = f10 / getWidth();
        float height = i10 / getHeight();
        EdgeEffect edgeEffect = this.mTopGlow;
        float f11 = 0.0f;
        if (edgeEffect == null || androidx.core.widget.g.b(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mBottomGlow;
            if (edgeEffect2 != null && androidx.core.widget.g.b(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.mBottomGlow.onRelease();
                } else {
                    float fD = androidx.core.widget.g.d(this.mBottomGlow, height, 1.0f - width);
                    if (androidx.core.widget.g.b(this.mBottomGlow) == 0.0f) {
                        this.mBottomGlow.onRelease();
                    }
                    f11 = fD;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.mTopGlow.onRelease();
            } else {
                float f12 = -androidx.core.widget.g.d(this.mTopGlow, -height, width);
                if (androidx.core.widget.g.b(this.mTopGlow) == 0.0f) {
                    this.mTopGlow.onRelease();
                }
                f11 = f12;
            }
            invalidate();
        }
        return Math.round(f11 * getHeight());
    }

    private void requestChildOnScreen(@NonNull View view, @Nullable View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof n) {
            n nVar = (n) layoutParams;
            if (!nVar.mInsetsDirty) {
                Rect rect = nVar.mDecorInsets;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void resetFocusInfo() {
        x xVar = this.mState;
        xVar.f13975n = -1L;
        xVar.f13974m = -1;
        xVar.f13976o = -1;
    }

    private void resetScroll() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    private void saveFocusInfo() {
        int absoluteAdapterPosition;
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        a0 a0VarFindContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (a0VarFindContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.f13975n = this.mAdapter.hasStableIds() ? a0VarFindContainingViewHolder.getItemId() : -1L;
        x xVar = this.mState;
        if (this.mDataSetHasChangedAfterLayout) {
            absoluteAdapterPosition = -1;
        } else {
            absoluteAdapterPosition = a0VarFindContainingViewHolder.isRemoved() ? a0VarFindContainingViewHolder.mOldPosition : a0VarFindContainingViewHolder.getAbsoluteAdapterPosition();
        }
        xVar.f13974m = absoluteAdapterPosition;
        this.mState.f13976o = getDeepestFocusedViewWithId(a0VarFindContainingViewHolder.itemView);
    }

    private void setAdapterInternal(@Nullable Adapter adapter, boolean z10, boolean z11) {
        Adapter adapter2 = this.mAdapter;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z10 || z11) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.y();
        Adapter adapter3 = this.mAdapter;
        this.mAdapter = adapter;
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.mObserver);
            adapter.onAttachedToRecyclerView(this);
        }
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.onAdapterChanged(adapter3, this.mAdapter);
        }
        this.mRecycler.y(adapter3, this.mAdapter, z10);
        this.mState.f13968g = true;
    }

    public static void setDebugAssertionsEnabled(boolean z10) {
        sDebugAssertionsEnabled = z10;
    }

    public static void setVerboseLoggingEnabled(boolean z10) {
        sVerboseLoggingEnabled = z10;
    }

    private boolean shouldAbsorb(@NonNull EdgeEffect edgeEffect, int i10, int i11) {
        if (i10 > 0) {
            return true;
        }
        return getSplineFlingDistance(-i10) < androidx.core.widget.g.b(edgeEffect) * ((float) i11);
    }

    private boolean stopGlowAnimations(MotionEvent motionEvent) {
        boolean z10;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || androidx.core.widget.g.b(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
            z10 = false;
        } else {
            androidx.core.widget.g.d(this.mLeftGlow, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
            z10 = true;
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && androidx.core.widget.g.b(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
            androidx.core.widget.g.d(this.mRightGlow, 0.0f, motionEvent.getY() / getHeight());
            z10 = true;
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && androidx.core.widget.g.b(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
            androidx.core.widget.g.d(this.mTopGlow, 0.0f, motionEvent.getX() / getWidth());
            z10 = true;
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 == null || androidx.core.widget.g.b(edgeEffect4) == 0.0f || canScrollVertically(1)) {
            return z10;
        }
        androidx.core.widget.g.d(this.mBottomGlow, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    private void stopScrollersInternal() {
        this.mViewFlinger.stop();
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.stopSmoothScroller();
        }
    }

    void absorbGlows(int i10, int i11) {
        if (i10 < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i10);
            }
        } else if (i10 > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i10);
            }
        }
        if (i11 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i11);
            }
        } else if (i11 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i11);
            }
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        m mVar = this.mLayout;
        if (mVar == null || !mVar.onAddFocusables(this, arrayList, i10, i11)) {
            super.addFocusables(arrayList, i10, i11);
        }
    }

    public void addItemDecoration(@NonNull l lVar, int i10) {
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i10 < 0) {
            this.mItemDecorations.add(lVar);
        } else {
            this.mItemDecorations.add(i10, lVar);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(@NonNull o oVar) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(oVar);
    }

    public void addOnItemTouchListener(@NonNull q qVar) {
        this.mOnItemTouchListeners.add(qVar);
    }

    public void addOnScrollListener(@NonNull r rVar) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(rVar);
    }

    public void addRecyclerListener(@NonNull u uVar) {
        androidx.core.util.i.b(uVar != null, "'listener' arg cannot be null.");
        this.mRecyclerListeners.add(uVar);
    }

    void animateAppearance(@NonNull a0 a0Var, @Nullable j.c cVar, @NonNull j.c cVar2) {
        a0Var.setIsRecyclable(false);
        if (this.mItemAnimator.animateAppearance(a0Var, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    void animateDisappearance(@NonNull a0 a0Var, @NonNull j.c cVar, @Nullable j.c cVar2) {
        addAnimatingView(a0Var);
        a0Var.setIsRecyclable(false);
        if (this.mItemAnimator.animateDisappearance(a0Var, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str == null) {
            throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + exceptionLabel());
        }
        throw new IllegalStateException(str + exceptionLabel());
    }

    void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + exceptionLabel());
        }
        if (this.mDispatchScrollCounter > 0) {
            Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + exceptionLabel()));
        }
    }

    boolean canReuseUpdatedViewHolder(a0 a0Var) {
        j jVar = this.mItemAnimator;
        return jVar == null || jVar.canReuseUpdatedViewHolder(a0Var, a0Var.getUnmodifiedPayloads());
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof n) && this.mLayout.checkLayoutParams((n) layoutParams);
    }

    void clearOldPositions() {
        int iJ = this.mChildHelper.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        this.mRecycler.d();
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<o> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<r> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override
    public int computeHorizontalScrollExtent() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override
    public int computeHorizontalScrollOffset() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override
    public int computeHorizontalScrollRange() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override
    public int computeVerticalScrollExtent() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override
    public int computeVerticalScrollOffset() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override
    public int computeVerticalScrollRange() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    void considerReleasingGlowsOnScroll(int i10, int i11) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i10 <= 0) {
            zIsFinished = false;
        } else {
            this.mLeftGlow.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i10 < 0) {
            this.mRightGlow.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i11 > 0) {
            this.mTopGlow.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i11 < 0) {
            this.mBottomGlow.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    int consumeFlingInHorizontalStretch(int i10) {
        return consumeFlingInStretch(i10, this.mLeftGlow, this.mRightGlow, getWidth());
    }

    int consumeFlingInVerticalStretch(int i10) {
        return consumeFlingInStretch(i10, this.mTopGlow, this.mBottomGlow, getHeight());
    }

    void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            androidx.core.os.s.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            androidx.core.os.s.b();
            return;
        }
        if (this.mAdapterHelper.p()) {
            if (!this.mAdapterHelper.o(4) || this.mAdapterHelper.o(11)) {
                if (this.mAdapterHelper.p()) {
                    androidx.core.os.s.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                    dispatchLayout();
                    androidx.core.os.s.b();
                    return;
                }
                return;
            }
            androidx.core.os.s.a(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            this.mAdapterHelper.w();
            if (!this.mLayoutWasDefered) {
                if (hasUpdatedView()) {
                    dispatchLayout();
                } else {
                    this.mAdapterHelper.i();
                }
            }
            stopInterceptRequestLayout(true);
            onExitLayoutOrScroll();
            androidx.core.os.s.b();
        }
    }

    void defaultOnMeasure(int i10, int i11) {
        setMeasuredDimension(m.chooseSize(i10, getPaddingLeft() + getPaddingRight(), ViewCompat.getMinimumWidth(this)), m.chooseSize(i11, getPaddingTop() + getPaddingBottom(), ViewCompat.getMinimumHeight(this)));
    }

    void dispatchChildAttached(View view) {
        a0 childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        Adapter adapter = this.mAdapter;
        if (adapter != null && childViewHolderInt != null) {
            adapter.onViewAttachedToWindow(childViewHolderInt);
        }
        List<o> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).onChildViewAttachedToWindow(view);
            }
        }
    }

    void dispatchChildDetached(View view) {
        a0 childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        Adapter adapter = this.mAdapter;
        if (adapter != null && childViewHolderInt != null) {
            adapter.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<o> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).onChildViewDetachedFromWindow(view);
            }
        }
    }

    void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.w(TAG, "No adapter attached; skipping layout");
            return;
        }
        if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
            return;
        }
        this.mState.f13971j = false;
        boolean z10 = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mLastAutoMeasureSkippedDueToExact = false;
        if (this.mState.f13966e == 1) {
            dispatchLayoutStep1();
            this.mLayout.setExactMeasureSpecsFrom(this);
            dispatchLayoutStep2();
        } else if (this.mAdapterHelper.q() || z10 || this.mLayout.getWidth() != getWidth() || this.mLayout.getHeight() != getHeight()) {
            this.mLayout.setExactMeasureSpecsFrom(this);
            dispatchLayoutStep2();
        } else {
            this.mLayout.setExactMeasureSpecsFrom(this);
        }
        dispatchLayoutStep3();
    }

    @Override
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return getScrollingChildHelper().dispatchNestedFling(f10, f11, z10);
    }

    @Override
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return getScrollingChildHelper().dispatchNestedPreFling(f10, f11);
    }

    @Override
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i10, i11, iArr, iArr2);
    }

    @Override
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScroll(i10, i11, i12, i13, iArr);
    }

    void dispatchOnScrollStateChanged(int i10) {
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.onScrollStateChanged(i10);
        }
        onScrollStateChanged(i10);
        r rVar = this.mScrollListener;
        if (rVar != null) {
            rVar.onScrollStateChanged(this, i10);
        }
        List<r> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrollStateChanged(this, i10);
            }
        }
    }

    void dispatchOnScrolled(int i10, int i11) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i10, scrollY - i11);
        onScrolled(i10, i11);
        r rVar = this.mScrollListener;
        if (rVar != null) {
            rVar.onScrolled(this, i10, i11);
        }
        List<r> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrolled(this, i10, i11);
            }
        }
        this.mDispatchScrollCounter--;
    }

    void dispatchPendingImportantForAccessibilityChanges() {
        int i10;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            a0 a0Var = this.mPendingAccessibilityImportanceChange.get(size);
            if (a0Var.itemView.getParent() == this && !a0Var.shouldIgnore() && (i10 = a0Var.mPendingAccessibilityState) != -1) {
                ViewCompat.setImportantForAccessibility(a0Var.itemView, i10);
                a0Var.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override
    public void draw(Canvas canvas) {
        boolean z10;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z11 = false;
        for (int i10 = 0; i10 < size; i10++) {
            this.mItemDecorations.get(i10).onDrawOver(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z10 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z10 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z10 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z10 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z11 = true;
            }
            z10 |= z11;
            canvas.restoreToCount(iSave4);
        }
        if ((z10 || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.isRunning()) ? z10 : true) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override
    public boolean drawChild(Canvas canvas, View view, long j10) {
        return super.drawChild(canvas, view, j10);
    }

    void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this, 3);
        this.mBottomGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this, 0);
        this.mLeftGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this, 2);
        this.mRightGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this, 1);
        this.mTopGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    final void fillRemainingScrollValues(x xVar) {
        if (getScrollState() != 2) {
            xVar.f13977p = 0;
            xVar.f13978q = 0;
        } else {
            OverScroller overScroller = this.mViewFlinger.mOverScroller;
            xVar.f13977p = overScroller.getFinalX() - overScroller.getCurrX();
            xVar.f13978q = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    @Nullable
    public View findChildViewUnder(float f10, float f11) {
        for (int iG = this.mChildHelper.g() - 1; iG >= 0; iG--) {
            View viewF = this.mChildHelper.f(iG);
            float translationX = viewF.getTranslationX();
            float translationY = viewF.getTranslationY();
            if (f10 >= viewF.getLeft() + translationX && f10 <= viewF.getRight() + translationX && f11 >= viewF.getTop() + translationY && f11 <= viewF.getBottom() + translationY) {
                return viewF;
            }
        }
        return null;
    }

    @Nullable
    public View findContainingItemView(@NonNull View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    @Nullable
    public a0 findContainingViewHolder(@NonNull View view) {
        View viewFindContainingItemView = findContainingItemView(view);
        if (viewFindContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(viewFindContainingItemView);
    }

    @Nullable
    public a0 findViewHolderForAdapterPosition(int i10) {
        a0 a0Var = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int iJ = this.mChildHelper.j();
        for (int i11 = 0; i11 < iJ; i11++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i11));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i10) {
                if (!this.mChildHelper.n(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                a0Var = childViewHolderInt;
            }
        }
        return a0Var;
    }

    public a0 findViewHolderForItemId(long j10) {
        Adapter adapter = this.mAdapter;
        a0 a0Var = null;
        if (adapter != null && adapter.hasStableIds()) {
            int iJ = this.mChildHelper.j();
            for (int i10 = 0; i10 < iJ; i10++) {
                a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == j10) {
                    if (!this.mChildHelper.n(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    a0Var = childViewHolderInt;
                }
            }
        }
        return a0Var;
    }

    @Nullable
    public a0 findViewHolderForLayoutPosition(int i10) {
        return findViewHolderForPosition(i10, false);
    }

    @Nullable
    @Deprecated
    public a0 findViewHolderForPosition(int i10) {
        return findViewHolderForPosition(i10, false);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x007a  */
    /* JADX WARN: Code duplicated, block: B:57:0x00bc  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public boolean fling(int i10, int i11) {
        int iMax;
        int i12;
        m mVar = this.mLayout;
        if (mVar == null) {
            Log.e(TAG, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.mLayoutSuppressed) {
            return false;
        }
        int iCanScrollHorizontally = mVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (iCanScrollHorizontally == 0 || Math.abs(i10) < this.mMinFlingVelocity) {
            i10 = 0;
        }
        if (!zCanScrollVertically || Math.abs(i11) < this.mMinFlingVelocity) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return false;
        }
        if (i10 == 0) {
            iMax = 0;
        } else {
            EdgeEffect edgeEffect = this.mLeftGlow;
            if (edgeEffect == null || androidx.core.widget.g.b(edgeEffect) == 0.0f) {
                EdgeEffect edgeEffect2 = this.mRightGlow;
                if (edgeEffect2 == null || androidx.core.widget.g.b(edgeEffect2) == 0.0f) {
                    iMax = 0;
                } else if (shouldAbsorb(this.mRightGlow, i10, getWidth())) {
                    this.mRightGlow.onAbsorb(i10);
                    i10 = 0;
                }
            } else {
                int i13 = -i10;
                if (shouldAbsorb(this.mLeftGlow, i13, getWidth())) {
                    this.mLeftGlow.onAbsorb(i13);
                    i10 = 0;
                }
            }
            iMax = i10;
            i10 = 0;
        }
        if (i11 == 0) {
            i12 = i11;
            i11 = 0;
        } else {
            EdgeEffect edgeEffect3 = this.mTopGlow;
            if (edgeEffect3 == null || androidx.core.widget.g.b(edgeEffect3) == 0.0f) {
                EdgeEffect edgeEffect4 = this.mBottomGlow;
                if (edgeEffect4 == null || androidx.core.widget.g.b(edgeEffect4) == 0.0f) {
                    i12 = i11;
                    i11 = 0;
                } else if (shouldAbsorb(this.mBottomGlow, i11, getHeight())) {
                    this.mBottomGlow.onAbsorb(i11);
                    i11 = 0;
                }
            } else {
                int i14 = -i11;
                if (shouldAbsorb(this.mTopGlow, i14, getHeight())) {
                    this.mTopGlow.onAbsorb(i14);
                    i11 = 0;
                }
            }
            i12 = 0;
        }
        if (iMax != 0 || i11 != 0) {
            int i15 = this.mMaxFlingVelocity;
            iMax = Math.max(-i15, Math.min(iMax, i15));
            int i16 = this.mMaxFlingVelocity;
            i11 = Math.max(-i16, Math.min(i11, i16));
            this.mViewFlinger.fling(iMax, i11);
        }
        if (i10 == 0 && i12 == 0) {
            return (iMax == 0 && i11 == 0) ? false : true;
        }
        float f10 = i10;
        float f11 = i12;
        if (!dispatchNestedPreFling(f10, f11)) {
            boolean z10 = iCanScrollHorizontally != 0 || zCanScrollVertically;
            dispatchNestedFling(f10, f11, z10);
            p pVar = this.mOnFlingListener;
            if (pVar != null && pVar.onFling(i10, i12)) {
                return true;
            }
            if (z10) {
                if (zCanScrollVertically) {
                    iCanScrollHorizontally = (iCanScrollHorizontally == true ? 1 : 0) | 2;
                }
                startNestedScroll(iCanScrollHorizontally, 1);
                int i17 = this.mMaxFlingVelocity;
                int iMax2 = Math.max(-i17, Math.min(i10, i17));
                int i18 = this.mMaxFlingVelocity;
                this.mViewFlinger.fling(iMax2, Math.max(-i18, Math.min(i12, i18)));
                return true;
            }
        }
        return false;
    }

    @Override
    public View focusSearch(View view, int i10) {
        View viewOnFocusSearchFailed;
        boolean z10;
        View viewOnInterceptFocusSearch = this.mLayout.onInterceptFocusSearch(view, i10);
        if (viewOnInterceptFocusSearch != null) {
            return viewOnInterceptFocusSearch;
        }
        boolean z11 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutSuppressed) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z11 && (i10 == 2 || i10 == 1)) {
            if (this.mLayout.canScrollVertically()) {
                int i11 = i10 == 2 ? 130 : 33;
                z10 = focusFinder.findNextFocus(this, view, i11) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i10 = i11;
                }
            } else {
                z10 = false;
            }
            if (!z10 && this.mLayout.canScrollHorizontally()) {
                int i12 = (this.mLayout.getLayoutDirection() == 1) ^ (i10 == 2) ? 66 : 17;
                boolean z12 = focusFinder.findNextFocus(this, view, i12) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i10 = i12;
                }
                z10 = z12;
            }
            if (z10) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i10, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            viewOnFocusSearchFailed = focusFinder.findNextFocus(this, view, i10);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i10);
            if (viewFindNextFocus == null && z11) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                viewOnFocusSearchFailed = this.mLayout.onFocusSearchFailed(view, i10, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                viewOnFocusSearchFailed = viewFindNextFocus;
            }
        }
        if (viewOnFocusSearchFailed == null || viewOnFocusSearchFailed.hasFocusable()) {
            return isPreferredNextFocus(view, viewOnFocusSearchFailed, i10) ? viewOnFocusSearchFailed : super.focusSearch(view, i10);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i10);
        }
        requestChildOnScreen(viewOnFocusSearchFailed, null);
        return view;
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        m mVar = this.mLayout;
        if (mVar != null) {
            return mVar.generateDefaultLayoutParams();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        m mVar = this.mLayout;
        if (mVar != null) {
            return mVar.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    @Nullable
    public Adapter getAdapter() {
        return this.mAdapter;
    }

    int getAdapterPositionInRecyclerView(a0 a0Var) {
        if (a0Var.hasAnyOfTheFlags(524) || !a0Var.isBound()) {
            return -1;
        }
        return this.mAdapterHelper.e(a0Var.mPosition);
    }

    @Override
    public int getBaseline() {
        m mVar = this.mLayout;
        return mVar != null ? mVar.getBaseline() : super.getBaseline();
    }

    long getChangedHolderKey(a0 a0Var) {
        return this.mAdapter.hasStableIds() ? a0Var.getItemId() : a0Var.mPosition;
    }

    public int getChildAdapterPosition(@NonNull View view) {
        a0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override
    protected int getChildDrawingOrder(int i10, int i11) {
        return super.getChildDrawingOrder(i10, i11);
    }

    public long getChildItemId(@NonNull View view) {
        a0 childViewHolderInt;
        Adapter adapter = this.mAdapter;
        if (adapter == null || !adapter.hasStableIds() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.getItemId();
    }

    public int getChildLayoutPosition(@NonNull View view) {
        a0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(@NonNull View view) {
        return getChildAdapterPosition(view);
    }

    public a0 getChildViewHolder(@NonNull View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    @Nullable
    public androidx.recyclerview.widget.o getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    @NonNull
    public i getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    @Nullable
    public j getItemAnimator() {
        return this.mItemAnimator;
    }

    Rect getItemDecorInsetsForChild(View view) {
        n nVar = (n) view.getLayoutParams();
        if (!nVar.mInsetsDirty) {
            return nVar.mDecorInsets;
        }
        if (this.mState.e() && (nVar.isItemChanged() || nVar.isViewInvalid())) {
            return nVar.mDecorInsets;
        }
        Rect rect = nVar.mDecorInsets;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i10).getItemOffsets(this.mTempRect, view, this, this.mState);
            int i11 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i11 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        nVar.mInsetsDirty = false;
        return rect;
    }

    @NonNull
    public l getItemDecorationAt(int i10) {
        int itemDecorationCount = getItemDecorationCount();
        if (i10 >= 0 && i10 < itemDecorationCount) {
            return this.mItemDecorations.get(i10);
        }
        throw new IndexOutOfBoundsException(i10 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    @Nullable
    public m getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    @Nullable
    public p getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    @NonNull
    public s getRecycledViewPool() {
        return this.mRecycler.i();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().hasNestedScrollingParent();
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.p();
    }

    void initAdapterManager() {
        this.mAdapterHelper = new androidx.recyclerview.widget.a(new d());
    }

    void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new FastScroller(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(androidx.recyclerview.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(androidx.recyclerview.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(androidx.recyclerview.R.dimen.fastscroll_margin));
        } else {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + exceptionLabel());
        }
    }

    void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        j jVar = this.mItemAnimator;
        return jVar != null && jVar.isRunning();
    }

    @Override
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().isNestedScrollingEnabled();
    }

    void jumpToPositionForSmoothScroller(int i10) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i10);
        awakenScrollBars();
    }

    void markItemDecorInsetsDirty() {
        int iJ = this.mChildHelper.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            ((n) this.mChildHelper.i(i10).getLayoutParams()).mInsetsDirty = true;
        }
        this.mRecycler.s();
    }

    void markKnownViewsInvalid() {
        int iJ = this.mChildHelper.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.t();
    }

    public void nestedScrollBy(int i10, int i11) {
        nestedScrollByInternal(i10, i11, null, 1);
    }

    public void offsetChildrenHorizontal(int i10) {
        int iG = this.mChildHelper.g();
        for (int i11 = 0; i11 < iG; i11++) {
            this.mChildHelper.f(i11).offsetLeftAndRight(i10);
        }
    }

    public void offsetChildrenVertical(int i10) {
        int iG = this.mChildHelper.g();
        for (int i11 = 0; i11 < iG; i11++) {
            this.mChildHelper.f(i11).offsetTopAndBottom(i10);
        }
    }

    void offsetPositionRecordsForInsert(int i10, int i11) {
        int iJ = this.mChildHelper.j();
        for (int i12 = 0; i12 < iJ; i12++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i12));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i10) {
                if (sVerboseLoggingEnabled) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("offsetPositionRecordsForInsert attached child ");
                    sb2.append(i12);
                    sb2.append(" holder ");
                    sb2.append(childViewHolderInt);
                    sb2.append(" now at position ");
                    sb2.append(childViewHolderInt.mPosition + i11);
                }
                childViewHolderInt.offsetPosition(i11, false);
                this.mState.f13968g = true;
            }
        }
        this.mRecycler.v(i10, i11);
        requestLayout();
    }

    void offsetPositionRecordsForMove(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int iJ = this.mChildHelper.j();
        if (i10 < i11) {
            i14 = -1;
            i13 = i10;
            i12 = i11;
        } else {
            i12 = i10;
            i13 = i11;
            i14 = 1;
        }
        for (int i16 = 0; i16 < iJ; i16++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i16));
            if (childViewHolderInt != null && (i15 = childViewHolderInt.mPosition) >= i13 && i15 <= i12) {
                if (sVerboseLoggingEnabled) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("offsetPositionRecordsForMove attached child ");
                    sb2.append(i16);
                    sb2.append(" holder ");
                    sb2.append(childViewHolderInt);
                }
                if (childViewHolderInt.mPosition == i10) {
                    childViewHolderInt.offsetPosition(i11 - i10, false);
                } else {
                    childViewHolderInt.offsetPosition(i14, false);
                }
                this.mState.f13968g = true;
            }
        }
        this.mRecycler.w(i10, i11);
        requestLayout();
    }

    void offsetPositionRecordsForRemove(int i10, int i11, boolean z10) {
        int i12 = i10 + i11;
        int iJ = this.mChildHelper.j();
        for (int i13 = 0; i13 < iJ; i13++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i13));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i14 = childViewHolderInt.mPosition;
                if (i14 >= i12) {
                    if (sVerboseLoggingEnabled) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("offsetPositionRecordsForRemove attached child ");
                        sb2.append(i13);
                        sb2.append(" holder ");
                        sb2.append(childViewHolderInt);
                        sb2.append(" now at position ");
                        sb2.append(childViewHolderInt.mPosition - i11);
                    }
                    childViewHolderInt.offsetPosition(-i11, z10);
                    this.mState.f13968g = true;
                } else if (i14 >= i10) {
                    if (sVerboseLoggingEnabled) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("offsetPositionRecordsForRemove attached child ");
                        sb3.append(i13);
                        sb3.append(" holder ");
                        sb3.append(childViewHolderInt);
                        sb3.append(" now REMOVED");
                    }
                    childViewHolderInt.flagRemovedAndOffsetPosition(i10 - 1, -i11, z10);
                    this.mState.f13968g = true;
                }
            }
        }
        this.mRecycler.x(i10, i11, z10);
        requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0053  */
    @Override
    protected void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        this.mFirstLayoutComplete = this.mFirstLayoutComplete && !isLayoutRequested();
        this.mRecycler.z();
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.dispatchAttachedToWindow(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            ThreadLocal<GapWorker> threadLocal = GapWorker.sGapWorker;
            GapWorker gapWorker = threadLocal.get();
            this.mGapWorker = gapWorker;
            if (gapWorker == null) {
                this.mGapWorker = new GapWorker();
                Display display = ViewCompat.getDisplay(this);
                if (isInEditMode() || display == null) {
                    refreshRate = 60.0f;
                } else {
                    refreshRate = display.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                }
                GapWorker gapWorker2 = this.mGapWorker;
                gapWorker2.mFrameIntervalNs = (long) (1.0E9f / refreshRate);
                threadLocal.set(gapWorker2);
            }
            this.mGapWorker.add(this);
        }
    }

    public void onChildAttachedToWindow(@NonNull View view) {
    }

    public void onChildDetachedFromWindow(@NonNull View view) {
    }

    @Override
    protected void onDetachedFromWindow() {
        GapWorker gapWorker;
        super.onDetachedFromWindow();
        j jVar = this.mItemAnimator;
        if (jVar != null) {
            jVar.endAnimations();
        }
        stopScroll();
        this.mIsAttached = false;
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.j();
        this.mRecycler.A();
        h1.a.c(this);
        if (!ALLOW_THREAD_GAP_WORK || (gapWorker = this.mGapWorker) == null) {
            return;
        }
        gapWorker.remove(this);
        this.mGapWorker = null;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mItemDecorations.get(i10).onDraw(canvas, this, this.mState);
        }
    }

    void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0062  */
    @Override
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f10;
        float axisValue;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f10 = this.mLayout.canScrollVertically() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.mLayout.canScrollHorizontally() ? motionEvent.getAxisValue(10) : 0.0f;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.mLayout.canScrollVertically()) {
                    f10 = -axisValue2;
                } else if (this.mLayout.canScrollHorizontally()) {
                    axisValue = axisValue2;
                    f10 = 0.0f;
                } else {
                    f10 = 0.0f;
                    axisValue = 0.0f;
                }
            } else {
                f10 = 0.0f;
                axisValue = 0.0f;
            }
            if (f10 != 0.0f || axisValue != 0.0f) {
                nestedScrollByInternal((int) (axisValue * this.mScaledHorizontalScrollFactor), (int) (f10 * this.mScaledVerticalScrollFactor), motionEvent, 1);
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (findInterceptingOnItemTouchListener(motionEvent)) {
            cancelScroll();
            return true;
        }
        m mVar = this.mLayout;
        if (mVar == null) {
            return false;
        }
        boolean zCanScrollHorizontally = mVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y10 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
            if (stopGlowAnimations(motionEvent) || this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            int i10 = zCanScrollHorizontally;
            if (zCanScrollVertically) {
                i10 = (zCanScrollHorizontally ? 1 : 0) | 2;
            }
            startNestedScroll(i10, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (iFindPointerIndex < 0) {
                Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x11 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y11 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i11 = x11 - this.mInitialTouchX;
                int i12 = y11 - this.mInitialTouchY;
                if (!zCanScrollHorizontally || Math.abs(i11) <= this.mTouchSlop) {
                    z10 = false;
                } else {
                    this.mLastTouchX = x11;
                    z10 = true;
                }
                if (zCanScrollVertically && Math.abs(i12) > this.mTouchSlop) {
                    this.mLastTouchY = y11;
                    z10 = true;
                }
                if (z10) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            cancelScroll();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x12;
            this.mInitialTouchX = x12;
            int y12 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y12;
            this.mInitialTouchY = y12;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        return this.mScrollState == 1;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        androidx.core.os.s.a(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        androidx.core.os.s.b();
        this.mFirstLayoutComplete = true;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        m mVar = this.mLayout;
        if (mVar == null) {
            defaultOnMeasure(i10, i11);
            return;
        }
        boolean z10 = false;
        if (mVar.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z10 = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z10;
            if (z10 || this.mAdapter == null) {
                return;
            }
            if (this.mState.f13966e == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.setMeasureSpecs(i10, i11);
            this.mState.f13971j = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i10, i11);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.mState.f13971j = true;
                dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(i10, i11);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            processAdapterUpdatesAndSetAnimationFlags();
            onExitLayoutOrScroll();
            x xVar = this.mState;
            if (xVar.f13973l) {
                xVar.f13969h = true;
            } else {
                this.mAdapterHelper.j();
                this.mState.f13969h = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.f13973l) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        Adapter adapter = this.mAdapter;
        if (adapter != null) {
            this.mState.f13967f = adapter.getItemCount();
        } else {
            this.mState.f13967f = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
        stopInterceptRequestLayout(false);
        this.mState.f13969h = false;
    }

    @Override
    protected boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i10, rect);
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mPendingSavedState = savedState;
        super.onRestoreInstanceState(savedState.getSuperState());
        requestLayout();
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            savedState.copyFrom(savedState2);
        } else {
            m mVar = this.mLayout;
            if (mVar != null) {
                savedState.mLayoutState = mVar.onSaveInstanceState();
            } else {
                savedState.mLayoutState = null;
            }
        }
        return savedState;
    }

    public void onScrollStateChanged(int i10) {
    }

    public void onScrolled(int i10, int i11) {
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 == i12 && i11 == i13) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00df A[PHI: r0
      0x00df: PHI (r0v37 int) = (r0v26 int), (r0v41 int) binds: [B:41:0x00c8, B:45:0x00db] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i10;
        boolean z10;
        if (this.mLayoutSuppressed || this.mIgnoreMotionEventTillDown) {
            return false;
        }
        if (dispatchToOnItemTouchListeners(motionEvent)) {
            cancelScroll();
            return true;
        }
        m mVar = this.mLayout;
        if (mVar == null) {
            return false;
        }
        boolean zCanScrollHorizontally = mVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int[] iArr2 = this.mNestedOffsets;
        motionEventObtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.mVelocityTracker.addMovement(motionEventObtain);
                this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
                float f10 = zCanScrollHorizontally ? -this.mVelocityTracker.getXVelocity(this.mScrollPointerId) : 0.0f;
                float f11 = zCanScrollVertically ? -this.mVelocityTracker.getYVelocity(this.mScrollPointerId) : 0.0f;
                if ((f10 == 0.0f && f11 == 0.0f) || !fling((int) f10, (int) f11)) {
                    setScrollState(0);
                }
                resetScroll();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                if (iFindPointerIndex < 0) {
                    Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x10 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                int y10 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                int iMax = this.mLastTouchX - x10;
                int iMax2 = this.mLastTouchY - y10;
                if (this.mScrollState != 1) {
                    if (zCanScrollHorizontally) {
                        iMax = iMax > 0 ? Math.max(0, iMax - this.mTouchSlop) : Math.min(0, iMax + this.mTouchSlop);
                        if (iMax != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } else {
                        z10 = false;
                    }
                    if (zCanScrollVertically) {
                        iMax2 = iMax2 > 0 ? Math.max(0, iMax2 - this.mTouchSlop) : Math.min(0, iMax2 + this.mTouchSlop);
                        if (iMax2 != 0) {
                            z10 = true;
                        }
                    }
                    if (z10) {
                        setScrollState(1);
                    }
                }
                if (this.mScrollState == 1) {
                    int[] iArr3 = this.mReusableIntPair;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    int iReleaseHorizontalGlow = iMax - releaseHorizontalGlow(iMax, motionEvent.getY());
                    int iReleaseVerticalGlow = iMax2 - releaseVerticalGlow(iMax2, motionEvent.getX());
                    if (dispatchNestedPreScroll(zCanScrollHorizontally ? iReleaseHorizontalGlow : 0, zCanScrollVertically ? iReleaseVerticalGlow : 0, this.mReusableIntPair, this.mScrollOffset, 0)) {
                        int[] iArr4 = this.mReusableIntPair;
                        iReleaseHorizontalGlow -= iArr4[0];
                        iReleaseVerticalGlow -= iArr4[1];
                        int[] iArr5 = this.mNestedOffsets;
                        int i11 = iArr5[0];
                        int[] iArr6 = this.mScrollOffset;
                        iArr5[0] = i11 + iArr6[0];
                        iArr5[1] = iArr5[1] + iArr6[1];
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    int i12 = iReleaseVerticalGlow;
                    int[] iArr7 = this.mScrollOffset;
                    this.mLastTouchX = x10 - iArr7[0];
                    this.mLastTouchY = y10 - iArr7[1];
                    if (scrollByInternal(zCanScrollHorizontally ? iReleaseHorizontalGlow : 0, zCanScrollVertically ? i12 : 0, motionEvent, 0)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    GapWorker gapWorker = this.mGapWorker;
                    if (gapWorker != null && (iReleaseHorizontalGlow != 0 || i12 != 0)) {
                        gapWorker.postFromTraversal(this, iReleaseHorizontalGlow, i12);
                    }
                }
            } else if (actionMasked == 3) {
                cancelScroll();
            } else if (actionMasked == 5) {
                this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                int x11 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.mLastTouchX = x11;
                this.mInitialTouchX = x11;
                int y11 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.mLastTouchY = y11;
                this.mInitialTouchY = y11;
            } else if (actionMasked == 6) {
                onPointerUp(motionEvent);
            }
            motionEventObtain.recycle();
            return true;
        }
        this.mScrollPointerId = motionEvent.getPointerId(0);
        int x12 = (int) (motionEvent.getX() + 0.5f);
        this.mLastTouchX = x12;
        this.mInitialTouchX = x12;
        int y12 = (int) (motionEvent.getY() + 0.5f);
        this.mLastTouchY = y12;
        this.mInitialTouchY = y12;
        if (zCanScrollVertically) {
            i10 = zCanScrollHorizontally;
            i10 = (zCanScrollHorizontally ? 1 : 0) | 2;
        }
        i10 = zCanScrollHorizontally;
        startNestedScroll(i10, 0);
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        return true;
    }

    void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        ViewCompat.postOnAnimation(this, this.mItemAnimatorRunner);
        this.mPostedAnimatorRunner = true;
    }

    void processDataSetCompletelyChanged(boolean z10) {
        this.mDispatchItemsChangedEvent = z10 | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    void recordAnimationInfoIfBouncedHiddenView(a0 a0Var, j.c cVar) {
        a0Var.setFlags(0, 8192);
        if (this.mState.f13970i && a0Var.isUpdated() && !a0Var.isRemoved() && !a0Var.shouldIgnore()) {
            this.mViewInfoStore.c(getChangedHolderKey(a0Var), a0Var);
        }
        this.mViewInfoStore.e(a0Var, cVar);
    }

    void removeAndRecycleViews() {
        j jVar = this.mItemAnimator;
        if (jVar != null) {
            jVar.endAnimations();
        }
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        this.mRecycler.c();
    }

    boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        boolean zR = this.mChildHelper.r(view);
        if (zR) {
            a0 childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.O(childViewHolderInt);
            this.mRecycler.H(childViewHolderInt);
            if (sVerboseLoggingEnabled) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("after removing animated view: ");
                sb2.append(view);
                sb2.append(", ");
                sb2.append(this);
            }
        }
        stopInterceptRequestLayout(!zR);
        return zR;
    }

    @Override
    protected void removeDetachedView(View view, boolean z10) {
        a0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt + exceptionLabel());
            }
        } else if (sDebugAssertionsEnabled) {
            throw new IllegalArgumentException("No ViewHolder found for child: " + view + exceptionLabel());
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z10);
    }

    public void removeItemDecoration(@NonNull l lVar) {
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(lVar);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i10) {
        int itemDecorationCount = getItemDecorationCount();
        if (i10 >= 0 && i10 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i10));
            return;
        }
        throw new IndexOutOfBoundsException(i10 + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(@NonNull o oVar) {
        List<o> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(oVar);
    }

    public void removeOnItemTouchListener(@NonNull q qVar) {
        this.mOnItemTouchListeners.remove(qVar);
        if (this.mInterceptingOnItemTouchListener == qVar) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(@NonNull r rVar) {
        List<r> list = this.mScrollListeners;
        if (list != null) {
            list.remove(rVar);
        }
    }

    public void removeRecyclerListener(@NonNull u uVar) {
        this.mRecyclerListeners.remove(uVar);
    }

    void repositionShadowingViews() {
        a0 a0Var;
        int iG = this.mChildHelper.g();
        for (int i10 = 0; i10 < iG; i10++) {
            View viewF = this.mChildHelper.f(i10);
            a0 childViewHolder = getChildViewHolder(viewF);
            if (childViewHolder != null && (a0Var = childViewHolder.mShadowingHolder) != null) {
                View view = a0Var.itemView;
                int left = viewF.getLeft();
                int top = viewF.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z10);
    }

    @Override
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        int size = this.mOnItemTouchListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mOnItemTouchListeners.get(i10).c(z10);
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    void saveOldPositions() {
        int iJ = this.mChildHelper.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
            if (sDebugAssertionsEnabled && childViewHolderInt.mPosition == -1 && !childViewHolderInt.isRemoved()) {
                throw new IllegalStateException("view holder cannot have position -1 unless it is removed" + exceptionLabel());
            }
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    @Override
    public void scrollBy(int i10, int i11) {
        m mVar = this.mLayout;
        if (mVar == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        boolean zCanScrollHorizontally = mVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (zCanScrollHorizontally || zCanScrollVertically) {
            if (!zCanScrollHorizontally) {
                i10 = 0;
            }
            if (!zCanScrollVertically) {
                i11 = 0;
            }
            scrollByInternal(i10, i11, null, 0);
        }
    }

    boolean scrollByInternal(int i10, int i11, MotionEvent motionEvent, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i10, i11, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i17 = iArr2[0];
            int i18 = iArr2[1];
            i13 = i18;
            i14 = i17;
            i15 = i10 - i17;
            i16 = i11 - i18;
        } else {
            i13 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i14, i13, i15, i16, this.mScrollOffset, i12, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i19 = iArr4[0];
        int i20 = i15 - i19;
        int i21 = iArr4[1];
        int i22 = i16 - i21;
        boolean z10 = (i19 == 0 && i21 == 0) ? false : true;
        int i23 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        int i24 = iArr5[0];
        this.mLastTouchX = i23 - i24;
        int i25 = this.mLastTouchY;
        int i26 = iArr5[1];
        this.mLastTouchY = i25 - i26;
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + i24;
        iArr6[1] = iArr6[1] + i26;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !MotionEventCompat.isFromSource(motionEvent, InputDeviceCompat.SOURCE_MOUSE)) {
                pullGlows(motionEvent.getX(), i20, motionEvent.getY(), i22);
            }
            considerReleasingGlowsOnScroll(i10, i11);
        }
        if (i14 != 0 || i13 != 0) {
            dispatchOnScrolled(i14, i13);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z10 && i14 == 0 && i13 == 0) ? false : true;
    }

    void scrollStep(int i10, int i11, @Nullable int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        androidx.core.os.s.a(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int iScrollHorizontallyBy = i10 != 0 ? this.mLayout.scrollHorizontallyBy(i10, this.mRecycler, this.mState) : 0;
        int iScrollVerticallyBy = i11 != 0 ? this.mLayout.scrollVerticallyBy(i11, this.mRecycler, this.mState) : 0;
        androidx.core.os.s.b();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = iScrollHorizontallyBy;
            iArr[1] = iScrollVerticallyBy;
        }
    }

    @Override
    public void scrollTo(int i10, int i11) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i10) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        m mVar = this.mLayout;
        if (mVar == null) {
            Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            mVar.scrollToPosition(i10);
            awakenScrollBars();
        }
    }

    @Override
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(@Nullable androidx.recyclerview.widget.o oVar) {
        this.mAccessibilityDelegate = oVar;
        ViewCompat.setAccessibilityDelegate(this, oVar);
    }

    public void setAdapter(@Nullable Adapter adapter) {
        setLayoutFrozen(false);
        setAdapterInternal(adapter, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(@Nullable h hVar) {
        if (hVar == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    boolean setChildImportantForAccessibilityInternal(a0 a0Var, int i10) {
        if (!isComputingLayout()) {
            ViewCompat.setImportantForAccessibility(a0Var.itemView, i10);
            return true;
        }
        a0Var.mPendingAccessibilityState = i10;
        this.mPendingAccessibilityImportanceChange.add(a0Var);
        return false;
    }

    @Override
    public void setClipToPadding(boolean z10) {
        if (z10 != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z10;
        super.setClipToPadding(z10);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(@NonNull i iVar) {
        androidx.core.util.i.g(iVar);
        this.mEdgeEffectFactory = iVar;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z10) {
        this.mHasFixedSize = z10;
    }

    public void setItemAnimator(@Nullable j jVar) {
        j jVar2 = this.mItemAnimator;
        if (jVar2 != null) {
            jVar2.endAnimations();
            this.mItemAnimator.setListener(null);
        }
        this.mItemAnimator = jVar;
        if (jVar != null) {
            jVar.setListener(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int i10) {
        this.mRecycler.L(i10);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z10) {
        suppressLayout(z10);
    }

    public void setLayoutManager(@Nullable m mVar) {
        if (mVar == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            j jVar = this.mItemAnimator;
            if (jVar != null) {
                jVar.endAnimations();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            this.mRecycler.c();
            if (this.mIsAttached) {
                this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            this.mRecycler.c();
        }
        this.mChildHelper.o();
        this.mLayout = mVar;
        if (mVar != null) {
            if (mVar.mRecyclerView != null) {
                throw new IllegalArgumentException("LayoutManager " + mVar + " is already attached to a RecyclerView:" + mVar.mRecyclerView.exceptionLabel());
            }
            mVar.setRecyclerView(this);
            if (this.mIsAttached) {
                this.mLayout.dispatchAttachedToWindow(this);
            }
        }
        this.mRecycler.P();
        requestLayout();
    }

    @Override
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override
    public void setNestedScrollingEnabled(boolean z10) {
        getScrollingChildHelper().setNestedScrollingEnabled(z10);
    }

    public void setOnFlingListener(@Nullable p pVar) {
        this.mOnFlingListener = pVar;
    }

    @Deprecated
    public void setOnScrollListener(@Nullable r rVar) {
        this.mScrollListener = rVar;
    }

    public void setPreserveFocusAfterLayout(boolean z10) {
        this.mPreserveFocusAfterLayout = z10;
    }

    public void setRecycledViewPool(@Nullable s sVar) {
        this.mRecycler.J(sVar);
    }

    @Deprecated
    public void setRecyclerListener(@Nullable u uVar) {
    }

    void setScrollState(int i10) {
        if (i10 == this.mScrollState) {
            return;
        }
        if (sVerboseLoggingEnabled) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("setting scroll state to ");
            sb2.append(i10);
            sb2.append(" from ");
            sb2.append(this.mScrollState);
            new Exception();
        }
        this.mScrollState = i10;
        if (i10 != 2) {
            stopScrollersInternal();
        }
        dispatchOnScrollStateChanged(i10);
    }

    public void setScrollingTouchSlop(int i10) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i10 != 0) {
            if (i10 == 1) {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i10 + "; using default value");
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(@Nullable z zVar) {
        this.mRecycler.K(zVar);
    }

    boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? AccessibilityEventCompat.getContentChangeTypes(accessibilityEvent) : 0;
        this.mEatenAccessibilityChangeFlags |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        return true;
    }

    public void smoothScrollBy(int i10, int i11) {
        smoothScrollBy(i10, i11, null);
    }

    public void smoothScrollToPosition(int i10) {
        if (this.mLayoutSuppressed) {
            return;
        }
        m mVar = this.mLayout;
        if (mVar == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            mVar.smoothScrollToPosition(this, this.mState, i10);
        }
    }

    void startInterceptRequestLayout() {
        int i10 = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i10;
        if (i10 != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override
    public boolean startNestedScroll(int i10) {
        return getScrollingChildHelper().startNestedScroll(i10);
    }

    void stopInterceptRequestLayout(boolean z10) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            if (sDebugAssertionsEnabled) {
                throw new IllegalStateException("stopInterceptRequestLayout was called more times than startInterceptRequestLayout." + exceptionLabel());
            }
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z10 && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z10 && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override
    public void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll();
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    @Override
    public final void suppressLayout(boolean z10) {
        if (z10 != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z10) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void swapAdapter(@Nullable Adapter adapter, boolean z10) {
        setLayoutFrozen(false);
        setAdapterInternal(adapter, true, z10);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    void viewRangeUpdate(int i10, int i11, Object obj) {
        int i12;
        int iJ = this.mChildHelper.j();
        int i13 = i10 + i11;
        for (int i14 = 0; i14 < iJ; i14++) {
            View viewI = this.mChildHelper.i(i14);
            a0 childViewHolderInt = getChildViewHolderInt(viewI);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i12 = childViewHolderInt.mPosition) >= i10 && i12 < i13) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((n) viewI.getLayoutParams()).mInsetsDirty = true;
            }
        }
        this.mRecycler.R(i10, i11);
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, androidx.recyclerview.R.attr.recyclerViewStyle);
    }

    @Override
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i10, i11, iArr, iArr2, i12);
    }

    @Override
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr, int i14) {
        return getScrollingChildHelper().dispatchNestedScroll(i10, i11, i12, i13, iArr, i14);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    /* JADX WARN: Code duplicated, block: B:22:0x0036 A[SYNTHETIC] */
    @Nullable
    a0 findViewHolderForPosition(int i10, boolean z10) {
        int iJ = this.mChildHelper.j();
        a0 a0Var = null;
        for (int i11 = 0; i11 < iJ; i11++) {
            a0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i11));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved()) {
                if (z10) {
                    if (childViewHolderInt.mPosition != i10) {
                        continue;
                    } else {
                        if (this.mChildHelper.n(childViewHolderInt.itemView)) {
                            return childViewHolderInt;
                        }
                        a0Var = childViewHolderInt;
                    }
                } else if (childViewHolderInt.getLayoutPosition() != i10) {
                    continue;
                } else {
                    if (this.mChildHelper.n(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    a0Var = childViewHolderInt;
                }
            }
        }
        return a0Var;
    }

    @Override
    public boolean hasNestedScrollingParent(int i10) {
        return getScrollingChildHelper().hasNestedScrollingParent(i10);
    }

    void onExitLayoutOrScroll(boolean z10) {
        int i10 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i10;
        if (i10 < 1) {
            if (sDebugAssertionsEnabled && i10 < 0) {
                throw new IllegalStateException("layout or scroll counter cannot go below zero.Some calls are not matching" + exceptionLabel());
            }
            this.mLayoutOrScrollCounter = 0;
            if (z10) {
                dispatchContentChangedIfNecessary();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    public void smoothScrollBy(int i10, int i11, @Nullable Interpolator interpolator) {
        smoothScrollBy(i10, i11, interpolator, Integer.MIN_VALUE);
    }

    @Override
    public boolean startNestedScroll(int i10, int i11) {
        return getScrollingChildHelper().startNestedScroll(i10, i11);
    }

    @Override
    public void stopNestedScroll(int i10) {
        getScrollingChildHelper().stopNestedScroll(i10);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        Parcelable mLayoutState;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mLayoutState = parcel.readParcelable(classLoader == null ? m.class.getClassLoader() : classLoader);
        }

        void copyFrom(SavedState savedState) {
            this.mLayoutState = savedState.mLayoutState;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeParcelable(this.mLayoutState, 0);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mObserver = new v();
        this.mRecycler = new t();
        this.mViewInfoStore = new androidx.recyclerview.widget.u();
        this.mUpdateChildViewsRunnable = new Runnable() {
            @Override
            public void run() {
                RecyclerView recyclerView = RecyclerView.this;
                if (!recyclerView.mFirstLayoutComplete || recyclerView.isLayoutRequested()) {
                    return;
                }
                RecyclerView recyclerView2 = RecyclerView.this;
                if (!recyclerView2.mIsAttached) {
                    recyclerView2.requestLayout();
                } else if (recyclerView2.mLayoutSuppressed) {
                    recyclerView2.mLayoutWasDefered = true;
                } else {
                    recyclerView2.consumePendingUpdateOperations();
                }
            }
        };
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = sDefaultEdgeEffectFactory;
        this.mItemAnimator = new DefaultItemAnimator();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new ViewFlinger();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new GapWorker.a() : null;
        this.mState = new x();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new k();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new Runnable() {
            @Override
            public void run() {
                j jVar = RecyclerView.this.mItemAnimator;
                if (jVar != null) {
                    jVar.runPendingAnimations();
                }
                RecyclerView.this.mPostedAnimatorRunner = false;
            }
        };
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new b();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = ViewConfigurationCompat.getScaledHorizontalScrollFactor(viewConfiguration, context);
        this.mScaledVerticalScrollFactor = ViewConfigurationCompat.getScaledVerticalScrollFactor(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mPhysicalCoef = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.setListener(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.o(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.recyclerview.R.styleable.RecyclerView, i10, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, androidx.recyclerview.R.styleable.RecyclerView, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
        String string = typedArrayObtainStyledAttributes.getString(androidx.recyclerview.R.styleable.RecyclerView_layoutManager);
        if (typedArrayObtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_android_clipToPadding, true);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_fastScrollEnabled, false);
        this.mEnableFastScroller = z10;
        if (z10) {
            initFastScroller((StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollVerticalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        typedArrayObtainStyledAttributes.recycle();
        createLayoutManager(context, string, attributeSet, i10, 0);
        int[] iArr = NESTED_SCROLLING_ATTRS;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes2, i10, 0);
        boolean z11 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z11);
        h1.a.h(this, true);
    }

    @Override
    public final void dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr, int i14, @NonNull int[] iArr2) {
        getScrollingChildHelper().dispatchNestedScroll(i10, i11, i12, i13, iArr, i14, iArr2);
    }

    public void smoothScrollBy(int i10, int i11, @Nullable Interpolator interpolator, int i12) {
        smoothScrollBy(i10, i11, interpolator, i12, false);
    }

    public static class n extends ViewGroup.MarginLayoutParams {
        final Rect mDecorInsets;
        boolean mInsetsDirty;
        boolean mPendingInvalidate;
        a0 mViewHolder;

        public n(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public int getAbsoluteAdapterPosition() {
            return this.mViewHolder.getAbsoluteAdapterPosition();
        }

        public int getBindingAdapterPosition() {
            return this.mViewHolder.getBindingAdapterPosition();
        }

        @Deprecated
        public int getViewAdapterPosition() {
            return this.mViewHolder.getBindingAdapterPosition();
        }

        public int getViewLayoutPosition() {
            return this.mViewHolder.getLayoutPosition();
        }

        @Deprecated
        public int getViewPosition() {
            return this.mViewHolder.getPosition();
        }

        public boolean isItemChanged() {
            return this.mViewHolder.isUpdated();
        }

        public boolean isItemRemoved() {
            return this.mViewHolder.isRemoved();
        }

        public boolean isViewInvalid() {
            return this.mViewHolder.isInvalid();
        }

        public boolean viewNeedsUpdate() {
            return this.mViewHolder.needsUpdate();
        }

        public n(int i10, int i11) {
            super(i10, i11);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public n(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public n(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public n(n nVar) {
            super((ViewGroup.LayoutParams) nVar);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        m mVar = this.mLayout;
        if (mVar != null) {
            return mVar.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    void smoothScrollBy(int i10, int i11, @Nullable Interpolator interpolator, int i12, boolean z10) {
        m mVar = this.mLayout;
        if (mVar == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        if (!mVar.canScrollHorizontally()) {
            i10 = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        if (i12 != Integer.MIN_VALUE && i12 <= 0) {
            scrollBy(i10, i11);
            return;
        }
        if (z10) {
            int i13 = i10 != 0 ? 1 : 0;
            if (i11 != 0) {
                i13 |= 2;
            }
            startNestedScroll(i13, 1);
        }
        this.mViewFlinger.smoothScrollBy(i10, i11, i12, interpolator);
    }

    public void addItemDecoration(@NonNull l lVar) {
        addItemDecoration(lVar, -1);
    }

    public static abstract class r {
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i10) {
        }

        public void onScrolled(@NonNull RecyclerView recyclerView, int i10, int i11) {
        }
    }
}
