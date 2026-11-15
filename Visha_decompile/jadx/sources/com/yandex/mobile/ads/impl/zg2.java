package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import com.yandex.mobile.ads.impl.zg2;
import defpackage.c74;
import defpackage.yi5;
import java.util.ArrayList;
import kotlin.jvm.internal.Lambda;

public final class zg2 {
    private static final yi5 a = kotlin.b.a(a.b);
    public static final int b = 0;

    public static final class a extends Lambda implements c74 {
        public static final a b = new a();

        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    public static final void a(final ViewGroup viewGroup, final boolean z) {
        ((Handler) a.getValue()).post(new Runnable() {
            @Override
            public final void run() {
                zg2.b(viewGroup, z);
            }
        });
    }

    public static final void b(ViewGroup viewGroup, boolean z) {
        int childCount;
        if (viewGroup == null || viewGroup.getChildCount() <= 0 || (childCount = viewGroup.getChildCount() - (!z ? 1 : 0)) <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList(childCount);
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof vk) {
                arrayList.add(childAt);
            }
        }
        viewGroup.removeViews(0, childCount);
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((vk) arrayList.get(i2)).d();
        }
        arrayList.clear();
    }
}
