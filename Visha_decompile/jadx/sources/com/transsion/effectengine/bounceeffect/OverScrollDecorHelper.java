package com.transsion.effectengine.bounceeffect;

import android.util.Log;
import android.view.View;
import android.widget.GridView;
import android.widget.HorizontalScrollView;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.effectengine.bounceeffect.adapters.MiscViewOverScrollDecorAdapter;
import com.transsion.effectengine.bounceeffect.adapters.RecyclerViewOverScrollDecorAdapter;
import com.transsion.effectengine.bounceeffect.adapters.z1OoOnew;
import com.transsion.effectengine.bounceeffect.adapters.z1OoOtry;
import defpackage.vyd;

public class OverScrollDecorHelper {
    static Class<?> ABSLISTVIEW_CLASS = null;
    private static final boolean BOUNCEEFFECT_SUPPORT = vyd.b();
    static Class<?> HORIZONTAL_SCROLLVIEW_CLASS = null;
    public static final int ORIENTATION_HORIZONTAL = 1;
    public static final int ORIENTATION_VERTICAL = 0;
    static Class<?> SCROLLVIEW_CLASS;

    static {
        try {
            ABSLISTVIEW_CLASS = Class.forName("android.widget.AbsListView");
            HORIZONTAL_SCROLLVIEW_CLASS = Class.forName("android.widget.HorizontalScrollView");
            SCROLLVIEW_CLASS = Class.forName("android.widget.ScrollView");
        } catch (Exception unused) {
            Log.e("OverScrollDecorHelper", "class not found.");
        }
    }

    public static boolean setBounceEdgeEffect(@NonNull Class cls, View view) {
        try {
            cls.getMethod("enableTranBounceEffect", null).invoke(view, null);
            return true;
        } catch (Throwable unused) {
            Log.e("OverScrollDecorHelper", "setBounceEdgeEffect not found." + cls.toString());
            return false;
        }
    }

