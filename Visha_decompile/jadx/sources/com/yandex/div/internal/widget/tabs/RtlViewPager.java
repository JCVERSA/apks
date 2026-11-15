package com.yandex.div.internal.widget.tabs;

import android.content.Context;
import android.util.AttributeSet;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.transsion.livecaption.constant.ICode;
import defpackage.pdc;
import defpackage.y45;
import java.util.HashMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0010\u0018\u00002\u00020\u0001:\u0001\u001fB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0017\u0010\u0018R8\u0010\u001e\u001a&\u0012\u0004\u0012\u00020\u0012\u0012\b\u0012\u00060\u001aR\u00020\u00000\u0019j\u0012\u0012\u0004\u0012\u00020\u0012\u0012\b\u0012\u00060\u001aR\u00020\u0000`\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/yandex/div/internal/widget/tabs/RtlViewPager;", "Landroidx/viewpager/widget/ViewPager;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getCurrentItem", "()I", "position", "", "smoothScroll", "Lzfb;", "setCurrentItem", "(IZ)V", "(I)V", "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;", "listener", "addOnPageChangeListener", "(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V", "removeOnPageChangeListener", "clearOnPageChangeListeners", "()V", "Ljava/util/HashMap;", "Lcom/yandex/div/internal/widget/tabs/RtlViewPager$ReversingOnPageChangeListener;", "Lkotlin/collections/HashMap;", CmcdData.STREAMING_FORMAT_HLS, "Ljava/util/HashMap;", "pageChangeListeners", "ReversingOnPageChangeListener", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class RtlViewPager extends ViewPager {

    public final HashMap pageChangeListeners;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u000eR\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/yandex/div/internal/widget/tabs/RtlViewPager$ReversingOnPageChangeListener;", "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;", "listener", MethodDecl.initName, "(Lcom/yandex/div/internal/widget/tabs/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V", "", "pos", "", "posOffset", "posOffsetPixels", "Lzfb;", "onPageScrolled", "(IFI)V", "onPageSelected", "(I)V", ICode.CALL.CALL_KEY_STATE, "onPageScrollStateChanged", "b", "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class ReversingOnPageChangeListener implements ViewPager.OnPageChangeListener {

        public final ViewPager.OnPageChangeListener listener;
        public final RtlViewPager c;

        public ReversingOnPageChangeListener(RtlViewPager rtlViewPager, ViewPager.OnPageChangeListener onPageChangeListener) {
            y45.j(onPageChangeListener, "listener");
            this.c = rtlViewPager;
            this.listener = onPageChangeListener;
        }

        @Override
        public void onPageScrollStateChanged(int state) {
            this.listener.onPageScrollStateChanged(state);
        }

        @Override
        public void onPageScrolled(int pos, float posOffset, int posOffsetPixels) {
            PagerAdapter adapter = RtlViewPager.super.getAdapter();
            if (pdc.f(this.c) && adapter != null) {
                int count = adapter.getCount();
                int width = ((int) (this.c.getWidth() * (1 - adapter.getPageWidth(pos)))) + posOffsetPixels;
                while (pos < count && width > 0) {
                    pos++;
                    width -= (int) (this.c.getWidth() * adapter.getPageWidth(pos));
                }
                pos = (count - pos) - 1;
                posOffsetPixels = -width;
                posOffset = posOffsetPixels / (this.c.getWidth() * adapter.getPageWidth(pos));
            }
            this.listener.onPageScrolled(pos, posOffset, posOffsetPixels);
        }

        @Override
        public void onPageSelected(int pos) {
            PagerAdapter adapter = RtlViewPager.super.getAdapter();
            if (pdc.f(this.c) && adapter != null) {
                pos = (adapter.getCount() - pos) - 1;
            }
            this.listener.onPageSelected(pos);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RtlViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
        this.pageChangeListeners = new HashMap();
    }

    @Override
    public void addOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        y45.j(listener, "listener");
        ReversingOnPageChangeListener reversingOnPageChangeListener = new ReversingOnPageChangeListener(this, listener);
        this.pageChangeListeners.put(listener, reversingOnPageChangeListener);
        super.addOnPageChangeListener(reversingOnPageChangeListener);
    }

    @Override
    public void clearOnPageChangeListeners() {
        super.clearOnPageChangeListeners();
        this.pageChangeListeners.clear();
    }

    @Override
    public int getCurrentItem() {
        int currentItem = super.getCurrentItem();
        PagerAdapter adapter = super.getAdapter();
        return (adapter == null || !pdc.f(this)) ? currentItem : (adapter.getCount() - currentItem) - 1;
    }

    @Override
    public void removeOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        y45.j(listener, "listener");
        ReversingOnPageChangeListener reversingOnPageChangeListener = (ReversingOnPageChangeListener) this.pageChangeListeners.remove(listener);
        if (reversingOnPageChangeListener != null) {
            super.removeOnPageChangeListener(reversingOnPageChangeListener);
        }
    }

    @Override
    public void setCurrentItem(int position, boolean smoothScroll) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null && pdc.f(this)) {
            position = (adapter.getCount() - position) - 1;
        }
        super.setCurrentItem(position, smoothScroll);
    }

    @Override
    public void setCurrentItem(int position) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null && pdc.f(this)) {
            position = (adapter.getCount() - position) - 1;
        }
        super.setCurrentItem(position);
    }
}
