package com.transsion.shorttv_pugc.base.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.d;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.push.PushConstants;
import com.transsion.shorttv_pugc.base.dialog.BaseDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hr.e;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import qi.b;
import z0.c;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0016¢\u0006\u0004\b\u0003\u0010\u0004B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0003\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0003¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0012\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u0004\u0018\u00010\u001a8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;", "Landroidx/fragment/app/DialogFragment;", "Lhr/e;", "<init>", "()V", "", "contentLayoutId", "(I)V", "", "d0", "Landroid/content/Context;", "context", "b0", "(Landroid/content/Context;)I", "Landroidx/fragment/app/FragmentManager;", "manager", "", "tag", PushConstants.PUSH_SERVICE_TYPE_SHOW, "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", TmcConstants.NAVIGATION_ON_START, "onResume", "onPause", "onDestroy", "c0", "()Ljava/lang/String;", "Lqi/b;", "a", "Lkotlin/Lazy;", "getLogViewConfig", "()Lqi/b;", "logViewConfig", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseDialog extends DialogFragment implements e {

    private final Lazy logViewConfig;

    public BaseDialog() {
        this.logViewConfig = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return BaseDialog.g0(this.f59806a);
            }
        });
    }

    private final int b0(Context context) {
        try {
            return d.a();
        } catch (Exception unused) {
            int dimensionPixelSize = 0;
            try {
                Resources resources = context.getResources();
                int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
                if (identifier > 0) {
                    dimensionPixelSize = resources.getDimensionPixelSize(identifier);
                }
            } catch (Exception unused2) {
            }
            return dimensionPixelSize;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0076  */
    /* JADX WARN: Code duplicated, block: B:35:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x007a  */
    private final void d0() {
        Window window;
        final View decorView;
        final View view;
        ViewGroup viewGroup;
        Drawable background;
        Drawable background2;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null || (decorView = window.getDecorView()) == null || (view = getView()) == null) {
            return;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        final int iB0 = b0(contextRequireContext);
        boolean z10 = view instanceof ViewGroup;
        if (z10) {
            ViewGroup viewGroup2 = (ViewGroup) view;
            viewGroup2.setFitsSystemWindows(false);
            if (viewGroup2.getBackground() == null) {
                View childAt = viewGroup2.getChildCount() > 0 ? viewGroup2.getChildAt(0) : null;
                if (childAt == null || (background2 = childAt.getBackground()) == null) {
                    view.setBackgroundColor(0);
                } else {
                    viewGroup2.setBackground(background2);
                }
            }
        }
        ViewCompat.setOnApplyWindowInsetsListener(decorView, new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return BaseDialog.e0(iB0, view, view2, windowInsetsCompat);
            }
        });
        if (iB0 > 0) {
            if (z10) {
                ViewGroup viewGroup3 = (ViewGroup) view;
                if (viewGroup3.getChildCount() > 0) {
                    View childAt2 = viewGroup3.getChildAt(0);
                    if (childAt2 instanceof ViewGroup) {
                        viewGroup = (ViewGroup) childAt2;
                    } else {
                        viewGroup = null;
                    }
                } else if (z10) {
                    viewGroup = (ViewGroup) view;
                } else {
                    viewGroup = null;
                }
            } else if (z10) {
                viewGroup = (ViewGroup) view;
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                int paddingLeft = viewGroup.getPaddingLeft();
                int paddingTop = viewGroup.getPaddingTop();
                int paddingRight = viewGroup.getPaddingRight();
                int paddingBottom = viewGroup.getPaddingBottom();
                if (paddingBottom >= iB0) {
                    iB0 = paddingBottom;
                }
                if (viewGroup.getPaddingBottom() != iB0) {
                    viewGroup.setPadding(paddingLeft, paddingTop, paddingRight, iB0);
                }
            }
            if (z10) {
                ViewGroup viewGroup4 = (ViewGroup) view;
                if (viewGroup4.getBackground() == null) {
                    View childAt3 = viewGroup4.getChildCount() > 0 ? viewGroup4.getChildAt(0) : null;
                    if (childAt3 != null && (background = childAt3.getBackground()) != null) {
                        viewGroup4.setBackground(background);
                    }
                }
            }
        }
        ViewCompat.requestApplyInsets(decorView);
        decorView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                BaseDialog.f0(decorView);
            }
        }, 100L);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0053  */
    public static final WindowInsetsCompat e0(int i10, View view, View v10, WindowInsetsCompat insets) {
        Intrinsics.h(v10, "v");
        Intrinsics.h(insets, "insets");
        c insets2 = insets.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.g(insets2, "getInsets(...)");
        c insets3 = insets.getInsets(WindowInsetsCompat.Type.systemGestures());
        Intrinsics.g(insets3, "getInsets(...)");
        int i11 = insets2.f76468d;
        if (i11 > 0 || (i11 = insets3.f76468d) > 0) {
            i10 = i11;
        } else if (i10 <= 0) {
            i10 = 0;
        }
        v10.setPadding(0, 0, 0, 0);
        if (i10 > 0) {
            boolean z10 = view instanceof ViewGroup;
            ViewGroup viewGroup = null;
            if (z10) {
                ViewGroup viewGroup2 = (ViewGroup) view;
                if (viewGroup2.getChildCount() > 0) {
                    View childAt = viewGroup2.getChildAt(0);
                    if (childAt instanceof ViewGroup) {
                        viewGroup = (ViewGroup) childAt;
                    }
                } else if (z10) {
                    viewGroup = (ViewGroup) view;
                }
            } else if (z10) {
                viewGroup = (ViewGroup) view;
            }
            if (viewGroup != null) {
                int paddingLeft = viewGroup.getPaddingLeft();
                int paddingTop = viewGroup.getPaddingTop();
                int paddingRight = viewGroup.getPaddingRight();
                int paddingBottom = viewGroup.getPaddingBottom();
                if (paddingBottom >= i10) {
                    i10 = paddingBottom;
                }
                if (viewGroup.getPaddingBottom() != i10) {
                    viewGroup.setPadding(paddingLeft, paddingTop, paddingRight, i10);
                }
            }
        }
        return insets;
    }

    public static final void f0(View view) {
        ViewCompat.requestApplyInsets(view);
    }

    public static final b g0(BaseDialog baseDialog) {
        return baseDialog.newLogViewConfig();
    }

    public static final void h0(BaseDialog baseDialog) {
        baseDialog.d0();
    }

    public String c0() {
        return null;
    }

    @Override
    public b getLogViewConfig() {
        return (b) this.logViewConfig.getValue();
    }

    public b newLogViewConfig() {
        return e.a.a(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        es.e.f59811a.a(c0());
    }

    @Override
    public void onPause() {
        super.onPause();
        e.a.b(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        e.a.c(this);
    }

    @Override
    public void onStart() {
        Dialog dialog;
        Window window;
        super.onStart();
        if (Build.VERSION.SDK_INT < 35 || (dialog = getDialog()) == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowCompat.setDecorFitsSystemWindows(window, false);
        window.setNavigationBarColor(0);
        window.setStatusBarColor(0);
        window.getDecorView().post(new Runnable() {
            @Override
            public final void run() {
                BaseDialog.h0(this.f59807a);
            }
        });
    }

    @Override
    public void show(FragmentManager manager, String tag) {
        Intrinsics.h(manager, "manager");
        try {
            manager.g0();
            if (!isAdded() && manager.k0(tag) == null) {
                super.show(manager, tag);
                es.e.f59811a.b(c0());
            }
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public BaseDialog(int i10) {
        super(i10);
        this.logViewConfig = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return BaseDialog.g0(this.f59806a);
            }
        });
    }
}
