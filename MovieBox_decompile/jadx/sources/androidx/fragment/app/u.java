package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import androidx.fragment.R$id;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.y0;
import com.cloud.tmc.kernel.constants.TmcConstants;

class u {

    private final k f9152a;

    private final v f9153b;

    private final Fragment f9154c;

    private boolean f9155d = false;

    private int f9156e = -1;

    static class b {

        static final int[] f9159a;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f9159a = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9159a[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9159a[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9159a[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    u(k kVar, v vVar, Fragment fragment) {
        this.f9152a = kVar;
        this.f9153b = vVar;
        this.f9154c = fragment;
    }

    private boolean l(View view) {
        if (view == this.f9154c.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f9154c.mView) {
                return true;
            }
        }
        return false;
    }

    private Bundle q() {
        Bundle bundle = new Bundle();
        this.f9154c.performSaveInstanceState(bundle);
        this.f9152a.j(this.f9154c, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.f9154c.mView != null) {
            t();
        }
        if (this.f9154c.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", this.f9154c.mSavedViewState);
        }
        if (this.f9154c.mSavedViewRegistryState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", this.f9154c.mSavedViewRegistryState);
        }
        if (!this.f9154c.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", this.f9154c.mUserVisibleHint);
        }
        return bundle;
    }

    void a() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto ACTIVITY_CREATED: ");
            sb2.append(this.f9154c);
        }
        Fragment fragment = this.f9154c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        k kVar = this.f9152a;
        Fragment fragment2 = this.f9154c;
        kVar.a(fragment2, fragment2.mSavedFragmentState, false);
    }

    void b() {
        int iJ = this.f9153b.j(this.f9154c);
        Fragment fragment = this.f9154c;
        fragment.mContainer.addView(fragment.mView, iJ);
    }

