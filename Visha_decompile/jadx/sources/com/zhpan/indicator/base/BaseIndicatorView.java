package com.zhpan.indicator.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.Px;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.livecaption.constant.ICode;
import defpackage.rz4;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000U\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b5\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\b\u0006*\u0001_\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0018\u0010\u0012J\r\u0010\u0019\u001a\u00020\f¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\f¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\f¢\u0006\u0004\b\u001e\u0010\u001aJ\u0017\u0010 \u001a\u00020\u000e2\b\b\u0001\u0010\u001f\u001a\u00020\f¢\u0006\u0004\b \u0010\u001dJ\u0015\u0010\"\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0007¢\u0006\u0004\b\"\u0010\u0014J\r\u0010#\u001a\u00020\u0007¢\u0006\u0004\b#\u0010$J\r\u0010%\u001a\u00020\f¢\u0006\u0004\b%\u0010\u001aJ\u0015\u0010'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\f¢\u0006\u0004\b'\u0010\u001dJ\u0017\u0010)\u001a\u00020\u000e2\b\b\u0001\u0010(\u001a\u00020\u0007¢\u0006\u0004\b)\u0010\u0014J\r\u0010*\u001a\u00020\u0007¢\u0006\u0004\b*\u0010$J\u0017\u0010+\u001a\u00020\u000e2\b\b\u0001\u0010(\u001a\u00020\u0007¢\u0006\u0004\b+\u0010\u0014J\r\u0010,\u001a\u00020\f¢\u0006\u0004\b,\u0010\u001aJ\u0015\u0010.\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\f¢\u0006\u0004\b.\u0010\u001dJ\r\u0010/\u001a\u00020\u0007¢\u0006\u0004\b/\u0010$J\u0015\u00101\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0007¢\u0006\u0004\b1\u00102J!\u00104\u001a\u00020\u00002\b\b\u0001\u0010(\u001a\u00020\u00072\b\b\u0001\u00103\u001a\u00020\u0007¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u00020\u00002\b\b\u0001\u00106\u001a\u00020\f¢\u0006\u0004\b7\u00108J!\u00107\u001a\u00020\u00002\b\b\u0001\u0010\u001b\u001a\u00020\f2\b\b\u0001\u00109\u001a\u00020\f¢\u0006\u0004\b7\u0010:J\u0015\u0010<\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\f¢\u0006\u0004\b<\u00108J\r\u0010=\u001a\u00020\u0007¢\u0006\u0004\b=\u0010$J\u0015\u0010?\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0007¢\u0006\u0004\b?\u00102J\u0015\u0010A\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0007¢\u0006\u0004\bA\u00102J\u0015\u0010C\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\f¢\u0006\u0004\bC\u00108J\u0015\u0010F\u001a\u00020\u000e2\u0006\u0010E\u001a\u00020D¢\u0006\u0004\bF\u0010GJ\u0015\u0010F\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020H¢\u0006\u0004\bF\u0010JJ\u0015\u0010L\u001a\u00020\u000e2\u0006\u0010L\u001a\u00020K¢\u0006\u0004\bL\u0010MJ\u0017\u0010O\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020\u0007H\u0016¢\u0006\u0004\bO\u0010\u0014J\u0017\u0010R\u001a\u00020\u000e2\u0006\u0010Q\u001a\u00020PH\u0016¢\u0006\u0004\bR\u0010SR\"\u0010X\u001a\u00020P8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010SR\u0018\u0010[\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0018\u0010^\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0014\u0010b\u001a\u00020_8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b`\u0010aR\u0011\u0010\u001f\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bc\u0010\u001a¨\u0006d"}, d2 = {"Lcom/zhpan/indicator/base/BaseIndicatorView;", "Landroid/view/View;", "Lcom/zhpan/indicator/base/IIndicator;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "position", "", "positionOffset", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(IF)V", "b", "()V", "onPageSelected", "(I)V", "positionOffsetPixels", "onPageScrolled", "(IFI)V", "notifyDataChanged", "getNormalSlideWidth", "()F", "normalSliderWidth", "setNormalSlideWidth", "(F)V", "getCheckedSlideWidth", "checkedSliderWidth", "setCheckedSlideWidth", "currentPosition", "setCurrentPosition", "getCurrentPosition", "()I", "getIndicatorGap", "indicatorGap", "setIndicatorGap", "normalColor", "setCheckedColor", "getCheckedColor", "setNormalColor", "getSlideProgress", "slideProgress", "setSlideProgress", "getPageSize", "pageSize", "setPageSize", "(I)Lcom/zhpan/indicator/base/BaseIndicatorView;", "selectedColor", "setSliderColor", "(II)Lcom/zhpan/indicator/base/BaseIndicatorView;", "sliderWidth", "setSliderWidth", "(F)Lcom/zhpan/indicator/base/BaseIndicatorView;", "selectedSliderWidth", "(FF)Lcom/zhpan/indicator/base/BaseIndicatorView;", "sliderGap", "setSliderGap", "getSlideMode", "slideMode", "setSlideMode", "indicatorStyle", "setIndicatorStyle", "sliderHeight", "setSliderHeight", "Landroidx/viewpager/widget/ViewPager;", "viewPager", "setupWithViewPager", "(Landroidx/viewpager/widget/ViewPager;)V", "Landroidx/viewpager2/widget/ViewPager2;", "viewPager2", "(Landroidx/viewpager2/widget/ViewPager2;)V", "", "showIndicatorWhenOneItem", "(Z)V", ICode.CALL.CALL_KEY_STATE, "onPageScrollStateChanged", "Lrz4;", "options", "setIndicatorOptions", "(Lrz4;)V", "Lrz4;", "getMIndicatorOptions", "()Lrz4;", "setMIndicatorOptions", "mIndicatorOptions", "c", "Landroidx/viewpager/widget/ViewPager;", "mViewPager", "d", "Landroidx/viewpager2/widget/ViewPager2;", "mViewPager2", "com/zhpan/indicator/base/BaseIndicatorView$mOnPageChangeCallback$1", "e", "Lcom/zhpan/indicator/base/BaseIndicatorView$mOnPageChangeCallback$1;", "mOnPageChangeCallback", "getCheckedSliderWidth", "indicator_release"}, k = 1, mv = {1, 4, 0})
public class BaseIndicatorView extends View implements IIndicator {

