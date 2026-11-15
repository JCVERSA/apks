package androidx.compose.ui.window;

import android.R;
import android.graphics.Outline;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.Window;
import androidx.activity.q;
import androidx.activity.u;
import androidx.activity.w;
import androidx.compose.runtime.m;
import androidx.compose.ui.R$id;
import androidx.compose.ui.R$style;
import androidx.compose.ui.platform.s2;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.WindowCompat;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.ViewTreeViewModelStoreOwner;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import java.util.UUID;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

final class DialogWrapper extends q implements s2 {

    private Function0 f6221a;

    private c f6222b;

    private final View f6223c;

    private final DialogLayout f6224d;

    private final float f6225e;

    private final int f6226f;

    public static final class a extends ViewOutlineProvider {
        a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRect(0, 0, view.getWidth(), view.getHeight());
            outline.setAlpha(0.0f);
        }
    }

    public class b {

        public static final int[] f6227a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f6227a = iArr;
        }
    }

    public DialogWrapper(Function0 function0, c cVar, View view, LayoutDirection layoutDirection, o0.e eVar, UUID uuid) {
        super(new ContextThemeWrapper(view.getContext(), (Build.VERSION.SDK_INT >= 31 || cVar.a()) ? R$style.DialogWindowTheme : R$style.FloatingDialogWindowTheme), 0, 2, null);
        this.f6221a = function0;
        this.f6222b = cVar;
        this.f6223c = view;
        float fG = o0.i.g(8);
        this.f6225e = fG;
        Window window = getWindow();
        if (window == null) {
            throw new IllegalStateException("Dialog has no window");
        }
        this.f6226f = window.getAttributes().softInputMode & 240;
        window.requestFeature(1);
        window.setBackgroundDrawableResource(R.color.transparent);
        WindowCompat.setDecorFitsSystemWindows(window, this.f6222b.a());
        DialogLayout dialogLayout = new DialogLayout(getContext(), window);
        dialogLayout.setTag(R$id.compose_view_saveable_id_tag, "Dialog:" + uuid);
        dialogLayout.setClipChildren(false);
        dialogLayout.setElevation(eVar.D0(fG));
        dialogLayout.setOutlineProvider(new a());
        this.f6224d = dialogLayout;
        View decorView = window.getDecorView();
        ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
        if (viewGroup != null) {
            d(viewGroup);
        }
        setContentView(dialogLayout);
        ViewTreeLifecycleOwner.b(dialogLayout, ViewTreeLifecycleOwner.a(view));
        ViewTreeViewModelStoreOwner.b(dialogLayout, ViewTreeViewModelStoreOwner.a(view));
        ViewTreeSavedStateRegistryOwner.b(dialogLayout, ViewTreeSavedStateRegistryOwner.a(view));
        k(this.f6221a, this.f6222b, layoutDirection);
        w.b(getOnBackPressedDispatcher(), this, false, new Function1<u, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((u) obj);
                return Unit.f64096a;
            }

            public final void invoke(u uVar) {
                if (DialogWrapper.this.f6222b.b()) {
                    DialogWrapper.this.f6221a.invoke();
                }
            }
        }, 2, null);
    }

    private static final void d(ViewGroup viewGroup) {
        viewGroup.setClipChildren(false);
        if (viewGroup instanceof DialogLayout) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            ViewGroup viewGroup2 = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
            if (viewGroup2 != null) {
                d(viewGroup2);
            }
        }
    }

    private final void i(LayoutDirection layoutDirection) {
        DialogLayout dialogLayout = this.f6224d;
        int i10 = b.f6227a[layoutDirection.ordinal()];
        int i11 = 1;
        if (i10 == 1) {
            i11 = 0;
        } else if (i10 != 2) {
            throw new NoWhenBranchMatchedException();
        }
        dialogLayout.setLayoutDirection(i11);
    }

    private final void j(SecureFlagPolicy secureFlagPolicy) {
        boolean zA = k.a(secureFlagPolicy, AndroidPopup_androidKt.d(this.f6223c));
        Window window = getWindow();
        Intrinsics.e(window);
        window.setFlags(zA ? 8192 : -8193, 8192);
    }

    public final void g() {
        this.f6224d.disposeComposition();
    }

    public final void h(m mVar, Function2 function2) {
        this.f6224d.setContent(mVar, function2);
    }

    public final void k(Function0 function0, c cVar, LayoutDirection layoutDirection) {
        Window window;
        this.f6221a = function0;
        this.f6222b = cVar;
        j(cVar.d());
        i(layoutDirection);
        if (cVar.e() && !this.f6224d.f() && (window = getWindow()) != null) {
            window.setLayout(-2, -2);
        }
        this.f6224d.g(cVar.e());
        if (Build.VERSION.SDK_INT < 31) {
            if (cVar.a()) {
                Window window2 = getWindow();
                if (window2 != null) {
                    window2.setSoftInputMode(this.f6226f);
                    return;
                }
                return;
            }
            Window window3 = getWindow();
            if (window3 != null) {
                window3.setSoftInputMode(16);
            }
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (zOnTouchEvent && this.f6222b.c()) {
            this.f6221a.invoke();
        }
        return zOnTouchEvent;
    }

    @Override
    public void cancel() {
    }
}
