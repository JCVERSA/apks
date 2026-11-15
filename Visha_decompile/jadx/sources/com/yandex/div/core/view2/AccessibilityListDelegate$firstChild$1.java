package com.yandex.div.core.view2;

import android.view.View;
import defpackage.e74;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class AccessibilityListDelegate$firstChild$1 extends FunctionReferenceImpl implements e74 {
    public static final AccessibilityListDelegate$firstChild$1 INSTANCE = new AccessibilityListDelegate$firstChild$1();

    public AccessibilityListDelegate$firstChild$1() {
        super(1, View.class, "getTop", "getTop()I", 0);
    }

    @Override
    public final Integer invoke(View view) {
        y45.j(view, "p0");
        return Integer.valueOf(view.getTop());
    }
}
