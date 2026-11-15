package com.transsion.widgetslib.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import com.transsion.widgetslib.util.InputDialogInputManager;
import defpackage.bq5;
import defpackage.e74;
import defpackage.olb;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class InputDialogInputManager {
    public final View a;
    public boolean b;
    public int c;
    public int d;
    public int e;

    public InputDialogInputManager(final View view) {
        this.a = view;
        this.e = 1;
        if (view != null) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    InputDialogInputManager.c(this.b, view);
                }
            });
            this.e = view.getContext().getResources().getConfiguration().orientation;
        }
        g();
    }

    public static final void c(InputDialogInputManager inputDialogInputManager, View view) {
        y45.j(inputDialogInputManager, "this$0");
        y45.j(view, "$this_run");
        inputDialogInputManager.d = view.getMeasuredHeight();
    }

    public static final WindowInsets f(InputDialogInputManager inputDialogInputManager, e74 e74Var, View view, View view2, WindowInsets windowInsets) {
        y45.j(inputDialogInputManager, "this$0");
        y45.j(e74Var, "$block");
        y45.j(view, "$this_run");
        y45.j(view2, "<anonymous parameter 0>");
        y45.j(windowInsets, "insets");
        Insets insets = windowInsets.getInsets(WindowInsets.Type.ime());
        y45.i(insets, "insets.getInsets(WindowInsets.Type.ime())");
        boolean zIsVisible = windowInsets.isVisible(WindowInsets.Type.ime());
        if (inputDialogInputManager.e == 1) {
            e74Var.invoke(Boolean.valueOf(zIsVisible));
        }
        boolean z = view.getContext().getResources().getConfiguration().orientation == 1;
        bq5.o("setOnApplyWindowInsetsListener: ime visible = " + zIsVisible + " ime = " + insets + " " + z + " windowHeight = " + inputDialogInputManager.d);
        return windowInsets;
    }

    public final void d(Configuration configuration) {
        Context context;
        Resources resources;
        Configuration configuration2;
        y45.j(configuration, "newConfigure");
        this.e = configuration.orientation;
        g();
        View view = this.a;
        boolean z = false;
        if (view != null && (context = view.getContext()) != null && (resources = context.getResources()) != null && (configuration2 = resources.getConfiguration()) != null && configuration2.orientation == 1) {
            z = true;
        }
        bq5.o("onConfigurationChanged:  " + z);
    }

    public final void e(final e74 e74Var) {
        y45.j(e74Var, "block");
        final View view = this.a;
        if (view != null) {
            ViewCompat.setWindowInsetsAnimationCallback(view, new WindowInsetsAnimationCompat.Callback() {
                {
                    super(1);
                }

                @Override
                public WindowInsetsCompat onProgress(WindowInsetsCompat insets, List runningAnimations) {
                    y45.j(insets, "insets");
                    y45.j(runningAnimations, "runningAnimations");
                    Iterator it = runningAnimations.iterator();
                    while (it.hasNext()) {
                        WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) it.next();
                        if (windowInsetsAnimationCompat.getTypeMask() == WindowInsetsCompat.Type.ime()) {
                            boolean zIsVisible = insets.isVisible(WindowInsetsCompat.Type.ime());
                            androidx.core.graphics.Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.ime());
                            y45.i(insets2, "insets.getInsets(WindowInsetsCompat.Type.ime())");
                            this.a.setMIsSoftInputStatusInChanging(!(windowInsetsAnimationCompat.getFraction() == 1.0f));
                            bq5.o("setOnApplyWindowInsetsListener ime progress = " + windowInsetsAnimationCompat.getFraction() + " visible = " + zIsVisible + " imeInset.bottom = " + insets2.bottom + " mOffset = " + this.a.getMOffset() + "  windowHeight = " + this.a.getMWindowHeight());
                        }
                    }
                    return insets;
                }
            });
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
                @Override
                public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    return InputDialogInputManager.f(this.a, e74Var, view, view2, windowInsets);
                }
            });
        }
    }

    public final void g() {
        View view = this.a;
        int iD = 0;
        if (view != null && this.d <= olb.D(view.getContext()) / 2) {
            iD = olb.D(view.getContext()) / 2;
        }
        this.c = iD;
    }

    public final boolean getMIsSoftInputStatusInChanging() {
        return this.b;
    }

    public final int getMOffset() {
        return this.c;
    }

    public final int getMWindowHeight() {
        return this.d;
    }

    public final View getView() {
        return this.a;
    }

    public final void setMIsSoftInputStatusInChanging(boolean z) {
        this.b = z;
    }

    public final void setMOffset(int i) {
        this.c = i;
    }

    public final void setMWindowHeight(int i) {
        this.d = i;
    }
}