    void c() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto ATTACHED: ");
            sb2.append(this.f9154c);
        }
        Fragment fragment = this.f9154c;
        Fragment fragment2 = fragment.mTarget;
        u uVarN = null;
        if (fragment2 != null) {
            u uVarN2 = this.f9153b.n(fragment2.mWho);
            if (uVarN2 == null) {
                throw new IllegalStateException("Fragment " + this.f9154c + " declared target fragment " + this.f9154c.mTarget + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.f9154c;
            fragment3.mTargetWho = fragment3.mTarget.mWho;
            fragment3.mTarget = null;
            uVarN = uVarN2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (uVarN = this.f9153b.n(str)) == null) {
                throw new IllegalStateException("Fragment " + this.f9154c + " declared target fragment " + this.f9154c.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (uVarN != null) {
            uVarN.m();
        }
        Fragment fragment4 = this.f9154c;
        fragment4.mHost = fragment4.mFragmentManager.z0();
        Fragment fragment5 = this.f9154c;
        fragment5.mParentFragment = fragment5.mFragmentManager.C0();
        this.f9152a.g(this.f9154c, false);
        this.f9154c.performAttach();
        this.f9152a.b(this.f9154c, false);
    }

    int d() {
        Fragment fragment = this.f9154c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int iMin = this.f9156e;
        int i10 = b.f9159a[fragment.mMaxState.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                iMin = Math.min(iMin, 5);
            } else if (i10 != 3) {
                iMin = i10 != 4 ? Math.min(iMin, -1) : Math.min(iMin, 0);
            } else {
                iMin = Math.min(iMin, 1);
            }
        }
        Fragment fragment2 = this.f9154c;
        if (fragment2.mFromLayout) {
            if (fragment2.mInLayout) {
                iMin = Math.max(this.f9156e, 2);
                View view = this.f9154c.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f9156e < 4 ? Math.min(iMin, fragment2.mState) : Math.min(iMin, 1);
            }
        }
        if (!this.f9154c.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        Fragment fragment3 = this.f9154c;
        ViewGroup viewGroup = fragment3.mContainer;
        SpecialEffectsController.Operation.LifecycleImpact lifecycleImpactL = viewGroup != null ? SpecialEffectsController.n(viewGroup, fragment3.getParentFragmentManager()).l(this) : null;
        if (lifecycleImpactL == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (lifecycleImpactL == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else {
            Fragment fragment4 = this.f9154c;
            if (fragment4.mRemoving) {
                iMin = fragment4.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
            }
        }
        Fragment fragment5 = this.f9154c;
        if (fragment5.mDeferStart && fragment5.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + this.f9154c);
        }
        return iMin;
    }

    void e() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto CREATED: ");
            sb2.append(this.f9154c);
        }
        Fragment fragment = this.f9154c;
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.f9154c.mState = 1;
            return;
        }
        this.f9152a.h(fragment, fragment.mSavedFragmentState, false);
        Fragment fragment2 = this.f9154c;
        fragment2.performCreate(fragment2.mSavedFragmentState);
        k kVar = this.f9152a;
        Fragment fragment3 = this.f9154c;
        kVar.c(fragment3, fragment3.mSavedFragmentState, false);
    }

    void f() {
        String resourceName;
        if (this.f9154c.mFromLayout) {
            return;
        }
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto CREATE_VIEW: ");
            sb2.append(this.f9154c);
        }
        Fragment fragment = this.f9154c;
        LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        Fragment fragment2 = this.f9154c;
        ViewGroup viewGroup = fragment2.mContainer;
        if (viewGroup == null) {
            int i10 = fragment2.mContainerId;
            if (i10 == 0) {
                viewGroup = null;
            } else {
                if (i10 == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f9154c + " for a container view with no id");
                }
                viewGroup = (ViewGroup) fragment2.mFragmentManager.t0().c(this.f9154c.mContainerId);
                if (viewGroup == null) {
                    Fragment fragment3 = this.f9154c;
                    if (!fragment3.mRestored) {
                        try {
                            resourceName = fragment3.getResources().getResourceName(this.f9154c.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = TmcConstants.ROUTE_UNKNOWN;
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f9154c.mContainerId) + " (" + resourceName + ") for fragment " + this.f9154c);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    FragmentStrictMode.n(this.f9154c, viewGroup);
                }
            }
        }
        Fragment fragment4 = this.f9154c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.f9154c.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f9154c;
            fragment5.mView.setTag(R$id.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                b();
            }
            Fragment fragment6 = this.f9154c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            if (ViewCompat.isAttachedToWindow(this.f9154c.mView)) {
                ViewCompat.requestApplyInsets(this.f9154c.mView);
            } else {
                View view2 = this.f9154c.mView;
                view2.addOnAttachStateChangeListener(new a(view2));
            }
            this.f9154c.performViewCreated();
            k kVar = this.f9152a;
            Fragment fragment7 = this.f9154c;
            kVar.m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.f9154c.mView.getVisibility();
            this.f9154c.setPostOnViewCreatedAlpha(this.f9154c.mView.getAlpha());
            Fragment fragment8 = this.f9154c;
            if (fragment8.mContainer != null && visibility == 0) {
                View viewFindFocus = fragment8.mView.findFocus();
                if (viewFindFocus != null) {
                    this.f9154c.setFocusedView(viewFindFocus);
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + this.f9154c);
                    }
                }
                this.f9154c.mView.setAlpha(0.0f);
            }
        }
        this.f9154c.mState = 2;
    }

    void g() {
        Fragment fragmentF;
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom CREATED: ");
            sb2.append(this.f9154c);
        }
        Fragment fragment = this.f9154c;
        boolean zIsChangingConfigurations = true;
        boolean z10 = fragment.mRemoving && !fragment.isInBackStack();
        if (z10) {
            Fragment fragment2 = this.f9154c;
            if (!fragment2.mBeingSaved) {
                this.f9153b.B(fragment2.mWho, null);
            }
        }
        if (!z10 && !this.f9153b.p().n(this.f9154c)) {
            String str = this.f9154c.mTargetWho;
            if (str != null && (fragmentF = this.f9153b.f(str)) != null && fragmentF.mRetainInstance) {
                this.f9154c.mTarget = fragmentF;
            }
            this.f9154c.mState = 0;
            return;
        }
        i iVar = this.f9154c.mHost;
        if (iVar instanceof y0) {
            zIsChangingConfigurations = this.f9153b.p().k();
        } else if (iVar.f() instanceof Activity) {
            zIsChangingConfigurations = true ^ ((Activity) iVar.f()).isChangingConfigurations();
        }
        if ((z10 && !this.f9154c.mBeingSaved) || zIsChangingConfigurations) {
            this.f9153b.p().c(this.f9154c);
        }
        this.f9154c.performDestroy();
        this.f9152a.d(this.f9154c, false);
        for (u uVar : this.f9153b.k()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                if (this.f9154c.mWho.equals(fragmentK.mTargetWho)) {
                    fragmentK.mTarget = this.f9154c;
                    fragmentK.mTargetWho = null;
                }
            }
        }
        Fragment fragment3 = this.f9154c;
        String str2 = fragment3.mTargetWho;
        if (str2 != null) {
            fragment3.mTarget = this.f9153b.f(str2);
        }
        this.f9153b.s(this);
    }

    void h() {
        View view;
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom CREATE_VIEW: ");
            sb2.append(this.f9154c);
        }
        Fragment fragment = this.f9154c;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f9154c.performDestroyView();
        this.f9152a.n(this.f9154c, false);
        Fragment fragment2 = this.f9154c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.q(null);
        this.f9154c.mInLayout = false;
    }

    void i() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom ATTACHED: ");
            sb2.append(this.f9154c);
        }
        this.f9154c.performDetach();
        this.f9152a.e(this.f9154c, false);
        Fragment fragment = this.f9154c;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if ((!fragment.mRemoving || fragment.isInBackStack()) && !this.f9153b.p().n(this.f9154c)) {
            return;
        }
        if (FragmentManager.M0(3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("initState called for fragment: ");
            sb3.append(this.f9154c);
        }
        this.f9154c.initState();
    }

    void j() {
        Fragment fragment = this.f9154c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.M0(3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("moveto CREATE_VIEW: ");
                sb2.append(this.f9154c);
            }
            Fragment fragment2 = this.f9154c;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.f9154c.mSavedFragmentState);
            View view = this.f9154c.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f9154c;
                fragment3.mView.setTag(R$id.fragment_container_view_tag, fragment3);
                Fragment fragment4 = this.f9154c;
                if (fragment4.mHidden) {
                    fragment4.mView.setVisibility(8);
                }
                this.f9154c.performViewCreated();
                k kVar = this.f9152a;
                Fragment fragment5 = this.f9154c;
                kVar.m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
                this.f9154c.mState = 2;
            }
        }
    }

    Fragment k() {
        return this.f9154c;
    }

    void m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f9155d) {
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + k());
                return;
            }
            return;
        }
        try {
            this.f9155d = true;
            boolean z10 = false;
            while (true) {
                int iD = d();
                Fragment fragment = this.f9154c;
                int i10 = fragment.mState;
                if (iD == i10) {
                    if (!z10 && i10 == -1 && fragment.mRemoving && !fragment.isInBackStack() && !this.f9154c.mBeingSaved) {
                        if (FragmentManager.M0(3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Cleaning up state of never attached fragment: ");
                            sb2.append(this.f9154c);
                        }
                        this.f9153b.p().c(this.f9154c);
                        this.f9153b.s(this);
                        if (FragmentManager.M0(3)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("initState called for fragment: ");
                            sb3.append(this.f9154c);
                        }
                        this.f9154c.initState();
                    }
                    Fragment fragment2 = this.f9154c;
                    if (fragment2.mHiddenChanged) {
                        if (fragment2.mView != null && (viewGroup = fragment2.mContainer) != null) {
                            SpecialEffectsController specialEffectsControllerN = SpecialEffectsController.n(viewGroup, fragment2.getParentFragmentManager());
                            if (this.f9154c.mHidden) {
                                specialEffectsControllerN.c(this);
                            } else {
                                specialEffectsControllerN.e(this);
                            }
                        }
                        Fragment fragment3 = this.f9154c;
                        FragmentManager fragmentManager = fragment3.mFragmentManager;
                        if (fragmentManager != null) {
                            fragmentManager.K0(fragment3);
                        }
                        Fragment fragment4 = this.f9154c;
                        fragment4.mHiddenChanged = false;
                        fragment4.onHiddenChanged(fragment4.mHidden);
                        this.f9154c.mChildFragmentManager.K();
                    }
                    return;
                }
                if (iD <= i10) {
                    switch (i10 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            if (fragment.mBeingSaved && this.f9153b.q(fragment.mWho) == null) {
                                s();
                            }
                            g();
                            break;
                        case 1:
                            h();
                            this.f9154c.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (FragmentManager.M0(3)) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("movefrom ACTIVITY_CREATED: ");
                                sb4.append(this.f9154c);
                            }
                            Fragment fragment5 = this.f9154c;
                            if (fragment5.mBeingSaved) {
                                s();
                            } else if (fragment5.mView != null && fragment5.mSavedViewState == null) {
                                t();
                            }
                            Fragment fragment6 = this.f9154c;
                            if (fragment6.mView != null && (viewGroup2 = fragment6.mContainer) != null) {
                                SpecialEffectsController.n(viewGroup2, fragment6.getParentFragmentManager()).d(this);
                            }
                            this.f9154c.mState = 3;
                            break;
                        case 4:
                            w();
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            n();
                            break;
                    }
                } else {
                    switch (i10 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                SpecialEffectsController.n(viewGroup3, fragment.getParentFragmentManager()).b(SpecialEffectsController.Operation.State.from(this.f9154c.mView.getVisibility()), this);
                            }
                            this.f9154c.mState = 4;
                            break;
                        case 5:
                            v();
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            p();
                            break;
                    }
                }
                z10 = true;
            }
        } finally {
            this.f9155d = false;
        }
    }

    void n() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom RESUMED: ");
            sb2.append(this.f9154c);
        }
        this.f9154c.performPause();
        this.f9152a.f(this.f9154c, false);
    }

    void o(ClassLoader classLoader) {
        Bundle bundle = this.f9154c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f9154c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f9154c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f9154c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        Fragment fragment4 = this.f9154c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f9154c;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.f9154c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f9154c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    void p() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto RESUMED: ");
            sb2.append(this.f9154c);
        }
        View focusedView = this.f9154c.getFocusedView();
        if (focusedView != null && l(focusedView)) {
            boolean zRequestFocus = focusedView.requestFocus();
            if (FragmentManager.M0(2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("requestFocus: Restoring focused view ");
                sb3.append(focusedView);
                sb3.append(" ");
                sb3.append(zRequestFocus ? "succeeded" : "failed");
                sb3.append(" on Fragment ");
                sb3.append(this.f9154c);
                sb3.append(" resulting in focused view ");
                sb3.append(this.f9154c.mView.findFocus());
                Log.v("FragmentManager", sb3.toString());
            }
        }
        this.f9154c.setFocusedView(null);
        this.f9154c.performResume();
        this.f9152a.i(this.f9154c, false);
        Fragment fragment = this.f9154c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    Fragment.SavedState r() {
        Bundle bundleQ;
        if (this.f9154c.mState <= -1 || (bundleQ = q()) == null) {
            return null;
        }
        return new Fragment.SavedState(bundleQ);
    }

    void s() {
        FragmentState fragmentState = new FragmentState(this.f9154c);
        Fragment fragment = this.f9154c;
        if (fragment.mState <= -1 || fragmentState.f9067m != null) {
            fragmentState.f9067m = fragment.mSavedFragmentState;
        } else {
            Bundle bundleQ = q();
            fragmentState.f9067m = bundleQ;
            if (this.f9154c.mTargetWho != null) {
                if (bundleQ == null) {
                    fragmentState.f9067m = new Bundle();
                }
                fragmentState.f9067m.putString("android:target_state", this.f9154c.mTargetWho);
                int i10 = this.f9154c.mTargetRequestCode;
                if (i10 != 0) {
                    fragmentState.f9067m.putInt("android:target_req_state", i10);
                }
            }
        }
        this.f9153b.B(this.f9154c.mWho, fragmentState);
    }

    void t() {
        if (this.f9154c.mView == null) {
            return;
        }
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + this.f9154c + " with view " + this.f9154c.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f9154c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f9154c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f9154c.mViewLifecycleOwner.e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f9154c.mSavedViewRegistryState = bundle;
    }

    void u(int i10) {
        this.f9156e = i10;
    }

    void v() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto STARTED: ");
            sb2.append(this.f9154c);
        }
        this.f9154c.performStart();
        this.f9152a.k(this.f9154c, false);
    }

    void w() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom STARTED: ");
            sb2.append(this.f9154c);
        }
        this.f9154c.performStop();
        this.f9152a.l(this.f9154c, false);
    }

    u(k kVar, v vVar, ClassLoader classLoader, h hVar, FragmentState fragmentState) {
        this.f9152a = kVar;
        this.f9153b = vVar;
        Fragment fragmentA = fragmentState.a(hVar, classLoader);
        this.f9154c = fragmentA;
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + fragmentA);
        }
    }

    u(k kVar, v vVar, Fragment fragment, FragmentState fragmentState) {
        this.f9152a = kVar;
        this.f9153b = vVar;
        this.f9154c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = fragmentState.f9067m;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }

    class a implements View.OnAttachStateChangeListener {

        final View f9157a;

        a(View view) {
            this.f9157a = view;
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            this.f9157a.removeOnAttachStateChangeListener(this);
            ViewCompat.requestApplyInsets(this.f9157a);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
        }
    }
}