    public static IOverScrollDecor setUpMiscViewOverScroll(View view, int i, MiscViewOverScrollDecorAdapter miscViewOverScrollDecorAdapter) {
        OverScrollBounceEffectDecoratorBase verticalOverScrollBounceEffectDecorator;
        z1OoOint z1oooint;
        if (view == null) {
            Log.e("OverScrollDecorHelper", "exception view = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT) {
            return null;
        }
        setBounceEdgeEffect(view.getClass(), view);
        Log.d("OverScrollDecorHelper", "clazz:" + view.getClass().toString());
        if (i == 0) {
            verticalOverScrollBounceEffectDecorator = new VerticalOverScrollBounceEffectDecorator(miscViewOverScrollDecorAdapter);
            z1oooint = new z1OoOint(view.getClass(), view);
        } else {
            if (i != 1) {
                throw new IllegalArgumentException("orientation");
            }
            verticalOverScrollBounceEffectDecorator = new z1OoOif(miscViewOverScrollDecorAdapter);
            z1oooint = new z1OoOint(view.getClass(), view);
        }
        verticalOverScrollBounceEffectDecorator.setBounceEdgeEffect(z1oooint);
        return verticalOverScrollBounceEffectDecorator;
    }

    public static IOverScrollDecor setUpNonScrollableViewOverScroll(View view, int i) {
        if (view == null) {
            Log.e("OverScrollDecorHelper", "exception view = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT) {
            return null;
        }
        if (i == 0) {
            return new VerticalOverScrollBounceEffectDecorator(new MiscViewOverScrollDecorAdapter(view));
        }
        if (i == 1) {
            return new z1OoOif(new MiscViewOverScrollDecorAdapter(view));
        }
        throw new IllegalArgumentException("orientation");
    }

    public static IOverScrollDecor setUpOverScroll(GridView gridView) {
        if (gridView == null) {
            Log.e("OverScrollDecorHelper", "exception GridView = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT || !setBounceEdgeEffect(ABSLISTVIEW_CLASS, gridView)) {
            return null;
        }
        VerticalOverScrollBounceEffectDecorator verticalOverScrollBounceEffectDecorator = new VerticalOverScrollBounceEffectDecorator(new com.transsion.effectengine.bounceeffect.adapters.z1OoOdo(gridView));
        verticalOverScrollBounceEffectDecorator.setBounceEdgeEffect(new z1OoOint(ABSLISTVIEW_CLASS, gridView));
        return verticalOverScrollBounceEffectDecorator;
    }

    public static IOverScrollDecor setUpMiscViewOverScroll(View view, int i, MiscViewOverScrollDecorAdapter miscViewOverScrollDecorAdapter, boolean z) {
        OverScrollBounceEffectDecoratorBase verticalOverScrollBounceEffectDecorator;
        z1OoOint z1oooint;
        if (view == null) {
            Log.e("OverScrollDecorHelper", "exception view = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT && !z) {
            return null;
        }
        setBounceEdgeEffect(view.getClass(), view);
        Log.d("OverScrollDecorHelper", "clazz:" + view.getClass().toString());
        if (i == 0) {
            verticalOverScrollBounceEffectDecorator = new VerticalOverScrollBounceEffectDecorator(miscViewOverScrollDecorAdapter);
            z1oooint = new z1OoOint(view.getClass(), view);
        } else {
            if (i != 1) {
                throw new IllegalArgumentException("orientation");
            }
            verticalOverScrollBounceEffectDecorator = new z1OoOif(miscViewOverScrollDecorAdapter);
            z1oooint = new z1OoOint(view.getClass(), view);
        }
        verticalOverScrollBounceEffectDecorator.setBounceEdgeEffect(z1oooint);
        return verticalOverScrollBounceEffectDecorator;
    }

    public static IOverScrollDecor setUpOverScroll(HorizontalScrollView horizontalScrollView) {
        if (horizontalScrollView == null) {
            Log.e("OverScrollDecorHelper", "exception HorizontalScrollView = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT || !setBounceEdgeEffect(HORIZONTAL_SCROLLVIEW_CLASS, horizontalScrollView)) {
            return null;
        }
        z1OoOif z1oooif = new z1OoOif(new com.transsion.effectengine.bounceeffect.adapters.z1OoOif(horizontalScrollView));
        z1oooif.setBounceEdgeEffect(new z1OoOint(HORIZONTAL_SCROLLVIEW_CLASS, horizontalScrollView));
        return z1oooif;
    }

    public static IOverScrollDecor setUpOverScroll(ListView listView) {
        if (listView == null) {
            Log.e("OverScrollDecorHelper", "exception ListView = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT || !setBounceEdgeEffect(ABSLISTVIEW_CLASS, listView)) {
            return null;
        }
        VerticalOverScrollBounceEffectDecorator verticalOverScrollBounceEffectDecorator = new VerticalOverScrollBounceEffectDecorator(new com.transsion.effectengine.bounceeffect.adapters.z1OoOdo(listView));
        verticalOverScrollBounceEffectDecorator.setBounceEdgeEffect(new z1OoOint(ABSLISTVIEW_CLASS, listView));
        return verticalOverScrollBounceEffectDecorator;
    }

    public static IOverScrollDecor setUpOverScroll(ListView listView, boolean z) {
        IOverScrollDecor upOverScroll = setUpOverScroll(listView);
        if (upOverScroll != null && z) {
            upOverScroll.enableNestedScrollMode(true);
        }
        return upOverScroll;
    }

    public static IOverScrollDecor setUpOverScroll(ScrollView scrollView) {
        if (scrollView == null) {
            Log.e("OverScrollDecorHelper", "exception ScrollView = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT || !setBounceEdgeEffect(SCROLLVIEW_CLASS, scrollView)) {
            return null;
        }
        VerticalOverScrollBounceEffectDecorator verticalOverScrollBounceEffectDecorator = new VerticalOverScrollBounceEffectDecorator(new com.transsion.effectengine.bounceeffect.adapters.z1OoOint(scrollView));
        verticalOverScrollBounceEffectDecorator.setBounceEdgeEffect(new z1OoOint(SCROLLVIEW_CLASS, scrollView));
        return verticalOverScrollBounceEffectDecorator;
    }

    public static IOverScrollDecor setUpOverScroll(RecyclerView recyclerView, int i, boolean z) {
        IOverScrollDecor upOverScroll = setUpOverScroll(recyclerView, i);
        if (upOverScroll != null && z) {
            upOverScroll.enableNestedScrollMode(true);
        }
        return upOverScroll;
    }

    public static IOverScrollDecor setUpOverScroll(ViewPager viewPager) {
        if (viewPager == null) {
            Log.e("OverScrollDecorHelper", "exception ViewPager = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT) {
            return null;
        }
        viewPager.setOverScrollMode(2);
        return new z1OoOif(new z1OoOnew(viewPager));
    }

    public static IOverScrollDecor setUpOverScroll(ViewPager2 viewPager2) {
        if (viewPager2 == null) {
            Log.e("OverScrollDecorHelper", "exception ViewPager2 = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT) {
            return null;
        }
        viewPager2.setOverScrollMode(2);
        return new z1OoOif(new z1OoOtry(viewPager2));
    }

    public static IOverScrollDecor setUpOverScroll(ViewPager2 viewPager2, int i) {
        if (viewPager2 == null) {
            Log.e("OverScrollDecorHelper", "exception ViewPager2 = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT) {
            return null;
        }
        viewPager2.setOverScrollMode(2);
        if (i == 0) {
            return new VerticalOverScrollBounceEffectDecorator(new z1OoOtry(viewPager2));
        }
        if (i == 1) {
            return new z1OoOif(new z1OoOtry(viewPager2));
        }
        throw new IllegalArgumentException("orientation");
    }

    public static IOverScrollDecor setUpOverScroll(RecyclerView recyclerView, int i) {
        if (recyclerView == null) {
            Log.e("OverScrollDecorHelper", "exception recyclerView = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT) {
            return null;
        }
        z1OoOdo z1ooodo = new z1OoOdo();
        recyclerView.setEdgeEffectFactory(z1ooodo);
        if (i == 0) {
            VerticalOverScrollBounceEffectDecorator verticalOverScrollBounceEffectDecorator = new VerticalOverScrollBounceEffectDecorator(new RecyclerViewOverScrollDecorAdapter(recyclerView));
            verticalOverScrollBounceEffectDecorator.setBounceEdgeEffect(z1ooodo);
            z1ooodo.z1OoOnew = verticalOverScrollBounceEffectDecorator;
            return verticalOverScrollBounceEffectDecorator;
        }
        if (i == 1) {
            z1OoOif z1oooif = new z1OoOif(new RecyclerViewOverScrollDecorAdapter(recyclerView));
            z1oooif.setBounceEdgeEffect(z1ooodo);
            z1ooodo.z1OoOnew = z1oooif;
            return z1oooif;
        }
        throw new IllegalArgumentException("orientation");
    }

    public static IOverScrollDecor setUpOverScroll(RecyclerView recyclerView, int i, boolean z, boolean z2) {
        OverScrollBounceEffectDecoratorBase verticalOverScrollBounceEffectDecorator;
        if (recyclerView == null) {
            Log.e("OverScrollDecorHelper", "exception recyclerView = null");
            return null;
        }
        if (!BOUNCEEFFECT_SUPPORT && !z2) {
            return null;
        }
        z1OoOdo z1ooodo = new z1OoOdo();
        recyclerView.setEdgeEffectFactory(z1ooodo);
        if (i == 0) {
            verticalOverScrollBounceEffectDecorator = new VerticalOverScrollBounceEffectDecorator(new RecyclerViewOverScrollDecorAdapter(recyclerView));
            verticalOverScrollBounceEffectDecorator.setBounceEdgeEffect(z1ooodo);
        } else {
            if (i != 1) {
                throw new IllegalArgumentException("orientation");
            }
            verticalOverScrollBounceEffectDecorator = new z1OoOif(new RecyclerViewOverScrollDecorAdapter(recyclerView));
            verticalOverScrollBounceEffectDecorator.setBounceEdgeEffect(z1ooodo);
        }
        z1ooodo.z1OoOnew = verticalOverScrollBounceEffectDecorator;
        if (z) {
            verticalOverScrollBounceEffectDecorator.enableNestedScrollMode(true);
        }
        return verticalOverScrollBounceEffectDecorator;
    }
}
