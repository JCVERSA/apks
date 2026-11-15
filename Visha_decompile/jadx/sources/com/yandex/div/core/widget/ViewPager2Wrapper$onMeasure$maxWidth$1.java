package com.yandex.div.core.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.s74;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class ViewPager2Wrapper$onMeasure$maxWidth$1 extends FunctionReferenceImpl implements s74 {
    public static final ViewPager2Wrapper$onMeasure$maxWidth$1 INSTANCE = new ViewPager2Wrapper$onMeasure$maxWidth$1();

    public ViewPager2Wrapper$onMeasure$maxWidth$1() {
        super(2, RecyclerView.LayoutManager.class, "getDecoratedMeasuredWidth", "getDecoratedMeasuredWidth(Landroid/view/View;)I", 0);
    }

    @Override
    public final Integer invoke(RecyclerView.LayoutManager layoutManager, View view) {
        y45.j(layoutManager, "p0");
        y45.j(view, "p1");
        return Integer.valueOf(layoutManager.getDecoratedMeasuredWidth(view));
    }
}
