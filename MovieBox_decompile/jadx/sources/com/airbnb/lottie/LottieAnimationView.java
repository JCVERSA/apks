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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
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

    private static final String f17025q = "LottieAnimationView";

    private static final m0 f17026r = new m0() {
        @Override
        public final void onResult(Object obj) {
            LottieAnimationView.n((Throwable) obj);
        }
    };

    private final m0 f17027d;

    private final m0 f17028e;

    private m0 f17029f;

    private int f17030g;

    private final LottieDrawable f17031h;

    private String f17032i;

    private int f17033j;

    private boolean f17034k;

    private boolean f17035l;

    private boolean f17036m;

    private final Set f17037n;

    private final Set f17038o;

    private LottieTask f17039p;

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        String f17040a;

        int f17041b;

        float f17042c;

        boolean f17043d;

        String f17044e;

        int f17045f;

        int f17046g;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f17040a);
            parcel.writeFloat(this.f17042c);
            parcel.writeInt(this.f17043d ? 1 : 0);
            parcel.writeString(this.f17044e);
            parcel.writeInt(this.f17045f);
            parcel.writeInt(this.f17046g);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f17040a = parcel.readString();
            this.f17042c = parcel.readFloat();
            this.f17043d = parcel.readInt() == 1;
            this.f17044e = parcel.readString();
            this.f17045f = parcel.readInt();
            this.f17046g = parcel.readInt();
        }
    }

    private enum UserActionTaken {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    class a extends y4.c {
        a(y4.e eVar) {
        }

        @Override
        public Object a(y4.b bVar) {
            throw null;
        }
    }

    private static class b implements m0 {

        private final WeakReference f17048a;

        public b(LottieAnimationView lottieAnimationView) {
            this.f17048a = new WeakReference(lottieAnimationView);
        }

        @Override
        public void onResult(Throwable th2) {
            LottieAnimationView lottieAnimationView = (LottieAnimationView) this.f17048a.get();
            if (lottieAnimationView == null) {
                return;
            }
            if (lottieAnimationView.f17030g != 0) {
                lottieAnimationView.setImageResource(lottieAnimationView.f17030g);
            }
            (lottieAnimationView.f17029f == null ? LottieAnimationView.f17026r : lottieAnimationView.f17029f).onResult(th2);
        }
    }

    private static class c implements m0 {

        private final WeakReference f17049a;

        public c(LottieAnimationView lottieAnimationView) {
            this.f17049a = new WeakReference(lottieAnimationView);
        }

        @Override
        public void onResult(h hVar) {
            LottieAnimationView lottieAnimationView = (LottieAnimationView) this.f17049a.get();
            if (lottieAnimationView == null) {
                return;
            }
            lottieAnimationView.setComposition(hVar);
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.f17027d = new c(this);
        this.f17028e = new b(this);
        this.f17030g = 0;
        this.f17031h = new LottieDrawable();
        this.f17034k = false;
        this.f17035l = false;
        this.f17036m = true;
        this.f17037n = new HashSet();
        this.f17038o = new HashSet();
        k(null, R$attr.lottieAnimationViewStyle);
    }

    private void g() {
        LottieTask lottieTask = this.f17039p;
        if (lottieTask != null) {
            lottieTask.k(this.f17027d);
            this.f17039p.j(this.f17028e);
        }
    }

    private void h() {
        this.f17031h.z();
    }

    private LottieTask i(final String str) {
        if (isInEditMode()) {
            return new LottieTask(new Callable() {
                @Override
                public final Object call() {
                    return this.f17105a.l(str);
                }
            }, true);
        }
        return this.f17036m ? r.l(getContext(), str) : r.m(getContext(), str, null);
    }

    private LottieTask j(final int i10) {
        if (isInEditMode()) {
            return new LottieTask(new Callable() {
                @Override
                public final Object call() {
                    return this.f17110a.m(i10);
                }
            }, true);
        }
        return this.f17036m ? r.u(getContext(), i10) : r.v(getContext(), i10, null);
    }

    private void k(AttributeSet attributeSet, int i10) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.LottieAnimationView, i10, 0);
        this.f17036m = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_cacheComposition, true);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_rawRes);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_fileName);
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_url);
        if (zHasValue && zHasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.LottieAnimationView_lottie_rawRes, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_fileName);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_url)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(R$styleable.LottieAnimationView_lottie_fallbackRes, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.f17035l = true;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_loop, false)) {
            this.f17031h.t1(-1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_repeatMode)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(R$styleable.LottieAnimationView_lottie_repeatMode, 1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_repeatCount)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(R$styleable.LottieAnimationView_lottie_repeatCount, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_speed)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_speed, 1.0f));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_clipToCompositionBounds)) {
            setClipToCompositionBounds(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_clipToCompositionBounds, true));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_clipTextToBoundingBox)) {
            setClipTextToBoundingBox(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_clipTextToBoundingBox, false));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_defaultFontFileExtension)) {
            setDefaultFontFileExtension(typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_defaultFontFileExtension));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_imageAssetsFolder));
        p(typedArrayObtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_progress, 0.0f), typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_progress));
        enableMergePathsForKitKatAndAbove(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_colorFilter)) {
            addValueCallback(new r4.d("**"), p0.K, new y4.c(new s0(g.a.a(getContext(), typedArrayObtainStyledAttributes.getResourceId(R$styleable.LottieAnimationView_lottie_colorFilter, -1)).getDefaultColor())));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_renderMode)) {
            int i11 = R$styleable.LottieAnimationView_lottie_renderMode;
            RenderMode renderMode = RenderMode.AUTOMATIC;
            int iOrdinal = typedArrayObtainStyledAttributes.getInt(i11, renderMode.ordinal());
            if (iOrdinal >= RenderMode.values().length) {
                iOrdinal = renderMode.ordinal();
            }
            setRenderMode(RenderMode.values()[iOrdinal]);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_asyncUpdates)) {
            int i12 = R$styleable.LottieAnimationView_lottie_asyncUpdates;
            AsyncUpdates asyncUpdates = AsyncUpdates.AUTOMATIC;
            int iOrdinal2 = typedArrayObtainStyledAttributes.getInt(i12, asyncUpdates.ordinal());
            if (iOrdinal2 >= RenderMode.values().length) {
                iOrdinal2 = asyncUpdates.ordinal();
            }
            setAsyncUpdates(AsyncUpdates.values()[iOrdinal2]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_ignoreDisabledSystemAnimations, false));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_useCompositionFrameRate)) {
            setUseCompositionFrameRate(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_useCompositionFrameRate, false));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f17031h.x1(Boolean.valueOf(x4.l.f(getContext()) != 0.0f));
    }

    public q0 l(String str) {
        return this.f17036m ? r.n(getContext(), str) : r.o(getContext(), str, null);
    }

    public q0 m(int i10) {
        return this.f17036m ? r.w(getContext(), i10) : r.x(getContext(), i10, null);
    }

    public static void n(Throwable th2) {
        if (!x4.l.k(th2)) {
            throw new IllegalStateException("Unable to parse composition", th2);
        }
        x4.f.d("Unable to load composition.", th2);
    }

    private void o() {
        boolean zIsAnimating = isAnimating();
        setImageDrawable(null);
        setImageDrawable(this.f17031h);
        if (zIsAnimating) {
            this.f17031h.P0();
        }
    }

    private void p(float f10, boolean z10) {
        if (z10) {
            this.f17037n.add(UserActionTaken.SET_PROGRESS);
        }
        this.f17031h.r1(f10);
    }

    private void setCompositionTask(LottieTask lottieTask) {
        q0 q0VarE = lottieTask.e();
        LottieDrawable lottieDrawable = this.f17031h;
        if (q0VarE != null && lottieDrawable == getDrawable() && lottieDrawable.O() == q0VarE.b()) {
            return;
        }
        this.f17037n.add(UserActionTaken.SET_ANIMATION);
        h();
        g();
        this.f17039p = lottieTask.d(this.f17027d).c(this.f17028e);
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.f17031h.s(animatorListener);
    }

    public void addAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f17031h.t(animatorPauseListener);
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f17031h.u(animatorUpdateListener);
    }

    public boolean addLottieOnCompositionLoadedListener(@NonNull o0 o0Var) {
        h composition = getComposition();
        if (composition != null) {
            o0Var.a(composition);
        }
        return this.f17038o.add(o0Var);
    }

    public <T> void addValueCallback(r4.d dVar, T t10, y4.c cVar) {
        this.f17031h.v(dVar, t10, cVar);
    }

    public void cancelAnimation() {
        this.f17035l = false;
        this.f17037n.add(UserActionTaken.PLAY_OPTION);
        this.f17031h.y();
    }

    public <T> void clearValueCallback(r4.d dVar, T t10) {
        this.f17031h.v(dVar, t10, null);
    }

    @Deprecated
    public void disableExtraScaleModeInFitXY() {
        this.f17031h.D();
    }

    public void enableFeatureFlag(LottieFeatureFlag lottieFeatureFlag, boolean z10) {
        this.f17031h.F(lottieFeatureFlag, z10);
    }

    public void enableMergePathsForKitKatAndAbove(boolean z10) {
        this.f17031h.F(LottieFeatureFlag.MergePathsApi19, z10);
    }

    public AsyncUpdates getAsyncUpdates() {
        return this.f17031h.J();
    }

    public boolean getAsyncUpdatesEnabled() {
        return this.f17031h.K();
    }

    public boolean getClipTextToBoundingBox() {
        return this.f17031h.M();
    }

    public boolean getClipToCompositionBounds() {
        return this.f17031h.N();
    }

    @Nullable
    public h getComposition() {
        Drawable drawable = getDrawable();
        LottieDrawable lottieDrawable = this.f17031h;
        if (drawable == lottieDrawable) {
            return lottieDrawable.O();
        }
        return null;
    }

    public long getDuration() {
        h composition = getComposition();
        if (composition != null) {
            return (long) composition.d();
        }
        return 0L;
    }

    public int getFrame() {
        return this.f17031h.R();
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.f17031h.T();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.f17031h.V();
    }

    public float getMaxFrame() {
        return this.f17031h.X();
    }

    public float getMinFrame() {
        return this.f17031h.Y();
    }

    @Nullable
    public PerformanceTracker getPerformanceTracker() {
        return this.f17031h.Z();
    }

    public float getProgress() {
        return this.f17031h.a0();
    }

    public RenderMode getRenderMode() {
        return this.f17031h.b0();
    }

    public int getRepeatCount() {
        return this.f17031h.c0();
    }

    public int getRepeatMode() {
        return this.f17031h.d0();
    }

    public float getSpeed() {
        return this.f17031h.e0();
    }

    public boolean hasMasks() {
        return this.f17031h.h0();
    }

    public boolean hasMatte() {
        return this.f17031h.i0();
    }

    @Override
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof LottieDrawable) && ((LottieDrawable) drawable).b0() == RenderMode.SOFTWARE) {
            this.f17031h.invalidateSelf();
        }
    }

    @Override
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        LottieDrawable lottieDrawable = this.f17031h;
        if (drawable2 == lottieDrawable) {
            super.invalidateDrawable(lottieDrawable);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public boolean isAnimating() {
        return this.f17031h.k0();
    }

    public boolean isFeatureFlagEnabled(LottieFeatureFlag lottieFeatureFlag) {
        return this.f17031h.n0(lottieFeatureFlag);
    }

    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.f17031h.n0(LottieFeatureFlag.MergePathsApi19);
    }

    @Deprecated
    public void loop(boolean z10) {
        this.f17031h.t1(z10 ? -1 : 0);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.f17035l) {
            return;
        }
        this.f17031h.H0();
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        int i10;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f17032i = savedState.f17040a;
        Set set = this.f17037n;
        UserActionTaken userActionTaken = UserActionTaken.SET_ANIMATION;
        if (!set.contains(userActionTaken) && !TextUtils.isEmpty(this.f17032i)) {
            setAnimation(this.f17032i);
        }
        this.f17033j = savedState.f17041b;
        if (!this.f17037n.contains(userActionTaken) && (i10 = this.f17033j) != 0) {
            setAnimation(i10);
        }
        if (!this.f17037n.contains(UserActionTaken.SET_PROGRESS)) {
            p(savedState.f17042c, false);
        }
        if (!this.f17037n.contains(UserActionTaken.PLAY_OPTION) && savedState.f17043d) {
            playAnimation();
        }
        if (!this.f17037n.contains(UserActionTaken.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(savedState.f17044e);
        }
        if (!this.f17037n.contains(UserActionTaken.SET_REPEAT_MODE)) {
            setRepeatMode(savedState.f17045f);
        }
        if (this.f17037n.contains(UserActionTaken.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(savedState.f17046g);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f17040a = this.f17032i;
        savedState.f17041b = this.f17033j;
        savedState.f17042c = this.f17031h.a0();
        savedState.f17043d = this.f17031h.l0();
        savedState.f17044e = this.f17031h.T();
        savedState.f17045f = this.f17031h.d0();
        savedState.f17046g = this.f17031h.c0();
        return savedState;
    }

    public void pauseAnimation() {
        this.f17035l = false;
        this.f17031h.G0();
    }

    public void playAnimation() {
        this.f17037n.add(UserActionTaken.PLAY_OPTION);
        this.f17031h.H0();
    }

    public void removeAllAnimatorListeners() {
        this.f17031h.I0();
    }

    public void removeAllLottieOnCompositionLoadedListener() {
        this.f17038o.clear();
    }

    public void removeAllUpdateListeners() {
        this.f17031h.J0();
    }

    public void removeAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.f17031h.K0(animatorListener);
    }

    public void removeAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f17031h.L0(animatorPauseListener);
    }

    public boolean removeLottieOnCompositionLoadedListener(@NonNull o0 o0Var) {
        return this.f17038o.remove(o0Var);
    }

    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f17031h.M0(animatorUpdateListener);
    }

    public List<r4.d> resolveKeyPath(r4.d dVar) {
        return this.f17031h.O0(dVar);
    }

    public void resumeAnimation() {
        this.f17037n.add(UserActionTaken.PLAY_OPTION);
        this.f17031h.P0();
    }

    public void reverseAnimationSpeed() {
        this.f17031h.Q0();
    }

    public void setAnimation(int i10) {
        this.f17033j = i10;
        this.f17032i = null;
        setCompositionTask(j(i10));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f17036m ? r.y(getContext(), str) : r.z(getContext(), str, null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.f17031h.S0(z10);
    }

    public void setAsyncUpdates(AsyncUpdates asyncUpdates) {
        this.f17031h.T0(asyncUpdates);
    }

    public void setCacheComposition(boolean z10) {
        this.f17036m = z10;
    }

    public void setClipTextToBoundingBox(boolean z10) {
        this.f17031h.U0(z10);
    }

    public void setClipToCompositionBounds(boolean z10) {
        this.f17031h.V0(z10);
    }

    public void setComposition(@NonNull h hVar) {
        if (d.f17093a) {
            Log.v(f17025q, "Set Composition \n" + hVar);
        }
        this.f17031h.setCallback(this);
        this.f17034k = true;
        boolean zW0 = this.f17031h.W0(hVar);
        if (this.f17035l) {
            this.f17031h.H0();
        }
        this.f17034k = false;
        if (getDrawable() != this.f17031h || zW0) {
            if (!zW0) {
                o();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it = this.f17038o.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.f17031h.X0(str);
    }

    public void setFailureListener(@Nullable m0 m0Var) {
        this.f17029f = m0Var;
    }

    public void setFallbackResource(int i10) {
        this.f17030g = i10;
    }

    public void setFontAssetDelegate(com.airbnb.lottie.a aVar) {
        this.f17031h.Y0(aVar);
    }

    public void setFontMap(@Nullable Map<String, Typeface> map) {
        this.f17031h.Z0(map);
    }

    public void setFrame(int i10) {
        this.f17031h.a1(i10);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.f17031h.b1(z10);
    }

    public void setImageAssetDelegate(com.airbnb.lottie.b bVar) {
        this.f17031h.c1(bVar);
    }

    public void setImageAssetsFolder(String str) {
        this.f17031h.d1(str);
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        this.f17033j = 0;
        this.f17032i = null;
        g();
        super.setImageBitmap(bitmap);
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        this.f17033j = 0;
        this.f17032i = null;
        g();
        super.setImageDrawable(drawable);
    }

    @Override
    public void setImageResource(int i10) {
        this.f17033j = 0;
        this.f17032i = null;
        g();
        super.setImageResource(i10);
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.f17031h.e1(z10);
    }

    public void setMaxFrame(int i10) {
        this.f17031h.f1(i10);
    }

    public void setMaxProgress(float f10) {
        this.f17031h.h1(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.f17031h.j1(str);
    }

    public void setMinAndMaxProgress(float f10, float f11) {
        this.f17031h.l1(f10, f11);
    }

    public void setMinFrame(int i10) {
        this.f17031h.m1(i10);
    }

    public void setMinProgress(float f10) {
        this.f17031h.o1(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.f17031h.p1(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.f17031h.q1(z10);
    }

    public void setProgress(float f10) {
        p(f10, true);
    }

    public void setRenderMode(RenderMode renderMode) {
        this.f17031h.s1(renderMode);
    }

    public void setRepeatCount(int i10) {
        this.f17037n.add(UserActionTaken.SET_REPEAT_COUNT);
        this.f17031h.t1(i10);
    }

    public void setRepeatMode(int i10) {
        this.f17037n.add(UserActionTaken.SET_REPEAT_MODE);
        this.f17031h.u1(i10);
    }

    public void setSafeMode(boolean z10) {
        this.f17031h.v1(z10);
    }

    public void setSpeed(float f10) {
        this.f17031h.w1(f10);
    }

    public void setTextDelegate(t0 t0Var) {
        this.f17031h.y1(t0Var);
    }

    public void setUseCompositionFrameRate(boolean z10) {
        this.f17031h.z1(z10);
    }

    @Override
    public void unscheduleDrawable(Drawable drawable) {
        LottieDrawable lottieDrawable;
        if (!this.f17034k && drawable == (lottieDrawable = this.f17031h) && lottieDrawable.k0()) {
            pauseAnimation();
        } else if (!this.f17034k && (drawable instanceof LottieDrawable)) {
            LottieDrawable lottieDrawable2 = (LottieDrawable) drawable;
            if (lottieDrawable2.k0()) {
                lottieDrawable2.G0();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        return this.f17031h.B1(str, bitmap);
    }

    public <T> void addValueCallback(r4.d dVar, T t10, y4.e eVar) {
        this.f17031h.v(dVar, t10, new a(eVar));
    }

    public void setAnimationFromJson(String str, @Nullable String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setMaxFrame(String str) {
        this.f17031h.g1(str);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z10) {
        this.f17031h.k1(str, str2, z10);
    }

    public void setMinFrame(String str) {
        this.f17031h.n1(str);
    }

    public void setMinAndMaxFrame(int i10, int i11) {
        this.f17031h.i1(i10, i11);
    }

    public void setAnimation(String str) {
        this.f17032i = str;
        this.f17033j = 0;
        setCompositionTask(i(str));
    }

    public void setAnimationFromUrl(String str, @Nullable String str2) {
        setCompositionTask(r.z(getContext(), str, str2));
    }

    public void setAnimation(InputStream inputStream, @Nullable String str) {
        setCompositionTask(r.p(inputStream, str));
    }

    public void setAnimation(ZipInputStream zipInputStream, @Nullable String str) {
        setCompositionTask(r.B(zipInputStream, str));
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17027d = new c(this);
        this.f17028e = new b(this);
        this.f17030g = 0;
        this.f17031h = new LottieDrawable();
        this.f17034k = false;
        this.f17035l = false;
        this.f17036m = true;
        this.f17037n = new HashSet();
        this.f17038o = new HashSet();
        k(attributeSet, R$attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f17027d = new c(this);
        this.f17028e = new b(this);
        this.f17030g = 0;
        this.f17031h = new LottieDrawable();
        this.f17034k = false;
        this.f17035l = false;
        this.f17036m = true;
        this.f17037n = new HashSet();
        this.f17038o = new HashSet();
        k(attributeSet, i10);
    }
}
