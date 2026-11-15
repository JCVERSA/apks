package androidx.activity;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class w {

    public static final class a extends u {

        final Function1 f633a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(boolean z10, Function1 function1) {
            super(z10);
            this.f633a = function1;
        }

        @Override
        public void handleOnBackPressed() {
            this.f633a.invoke(this);
        }
    }

    public static final u a(OnBackPressedDispatcher onBackPressedDispatcher, androidx.p009lifecycle.u uVar, boolean z10, Function1 onBackPressed) {
        Intrinsics.h(onBackPressedDispatcher, "<this>");
        Intrinsics.h(onBackPressed, "onBackPressed");
        a aVar = new a(z10, onBackPressed);
        if (uVar != null) {
            onBackPressedDispatcher.i(uVar, aVar);
        } else {
            onBackPressedDispatcher.h(aVar);
        }
        return aVar;
    }

    public static u b(OnBackPressedDispatcher onBackPressedDispatcher, androidx.p009lifecycle.u uVar, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            uVar = null;
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return a(onBackPressedDispatcher, uVar, z10, function1);
    }
}
