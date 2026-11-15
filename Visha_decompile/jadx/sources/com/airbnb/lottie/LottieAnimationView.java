package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.color.utilities.Contrast;
import defpackage.bha;
import defpackage.bt5;
import defpackage.dt5;
import defpackage.fs5;
import defpackage.gm9;
import defpackage.ht5;
import defpackage.it5;
import defpackage.iu5;
import defpackage.jt5;
import defpackage.mq5;
import defpackage.plb;
import defpackage.r24;
import defpackage.tf5;
import defpackage.tx4;
import defpackage.ur5;
import defpackage.yh5;
import defpackage.zl9;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.zip.ZipInputStream;

public class LottieAnimationView extends AppCompatImageView {
    private static final dt5 DEFAULT_FAILURE_LISTENER = new dt5() {
        @Override
        public final void onResult(Object obj) {
            LottieAnimationView.k((Throwable) obj);
        }
    };
    private static final String TAG = "LottieAnimationView";
    private String animationName;

    @RawRes
    private int animationResId;
    private boolean autoPlay;
    private boolean cacheComposition;

    @Nullable
    private LottieTask compositionTask;

    @Nullable
    private dt5 failureListener;

    @DrawableRes
    private int fallbackResource;
    private boolean ignoreUnschedule;
    private final dt5 loadedListener;
    private final LottieDrawable lottieDrawable;
    private final Set<ht5> lottieOnCompositionLoadedListeners;
    private final Set<UserActionTaken> userActionsTaken;
    private final dt5 wrappedFailureListener;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        String animationName;
        int animationResId;
        String imageAssetsFolder;
        boolean isAnimating;
        float progress;
        int repeatCount;
        int repeatMode;