    public rz4 mIndicatorOptions;

    public ViewPager mViewPager;

    public ViewPager2 mViewPager2;

    public final BaseIndicatorView$mOnPageChangeCallback$1 mOnPageChangeCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.zhpan.indicator.base.BaseIndicatorView$mOnPageChangeCallback$1] */
    public BaseIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.k(context, "context");
        this.mOnPageChangeCallback = new ViewPager2.OnPageChangeCallback() {
            @Override
            public void onPageScrollStateChanged(int state) {
                this.d.onPageScrollStateChanged(state);
            }

            @Override
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                this.d.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }

            @Override
            public void onPageSelected(int position) {
                this.d.onPageSelected(position);
            }
        };
        this.mIndicatorOptions = new rz4();
    }

    public final void a(int position, float positionOffset) {
        if (this.mIndicatorOptions.j() == 4 || this.mIndicatorOptions.j() == 5) {
            setCurrentPosition(position);
            setSlideProgress(positionOffset);
        } else if (position % getPageSize() != getPageSize() - 1) {
            setCurrentPosition(position);
            setSlideProgress(positionOffset);
        } else if (positionOffset < 0.5d) {
            setCurrentPosition(position);
            setSlideProgress(0.0f);
        } else {
            setCurrentPosition(0);
            setSlideProgress(0.0f);
        }
    }

    public final void b() {
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            if (viewPager != null) {
                viewPager.removeOnPageChangeListener(this);
            }
            ViewPager viewPager2 = this.mViewPager;
            if (viewPager2 != null) {
                viewPager2.addOnPageChangeListener(this);
            }
            ViewPager viewPager3 = this.mViewPager;
            if (viewPager3 != null && viewPager3.getAdapter() != null) {
                ViewPager viewPager4 = this.mViewPager;
                if (viewPager4 == null) {
                    y45.v();
                }
                PagerAdapter adapter = viewPager4.getAdapter();
                if (adapter == null) {
                    y45.v();
                }
                y45.f(adapter, "mViewPager!!.adapter!!");
                setPageSize(adapter.getCount());
            }
        }
        ViewPager2 viewPager5 = this.mViewPager2;
        if (viewPager5 != null) {
            if (viewPager5 != null) {
                viewPager5.unregisterOnPageChangeCallback(this.mOnPageChangeCallback);
            }
            ViewPager2 viewPager6 = this.mViewPager2;
            if (viewPager6 != null) {
                viewPager6.registerOnPageChangeCallback(this.mOnPageChangeCallback);
            }
            ViewPager2 viewPager7 = this.mViewPager2;
            if (viewPager7 == null || viewPager7.getAdapter() == null) {
                return;
            }
            ViewPager2 viewPager8 = this.mViewPager2;
            if (viewPager8 == null) {
                y45.v();
            }
            RecyclerView.Adapter adapter2 = viewPager8.getAdapter();
            if (adapter2 == null) {
                y45.v();
            }
            y45.f(adapter2, "mViewPager2!!.adapter!!");
            setPageSize(adapter2.getItemCount());
        }
    }

    public final int getCheckedColor() {
        return this.mIndicatorOptions.a();
    }

    public final float getCheckedSlideWidth() {
        return this.mIndicatorOptions.b();
    }

    public final float getCheckedSliderWidth() {
        return this.mIndicatorOptions.b();
    }

    public final int getCurrentPosition() {
        return this.mIndicatorOptions.c();
    }

    public final float getIndicatorGap() {
        return this.mIndicatorOptions.l();
    }

    public final rz4 getMIndicatorOptions() {
        return this.mIndicatorOptions;
    }

    public final float getNormalSlideWidth() {
        return this.mIndicatorOptions.f();
    }

    public final int getPageSize() {
        return this.mIndicatorOptions.h();
    }

    public final int getSlideMode() {
        return this.mIndicatorOptions.j();
    }

    public final float getSlideProgress() {
        return this.mIndicatorOptions.k();
    }

    public void notifyDataChanged() {
        b();
        requestLayout();
        invalidate();
    }

    @Override
    public void onPageScrollStateChanged(int state) {
    }

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        if (getSlideMode() == 0 || getPageSize() <= 1) {
            return;
        }
        a(position, positionOffset);
        invalidate();
    }

    @Override
    public void onPageSelected(int position) {
        if (getSlideMode() == 0) {
            setCurrentPosition(position);
            setSlideProgress(0.0f);
            invalidate();
        }
    }

    public final void setCheckedColor(@ColorInt int normalColor) {
        this.mIndicatorOptions.o(normalColor);
    }

    public final void setCheckedSlideWidth(@Px float checkedSliderWidth) {
        this.mIndicatorOptions.p(checkedSliderWidth);
    }

    public final void setCurrentPosition(int currentPosition) {
        this.mIndicatorOptions.q(currentPosition);
    }

    public final void setIndicatorGap(float indicatorGap) {
        this.mIndicatorOptions.A(indicatorGap);
    }

    public void setIndicatorOptions(rz4 options) {
        y45.k(options, "options");
        this.mIndicatorOptions = options;
    }

    public final BaseIndicatorView setIndicatorStyle(int indicatorStyle) {
        this.mIndicatorOptions.r(indicatorStyle);
        return this;
    }

    public final void setMIndicatorOptions(rz4 rz4Var) {
        y45.k(rz4Var, "<set-?>");
        this.mIndicatorOptions = rz4Var;
    }

    public final void setNormalColor(@ColorInt int normalColor) {
        this.mIndicatorOptions.s(normalColor);
    }

    public final void setNormalSlideWidth(float normalSliderWidth) {
        this.mIndicatorOptions.t(normalSliderWidth);
    }

    public final BaseIndicatorView setPageSize(int pageSize) {
        this.mIndicatorOptions.v(pageSize);
        return this;
    }

    public final BaseIndicatorView setSlideMode(int slideMode) {
        this.mIndicatorOptions.x(slideMode);
        return this;
    }

    public final void setSlideProgress(float slideProgress) {
        this.mIndicatorOptions.y(slideProgress);
    }

    public final BaseIndicatorView setSliderColor(@ColorInt int normalColor, @ColorInt int selectedColor) {
        this.mIndicatorOptions.z(normalColor, selectedColor);
        return this;
    }

    public final BaseIndicatorView setSliderGap(float sliderGap) {
        this.mIndicatorOptions.A(sliderGap);
        return this;
    }

    public final BaseIndicatorView setSliderHeight(float sliderHeight) {
        this.mIndicatorOptions.B(sliderHeight);
        return this;
    }

    public final BaseIndicatorView setSliderWidth(@Px float sliderWidth) {
        this.mIndicatorOptions.C(sliderWidth);
        return this;
    }

    public final void setupWithViewPager(ViewPager viewPager) {
        y45.k(viewPager, "viewPager");
        this.mViewPager = viewPager;
        notifyDataChanged();
    }

    public final void showIndicatorWhenOneItem(boolean showIndicatorWhenOneItem) {
        this.mIndicatorOptions.w(showIndicatorWhenOneItem);
    }

    public final BaseIndicatorView setSliderWidth(@Px float normalSliderWidth, @Px float selectedSliderWidth) {
        this.mIndicatorOptions.D(normalSliderWidth, selectedSliderWidth);
        return this;
    }

    public final void setupWithViewPager(ViewPager2 viewPager2) {
        y45.k(viewPager2, "viewPager2");
        this.mViewPager2 = viewPager2;
        notifyDataChanged();
    }
}
