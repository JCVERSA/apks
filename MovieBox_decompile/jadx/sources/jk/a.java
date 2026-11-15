package jk;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    public static final class C0775a extends ViewOutlineProvider {

        final float f63169a;

        C0775a(float f10) {
            this.f63169a = f10;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            Intrinsics.h(view, "view");
            Intrinsics.h(outline, "outline");
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f63169a);
        }
    }

    public static final void a(View view, float f10) {
        Intrinsics.h(view, "<this>");
        view.setOutlineProvider(new C0775a(f10));
        view.setClipToOutline(true);
    }
}
