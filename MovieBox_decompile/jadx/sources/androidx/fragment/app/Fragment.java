package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.result.ActivityResultRegistry;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.LayoutInflaterCompat;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.ViewTreeViewModelStoreOwner;
import androidx.p009lifecycle.o0;
import androidx.p009lifecycle.q0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.p009lifecycle.u, y0, androidx.p009lifecycle.m, androidx.p010savedstate.e {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    h mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mBeingSaved;
    private boolean mCalled;

    @NonNull
    FragmentManager mChildFragmentManager;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    v0.c mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    FragmentManager mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    androidx.fragment.app.i mHost;
    boolean mInLayout;
    boolean mIsCreated;
    private Boolean mIsPrimaryNavigationFragment;
    LayoutInflater mLayoutInflater;
    androidx.p009lifecycle.w mLifecycleRegistry;
    Lifecycle.State mMaxState;
    boolean mMenuVisible;
    private final AtomicInteger mNextLocalRequestCode;
    private final ArrayList<j> mOnPreAttachedListeners;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    Runnable mPostponedDurationRunnable;

    @Nullable
    public String mPreviousWho;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    private final j mSavedStateAttachListener;
    androidx.p010savedstate.d mSavedStateRegistryController;

    @Nullable
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    int mState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    String mTargetWho;
    boolean mUserVisibleHint;
    View mView;

    @Nullable
    z mViewLifecycleOwner;
    androidx.p009lifecycle.b0 mViewLifecycleOwnerLiveData;

    @NonNull
    String mWho;

    public static class InstantiationException extends RuntimeException {
        public InstantiationException(@NonNull String str, @Nullable Exception exc) {
            super(str, exc);
        }
    }

    class a extends androidx.activity.result.b {

        final AtomicReference f8951a;

        final f.a f8952b;

        a(AtomicReference atomicReference, f.a aVar) {
            this.f8951a = atomicReference;
            this.f8952b = aVar;
        }

        @Override
        public void b(Object obj, androidx.core.app.c cVar) {
            androidx.activity.result.b bVar = (androidx.activity.result.b) this.f8951a.get();
            if (bVar == null) {
                throw new IllegalStateException("Operation cannot be started before fragment is in created state");
            }
            bVar.b(obj, cVar);
        }

        @Override
        public void c() {
            androidx.activity.result.b bVar = (androidx.activity.result.b) this.f8951a.getAndSet(null);
            if (bVar != null) {
                bVar.c();
            }
        }
    }

    class b extends j {
        b() {
            super();
        }

        @Override
        void a() {
            Fragment.this.mSavedStateRegistryController.c();
            o0.c(Fragment.this);
        }
    }

    class c extends androidx.fragment.app.f {
        c() {
        }

        @Override
        public View c(int i10) {
            View view = Fragment.this.mView;
            if (view != null) {
                return view.findViewById(i10);
            }
            throw new IllegalStateException("Fragment " + Fragment.this + " does not have a view");
        }

        @Override
        public boolean d() {
            return Fragment.this.mView != null;
        }
    }

    class d implements androidx.p009lifecycle.r {
        d() {
        }

        @Override
        public void onStateChanged(androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
            View view;
            if (event != Lifecycle.Event.ON_STOP || (view = Fragment.this.mView) == null) {
                return;
            }
            i.a(view);
        }
    }

    class e implements l.a {
        e() {
        }

        @Override
        public ActivityResultRegistry apply(Void r10) {
            Fragment fragment = Fragment.this;
            Object obj = fragment.mHost;
            return obj instanceof androidx.activity.result.d ? ((androidx.activity.result.d) obj).getActivityResultRegistry() : fragment.requireActivity().getActivityResultRegistry();
        }
    }

    class f implements l.a {

        final ActivityResultRegistry f8958a;

        f(ActivityResultRegistry activityResultRegistry) {
            this.f8958a = activityResultRegistry;
        }

        @Override
        public ActivityResultRegistry apply(Void r10) {
            return this.f8958a;
        }
    }

    class g extends j {

        final l.a f8960a;

        final AtomicReference f8961b;

        final f.a f8962c;

        final androidx.activity.result.a f8963d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(l.a aVar, AtomicReference atomicReference, f.a aVar2, androidx.activity.result.a aVar3) {
            super();
            this.f8960a = aVar;
            this.f8961b = atomicReference;
            this.f8962c = aVar2;
            this.f8963d = aVar3;
        }

        @Override
        void a() {
            String strGenerateActivityResultKey = Fragment.this.generateActivityResultKey();
            this.f8961b.set(((ActivityResultRegistry) this.f8960a.apply(null)).l(strGenerateActivityResultKey, Fragment.this, this.f8962c, this.f8963d));
        }
    }

    static class h {

        View f8965a;

        boolean f8966b;

        int f8967c;

        int f8968d;

        int f8969e;

        int f8970f;

        int f8971g;

        ArrayList f8972h;

        ArrayList f8973i;

        Object f8974j = null;

        Object f8975k;

        Object f8976l;

        Object f8977m;

        Object f8978n;

        Object f8979o;

        Boolean f8980p;

        Boolean f8981q;

        androidx.core.app.a0 f8982r;

        androidx.core.app.a0 f8983s;

        float f8984t;

        View f8985u;

        boolean f8986v;

        h() {
            Object obj = Fragment.USE_DEFAULT_TRANSITION;
            this.f8975k = obj;
            this.f8976l = null;
            this.f8977m = obj;
            this.f8978n = null;
            this.f8979o = obj;
            this.f8982r = null;
            this.f8983s = null;
            this.f8984t = 1.0f;
            this.f8985u = null;
        }
    }

    static class i {
        static void a(View view) {
            view.cancelPendingInputEvents();
        }
    }

    private static abstract class j {
        private j() {
        }

        abstract void a();
    }

    public Fragment() {
        this.mState = -1;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new q();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new Runnable() {
            @Override
            public void run() {
                Fragment.this.startPostponedEnterTransition();
            }
        };
        this.mMaxState = Lifecycle.State.RESUMED;
        this.mViewLifecycleOwnerLiveData = new androidx.p009lifecycle.b0();
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mOnPreAttachedListeners = new ArrayList<>();
        this.mSavedStateAttachListener = new b();
        initLifecycle();
    }

    private h ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new h();
        }
        return this.mAnimationInfo;
    }

    private int getMinimumMaxLifecycleState() {
        Lifecycle.State state = this.mMaxState;
        return (state == Lifecycle.State.INITIALIZED || this.mParentFragment == null) ? state.ordinal() : Math.min(state.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new androidx.p009lifecycle.w(this);
        this.mSavedStateRegistryController = androidx.p010savedstate.d.a(this);
        this.mDefaultFactory = null;
        if (this.mOnPreAttachedListeners.contains(this.mSavedStateAttachListener)) {
            return;
        }
        registerOnPreAttachListener(this.mSavedStateAttachListener);
    }

    @NonNull
    @Deprecated
    public static Fragment instantiate(@NonNull Context context, @NonNull String str) {
        return instantiate(context, str, null);
    }

    @NonNull
    private <I, O> androidx.activity.result.b prepareCallInternal(@NonNull f.a aVar, @NonNull l.a aVar2, @NonNull androidx.activity.result.a aVar3) {
        if (this.mState <= 1) {
            AtomicReference atomicReference = new AtomicReference();
            registerOnPreAttachListener(new g(aVar2, atomicReference, aVar, aVar3));
            return new a(atomicReference, aVar);
        }
        throw new IllegalStateException("Fragment " + this + " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate()).");
    }

    private void registerOnPreAttachListener(@NonNull j jVar) {
        if (this.mState >= 0) {
            jVar.a();
        } else {
            this.mOnPreAttachedListeners.add(jVar);
        }
    }

    void callStartTransitionListener(boolean z10) {
        ViewGroup viewGroup;
        FragmentManager fragmentManager;
        h hVar = this.mAnimationInfo;
        if (hVar != null) {
            hVar.f8986v = false;
        }
        if (this.mView == null || (viewGroup = this.mContainer) == null || (fragmentManager = this.mFragmentManager) == null) {
            return;
        }
        final SpecialEffectsController specialEffectsControllerN = SpecialEffectsController.n(viewGroup, fragmentManager);
        specialEffectsControllerN.p();
        if (z10) {
            this.mHost.g().post(new Runnable() {
                @Override
                public void run() {
                    specialEffectsControllerN.g();
                }
            });
        } else {
            specialEffectsControllerN.g();
        }
    }

    @NonNull
    androidx.fragment.app.f createFragmentContainer() {
        return new c();
    }

    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        Fragment targetFragment = getTargetFragment(false);
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(getPopExitAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            androidx.loader.app.a.b(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.Y(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Nullable
    Fragment findFragmentByWho(@NonNull String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.l0(str);
    }

    @NonNull
    String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    @Nullable
    public final FragmentActivity getActivity() {
        androidx.fragment.app.i iVar = this.mHost;
        if (iVar == null) {
            return null;
        }
        return (FragmentActivity) iVar.e();
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        h hVar = this.mAnimationInfo;
        if (hVar == null || (bool = hVar.f8981q) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        h hVar = this.mAnimationInfo;
        if (hVar == null || (bool = hVar.f8980p) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    View getAnimatingAway() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return null;
        }
        return hVar.f8965a;
    }

    @Nullable
    public final Bundle getArguments() {
        return this.mArguments;
    }

    @NonNull
    public final FragmentManager getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    @Nullable
    public Context getContext() {
        androidx.fragment.app.i iVar = this.mHost;
        if (iVar == null) {
            return null;
        }
        return iVar.f();
    }

    @Override
    @NonNull
    public p1.a getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not find Application instance from Context ");
            sb2.append(requireContext().getApplicationContext());
            sb2.append(", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        p1.b bVar = new p1.b();
        if (application != null) {
            bVar.c(v0.a.f9342g, application);
        }
        bVar.c(o0.f9319a, this);
        bVar.c(o0.f9320b, this);
        if (getArguments() != null) {
            bVar.c(o0.f9321c, getArguments());
        }
        return bVar;
    }

    @Override
    @NonNull
    public v0.c getDefaultViewModelProviderFactory() {
        Application application;
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.mDefaultFactory == null) {
            Context applicationContext = requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            if (application == null && FragmentManager.M0(3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Could not find Application instance from Context ");
                sb2.append(requireContext().getApplicationContext());
                sb2.append(", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory");
            }
            this.mDefaultFactory = new q0(application, this, getArguments());
        }
        return this.mDefaultFactory;
    }

    int getEnterAnim() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return 0;
        }
        return hVar.f8967c;
    }

    @Nullable
    public Object getEnterTransition() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return null;
        }
        return hVar.f8974j;
    }

    androidx.core.app.a0 getEnterTransitionCallback() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return null;
        }
        return hVar.f8982r;
    }

    int getExitAnim() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return 0;
        }
        return hVar.f8968d;
    }

    @Nullable
    public Object getExitTransition() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return null;
        }
        return hVar.f8976l;
    }

    androidx.core.app.a0 getExitTransitionCallback() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return null;
        }
        return hVar.f8983s;
    }

    View getFocusedView() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return null;
        }
        return hVar.f8985u;
    }

    @Nullable
    @Deprecated
    public final FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    @Nullable
    public final Object getHost() {
        androidx.fragment.app.i iVar = this.mHost;
        if (iVar == null) {
            return null;
        }
        return iVar.i();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    @NonNull
    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Override
    @NonNull
    public Lifecycle getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @NonNull
    @Deprecated
    public androidx.loader.app.a getLoaderManager() {
        return androidx.loader.app.a.b(this);
    }

    int getNextTransition() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return 0;
        }
        return hVar.f8971g;
    }

    @Nullable
    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    @NonNull
    public final FragmentManager getParentFragmentManager() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    boolean getPopDirection() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return false;
        }
        return hVar.f8966b;
    }

    int getPopEnterAnim() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return 0;
        }
        return hVar.f8969e;
    }

    int getPopExitAnim() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return 0;
        }
        return hVar.f8970f;
    }

    float getPostOnViewCreatedAlpha() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return 1.0f;
        }
        return hVar.f8984t;
    }

    @Nullable
    public Object getReenterTransition() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return null;
        }
        Object obj = hVar.f8977m;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    @NonNull
    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        FragmentStrictMode.h(this);
        return this.mRetainInstance;
    }

    @Nullable
    public Object getReturnTransition() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return null;
        }
        Object obj = hVar.f8975k;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override
    @NonNull
    public final androidx.p010savedstate.c getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b();
    }

    @Nullable
    public Object getSharedElementEnterTransition() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return null;
        }
        return hVar.f8978n;
    }

    @Nullable
    public Object getSharedElementReturnTransition() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return null;
        }
        Object obj = hVar.f8979o;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    @NonNull
    ArrayList<String> getSharedElementSourceNames() {
        ArrayList<String> arrayList;
        h hVar = this.mAnimationInfo;
        return (hVar == null || (arrayList = hVar.f8972h) == null) ? new ArrayList<>() : arrayList;
    }

    @NonNull
    ArrayList<String> getSharedElementTargetNames() {
        ArrayList<String> arrayList;
        h hVar = this.mAnimationInfo;
        return (hVar == null || (arrayList = hVar.f8973i) == null) ? new ArrayList<>() : arrayList;
    }

    @NonNull
    public final String getString(int i10) {
        return getResources().getString(i10);
    }

    @Nullable
    public final String getTag() {
        return this.mTag;
    }

    @Nullable
    @Deprecated
    public final Fragment getTargetFragment() {
        return getTargetFragment(true);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        FragmentStrictMode.i(this);
        return this.mTargetRequestCode;
    }

    @NonNull
    public final CharSequence getText(int i10) {
        return getResources().getText(i10);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    @Nullable
    public View getView() {
        return this.mView;
    }

    @NonNull
    public androidx.p009lifecycle.u getViewLifecycleOwner() {
        z zVar = this.mViewLifecycleOwner;
        if (zVar != null) {
            return zVar;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    @NonNull
    public LiveData getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override
    @NonNull
    public x0 getViewModelStore() {
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (getMinimumMaxLifecycleState() != Lifecycle.State.INITIALIZED.ordinal()) {
            return this.mFragmentManager.H0(this);
        }
        throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    void initState() {
        initLifecycle();
        this.mPreviousWho = this.mWho;
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new q();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        FragmentManager fragmentManager;
        return this.mHidden || ((fragmentManager = this.mFragmentManager) != null && fragmentManager.P0(this.mParentFragment));
    }

    final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        FragmentManager fragmentManager;
        return this.mMenuVisible && ((fragmentManager = this.mFragmentManager) == null || fragmentManager.Q0(this.mParentFragment));
    }

    boolean isPostponed() {
        h hVar = this.mAnimationInfo;
        if (hVar == null) {
            return false;
        }
        return hVar.f8986v;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            return false;
        }
        return fragmentManager.T0();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    void noteStateNotSaved() {
        this.mChildFragmentManager.d1();
    }

    @Deprecated
    public void onActivityCreated(@Nullable Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i10 + " resultCode: " + i11 + " data: " + intent);
        }
    }

    public void onAttach(@NonNull Context context) {
        this.mCalled = true;
        androidx.fragment.app.i iVar = this.mHost;
        Activity activityE = iVar == null ? null : iVar.e();
        if (activityE != null) {
            this.mCalled = false;
            onAttach(activityE);
        }
    }

    @Deprecated
    public void onAttachFragment(@NonNull Fragment fragment) {
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(@NonNull MenuItem menuItem) {
        return false;
    }

    public void onCreate(@Nullable Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        if (this.mChildFragmentManager.S0(1)) {
            return;
        }
        this.mChildFragmentManager.D();
    }

    @Nullable
    public Animation onCreateAnimation(int i10, boolean z10, int i11) {
        return null;
    }

    @Nullable
    public Animator onCreateAnimator(int i10, boolean z10, int i11) {
        return null;
    }

    @Override
    public void onCreateContextMenu(@NonNull ContextMenu contextMenu, @NonNull View view, @Nullable ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Deprecated
    public void onCreateOptionsMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
    }

    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i10 = this.mContentLayoutId;
        if (i10 != 0) {
            return layoutInflater.inflate(i10, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    @Deprecated
    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    @NonNull
    public LayoutInflater onGetLayoutInflater(@Nullable Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z10) {
    }

    public void onInflate(@NonNull Context context, @NonNull AttributeSet attributeSet, @Nullable Bundle bundle) {
        this.mCalled = true;
        androidx.fragment.app.i iVar = this.mHost;
        Activity activityE = iVar == null ? null : iVar.e();
        if (activityE != null) {
            this.mCalled = false;
            onInflate(activityE, attributeSet, bundle);
        }
    }

    @Override
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z10) {
    }

    @Deprecated
    public boolean onOptionsItemSelected(@NonNull MenuItem menuItem) {
        return false;
    }

    @Deprecated
    public void onOptionsMenuClosed(@NonNull Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z10) {
    }

    @Deprecated
    public void onPrepareOptionsMenu(@NonNull Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z10) {
    }

    @Deprecated
    public void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(@NonNull Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
    }

    public void onViewStateRestored(@Nullable Bundle bundle) {
        this.mCalled = true;
    }

    void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.d1();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (this.mCalled) {
            restoreViewState();
            this.mChildFragmentManager.z();
        } else {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
    }

    void performAttach() {
        Iterator<j> it = this.mOnPreAttachedListeners.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.n(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.f());
        if (this.mCalled) {
            this.mFragmentManager.J(this);
            this.mChildFragmentManager.A();
        } else {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onAttach()");
        }
    }

    void performConfigurationChanged(@NonNull Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    boolean performContextItemSelected(@NonNull MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.C(menuItem);
    }

    void performCreate(Bundle bundle) {
        this.mChildFragmentManager.d1();
        this.mState = 1;
        this.mCalled = false;
        this.mLifecycleRegistry.a(new d());
        this.mSavedStateRegistryController.d(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (this.mCalled) {
            this.mLifecycleRegistry.i(Lifecycle.Event.ON_CREATE);
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
    }

    boolean performCreateOptionsMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        boolean z10 = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z10 = true;
        }
        return z10 | this.mChildFragmentManager.E(menu, menuInflater);
    }

    void performCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        this.mChildFragmentManager.d1();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new z(this, getViewModelStore());
        View viewOnCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = viewOnCreateView;
        if (viewOnCreateView == null) {
            if (this.mViewLifecycleOwner.c()) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
        } else {
            this.mViewLifecycleOwner.b();
            ViewTreeLifecycleOwner.b(this.mView, this.mViewLifecycleOwner);
            ViewTreeViewModelStoreOwner.b(this.mView, this.mViewLifecycleOwner);
            ViewTreeSavedStateRegistryOwner.b(this.mView, this.mViewLifecycleOwner);
            this.mViewLifecycleOwnerLiveData.q(this.mViewLifecycleOwner);
        }
    }

    void performDestroy() {
        this.mChildFragmentManager.F();
        this.mLifecycleRegistry.i(Lifecycle.Event.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
    }

    void performDestroyView() {
        this.mChildFragmentManager.G();
        if (this.mView != null && this.mViewLifecycleOwner.getLifecycle().b().isAtLeast(Lifecycle.State.CREATED)) {
            this.mViewLifecycleOwner.a(Lifecycle.Event.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (this.mCalled) {
            androidx.loader.app.a.b(this).d();
            this.mPerformedCreateView = false;
        } else {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
        }
    }

    void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (this.mCalled) {
            if (this.mChildFragmentManager.L0()) {
                return;
            }
            this.mChildFragmentManager.F();
            this.mChildFragmentManager = new q();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDetach()");
    }

    @NonNull
    LayoutInflater performGetLayoutInflater(@Nullable Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
        return layoutInflaterOnGetLayoutInflater;
    }

    void performLowMemory() {
        onLowMemory();
    }

    void performMultiWindowModeChanged(boolean z10) {
        onMultiWindowModeChanged(z10);
    }

    boolean performOptionsItemSelected(@NonNull MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.L(menuItem);
    }

    void performOptionsMenuClosed(@NonNull Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.M(menu);
    }

    void performPause() {
        this.mChildFragmentManager.O();
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(Lifecycle.Event.ON_PAUSE);
        }
        this.mLifecycleRegistry.i(Lifecycle.Event.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
    }

    void performPictureInPictureModeChanged(boolean z10) {
        onPictureInPictureModeChanged(z10);
    }

    boolean performPrepareOptionsMenu(@NonNull Menu menu) {
        boolean z10 = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z10 = true;
        }
        return z10 | this.mChildFragmentManager.Q(menu);
    }

    void performPrimaryNavigationFragmentChanged() {
        boolean zR0 = this.mFragmentManager.R0(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != zR0) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(zR0);
            onPrimaryNavigationFragmentChanged(zR0);
            this.mChildFragmentManager.R();
        }
    }

    void performResume() {
        this.mChildFragmentManager.d1();
        this.mChildFragmentManager.c0(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
        }
        androidx.p009lifecycle.w wVar = this.mLifecycleRegistry;
        Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
        wVar.i(event);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(event);
        }
        this.mChildFragmentManager.S();
    }

    void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.e(bundle);
        Bundle bundleY1 = this.mChildFragmentManager.U0();
        if (bundleY1 != null) {
            bundle.putParcelable("android:support:fragments", bundleY1);
        }
    }

    void performStart() {
        this.mChildFragmentManager.d1();
        this.mChildFragmentManager.c0(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
        }
        androidx.p009lifecycle.w wVar = this.mLifecycleRegistry;
        Lifecycle.Event event = Lifecycle.Event.ON_START;
        wVar.i(event);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(event);
        }
        this.mChildFragmentManager.T();
    }

    void performStop() {
        this.mChildFragmentManager.V();
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(Lifecycle.Event.ON_STOP);
        }
        this.mLifecycleRegistry.i(Lifecycle.Event.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
    }

    void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.W();
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().f8986v = true;
    }

    @NonNull
    public final <I, O> androidx.activity.result.b registerForActivityResult(@NonNull f.a aVar, @NonNull androidx.activity.result.a aVar2) {
        return prepareCallInternal(aVar, new e(), aVar2);
    }

    public void registerForContextMenu(@NonNull View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(@NonNull String[] strArr, int i10) {
        if (this.mHost != null) {
            getParentFragmentManager().Z0(this, strArr, i10);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @NonNull
    public final FragmentActivity requireActivity() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    @NonNull
    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
    }

    @NonNull
    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    @NonNull
    @Deprecated
    public final FragmentManager requireFragmentManager() {
        return getParentFragmentManager();
    }

    @NonNull
    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }

    @NonNull
    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException("Fragment " + this + " is not attached to any Fragment or host");
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    @NonNull
    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    void restoreChildFragmentState(@Nullable Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.mChildFragmentManager.w1(parcelable);
        this.mChildFragmentManager.D();
    }

    final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            this.mViewLifecycleOwner.d(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (this.mCalled) {
            if (this.mView != null) {
                this.mViewLifecycleOwner.a(Lifecycle.Event.ON_CREATE);
            }
        } else {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z10) {
        ensureAnimationInfo().f8981q = Boolean.valueOf(z10);
    }

    public void setAllowReturnTransitionOverlap(boolean z10) {
        ensureAnimationInfo().f8980p = Boolean.valueOf(z10);
    }

    void setAnimations(int i10, int i11, int i12, int i13) {
        if (this.mAnimationInfo == null && i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            return;
        }
        ensureAnimationInfo().f8967c = i10;
        ensureAnimationInfo().f8968d = i11;
        ensureAnimationInfo().f8969e = i12;
        ensureAnimationInfo().f8970f = i13;
    }

    public void setArguments(@Nullable Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(@Nullable androidx.core.app.a0 a0Var) {
        ensureAnimationInfo().f8982r = a0Var;
    }

    public void setEnterTransition(@Nullable Object obj) {
        ensureAnimationInfo().f8974j = obj;
    }

    public void setExitSharedElementCallback(@Nullable androidx.core.app.a0 a0Var) {
        ensureAnimationInfo().f8983s = a0Var;
    }

    public void setExitTransition(@Nullable Object obj) {
        ensureAnimationInfo().f8976l = obj;
    }

    void setFocusedView(View view) {
        ensureAnimationInfo().f8985u = view;
    }

    @Deprecated
    public void setHasOptionsMenu(boolean z10) {
        if (this.mHasMenu != z10) {
            this.mHasMenu = z10;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.o();
        }
    }

    public void setInitialSavedState(@Nullable SavedState savedState) {
        Bundle bundle;
        if (this.mFragmentManager != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (savedState == null || (bundle = savedState.mState) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z10) {
        if (this.mMenuVisible != z10) {
            this.mMenuVisible = z10;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.o();
            }
        }
    }

    void setNextTransition(int i10) {
        if (this.mAnimationInfo == null && i10 == 0) {
            return;
        }
        ensureAnimationInfo();
        this.mAnimationInfo.f8971g = i10;
    }

    void setPopDirection(boolean z10) {
        if (this.mAnimationInfo == null) {
            return;
        }
        ensureAnimationInfo().f8966b = z10;
    }

    void setPostOnViewCreatedAlpha(float f10) {
        ensureAnimationInfo().f8984t = f10;
    }

    public void setReenterTransition(@Nullable Object obj) {
        ensureAnimationInfo().f8977m = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z10) {
        FragmentStrictMode.k(this);
        this.mRetainInstance = z10;
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z10) {
            fragmentManager.l(this);
        } else {
            fragmentManager.s1(this);
        }
    }

    public void setReturnTransition(@Nullable Object obj) {
        ensureAnimationInfo().f8975k = obj;
    }

    public void setSharedElementEnterTransition(@Nullable Object obj) {
        ensureAnimationInfo().f8978n = obj;
    }

    void setSharedElementNames(@Nullable ArrayList<String> arrayList, @Nullable ArrayList<String> arrayList2) {
        ensureAnimationInfo();
        h hVar = this.mAnimationInfo;
        hVar.f8972h = arrayList;
        hVar.f8973i = arrayList2;
    }

    public void setSharedElementReturnTransition(@Nullable Object obj) {
        ensureAnimationInfo().f8979o = obj;
    }

    @Deprecated
    public void setTargetFragment(@Nullable Fragment fragment, int i10) {
        if (fragment != null) {
            FragmentStrictMode.l(this, fragment, i10);
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        FragmentManager fragmentManager2 = fragment != null ? fragment.mFragmentManager : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException("Fragment " + fragment + " must share the same FragmentManager to be set as a target fragment");
        }
        for (Fragment targetFragment = fragment; targetFragment != null; targetFragment = targetFragment.getTargetFragment(false)) {
            if (targetFragment.equals(this)) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = fragment;
        } else {
            this.mTargetWho = fragment.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i10;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z10) {
        FragmentStrictMode.m(this, z10);
        if (!this.mUserVisibleHint && z10 && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            FragmentManager fragmentManager = this.mFragmentManager;
            fragmentManager.f1(fragmentManager.x(this));
        }
        this.mUserVisibleHint = z10;
        this.mDeferStart = this.mState < 5 && !z10;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z10);
        }
    }

    public boolean shouldShowRequestPermissionRationale(@NonNull String str) {
        androidx.fragment.app.i iVar = this.mHost;
        if (iVar != null) {
            return iVar.l(str);
        }
        return false;
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent) {
        startActivity(intent, null);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i10) {
        startActivityForResult(intent, i10, null);
    }

    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, @Nullable Intent intent, int i11, int i12, int i13, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        if (this.mHost == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i10 + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle);
        }
        getParentFragmentManager().b1(this, intentSender, i10, intent, i11, i12, i13, bundle);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !ensureAnimationInfo().f8986v) {
            return;
        }
        if (this.mHost == null) {
            ensureAnimationInfo().f8986v = false;
        } else if (Looper.myLooper() != this.mHost.g().getLooper()) {
            this.mHost.g().postAtFrontOfQueue(new Runnable() {
                @Override
                public void run() {
                    Fragment.this.callStartTransitionListener(false);
                }
            });
        } else {
            callStartTransitionListener(true);
        }
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append(getClass().getSimpleName());
        sb2.append("{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("}");
        sb2.append(" (");
        sb2.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb2.append(" id=0x");
            sb2.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb2.append(" tag=");
            sb2.append(this.mTag);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public void unregisterForContextMenu(@NonNull View view) {
        view.setOnCreateContextMenuListener(null);
    }

    @SuppressLint({"BanParcelableUsage, ParcelClassLoader"})
    public static class SavedState implements Parcelable {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        final Bundle mState;

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

        SavedState(Bundle bundle) {
            this.mState = bundle;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            parcel.writeBundle(this.mState);
        }

        SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            Bundle bundle = parcel.readBundle();
            this.mState = bundle;
            if (classLoader == null || bundle == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }
    }

    @Nullable
    private Fragment getTargetFragment(boolean z10) {
        String str;
        if (z10) {
            FragmentStrictMode.j(this);
        }
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return fragmentManager.h0(str);
    }

    @NonNull
    @Deprecated
    public static Fragment instantiate(@NonNull Context context, @NonNull String str, @Nullable Bundle bundle) {
        try {
            Fragment fragmentNewInstance = androidx.fragment.app.h.loadFragmentClass(context.getClassLoader(), str).getConstructor(null).newInstance(null);
            if (bundle != null) {
                bundle.setClassLoader(fragmentNewInstance.getClass().getClassLoader());
                fragmentNewInstance.setArguments(bundle);
            }
            return fragmentNewInstance;
        } catch (IllegalAccessException e10) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e10);
        } catch (java.lang.InstantiationException e11) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e11);
        } catch (NoSuchMethodException e12) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e12);
        } catch (InvocationTargetException e13) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e13);
        }
    }

    @NonNull
    public final String getString(int i10, @Nullable Object... objArr) {
        return getResources().getString(i10, objArr);
    }

    public final void postponeEnterTransition(long j10, @NonNull TimeUnit timeUnit) {
        ensureAnimationInfo().f8986v = true;
        FragmentManager fragmentManager = this.mFragmentManager;
        Handler handlerG = fragmentManager != null ? fragmentManager.z0().g() : new Handler(Looper.getMainLooper());
        handlerG.removeCallbacks(this.mPostponedDurationRunnable);
        handlerG.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j10));
    }

    @NonNull
    public final <I, O> androidx.activity.result.b registerForActivityResult(@NonNull f.a aVar, @NonNull ActivityResultRegistry activityResultRegistry, @NonNull androidx.activity.result.a aVar2) {
        return prepareCallInternal(aVar, new f(activityResultRegistry), aVar2);
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, @Nullable Bundle bundle) {
        androidx.fragment.app.i iVar = this.mHost;
        if (iVar != null) {
            iVar.m(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i10, @Nullable Bundle bundle) {
        if (this.mHost != null) {
            getParentFragmentManager().a1(this, intent, i10, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @NonNull
    @Deprecated
    public LayoutInflater getLayoutInflater(@Nullable Bundle bundle) {
        androidx.fragment.app.i iVar = this.mHost;
        if (iVar != null) {
            LayoutInflater layoutInflaterJ = iVar.j();
            LayoutInflaterCompat.setFactory2(layoutInflaterJ, this.mChildFragmentManager.A0());
            return layoutInflaterJ;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Deprecated
    public void onAttach(@NonNull Activity activity) {
        this.mCalled = true;
    }

    @Deprecated
    public void onInflate(@NonNull Activity activity, @NonNull AttributeSet attributeSet, @Nullable Bundle bundle) {
        this.mCalled = true;
    }

    private void restoreViewState() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto RESTORE_VIEW_STATE: ");
            sb2.append(this);
        }
        if (this.mView != null) {
            restoreViewState(this.mSavedFragmentState);
        }
        this.mSavedFragmentState = null;
    }

    public Fragment(int i10) {
        this();
        this.mContentLayoutId = i10;
    }
}