        public class a implements Parcelable.Creator {
            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.animationName);
            parcel.writeFloat(this.progress);
            parcel.writeInt(this.isAnimating ? 1 : 0);
            parcel.writeString(this.imageAssetsFolder);
            parcel.writeInt(this.repeatMode);
            parcel.writeInt(this.repeatCount);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.animationName = parcel.readString();
            this.progress = parcel.readFloat();
            this.isAnimating = parcel.readInt() == 1;
            this.imageAssetsFolder = parcel.readString();
            this.repeatMode = parcel.readInt();
            this.repeatCount = parcel.readInt();
        }
    }

    public enum UserActionTaken {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    public class a extends iu5 {
        public final gm9 d;

        public a(gm9 gm9Var) {
            this.d = gm9Var;
        }

        @Override
        public Object a(bt5 bt5Var) {
            return this.d.a(bt5Var);
        }
    }

    public static class b implements dt5 {
        public final WeakReference a;

        public b(LottieAnimationView lottieAnimationView) {
            this.a = new WeakReference(lottieAnimationView);
        }

        @Override
        public void onResult(Throwable th) {
            LottieAnimationView lottieAnimationView = (LottieAnimationView) this.a.get();
            if (lottieAnimationView == null) {
                return;
            }
            if (lottieAnimationView.fallbackResource != 0) {
                lottieAnimationView.setImageResource(lottieAnimationView.fallbackResource);
            }
            (lottieAnimationView.failureListener == null ? LottieAnimationView.DEFAULT_FAILURE_LISTENER : lottieAnimationView.failureListener).onResult(th);
        }
    }

    public static class c implements dt5 {
        public final WeakReference a;

        public c(LottieAnimationView lottieAnimationView) {
            this.a = new WeakReference(lottieAnimationView);
        }

        @Override
        public void onResult(ur5 ur5Var) {
            LottieAnimationView lottieAnimationView = (LottieAnimationView) this.a.get();
            if (lottieAnimationView == null) {
                return;
            }
            lottieAnimationView.setComposition(ur5Var);
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.loadedListener = new c(this);
        this.wrappedFailureListener = new b(this);
        this.fallbackResource = 0;
        this.lottieDrawable = new LottieDrawable();
        this.ignoreUnschedule = false;
        this.autoPlay = false;
        this.cacheComposition = true;
        this.userActionsTaken = new HashSet();
        this.lottieOnCompositionLoadedListeners = new HashSet();
        h(null, R.attr.lottieAnimationViewStyle);
    }

    public static void k(Throwable th) {
        if (!plb.k(th)) {
            throw new IllegalStateException("Unable to parse composition", th);
        }
        mq5.d("Unable to load composition.", th);
    }

    private void setCompositionTask(LottieTask lottieTask) {
        jt5 jt5VarE = lottieTask.e();
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (jt5VarE != null && lottieDrawable == getDrawable() && lottieDrawable.O() == jt5VarE.b()) {
            return;
        }
        this.userActionsTaken.add(UserActionTaken.SET_ANIMATION);
        e();
        d();
        this.compositionTask = lottieTask.d(this.loadedListener).c(this.wrappedFailureListener);
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.lottieDrawable.s(animatorListener);
    }

    @RequiresApi(api = 19)
    public void addAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.lottieDrawable.t(animatorPauseListener);
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.lottieDrawable.u(animatorUpdateListener);
    }

    public boolean addLottieOnCompositionLoadedListener(@NonNull ht5 ht5Var) {
        ur5 composition = getComposition();
        if (composition != null) {
            ht5Var.a(composition);
        }
        return this.lottieOnCompositionLoadedListeners.add(ht5Var);
    }

    public <T> void addValueCallback(tf5 tf5Var, T t, iu5 iu5Var) {
        this.lottieDrawable.v(tf5Var, t, iu5Var);
    }

    @MainThread
    public void cancelAnimation() {
        this.autoPlay = false;
        this.userActionsTaken.add(UserActionTaken.PLAY_OPTION);
        this.lottieDrawable.y();
    }

    public <T> void clearValueCallback(tf5 tf5Var, T t) {
        this.lottieDrawable.v(tf5Var, t, null);
    }

    public final void d() {
        LottieTask lottieTask = this.compositionTask;
        if (lottieTask != null) {
            lottieTask.k(this.loadedListener);
            this.compositionTask.j(this.wrappedFailureListener);
        }
    }

    @Deprecated
    public void disableExtraScaleModeInFitXY() {
        this.lottieDrawable.D();
    }

    public final void e() {
        this.lottieDrawable.z();
    }

    public void enableFeatureFlag(LottieFeatureFlag lottieFeatureFlag, boolean z) {
        this.lottieDrawable.F(lottieFeatureFlag, z);
    }

    public void enableMergePathsForKitKatAndAbove(boolean z) {
        this.lottieDrawable.F(LottieFeatureFlag.MergePathsApi19, z);
    }

    public final LottieTask f(final String str) {
        if (isInEditMode()) {
            return new LottieTask(new Callable() {
                @Override
                public final Object call() {
                    return this.b.i(str);
                }
            }, true);
        }
        return this.cacheComposition ? fs5.l(getContext(), str) : fs5.m(getContext(), str, null);
    }

    public final LottieTask g(final int i) {
        if (isInEditMode()) {
            return new LottieTask(new Callable() {
                @Override
                public final Object call() {
                    return this.b.j(i);
                }
            }, true);
        }
        return this.cacheComposition ? fs5.w(getContext(), i) : fs5.x(getContext(), i, null);
    }

    public AsyncUpdates getAsyncUpdates() {
        return this.lottieDrawable.J();
    }

    public boolean getAsyncUpdatesEnabled() {
        return this.lottieDrawable.K();
    }

    public boolean getClipTextToBoundingBox() {
        return this.lottieDrawable.M();
    }

    public boolean getClipToCompositionBounds() {
        return this.lottieDrawable.N();
    }

    @Nullable
    public ur5 getComposition() {
        Drawable drawable = getDrawable();
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (drawable == lottieDrawable) {
            return lottieDrawable.O();
        }
        return null;
    }

    public long getDuration() {
        ur5 composition = getComposition();
        if (composition != null) {
            return (long) composition.d();
        }
        return 0L;
    }

    public int getFrame() {
        return this.lottieDrawable.R();
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.lottieDrawable.T();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.lottieDrawable.V();
    }

    public float getMaxFrame() {
        return this.lottieDrawable.X();
    }

    public float getMinFrame() {
        return this.lottieDrawable.Y();
    }

    @Nullable
    public PerformanceTracker getPerformanceTracker() {
        return this.lottieDrawable.Z();
    }

    @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
    public float getProgress() {
        return this.lottieDrawable.a0();
    }

    public RenderMode getRenderMode() {
        return this.lottieDrawable.b0();
    }

    public int getRepeatCount() {
        return this.lottieDrawable.c0();
    }

    public int getRepeatMode() {
        return this.lottieDrawable.d0();
    }

    public float getSpeed() {
        return this.lottieDrawable.e0();
    }

    public final void h(AttributeSet attributeSet, int i) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.LottieAnimationView, i, 0);
        this.cacheComposition = typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_cacheComposition, true);
        int i2 = R.styleable.LottieAnimationView_lottie_rawRes;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i2);
        int i3 = R.styleable.LottieAnimationView_lottie_fileName;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(i3);
        int i4 = R.styleable.LottieAnimationView_lottie_url;
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(i4);
        if (zHasValue && zHasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(i2, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(i3);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(i4)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(R.styleable.LottieAnimationView_lottie_fallbackRes, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.autoPlay = true;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_loop, false)) {
            this.lottieDrawable.t1(-1);
        }
        int i5 = R.styleable.LottieAnimationView_lottie_repeatMode;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(i5, 1));
        }
        int i6 = R.styleable.LottieAnimationView_lottie_repeatCount;
        if (typedArrayObtainStyledAttributes.hasValue(i6)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(i6, -1));
        }
        int i7 = R.styleable.LottieAnimationView_lottie_speed;
        if (typedArrayObtainStyledAttributes.hasValue(i7)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(i7, 1.0f));
        }
        int i8 = R.styleable.LottieAnimationView_lottie_clipToCompositionBounds;
        if (typedArrayObtainStyledAttributes.hasValue(i8)) {
            setClipToCompositionBounds(typedArrayObtainStyledAttributes.getBoolean(i8, true));
        }
        int i9 = R.styleable.LottieAnimationView_lottie_clipTextToBoundingBox;
        if (typedArrayObtainStyledAttributes.hasValue(i9)) {
            setClipTextToBoundingBox(typedArrayObtainStyledAttributes.getBoolean(i9, false));
        }
        int i10 = R.styleable.LottieAnimationView_lottie_defaultFontFileExtension;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            setDefaultFontFileExtension(typedArrayObtainStyledAttributes.getString(i10));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(R.styleable.LottieAnimationView_lottie_imageAssetsFolder));
        int i11 = R.styleable.LottieAnimationView_lottie_progress;
        m(typedArrayObtainStyledAttributes.getFloat(i11, 0.0f), typedArrayObtainStyledAttributes.hasValue(i11));
        enableMergePathsForKitKatAndAbove(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        int i12 = R.styleable.LottieAnimationView_lottie_colorFilter;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            addValueCallback(new tf5("**"), it5.K, new iu5(new zl9(AppCompatResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes.getResourceId(i12, -1)).getDefaultColor())));
        }
        int i13 = R.styleable.LottieAnimationView_lottie_renderMode;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            RenderMode renderMode = RenderMode.AUTOMATIC;
            int iOrdinal = typedArrayObtainStyledAttributes.getInt(i13, renderMode.ordinal());
            if (iOrdinal >= RenderMode.values().length) {
                iOrdinal = renderMode.ordinal();
            }
            setRenderMode(RenderMode.values()[iOrdinal]);
        }
        int i14 = R.styleable.LottieAnimationView_lottie_asyncUpdates;
        if (typedArrayObtainStyledAttributes.hasValue(i14)) {
            AsyncUpdates asyncUpdates = AsyncUpdates.AUTOMATIC;
            int iOrdinal2 = typedArrayObtainStyledAttributes.getInt(i14, asyncUpdates.ordinal());
            if (iOrdinal2 >= RenderMode.values().length) {
                iOrdinal2 = asyncUpdates.ordinal();
            }
            setAsyncUpdates(AsyncUpdates.values()[iOrdinal2]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_ignoreDisabledSystemAnimations, false));
        int i15 = R.styleable.LottieAnimationView_lottie_useCompositionFrameRate;
        if (typedArrayObtainStyledAttributes.hasValue(i15)) {
            setUseCompositionFrameRate(typedArrayObtainStyledAttributes.getBoolean(i15, false));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public boolean hasMasks() {
        return this.lottieDrawable.h0();
    }

    public boolean hasMatte() {
        return this.lottieDrawable.i0();
    }

    public final jt5 i(String str) {
        return this.cacheComposition ? fs5.n(getContext(), str) : fs5.o(getContext(), str, null);
    }

    @Override
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof LottieDrawable) && ((LottieDrawable) drawable).b0() == RenderMode.SOFTWARE) {
            this.lottieDrawable.invalidateSelf();
        }
    }

    @Override
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (drawable2 == lottieDrawable) {
            super.invalidateDrawable(lottieDrawable);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public boolean isAnimating() {
        return this.lottieDrawable.k0();
    }

    public boolean isFeatureFlagEnabled(LottieFeatureFlag lottieFeatureFlag) {
        return this.lottieDrawable.n0(lottieFeatureFlag);
    }

    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.lottieDrawable.n0(LottieFeatureFlag.MergePathsApi19);
    }

    public final jt5 j(int i) {
        return this.cacheComposition ? fs5.y(getContext(), i) : fs5.z(getContext(), i, null);
    }

    public final void l() {
        boolean zIsAnimating = isAnimating();
        setImageDrawable(null);
        setImageDrawable(this.lottieDrawable);
        if (zIsAnimating) {
            this.lottieDrawable.P0();
        }
    }

    @Deprecated
    public void loop(boolean z) {
        this.lottieDrawable.t1(z ? -1 : 0);
    }

    public final void m(float f, boolean z) {
        if (z) {
            this.userActionsTaken.add(UserActionTaken.SET_PROGRESS);
        }
        this.lottieDrawable.r1(f);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.autoPlay) {
            return;
        }
        this.lottieDrawable.H0();
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.animationName = savedState.animationName;
        Set<UserActionTaken> set = this.userActionsTaken;
        UserActionTaken userActionTaken = UserActionTaken.SET_ANIMATION;
        if (!set.contains(userActionTaken) && !TextUtils.isEmpty(this.animationName)) {
            setAnimation(this.animationName);
        }
        this.animationResId = savedState.animationResId;
        if (!this.userActionsTaken.contains(userActionTaken) && (i = this.animationResId) != 0) {
            setAnimation(i);
        }
        if (!this.userActionsTaken.contains(UserActionTaken.SET_PROGRESS)) {
            m(savedState.progress, false);
        }
        if (!this.userActionsTaken.contains(UserActionTaken.PLAY_OPTION) && savedState.isAnimating) {
            playAnimation();
        }
        if (!this.userActionsTaken.contains(UserActionTaken.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(savedState.imageAssetsFolder);
        }
        if (!this.userActionsTaken.contains(UserActionTaken.SET_REPEAT_MODE)) {
            setRepeatMode(savedState.repeatMode);
        }
        if (this.userActionsTaken.contains(UserActionTaken.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(savedState.repeatCount);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.animationName = this.animationName;
        savedState.animationResId = this.animationResId;
        savedState.progress = this.lottieDrawable.a0();
        savedState.isAnimating = this.lottieDrawable.l0();
        savedState.imageAssetsFolder = this.lottieDrawable.T();
        savedState.repeatMode = this.lottieDrawable.d0();
        savedState.repeatCount = this.lottieDrawable.c0();
        return savedState;
    }

    @MainThread
    public void pauseAnimation() {
        this.autoPlay = false;
        this.lottieDrawable.G0();
    }

    @MainThread
    public void playAnimation() {
        this.userActionsTaken.add(UserActionTaken.PLAY_OPTION);
        this.lottieDrawable.H0();
    }

    public void removeAllAnimatorListeners() {
        this.lottieDrawable.I0();
    }

    public void removeAllLottieOnCompositionLoadedListener() {
        this.lottieOnCompositionLoadedListeners.clear();
    }

    public void removeAllUpdateListeners() {
        this.lottieDrawable.J0();
    }

    public void removeAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.lottieDrawable.K0(animatorListener);
    }

    @RequiresApi(api = 19)
    public void removeAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.lottieDrawable.L0(animatorPauseListener);
    }

    public boolean removeLottieOnCompositionLoadedListener(@NonNull ht5 ht5Var) {
        return this.lottieOnCompositionLoadedListeners.remove(ht5Var);
    }

    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.lottieDrawable.M0(animatorUpdateListener);
    }

    public List<tf5> resolveKeyPath(tf5 tf5Var) {
        return this.lottieDrawable.O0(tf5Var);
    }

    @MainThread
    public void resumeAnimation() {
        this.userActionsTaken.add(UserActionTaken.PLAY_OPTION);
        this.lottieDrawable.P0();
    }

    public void reverseAnimationSpeed() {
        this.lottieDrawable.Q0();
    }

    public void setAnimation(@RawRes int i) {
        this.animationResId = i;
        this.animationName = null;
        setCompositionTask(g(i));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.cacheComposition ? fs5.A(getContext(), str) : fs5.B(getContext(), str, null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.lottieDrawable.S0(z);
    }

    public void setAsyncUpdates(AsyncUpdates asyncUpdates) {
        this.lottieDrawable.T0(asyncUpdates);
    }

    public void setCacheComposition(boolean z) {
        this.cacheComposition = z;
    }

    public void setClipTextToBoundingBox(boolean z) {
        this.lottieDrawable.U0(z);
    }

    public void setClipToCompositionBounds(boolean z) {
        this.lottieDrawable.V0(z);
    }

    public void setComposition(@NonNull ur5 ur5Var) {
        if (yh5.a) {
            Log.v(TAG, "Set Composition \n" + ur5Var);
        }
        this.lottieDrawable.setCallback(this);
        this.ignoreUnschedule = true;
        boolean zW0 = this.lottieDrawable.W0(ur5Var);
        if (this.autoPlay) {
            this.lottieDrawable.H0();
        }
        this.ignoreUnschedule = false;
        if (getDrawable() != this.lottieDrawable || zW0) {
            if (!zW0) {
                l();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator<ht5> it = this.lottieOnCompositionLoadedListeners.iterator();
            while (it.hasNext()) {
                it.next().a(ur5Var);
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.lottieDrawable.X0(str);
    }

    public void setFailureListener(@Nullable dt5 dt5Var) {
        this.failureListener = dt5Var;
    }

    public void setFallbackResource(@DrawableRes int i) {
        this.fallbackResource = i;
    }

    public void setFontAssetDelegate(r24 r24Var) {
        this.lottieDrawable.Y0(r24Var);
    }

    public void setFontMap(@Nullable Map<String, Typeface> map) {
        this.lottieDrawable.Z0(map);
    }

    public void setFrame(int i) {
        this.lottieDrawable.a1(i);
    }

    @Deprecated
    public void setIgnoreDisabledSystemAnimations(boolean z) {
        this.lottieDrawable.b1(z);
    }

    public void setImageAssetDelegate(tx4 tx4Var) {
        this.lottieDrawable.c1(tx4Var);
    }

    public void setImageAssetsFolder(String str) {
        this.lottieDrawable.d1(str);
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        this.animationResId = 0;
        this.animationName = null;
        d();
        super.setImageBitmap(bitmap);
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        this.animationResId = 0;
        this.animationName = null;
        d();
        super.setImageDrawable(drawable);
    }

    @Override
    public void setImageResource(int i) {
        this.animationResId = 0;
        this.animationName = null;
        d();
        super.setImageResource(i);
    }

    public void setMaintainOriginalImageBounds(boolean z) {
        this.lottieDrawable.e1(z);
    }

    public void setMaxFrame(int i) {
        this.lottieDrawable.f1(i);
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        this.lottieDrawable.h1(f);
    }

    public void setMinAndMaxFrame(String str) {
        this.lottieDrawable.j1(str);
    }

    public void setMinAndMaxProgress(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f2) {
        this.lottieDrawable.l1(f, f2);
    }

    public void setMinFrame(int i) {
        this.lottieDrawable.m1(i);
    }

    public void setMinProgress(float f) {
        this.lottieDrawable.o1(f);
    }

    public void setOutlineMasksAndMattes(boolean z) {
        this.lottieDrawable.p1(z);
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        this.lottieDrawable.q1(z);
    }

    public void setProgress(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        m(f, true);
    }

    public void setRenderMode(RenderMode renderMode) {
        this.lottieDrawable.s1(renderMode);
    }

    public void setRepeatCount(int i) {
        this.userActionsTaken.add(UserActionTaken.SET_REPEAT_COUNT);
        this.lottieDrawable.t1(i);
    }

    public void setRepeatMode(int i) {
        this.userActionsTaken.add(UserActionTaken.SET_REPEAT_MODE);
        this.lottieDrawable.u1(i);
    }

    public void setSafeMode(boolean z) {
        this.lottieDrawable.v1(z);
    }

    public void setSpeed(float f) {
        this.lottieDrawable.w1(f);
    }

    public void setTextDelegate(bha bhaVar) {
        this.lottieDrawable.x1(bhaVar);
    }

    public void setUseCompositionFrameRate(boolean z) {
        this.lottieDrawable.y1(z);
    }

    @Override
    public void unscheduleDrawable(Drawable drawable) {
        LottieDrawable lottieDrawable;
        if (!this.ignoreUnschedule && drawable == (lottieDrawable = this.lottieDrawable) && lottieDrawable.k0()) {
            pauseAnimation();
        } else if (!this.ignoreUnschedule && (drawable instanceof LottieDrawable)) {
            LottieDrawable lottieDrawable2 = (LottieDrawable) drawable;
            if (lottieDrawable2.k0()) {
                lottieDrawable2.G0();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        return this.lottieDrawable.A1(str, bitmap);
    }

    public <T> void addValueCallback(tf5 tf5Var, T t, gm9 gm9Var) {
        this.lottieDrawable.v(tf5Var, t, new a(gm9Var));
    }

    public void setAnimationFromJson(String str, @Nullable String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setMaxFrame(String str) {
        this.lottieDrawable.g1(str);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z) {
        this.lottieDrawable.k1(str, str2, z);
    }

    public void setMinFrame(String str) {
        this.lottieDrawable.n1(str);
    }

    public void setMinAndMaxFrame(int i, int i2) {
        this.lottieDrawable.i1(i, i2);
    }

    public void setAnimation(String str) {
        this.animationName = str;
        this.animationResId = 0;
        setCompositionTask(f(str));
    }

    public void setAnimationFromUrl(String str, @Nullable String str2) {
        setCompositionTask(fs5.B(getContext(), str, str2));
    }

    public void setAnimation(InputStream inputStream, @Nullable String str) {
        setCompositionTask(fs5.p(inputStream, str));
    }

    public void setAnimation(ZipInputStream zipInputStream, @Nullable String str) {
        setCompositionTask(fs5.D(zipInputStream, str));
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.loadedListener = new c(this);
        this.wrappedFailureListener = new b(this);
        this.fallbackResource = 0;
        this.lottieDrawable = new LottieDrawable();
        this.ignoreUnschedule = false;
        this.autoPlay = false;
        this.cacheComposition = true;
        this.userActionsTaken = new HashSet();
        this.lottieOnCompositionLoadedListeners = new HashSet();
        h(attributeSet, R.attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.loadedListener = new c(this);
        this.wrappedFailureListener = new b(this);
        this.fallbackResource = 0;
        this.lottieDrawable = new LottieDrawable();
        this.ignoreUnschedule = false;
        this.autoPlay = false;
        this.cacheComposition = true;
        this.userActionsTaken = new HashSet();
        this.lottieOnCompositionLoadedListeners = new HashSet();
        h(attributeSet, i);
    }
}
