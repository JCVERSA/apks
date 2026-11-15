package com.cloud.tupdate.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.tupdate.R;
import com.cloud.tupdate.net.utils.LogUtil;
import com.cloud.tupdate.view.MaxHeightScrollView;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001:\u0001:B\u0013\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0012\u0010\u0013J/\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b!\u0010\"R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010#R\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010$R\"\u0010%\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b%\u0010'\"\u0004\b(\u0010)R\"\u0010*\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010&\u001a\u0004\b*\u0010'\"\u0004\b+\u0010)R\u001a\u0010-\u001a\u00020,8\u0006X\u0086D¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\"\u00102\u001a\u0002018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u00108\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010&\u001a\u0004\b8\u0010'\"\u0004\b9\u0010)¨\u0006;"}, d2 = {"Lcom/cloud/tupdate/view/MaxHeightScrollView;", "Landroid/widget/ScrollView;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "maxHeight", "Lzfb;", "setMaxHeight", "(I)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", CmcdData.STREAM_TYPE_LIVE, "t", "oldl", "oldt", "onScrollChanged", "(IIII)V", "Landroid/view/MotionEvent;", "ev", "", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;", "mListener", "setListener", "(Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;)V", "I", "Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;", "isFingerUp", "Z", "()Z", "setFingerUp", "(Z)V", "isScrolling", "setScrolling", "", "mDragDelayTime", "J", "getMDragDelayTime", "()J", "Ljava/lang/Thread;", "mDragThread", "Ljava/lang/Thread;", "getMDragThread", "()Ljava/lang/Thread;", "setMDragThread", "(Ljava/lang/Thread;)V", "isBottom", "setBottom", "onScrollOverListener", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class MaxHeightScrollView extends ScrollView {
    private boolean isBottom;
    private boolean isFingerUp;
    private boolean isScrolling;
    private final long mDragDelayTime;
    private Thread mDragThread;
    private onScrollOverListener mListener;
    private int maxHeight;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;", "", "", "overScroll", "isTop", "Lzfb;", "scrollOver", "(ZZ)V", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public interface onScrollOverListener {
        void scrollOver(boolean overScroll, boolean isTop);
    }

    public MaxHeightScrollView(Context context) {
        super(context);
        this.isFingerUp = true;
        this.mDragDelayTime = 100L;
        this.mDragThread = new Thread(new Runnable() {
            @Override
            public final void run() {
                MaxHeightScrollView.m76mDragThread$lambda0(this.b);
            }
        });
    }

    public static final void m76mDragThread$lambda0(MaxHeightScrollView maxHeightScrollView) {
        y45.j(maxHeightScrollView, "this$0");
        onScrollOverListener onscrolloverlistener = maxHeightScrollView.mListener;
        if (onscrolloverlistener != null) {
            if (maxHeightScrollView.isFingerUp && onscrolloverlistener != null) {
                onscrolloverlistener.scrollOver(true, maxHeightScrollView.isBottom);
            }
            maxHeightScrollView.isScrolling = false;
        }
    }

    public final long getMDragDelayTime() {
        return this.mDragDelayTime;
    }

    public final Thread getMDragThread() {
        return this.mDragThread;
    }

    public final boolean getIsBottom() {
        return this.isBottom;
    }

    public final boolean getIsFingerUp() {
        return this.isFingerUp;
    }

    public final boolean getIsScrolling() {
        return this.isScrolling;
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i = this.maxHeight;
        if (i > 0) {
            heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE);
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override
    public void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged((int) getX(), (int) getY(), oldl, oldt);
        try {
            if (this.mListener != null) {
                this.isScrolling = true;
                removeCallbacks(this.mDragThread);
                onScrollOverListener onscrolloverlistener = this.mListener;
                if (onscrolloverlistener != null) {
                    onscrolloverlistener.scrollOver(false, this.isBottom);
                }
                postDelayed(this.mDragThread, this.mDragDelayTime);
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (scrollY <= 0) {
                    this.isBottom = true;
                } else if (scrollY == childAt.getHeight() - getHeight()) {
                    this.isBottom = false;
                } else {
                    this.isBottom = false;
                }
            }
        } catch (Exception e) {
            LogUtil.a.d(e);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent ev) {
        onScrollOverListener onscrolloverlistener;
        if ((ev == null ? null : Integer.valueOf(ev.getAction())) == 1) {
            this.isFingerUp = true;
            if (!this.isScrolling && (onscrolloverlistener = this.mListener) != null && onscrolloverlistener != null) {
                onscrolloverlistener.scrollOver(true, this.isBottom);
            }
        } else {
            if ((ev != null ? Integer.valueOf(ev.getAction()) : null) == 2) {
                this.isFingerUp = false;
            }
        }
        return super.onTouchEvent(ev);
    }

    public final void setBottom(boolean z) {
        this.isBottom = z;
    }

    public final void setFingerUp(boolean z) {
        this.isFingerUp = z;
    }

    public final void setListener(onScrollOverListener mListener) {
        this.mListener = mListener;
    }

    public final void setMDragThread(Thread thread) {
        y45.j(thread, "<set-?>");
        this.mDragThread = thread;
    }

    public final void setMaxHeight(int maxHeight) {
        this.maxHeight = maxHeight;
        requestLayout();
    }

    public final void setScrolling(boolean z) {
        this.isScrolling = z;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxHeightScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
        this.isFingerUp = true;
        this.mDragDelayTime = 100L;
        this.mDragThread = new Thread(new Runnable() {
            @Override
            public final void run() {
                MaxHeightScrollView.m76mDragThread$lambda0(this.b);
            }
        });
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaxHeightScrollView);
        y45.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…able.MaxHeightScrollView)");
        this.maxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MaxHeightScrollView_max_height, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxHeightScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.isFingerUp = true;
        this.mDragDelayTime = 100L;
        this.mDragThread = new Thread(new Runnable() {
            @Override
            public final void run() {
                MaxHeightScrollView.m76mDragThread$lambda0(this.b);
            }
        });
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaxHeightScrollView);
        y45.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…able.MaxHeightScrollView)");
        this.maxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MaxHeightScrollView_max_height, 0);
    }
}
