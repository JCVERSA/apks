package com.cloud.tmc.miniapp.defaultimpl;

import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import com.cloud.tmc.integration.proxy.OnKeyboardListener;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class OooO extends WindowInsetsAnimationCompat.Callback {
    public final int OooO00o;
    public final int OooO0O0;
    public final OnKeyboardListener OooO0OO;

    public OooO(int i10, int i11, OnKeyboardListener onKeyboardListener) {
        super(0);
        this.OooO00o = i10;
        this.OooO0O0 = i11;
        this.OooO0OO = onKeyboardListener;
        if ((i10 & i11) != 0) {
            throw new IllegalArgumentException("persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values");
        }
    }

    @Override
    public void onEnd(WindowInsetsAnimationCompat animation) {
        Intrinsics.h(animation, "animation");
        OnKeyboardListener onKeyboardListener = this.OooO0OO;
        if (onKeyboardListener != null) {
            onKeyboardListener.onKeyBoardAnimEnd();
        }
    }

    @Override
    public WindowInsetsCompat onProgress(WindowInsetsCompat insets, List<WindowInsetsAnimationCompat> runningAnims) {
        Intrinsics.h(insets, "insets");
        Intrinsics.h(runningAnims, "runningAnims");
        z0.c insets2 = insets.getInsets(this.OooO0O0);
        Intrinsics.g(insets2, "insets.getInsets(deferredInsetTypes)");
        z0.c insets3 = insets.getInsets(this.OooO00o);
        Intrinsics.g(insets3, "insets.getInsets(persistentInsetTypes)");
        z0.c cVarA = z0.c.a(z0.c.e(insets2, insets3), z0.c.f76464e);
        Intrinsics.g(cVarA, "subtract(typesInset, oth…t, Insets.NONE)\n        }");
        OnKeyboardListener onKeyboardListener = this.OooO0OO;
        if (onKeyboardListener != null) {
            onKeyboardListener.onKeyBoardHeightChange(cVarA.f76468d);
        }
        return insets;
    }

    @Override
    public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat animation, WindowInsetsAnimationCompat.BoundsCompat bounds) {
        Intrinsics.h(animation, "animation");
        Intrinsics.h(bounds, "bounds");
        OnKeyboardListener onKeyboardListener = this.OooO0OO;
        if (onKeyboardListener != null) {
            onKeyboardListener.onKeyBoardAnimStart();
        }
        WindowInsetsAnimationCompat.BoundsCompat boundsCompatOnStart = super.onStart(animation, bounds);
        Intrinsics.g(boundsCompatOnStart, "super.onStart(animation, bounds)");
        return boundsCompatOnStart;
    }
}
