package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class FragmentActivity extends ComponentActivity implements ActivityCompat.e, ActivityCompat.f {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    final androidx.p009lifecycle.w mFragmentLifecycleRegistry;
    final g mFragments;
    boolean mResumed;
    boolean mStopped;

    class a extends i implements androidx.core.content.d, androidx.core.content.e, androidx.core.app.u, androidx.core.app.v, y0, androidx.activity.x, androidx.activity.result.d, androidx.p010savedstate.e, s, MenuHost {
        public a() {
            super(FragmentActivity.this);
        }

        @Override
        public void a(FragmentManager fragmentManager, Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override
        public void addMenuProvider(MenuProvider menuProvider) {
            FragmentActivity.this.addMenuProvider(menuProvider);
        }

        @Override
        public void addOnConfigurationChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.addOnConfigurationChangedListener(aVar);
        }

        @Override
        public void addOnMultiWindowModeChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.addOnMultiWindowModeChangedListener(aVar);
        }

        @Override
        public void addOnPictureInPictureModeChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.addOnPictureInPictureModeChangedListener(aVar);
        }

        @Override
        public void addOnTrimMemoryListener(androidx.core.util.a aVar) {
            FragmentActivity.this.addOnTrimMemoryListener(aVar);
        }

        @Override
        public View c(int i10) {
            return FragmentActivity.this.findViewById(i10);
        }

        @Override
        public boolean d() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override
        public ActivityResultRegistry getActivityResultRegistry() {
            return FragmentActivity.this.getActivityResultRegistry();
        }

        @Override
        public Lifecycle getLifecycle() {
            return FragmentActivity.this.mFragmentLifecycleRegistry;
        }

        @Override
        public OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return FragmentActivity.this.getOnBackPressedDispatcher();
        }

        @Override
        public androidx.p010savedstate.c getSavedStateRegistry() {
            return FragmentActivity.this.getSavedStateRegistry();
        }

        @Override
        public x0 getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }

        @Override
        public void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override
        public void invalidateMenu() {
            FragmentActivity.this.invalidateOptionsMenu();
        }

        @Override
        public LayoutInflater j() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override
        public boolean l(String str) {
            return ActivityCompat.j(FragmentActivity.this, str);
        }

        @Override
        public void o() {
            invalidateMenu();
        }

        @Override
        public FragmentActivity i() {
            return FragmentActivity.this;
        }

        @Override
        public void removeMenuProvider(MenuProvider menuProvider) {
            FragmentActivity.this.removeMenuProvider(menuProvider);
        }

        @Override
        public void removeOnConfigurationChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.removeOnConfigurationChangedListener(aVar);
        }

        @Override
        public void removeOnMultiWindowModeChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.removeOnMultiWindowModeChangedListener(aVar);
        }

        @Override
        public void removeOnPictureInPictureModeChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.removeOnPictureInPictureModeChangedListener(aVar);
        }

        @Override
        public void removeOnTrimMemoryListener(androidx.core.util.a aVar) {
            FragmentActivity.this.removeOnTrimMemoryListener(aVar);
        }

        @Override
        public void addMenuProvider(MenuProvider menuProvider, androidx.p009lifecycle.u uVar) {
            FragmentActivity.this.addMenuProvider(menuProvider, uVar);
        }

        @Override
        public void addMenuProvider(MenuProvider menuProvider, androidx.p009lifecycle.u uVar, Lifecycle.State state) {
            FragmentActivity.this.addMenuProvider(menuProvider, uVar, state);
        }
    }

    public FragmentActivity() {
        this.mFragments = g.b(new a());
        this.mFragmentLifecycleRegistry = new androidx.p009lifecycle.w(this);
        this.mStopped = true;
        init();
    }

    public Bundle G() {
        markFragmentsCreated();
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_STOP);
        return new Bundle();
    }

    public void H(Configuration configuration) {
        this.mFragments.m();
    }

    public void I(Intent intent) {
        this.mFragments.m();
    }

    public void J(Context context) {
        this.mFragments.a(null);
    }

    private static boolean K(FragmentManager fragmentManager, Lifecycle.State state) {
        boolean zK = false;
        for (Fragment fragment : fragmentManager.y0()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    zK |= K(fragment.getChildFragmentManager(), state);
                }
                z zVar = fragment.mViewLifecycleOwner;
                if (zVar != null && zVar.getLifecycle().b().isAtLeast(Lifecycle.State.STARTED)) {
                    fragment.mViewLifecycleOwner.f(state);
                    zK = true;
                }
                if (fragment.mLifecycleRegistry.b().isAtLeast(Lifecycle.State.STARTED)) {
                    fragment.mLifecycleRegistry.n(state);
                    zK = true;
                }
            }
        }
        return zK;
    }

    private void init() {
        getSavedStateRegistry().h(LIFECYCLE_TAG, new androidx.p010savedstate.c.InterfaceC0116c() {
            @Override
            public final Bundle saveState() {
                return this.f9116a.G();
            }
        });
        addOnConfigurationChangedListener(new androidx.core.util.a() {
            @Override
            public final void accept(Object obj) {
                this.f9117a.H((Configuration) obj);
            }
        });
        addOnNewIntentListener(new androidx.core.util.a() {
            @Override
            public final void accept(Object obj) {
                this.f9118a.I((Intent) obj);
            }
        });
        addOnContextAvailableListener(new androidx.activity.contextaware.d() {
            @Override
            public final void a(Context context) {
                this.f9119a.J(context);
            }
        });
    }

    @Nullable
    final View dispatchFragmentsOnCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return this.mFragments.n(view, str, context, attributeSet);
    }

    @Override
    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (shouldDumpInternalState(strArr)) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            if (getApplication() != null) {
                androidx.loader.app.a.b(this).a(str2, fileDescriptor, printWriter, strArr);
            }
            this.mFragments.l().Y(str, fileDescriptor, printWriter, strArr);
        }
    }

    @NonNull
    public FragmentManager getSupportFragmentManager() {
        return this.mFragments.l();
    }

    @NonNull
    @Deprecated
    public androidx.loader.app.a getSupportLoaderManager() {
        return androidx.loader.app.a.b(this);
    }

    void markFragmentsCreated() {
        while (K(getSupportFragmentManager(), Lifecycle.State.CREATED)) {
        }
    }

    @Override
    protected void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        this.mFragments.m();
        super.onActivityResult(i10, i11, intent);
    }

    @Deprecated
    public void onAttachFragment(@NonNull Fragment fragment) {
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_CREATE);
        this.mFragments.e();
    }

    @Override
    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.mFragments.f();
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_DESTROY);
    }

    @Override
    public boolean onMenuItemSelected(int i10, @NonNull MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        if (i10 == 6) {
            return this.mFragments.d(menuItem);
        }
        return false;
    }

    @Override
    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.g();
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_PAUSE);
    }

    @Override
    protected void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Override
    public void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.mFragments.m();
        super.onRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override
    protected void onResume() {
        this.mFragments.m();
        super.onResume();
        this.mResumed = true;
        this.mFragments.k();
    }

    protected void onResumeFragments() {
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_RESUME);
        this.mFragments.h();
    }

    @Override
    protected void onStart() {
        this.mFragments.m();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.c();
        }
        this.mFragments.k();
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_START);
        this.mFragments.i();
    }

    @Override
    public void onStateNotSaved() {
        this.mFragments.m();
    }

    @Override
    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.j();
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_STOP);
    }

    public void setEnterSharedElementCallback(@Nullable androidx.core.app.a0 a0Var) {
        ActivityCompat.h(this, a0Var);
    }

    public void setExitSharedElementCallback(@Nullable androidx.core.app.a0 a0Var) {
        ActivityCompat.i(this, a0Var);
    }

    public void startActivityFromFragment(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10) {
        startActivityFromFragment(fragment, intent, i10, (Bundle) null);
    }

    @Deprecated
    public void startIntentSenderFromFragment(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, @Nullable Intent intent, int i11, int i12, int i13, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        if (i10 == -1) {
            ActivityCompat.l(this, intentSender, i10, intent, i11, i12, i13, bundle);
        } else {
            fragment.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        ActivityCompat.c(this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        ActivityCompat.e(this);
    }

    public void supportStartPostponedEnterTransition() {
        ActivityCompat.m(this);
    }

    @Override
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i10) {
    }

    public void startActivityFromFragment(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10, @Nullable Bundle bundle) {
        if (i10 == -1) {
            ActivityCompat.k(this, intent, -1, bundle);
        } else {
            fragment.startActivityForResult(intent, i10, bundle);
        }
    }

    @Override
    @Nullable
    public View onCreateView(@NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    public FragmentActivity(int i10) {
        super(i10);
        this.mFragments = g.b(new a());
        this.mFragmentLifecycleRegistry = new androidx.p009lifecycle.w(this);
        this.mStopped = true;
        init();
    }
}
