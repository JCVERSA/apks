package androidx.activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class q extends Dialog implements androidx.p009lifecycle.u, x, androidx.p010savedstate.e {
    private androidx.p009lifecycle.w _lifecycleRegistry;
    private final OnBackPressedDispatcher onBackPressedDispatcher;
    private final androidx.p010savedstate.d savedStateRegistryController;

    public q(Context context, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? 0 : i10);
    }

    private final androidx.p009lifecycle.w b() {
        androidx.p009lifecycle.w wVar = this._lifecycleRegistry;
        if (wVar != null) {
            return wVar;
        }
        androidx.p009lifecycle.w wVar2 = new androidx.p009lifecycle.w(this);
        this._lifecycleRegistry = wVar2;
        return wVar2;
    }

    public static final void c(q qVar) {
        super.onBackPressed();
    }

    @Override
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        Intrinsics.h(view, "view");
        initializeViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    @Override
    public Lifecycle getLifecycle() {
        return b();
    }

    @Override
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.onBackPressedDispatcher;
    }

    @Override
    public androidx.p010savedstate.c getSavedStateRegistry() {
        return this.savedStateRegistryController.b();
    }

    public void initializeViewTreeOwners() {
        Window window = getWindow();
        Intrinsics.e(window);
        View decorView = window.getDecorView();
        Intrinsics.g(decorView, "window!!.decorView");
        ViewTreeLifecycleOwner.b(decorView, this);
        Window window2 = getWindow();
        Intrinsics.e(window2);
        View decorView2 = window2.getDecorView();
        Intrinsics.g(decorView2, "window!!.decorView");
        z.a(decorView2, this);
        Window window3 = getWindow();
        Intrinsics.e(window3);
        View decorView3 = window3.getDecorView();
        Intrinsics.g(decorView3, "window!!.decorView");
        ViewTreeSavedStateRegistryOwner.b(decorView3, this);
    }

    @Override
    public void onBackPressed() {
        this.onBackPressedDispatcher.l();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackPressedDispatcher onBackPressedDispatcher = this.onBackPressedDispatcher;
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            Intrinsics.g(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            onBackPressedDispatcher.o(onBackInvokedDispatcher);
        }
        this.savedStateRegistryController.d(bundle);
        b().i(Lifecycle.Event.ON_CREATE);
    }

    @Override
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        Intrinsics.g(bundleOnSaveInstanceState, "super.onSaveInstanceState()");
        this.savedStateRegistryController.e(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override
    protected void onStart() {
        super.onStart();
        b().i(Lifecycle.Event.ON_RESUME);
    }

    @Override
    protected void onStop() {
        b().i(Lifecycle.Event.ON_DESTROY);
        this._lifecycleRegistry = null;
        super.onStop();
    }

    @Override
    public void setContentView(int i10) {
        initializeViewTreeOwners();
        super.setContentView(i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(Context context, int i10) {
        super(context, i10);
        Intrinsics.h(context, "context");
        this.savedStateRegistryController = androidx.p010savedstate.d.f14505d.a(this);
        this.onBackPressedDispatcher = new OnBackPressedDispatcher(new Runnable() {
            @Override
            public final void run() {
                q.c(this.f584a);
            }
        });
    }

    @Override
    public void setContentView(View view) {
        Intrinsics.h(view, "view");
        initializeViewTreeOwners();
        super.setContentView(view);
    }

    @Override
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        Intrinsics.h(view, "view");
        initializeViewTreeOwners();
        super.setContentView(view, layoutParams);
    }

    public static void getOnBackPressedDispatcher$annotations() {
    }
}
