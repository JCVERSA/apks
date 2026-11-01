package f;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.Scroller;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import ru.zdevs.zarchiver.ZImageViewer;

public class b extends ViewGroup {
    public static final int[] S = {R.attr.layout_gravity};
    public static final a T = new a();
    public static final InterpolatorC0013b U = new InterpolatorC0013b();
    public int A;
    public float B;
    public float C;
    public float D;
    public float E;
    public int F;
    public VelocityTracker G;
    public int H;
    public int I;
    public int J;
    public int K;
    public EdgeEffect L;
    public EdgeEffect M;
    public boolean N;
    public boolean O;
    public int P;
    public final c Q;
    public int R;

    public int f714a;

    public final ArrayList<e> f715b;

    public final e f716c;

    public final Rect f717d;

    public f.a f718e;

    public int f719f;

    public int f720g;

    public Parcelable f721h;

    public Scroller f722i;

    public boolean f723j;

    public i f724k;

    public int f725l;

    public Drawable f726m;

    public int f727n;

    public int f728o;

    public float f729p;

    public float f730q;

    public int f731r;

    public boolean f732s;

    public boolean f733t;

    public boolean f734u;

    public int f735v;

    public boolean f736w;

    public boolean f737x;

    public int f738y;

    public int f739z;

    public class a implements Comparator<e> {
        @Override
        public final int compare(e eVar, e eVar2) {
            return eVar.f742b - eVar2.f742b;
        }
    }

    public class InterpolatorC0013b implements Interpolator {
        @Override
        public final float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public final void run() {
            b bVar = b.this;
            bVar.setScrollState(0);
            bVar.o();
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface d {
    }

    public static class e {

        public FrameLayout f741a;

        public int f742b;

        public boolean f743c;

        public float f744d;

        public float f745e;
    }

    public class g extends View.AccessibilityDelegate {
        public g() {
        }

        /* JADX WARN: Code duplicated, block: B:7:0x001a  */
        @Override
        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            boolean z2;
            f.a aVar;
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(b.class.getName());
            b bVar = b.this;
            f.a aVar2 = bVar.f718e;
            if (aVar2 != null) {
                z2 = aVar2.b() > 1;
            }
            accessibilityEvent.setScrollable(z2);
            if (accessibilityEvent.getEventType() != 4096 || (aVar = bVar.f718e) == null) {
                return;
            }
            accessibilityEvent.setItemCount(aVar.b());
            accessibilityEvent.setFromIndex(bVar.f719f);
            accessibilityEvent.setToIndex(bVar.f719f);
        }

        @Override
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(b.class.getName());
            b bVar = b.this;
            f.a aVar = bVar.f718e;
            accessibilityNodeInfo.setScrollable(aVar != null && aVar.b() > 1);
            if (bVar.canScrollHorizontally(1)) {
                accessibilityNodeInfo.addAction(4096);
            }
            if (bVar.canScrollHorizontally(-1)) {
                accessibilityNodeInfo.addAction(8192);
            }
        }

        @Override
        public final boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (super.performAccessibilityAction(view, i2, bundle)) {
                return true;
            }
            b bVar = b.this;
            if (i2 == 4096) {
                if (!bVar.canScrollHorizontally(1)) {
                    return false;
                }
                bVar.setCurrentItem(bVar.f719f + 1);
                return true;
            }
            if (i2 != 8192 || !bVar.canScrollHorizontally(-1)) {
                return false;
            }
            bVar.setCurrentItem(bVar.f719f - 1);
            return true;
        }
    }

    public interface h {
        void a();

        void b();

        void c();
    }

    public class i extends DataSetObserver {
        public i() {
        }

        @Override
        public final void onChanged() {
            b.this.e();
        }

        @Override
        public final void onInvalidated() {
            b.this.e();
        }
    }

    public static class j extends AbsSavedState {
        public static final Parcelable.Creator<j> CREATOR = new a();

        public int f752a;

        public Parcelable f753b;

        public class a implements Parcelable.ClassLoaderCreator<j> {
            @Override
            public final j createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new j(parcel, classLoader);
            }

            @Override
            public final Object[] newArray(int i2) {
                return new j[i2];
            }

            @Override
            public final Object createFromParcel(Parcel parcel) {
                return new j(parcel, null);
            }
        }

        public j(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f752a + "}";
        }

        @Override
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f752a);
            parcel.writeParcelable(this.f753b, i2);
        }

        public j(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? j.class.getClassLoader() : classLoader;
            this.f752a = parcel.readInt();
            this.f753b = parcel.readParcelable(classLoader);
        }
    }

    public b(Context context) {
        super(context);
        this.f715b = new ArrayList<>();
        this.f716c = new e();
        this.f717d = new Rect();
        this.f720g = -1;
        this.f721h = null;
        this.f729p = -3.4028235E38f;
        this.f730q = Float.MAX_VALUE;
        this.f735v = 1;
        this.F = -1;
        this.N = true;
        this.Q = new c();
        this.R = 0;
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.f722i = new Scroller(context2, U);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f2 = context2.getResources().getDisplayMetrics().density;
        this.A = viewConfiguration.getScaledPagingTouchSlop();
        this.H = (int) (400.0f * f2);
        this.I = viewConfiguration.getScaledMaximumFlingVelocity();
        this.L = new EdgeEffect(context2);
        this.M = new EdgeEffect(context2);
        this.J = (int) (25.0f * f2);
        this.K = (int) (2.0f * f2);
        this.f738y = (int) (f2 * 16.0f);
        setAccessibilityDelegate(new g());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 16 && getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        if (i2 >= 21) {
            setOnApplyWindowInsetsListener(new f.c(this));
        }
    }

    public static boolean c(View view, boolean z2, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && c(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z2 && view.canScrollHorizontally(-i2);
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z2) {
        if (this.f733t != z2) {
            this.f733t = z2;
        }
    }

    public final e a(int i2, int i3) {
        e eVar = new e();
        eVar.f742b = i2;
        ZImageViewer.e eVar2 = (ZImageViewer.e) this.f718e;
        eVar2.getClass();
        Context context = eVar2.f1475a;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ProgressBar progressBar = new ProgressBar(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        progressBar.setLayoutParams(layoutParams);
        progressBar.setIndeterminate(true);
        g.d dVar = new g.d(context);
        dVar.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ZImageViewer zImageViewer = ZImageViewer.this;
        dVar.setOnClickListener(zImageViewer);
        dVar.setOnImageEventListener(zImageViewer);
        dVar.setOrientation(-1);
        dVar.setTag(frameLayout);
        if (eVar2.f1476b.c()) {
            dVar.w(eVar2.e(i2), false);
        }
        frameLayout.addView(dVar);
        frameLayout.addView(progressBar);
        addView(frameLayout);
        eVar.f741a = frameLayout;
        this.f718e.getClass();
        eVar.f744d = 1.0f;
        ArrayList<e> arrayList = this.f715b;
        if (i3 < 0 || i3 >= arrayList.size()) {
            arrayList.add(eVar);
        } else {
            arrayList.add(i3, eVar);
        }
        return eVar;
    }

    @Override
    public final void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        e eVarG;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (eVarG = g(childAt)) != null && eVarG.f742b == this.f719f) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override
    public final void addTouchables(ArrayList<View> arrayList) {
        e eVarG;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (eVarG = g(childAt)) != null && eVarG.f742b == this.f719f) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = new f();
        }
        f fVar = (f) layoutParams;
        boolean z2 = fVar.f746a | (view.getClass().getAnnotation(d.class) != null);
        fVar.f746a = z2;
        if (!this.f732s) {
            super.addView(view, i2, layoutParams);
        } else {
            if (z2) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            fVar.f749d = true;
            addViewInLayout(view, i2, layoutParams);
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00cf  */
    public final boolean b(int i2) {
        boolean zRequestFocus;
        boolean z2;
        View viewFindFocus = findFocus();
        boolean z3 = true;
        boolean zL = false;
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    z2 = false;
                    break;
                }
                if (parent == this) {
                    z2 = true;
                    break;
                }
                parent = parent.getParent();
            }
            if (!z2) {
                StringBuilder sb = new StringBuilder();
                sb.append(viewFindFocus.getClass().getSimpleName());
                for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    sb.append(" => ");
                    sb.append(parent2.getClass().getSimpleName());
                }
                Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                viewFindFocus = null;
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i2);
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            Rect rect = this.f717d;
            if (i2 == 17) {
                int i3 = f(rect, viewFindNextFocus).left;
                int i4 = f(rect, viewFindFocus).left;
                if (viewFindFocus == null || i3 < i4) {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                } else {
                    int i5 = this.f719f;
                    if (i5 > 0) {
                        this.f734u = false;
                        t(i5 - 1, 0, true, false);
                    } else {
                        z3 = false;
                    }
                    zL = z3;
                }
            } else if (i2 == 66) {
                zRequestFocus = (viewFindFocus == null || f(rect, viewFindNextFocus).left > f(rect, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : l();
            }
            zL = zRequestFocus;
        } else if (i2 == 17 || i2 == 1) {
            int i6 = this.f719f;
            if (i6 > 0) {
                this.f734u = false;
                t(i6 - 1, 0, true, false);
            } else {
                z3 = false;
            }
            zL = z3;
        } else if (i2 == 66 || i2 == 2) {
            zL = l();
        }
        if (zL) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
        }
        return zL;
    }

    @Override
    public final boolean canScrollHorizontally(int i2) {
        if (this.f718e == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i2 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.f729p));
        }
        return i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.f730q));
    }

    @Override
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    @Override
    public final void computeScroll() {
        this.f723j = true;
        if (this.f722i.isFinished() || !this.f722i.computeScrollOffset()) {
            d(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f722i.getCurrX();
        int currY = this.f722i.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m(currX)) {
                this.f722i.abortAnimation();
                scrollTo(0, currY);
            }
        }
        postInvalidateOnAnimation();
    }

    public final void d(boolean z2) {
        boolean z3 = this.R == 2;
        if (z3) {
            setScrollingCacheEnabled(false);
            if (!this.f722i.isFinished()) {
                this.f722i.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f722i.getCurrX();
                int currY = this.f722i.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m(currX);
                    }
                }
            }
        }
        this.f734u = false;
        int i2 = 0;
        while (true) {
            ArrayList<e> arrayList = this.f715b;
            if (i2 >= arrayList.size()) {
                break;
            }
            e eVar = arrayList.get(i2);
            if (eVar.f743c) {
                eVar.f743c = false;
                z3 = true;
            }
            i2++;
        }
        if (z3) {
            c cVar = this.Q;
            if (z2) {
                postOnAnimation(cVar);
            } else {
                cVar.run();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0061  */
    @Override
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zB;
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        if (keyEvent.getAction() != 0) {
            zB = false;
        } else {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 21) {
                if (keyCode == 22) {
                    zB = keyEvent.hasModifiers(2) ? l() : b(66);
                } else if (keyCode != 61) {
                    zB = false;
                } else if (keyEvent.hasNoModifiers()) {
                    zB = b(2);
                } else if (keyEvent.hasModifiers(1)) {
                    zB = b(1);
                } else {
                    zB = false;
                }
            } else if (keyEvent.hasModifiers(2)) {
                int i2 = this.f719f;
                if (i2 > 0) {
                    this.f734u = false;
                    t(i2 - 1, 0, true, false);
                    zB = true;
                } else {
                    zB = false;
                }
            } else {
                zB = b(17);
            }
        }
        return zB;
    }

    @Override
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        e eVarG;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (eVarG = g(childAt)) != null && eVarG.f742b == this.f719f && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void draw(Canvas canvas) {
        f.a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f718e) != null && aVar.b() > 1)) {
            if (!this.L.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.f729p * width);
                this.L.setSize(height, width);
                zDraw = false | this.L.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.M.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f730q + 1.0f)) * width2);
                this.M.setSize(height2, width2);
                zDraw |= this.M.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.L.finish();
            this.M.finish();
        }
        if (zDraw) {
            postInvalidateOnAnimation();
        }
    }

    @Override
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f726m;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final void e() {
        int iB = this.f718e.b();
        this.f714a = iB;
        ArrayList<e> arrayList = this.f715b;
        boolean z2 = arrayList.size() < (this.f735v * 2) + 1 && arrayList.size() < iB;
        int i2 = this.f719f;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            e eVar = arrayList.get(i3);
            f.a aVar = this.f718e;
            FrameLayout frameLayout = eVar.f741a;
            aVar.getClass();
        }
        Collections.sort(arrayList, T);
        if (z2) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                f fVar = (f) getChildAt(i4).getLayoutParams();
                if (!fVar.f746a) {
                    fVar.f748c = 0.0f;
                }
            }
            t(i2, 0, false, true);
            requestLayout();
        }
    }

    public final Rect f(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    public final e g(View view) {
        int i2 = 0;
        while (true) {
            ArrayList<e> arrayList = this.f715b;
            if (i2 >= arrayList.size()) {
                return null;
            }
            e eVar = arrayList.get(i2);
            f.a aVar = this.f718e;
            FrameLayout frameLayout = eVar.f741a;
            ((ZImageViewer.e) aVar).getClass();
            if (view == frameLayout) {
                return eVar;
            }
            i2++;
        }
    }

    @Override
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f();
    }

    @Override
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new f();
    }

    public f.a getAdapter() {
        return this.f718e;
    }

    @Override
    public final int getChildDrawingOrder(int i2, int i3) {
        throw null;
    }

    public int getCurrentItem() {
        return this.f719f;
    }

    public int getOffscreenPageLimit() {
        return this.f735v;
    }

    public int getPageMargin() {
        return this.f725l;
    }

    public final e h() {
        e eVar;
        int i2;
        int clientWidth = getClientWidth();
        float f2 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f3 = clientWidth > 0 ? this.f725l / clientWidth : 0.0f;
        e eVar2 = null;
        float f4 = 0.0f;
        int i3 = -1;
        int i4 = 0;
        boolean z2 = true;
        while (true) {
            ArrayList<e> arrayList = this.f715b;
            if (i4 >= arrayList.size()) {
                return eVar2;
            }
            e eVar3 = arrayList.get(i4);
            if (z2 || eVar3.f742b == (i2 = i3 + 1)) {
                eVar = eVar3;
            } else {
                float f5 = f2 + f4 + f3;
                e eVar4 = this.f716c;
                eVar4.f745e = f5;
                eVar4.f742b = i2;
                this.f718e.getClass();
                eVar4.f744d = 1.0f;
                i4--;
                eVar = eVar4;
            }
            f2 = eVar.f745e;
            float f6 = eVar.f744d + f2 + f3;
            if (!z2 && scrollX < f2) {
                return eVar2;
            }
            if (scrollX < f6 || i4 == arrayList.size() - 1) {
                return eVar;
            }
            int i5 = eVar.f742b;
            float f7 = eVar.f744d;
            i4++;
            z2 = false;
            e eVar5 = eVar;
            i3 = i5;
            f4 = f7;
            eVar2 = eVar5;
        }
    }

    public final e i(int i2) {
        int i3 = 0;
        while (true) {
            ArrayList<e> arrayList = this.f715b;
            if (i3 >= arrayList.size()) {
                return null;
            }
            e eVar = arrayList.get(i3);
            if (eVar.f742b == i2) {
                return eVar;
            }
            i3++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0063  */
    public final void j(int i2, float f2, int i3) {
        int iMax;
        int width;
        int left;
        if (this.P > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.f746a) {
                    int i5 = fVar.f747b & 7;
                    if (i5 != 1) {
                        if (i5 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i5 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i6 = iMax;
                    width = paddingLeft;
                    paddingLeft = i6;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        this.O = true;
    }

    public final void k(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.F) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.B = motionEvent.getX(i2);
            this.F = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.G;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean l() {
        f.a aVar = this.f718e;
        if (aVar == null || this.f719f >= aVar.b() - 1) {
            return false;
        }
        int i2 = this.f719f + 1;
        this.f734u = false;
        t(i2, 0, true, false);
        return true;
    }

    public final boolean m(int i2) {
        if (this.f715b.size() == 0) {
            if (this.N) {
                return false;
            }
            this.O = false;
            j(0, 0.0f, 0);
            if (this.O) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        e eVarH = h();
        int clientWidth = getClientWidth();
        int i3 = this.f725l;
        int i4 = clientWidth + i3;
        float f2 = clientWidth;
        int i5 = eVarH.f742b;
        float f3 = ((i2 / f2) - eVarH.f745e) / (eVarH.f744d + (i3 / f2));
        this.O = false;
        j(i5, f3, (int) (i4 * f3));
        if (this.O) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    public final boolean n(float f2) {
        boolean z2;
        boolean z3;
        float f3 = this.B - f2;
        this.B = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.f729p * clientWidth;
        float f5 = this.f730q * clientWidth;
        ArrayList<e> arrayList = this.f715b;
        boolean z4 = false;
        e eVar = arrayList.get(0);
        e eVar2 = arrayList.get(arrayList.size() - 1);
        if (eVar.f742b != 0) {
            f4 = eVar.f745e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (eVar2.f742b != this.f718e.b() - 1) {
            f5 = eVar2.f745e * clientWidth;
            z3 = false;
        } else {
            z3 = true;
        }
        if (scrollX < f4) {
            if (z2) {
                this.L.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z4 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z3) {
                this.M.onPull(Math.abs(scrollX - f5) / clientWidth);
                z4 = true;
            }
            scrollX = f5;
        }
        int i2 = (int) scrollX;
        this.B = (scrollX - i2) + this.B;
        scrollTo(i2, getScrollY());
        m(i2);
        return z4;
    }

    public final void o() {
        p(this.f719f);
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.N = true;
    }

    @Override
    public final void onDetachedFromWindow() {
        removeCallbacks(this.Q);
        Scroller scroller = this.f722i;
        if (scroller != null && !scroller.isFinished()) {
            this.f722i.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override
    public final void onDraw(Canvas canvas) {
        int i2;
        float f2;
        super.onDraw(canvas);
        if (this.f725l <= 0 || this.f726m == null) {
            return;
        }
        ArrayList<e> arrayList = this.f715b;
        if (arrayList.size() <= 0 || this.f718e == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f3 = width;
        float f4 = this.f725l / f3;
        int i3 = 0;
        e eVar = arrayList.get(0);
        float f5 = eVar.f745e;
        int size = arrayList.size();
        int i4 = eVar.f742b;
        int i5 = arrayList.get(size - 1).f742b;
        while (i4 < i5) {
            while (true) {
                i2 = eVar.f742b;
                if (i4 <= i2 || i3 >= size) {
                    break;
                }
                i3++;
                eVar = arrayList.get(i3);
            }
            if (i4 == i2) {
                float f6 = eVar.f745e;
                float f7 = eVar.f744d;
                f2 = (f6 + f7) * f3;
                f5 = f6 + f7 + f4;
            } else {
                this.f718e.getClass();
                f2 = (f5 + 1.0f) * f3;
                f5 = 1.0f + f4 + f5;
            }
            if (this.f725l + f2 > scrollX) {
                this.f726m.setBounds(Math.round(f2), this.f727n, Math.round(this.f725l + f2), this.f728o);
                this.f726m.draw(canvas);
            }
            if (f2 > scrollX + width) {
                return;
            }
            i4++;
            arrayList = arrayList;
            f4 = f4;
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            r();
            return false;
        }
        if (action != 0) {
            if (this.f736w) {
                return true;
            }
            if (this.f737x) {
                return false;
            }
        }
        if (action == 0) {
            float x2 = motionEvent.getX();
            this.D = x2;
            this.B = x2;
            float y2 = motionEvent.getY();
            this.E = y2;
            this.C = y2;
            this.F = motionEvent.getPointerId(0);
            this.f737x = false;
            this.f723j = true;
            this.f722i.computeScrollOffset();
            if (this.R != 2 || Math.abs(this.f722i.getFinalX() - this.f722i.getCurrX()) <= this.K) {
                d(false);
                this.f736w = false;
            } else {
                this.f722i.abortAnimation();
                this.f734u = false;
                o();
                this.f736w = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                setScrollState(1);
            }
        } else if (action == 2) {
            int i2 = this.F;
            if (i2 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i2);
                float x3 = motionEvent.getX(iFindPointerIndex);
                float f2 = x3 - this.B;
                float fAbs = Math.abs(f2);
                float y3 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y3 - this.E);
                if (f2 != 0.0f) {
                    float f3 = this.B;
                    if (!((f3 < ((float) this.f739z) && f2 > 0.0f) || (f3 > ((float) (getWidth() - this.f739z)) && f2 < 0.0f)) && c(this, false, (int) f2, (int) x3, (int) y3)) {
                        this.B = x3;
                        this.C = y3;
                        this.f737x = true;
                        return false;
                    }
                }
                float f4 = this.A;
                if (fAbs > f4 && fAbs * 0.5f > fAbs2) {
                    this.f736w = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    setScrollState(1);
                    this.B = f2 > 0.0f ? this.D + this.A : this.D - this.A;
                    this.C = y3;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > f4) {
                    this.f737x = true;
                }
                if (this.f736w && n(x3)) {
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            k(motionEvent);
        }
        if (this.G == null) {
            this.G = VelocityTracker.obtain();
        }
        this.G.addMovement(motionEvent);
        return this.f736w;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0071  */
    /* JADX WARN: Code duplicated, block: B:24:0x0075  */
    /* JADX WARN: Code duplicated, block: B:26:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0088  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    @Override
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        boolean z3;
        e eVarG;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.f746a) {
                    int i10 = fVar.f747b;
                    int i11 = i10 & 7;
                    int i12 = i10 & 112;
                    if (i11 != 1) {
                        if (i11 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i11 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i6 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i12 != 16) {
                            if (i12 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i12 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i7 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i13 = paddingLeft + scrollX;
                            childAt.layout(i13, paddingTop, childAt.getMeasuredWidth() + i13, childAt.getMeasuredHeight() + paddingTop);
                            i8++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i14 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i14;
                        int i15 = paddingLeft + scrollX;
                        childAt.layout(i15, paddingTop, childAt.getMeasuredWidth() + i15, childAt.getMeasuredHeight() + paddingTop);
                        i8++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i6 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i16 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i16;
                    if (i12 != 16) {
                        if (i12 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i12 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i7 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i17 = paddingLeft + scrollX;
                        childAt.layout(i17, paddingTop, childAt.getMeasuredWidth() + i17, childAt.getMeasuredHeight() + paddingTop);
                        i8++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i18 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i18;
                    int i19 = paddingLeft + scrollX;
                    childAt.layout(i19, paddingTop, childAt.getMeasuredWidth() + i19, childAt.getMeasuredHeight() + paddingTop);
                    i8++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i20 = (i6 - paddingLeft) - paddingRight;
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8) {
                f fVar2 = (f) childAt2.getLayoutParams();
                if (!fVar2.f746a && (eVarG = g(childAt2)) != null) {
                    float f2 = i20;
                    int i22 = ((int) (eVarG.f745e * f2)) + paddingLeft;
                    if (fVar2.f749d) {
                        fVar2.f749d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f2 * fVar2.f748c), 1073741824), View.MeasureSpec.makeMeasureSpec((i7 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i22, paddingTop, childAt2.getMeasuredWidth() + i22, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f727n = paddingTop;
        this.f728o = i7 - paddingBottom;
        this.P = i8;
        if (this.N) {
            z3 = false;
            s(this.f719f, 0, false, false);
        } else {
            z3 = false;
        }
        this.N = z3;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0085  */
    /* JADX WARN: Code duplicated, block: B:36:0x0089  */
    /* JADX WARN: Code duplicated, block: B:39:0x008e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x0091  */
    /* JADX WARN: Code duplicated, block: B:42:0x0093  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:66:0x00af A[SYNTHETIC] */
    @Override
    public final void onMeasure(int i2, int i3) {
        f fVar;
        f fVar2;
        int i4;
        int i5;
        int i6;
        setMeasuredDimension(View.getDefaultSize(0, i2), View.getDefaultSize(0, i3));
        int measuredWidth = getMeasuredWidth();
        this.f739z = Math.min(measuredWidth / 10, this.f738y);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i7 = 0;
        while (true) {
            boolean z2 = true;
            int i8 = 1073741824;
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8 && (fVar2 = (f) childAt.getLayoutParams()) != null && fVar2.f746a) {
                int i9 = fVar2.f747b;
                int i10 = i9 & 7;
                int i11 = i9 & 112;
                boolean z3 = i11 == 48 || i11 == 80;
                if (i10 != 3 && i10 != 5) {
                    z2 = false;
                }
                int i12 = Integer.MIN_VALUE;
                if (z3) {
                    i12 = 1073741824;
                } else {
                    i4 = z2 ? 1073741824 : Integer.MIN_VALUE;
                    i5 = ((ViewGroup.LayoutParams) fVar2).width;
                    if (i5 != -2) {
                        if (i5 == -1) {
                            i5 = paddingLeft;
                        }
                        i12 = 1073741824;
                    } else {
                        i5 = paddingLeft;
                    }
                    i6 = ((ViewGroup.LayoutParams) fVar2).height;
                    if (i6 != -2) {
                        i6 = measuredHeight;
                        i8 = i4;
                    } else if (i6 == -1) {
                        i6 = measuredHeight;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i5, i12), View.MeasureSpec.makeMeasureSpec(i6, i8));
                    if (z3) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (z2) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
                i5 = ((ViewGroup.LayoutParams) fVar2).width;
                if (i5 != -2) {
                    if (i5 == -1) {
                        i5 = paddingLeft;
                    }
                    i12 = 1073741824;
                } else {
                    i5 = paddingLeft;
                }
                i6 = ((ViewGroup.LayoutParams) fVar2).height;
                if (i6 != -2) {
                    i6 = measuredHeight;
                    i8 = i4;
                } else if (i6 == -1) {
                    i6 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i5, i12), View.MeasureSpec.makeMeasureSpec(i6, i8));
                if (z3) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z2) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i7++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f731r = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f732s = true;
        o();
        this.f732s = false;
        int childCount2 = getChildCount();
        for (int i13 = 0; i13 < childCount2; i13++) {
            View childAt2 = getChildAt(i13);
            if (childAt2.getVisibility() != 8 && ((fVar = (f) childAt2.getLayoutParams()) == null || !fVar.f746a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * fVar.f748c), 1073741824), this.f731r);
            }
        }
    }

    @Override
    public final boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        int i5;
        e eVarG;
        int childCount = getChildCount();
        if ((i2 & 2) != 0) {
            i4 = childCount;
            i3 = 0;
            i5 = 1;
        } else {
            i3 = childCount - 1;
            i4 = -1;
            i5 = -1;
        }
        while (i3 != i4) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (eVarG = g(childAt)) != null && eVarG.f742b == this.f719f && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i5;
        }
        return false;
    }

    @Override
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof j)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        j jVar = (j) parcelable;
        super.onRestoreInstanceState(jVar.getSuperState());
        if (this.f718e != null) {
            t(jVar.f752a, 0, false, true);
        } else {
            this.f720g = jVar.f752a;
            this.f721h = jVar.f753b;
        }
    }

    @Override
    public final Parcelable onSaveInstanceState() {
        j jVar = new j(super.onSaveInstanceState());
        jVar.f752a = this.f719f;
        f.a aVar = this.f718e;
        if (aVar != null) {
            aVar.getClass();
            jVar.f753b = null;
        }
        return jVar;
    }

    @Override
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.f725l;
            q(i2, i4, i6, i6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00dd  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        f.a aVar;
        boolean zR = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (aVar = this.f718e) == null || aVar.b() == 0) {
            return false;
        }
        if (this.G == null) {
            this.G = VelocityTracker.obtain();
        }
        this.G.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f722i.abortAnimation();
            this.f734u = false;
            o();
            float x2 = motionEvent.getX();
            this.D = x2;
            this.B = x2;
            float y2 = motionEvent.getY();
            this.E = y2;
            this.C = y2;
            this.F = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.B = motionEvent.getX(actionIndex);
                        this.F = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        k(motionEvent);
                        this.B = motionEvent.getX(motionEvent.findPointerIndex(this.F));
                    }
                } else if (this.f736w) {
                    s(this.f719f, 0, true, false);
                    zR = r();
                }
            } else if (!this.f736w) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.F);
                if (iFindPointerIndex == -1) {
                    zR = r();
                } else {
                    float x3 = motionEvent.getX(iFindPointerIndex);
                    float fAbs = Math.abs(x3 - this.B);
                    float y3 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y3 - this.C);
                    if (fAbs > this.A && fAbs > fAbs2) {
                        this.f736w = true;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        float f2 = this.D;
                        this.B = x3 - f2 > 0.0f ? f2 + this.A : f2 - this.A;
                        this.C = y3;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.f736w) {
                        zR = false | n(motionEvent.getX(motionEvent.findPointerIndex(this.F)));
                    }
                }
            } else if (this.f736w) {
                zR = false | n(motionEvent.getX(motionEvent.findPointerIndex(this.F)));
            }
        } else if (this.f736w) {
            VelocityTracker velocityTracker = this.G;
            velocityTracker.computeCurrentVelocity(1000, this.I);
            int xVelocity = (int) velocityTracker.getXVelocity(this.F);
            this.f734u = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            e eVarH = h();
            float f3 = clientWidth;
            float f4 = this.f725l / f3;
            int iMax = eVarH.f742b;
            float f5 = ((scrollX / f3) - eVarH.f745e) / (eVarH.f744d + f4);
            if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.F)) - this.D)) <= this.J || Math.abs(xVelocity) <= this.H) {
                iMax += (int) (f5 + (iMax >= this.f719f ? 0.4f : 0.6f));
            } else if (xVelocity <= 0) {
                iMax++;
            }
            ArrayList<e> arrayList = this.f715b;
            if (arrayList.size() > 0) {
                iMax = Math.max(arrayList.get(0).f742b, Math.min(iMax, arrayList.get(arrayList.size() - 1).f742b));
            }
            t(iMax, xVelocity, true, true);
            zR = r();
        }
        if (zR) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:183:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:187:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ec A[PHI: r3 r5 r12
      0x00ec: PHI (r3v27 int) = (r3v26 int), (r3v11 int), (r3v29 int) binds: [B:59:0x00e1, B:56:0x00cb, B:50:0x00b5] A[DONT_GENERATE, DONT_INLINE]
      0x00ec: PHI (r5v6 int) = (r5v1 int), (r5v5 int), (r5v8 int) binds: [B:59:0x00e1, B:56:0x00cb, B:50:0x00b5] A[DONT_GENERATE, DONT_INLINE]
      0x00ec: PHI (r12v22 float) = (r12v20 float), (r12v21 float), (r12v1 float) binds: [B:59:0x00e1, B:56:0x00cb, B:50:0x00b5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:95:0x0181 A[PHI: r1 r9
      0x0181: PHI (r1v20 float) = (r1v18 float), (r1v19 float), (r1v17 float) binds: [B:93:0x0176, B:90:0x015c, B:84:0x0140] A[DONT_GENERATE, DONT_INLINE]
      0x0181: PHI (r9v36 int) = (r9v34 int), (r9v35 int), (r9v33 int) binds: [B:93:0x0176, B:90:0x015c, B:84:0x0140] A[DONT_GENERATE, DONT_INLINE]] */
    public final void p(int i2) {
        e eVarI;
        String hexString;
        e eVarA;
        e eVarG;
        e eVarG2;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        e eVar;
        e eVar2;
        int i5 = this.f719f;
        if (i5 != i2) {
            eVarI = i(i5);
            this.f719f = i2;
        } else {
            eVarI = null;
        }
        if (this.f718e == null || this.f734u || getWindowToken() == null) {
            return;
        }
        this.f718e.getClass();
        int i6 = this.f735v;
        int iMax = Math.max(0, this.f719f - i6);
        int iB = this.f718e.b();
        int iMin = Math.min(iB - 1, this.f719f + i6);
        if (iB != this.f714a) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.f714a + ", found: " + iB + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.f718e.getClass());
        }
        int i7 = 0;
        while (true) {
            if (i7 < this.f715b.size()) {
                eVarA = this.f715b.get(i7);
                int i8 = eVarA.f742b;
                int i9 = this.f719f;
                if (i8 >= i9) {
                    if (i8 != i9) {
                        break;
                    } else {
                        break;
                    }
                }
                i7++;
            }
            eVarA = null;
            break;
        }
        if (eVarA == null && iB > 0) {
            eVarA = a(this.f719f, i7);
        }
        if (eVarA != null) {
            int i10 = i7 - 1;
            e eVar3 = i10 >= 0 ? this.f715b.get(i10) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - eVarA.f744d) + (getPaddingLeft() / clientWidth);
            boolean z4 = true;
            float f2 = 0.0f;
            for (int i11 = this.f719f - 1; i11 >= 0; i11--) {
                if (f2 >= paddingLeft && i11 < iMax) {
                    if (eVar3 == null) {
                        break;
                    }
                    if (i11 == eVar3.f742b && !eVar3.f743c) {
                        this.f715b.remove(i10);
                        this.f718e.a(this, eVar3.f741a);
                        i10--;
                        i7--;
                        if (i10 >= 0) {
                            eVar3 = this.f715b.get(i10);
                        } else {
                            eVar3 = null;
                        }
                    }
                } else if (eVar3 == null || i11 != eVar3.f742b) {
                    f2 += a(i11, i10 + 1).f744d;
                    i7++;
                    if (i10 >= 0) {
                        eVar3 = this.f715b.get(i10);
                    } else {
                        eVar3 = null;
                    }
                } else {
                    f2 += eVar3.f744d;
                    i10--;
                    if (i10 >= 0) {
                        eVar3 = this.f715b.get(i10);
                    } else {
                        eVar3 = null;
                    }
                }
            }
            float f3 = eVarA.f744d;
            int i12 = i7 + 1;
            if (f3 < 2.0f) {
                e eVar4 = i12 < this.f715b.size() ? this.f715b.get(i12) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i13 = i12;
                for (int i14 = this.f719f + 1; i14 < iB; i14++) {
                    if (f3 >= paddingRight && i14 > iMin) {
                        if (eVar4 == null) {
                            break;
                        }
                        if (i14 == eVar4.f742b && !eVar4.f743c) {
                            this.f715b.remove(i13);
                            this.f718e.a(this, eVar4.f741a);
                            if (i13 < this.f715b.size()) {
                                eVar4 = this.f715b.get(i13);
                            } else {
                                eVar4 = null;
                            }
                        }
                    } else if (eVar4 == null || i14 != eVar4.f742b) {
                        e eVarA2 = a(i14, i13);
                        i13++;
                        f3 += eVarA2.f744d;
                        if (i13 < this.f715b.size()) {
                            eVar4 = this.f715b.get(i13);
                        } else {
                            eVar4 = null;
                        }
                    } else {
                        f3 += eVar4.f744d;
                        i13++;
                        if (i13 < this.f715b.size()) {
                            eVar4 = this.f715b.get(i13);
                        } else {
                            eVar4 = null;
                        }
                    }
                }
            }
            int iB2 = this.f718e.b();
            int clientWidth2 = getClientWidth();
            float f4 = clientWidth2 > 0 ? this.f725l / clientWidth2 : 0.0f;
            ArrayList<e> arrayList = this.f715b;
            if (eVarI != null) {
                int i15 = eVarI.f742b;
                int i16 = eVarA.f742b;
                if (i15 < i16) {
                    float f5 = eVarI.f745e + eVarI.f744d + f4;
                    int i17 = i15 + 1;
                    int i18 = 0;
                    while (i17 <= eVarA.f742b && i18 < arrayList.size()) {
                        e eVar5 = arrayList.get(i18);
                        while (true) {
                            eVar2 = eVar5;
                            if (i17 <= eVar2.f742b || i18 >= arrayList.size() - 1) {
                                break;
                            }
                            i18++;
                            eVar5 = arrayList.get(i18);
                        }
                        while (i17 < eVar2.f742b) {
                            this.f718e.getClass();
                            f5 += 1.0f + f4;
                            i17++;
                        }
                        eVar2.f745e = f5;
                        f5 += eVar2.f744d + f4;
                        i17++;
                    }
                } else if (i15 > i16) {
                    int size = arrayList.size() - 1;
                    float f6 = eVarI.f745e;
                    int i19 = i15 - 1;
                    while (i19 >= eVarA.f742b && size >= 0) {
                        e eVar6 = arrayList.get(size);
                        while (true) {
                            eVar = eVar6;
                            if (i19 >= eVar.f742b || size <= 0) {
                                break;
                            }
                            size--;
                            eVar6 = arrayList.get(size);
                        }
                        while (i19 > eVar.f742b) {
                            this.f718e.getClass();
                            f6 -= 1.0f + f4;
                            i19--;
                        }
                        f6 -= eVar.f744d + f4;
                        eVar.f745e = f6;
                        i19--;
                    }
                }
            }
            int size2 = arrayList.size();
            float f7 = eVarA.f745e;
            int i20 = eVarA.f742b;
            int i21 = i20 - 1;
            this.f729p = i20 == 0 ? f7 : -3.4028235E38f;
            int i22 = iB2 - 1;
            this.f730q = i20 == i22 ? (eVarA.f744d + f7) - 1.0f : Float.MAX_VALUE;
            int i23 = i7 - 1;
            while (i23 >= 0) {
                e eVar7 = arrayList.get(i23);
                while (true) {
                    i4 = eVar7.f742b;
                    if (i21 <= i4) {
                        break;
                    }
                    i21--;
                    this.f718e.getClass();
                    f7 -= 1.0f + f4;
                }
                f7 -= eVar7.f744d + f4;
                eVar7.f745e = f7;
                if (i4 == 0) {
                    this.f729p = f7;
                }
                i23--;
                i21--;
            }
            float f8 = eVarA.f745e + eVarA.f744d + f4;
            int i24 = eVarA.f742b + 1;
            while (i12 < size2) {
                e eVar8 = arrayList.get(i12);
                while (true) {
                    i3 = eVar8.f742b;
                    if (i24 >= i3) {
                        break;
                    }
                    i24++;
                    this.f718e.getClass();
                    f8 += 1.0f + f4;
                }
                if (i3 == i22) {
                    this.f730q = (eVar8.f744d + f8) - 1.0f;
                }
                eVar8.f745e = f8;
                f8 += eVar8.f744d + f4;
                i12++;
                i24++;
            }
            f.a aVar = this.f718e;
            int i25 = this.f719f;
            FrameLayout frameLayout = eVarA.f741a;
            ZImageViewer.e eVar9 = (ZImageViewer.e) aVar;
            int i26 = eVar9.f1477c;
            if (i26 != i25 && (i26 != -1 || i25 == eVar9.f1476b.a())) {
                eVar9.f1477c = i25;
                ZImageViewer.this.setTitle(eVar9.f1476b.getName(i25));
                if (!eVar9.f1476b.c()) {
                    View childAt = frameLayout.getChildAt(0);
                    if (childAt instanceof g.d) {
                        g.d dVar = (g.d) childAt;
                        if (dVar.f811a == null) {
                            g.a aVar2 = dVar.f817d;
                            if (aVar2 != null) {
                                ParcelFileDescriptor parcelFileDescriptor = aVar2.f800c;
                                if (parcelFileDescriptor instanceof e0.g) {
                                    e0.g gVar = (e0.g) parcelFileDescriptor;
                                    if (gVar.f687c || !gVar.f686b.isOpen()) {
                                        z3 = false;
                                    } else {
                                        z3 = true;
                                    }
                                } else {
                                    z3 = true;
                                }
                                z2 = z3;
                            }
                        }
                        if (!z2) {
                            dVar.setEnabled(false);
                            g.a aVarE = eVar9.e(i25);
                            if (dVar.f817d == null && dVar.f811a == null) {
                                z4 = false;
                            }
                            dVar.w(aVarE, z4);
                        }
                    }
                }
            }
        }
        this.f718e.getClass();
        int childCount = getChildCount();
        for (int i27 = 0; i27 < childCount; i27++) {
            View childAt2 = getChildAt(i27);
            f fVar = (f) childAt2.getLayoutParams();
            fVar.getClass();
            if (!fVar.f746a && fVar.f748c == 0.0f && (eVarG2 = g(childAt2)) != null) {
                fVar.f748c = eVarG2.f744d;
                int i28 = eVarG2.f742b;
                fVar.getClass();
            }
        }
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            if (viewFindFocus == null) {
                eVarG = null;
                break;
            }
            while (true) {
                Object parent = viewFindFocus.getParent();
                if (parent == this) {
                    eVarG = g(viewFindFocus);
                    break;
                } else {
                    if (!(parent instanceof View)) {
                        eVarG = null;
                        break;
                    }
                    viewFindFocus = (View) parent;
                }
            }
            if (eVarG == null || eVarG.f742b != this.f719f) {
                for (int i29 = 0; i29 < getChildCount(); i29++) {
                    View childAt3 = getChildAt(i29);
                    e eVarG3 = g(childAt3);
                    if (eVarG3 != null && eVarG3.f742b == this.f719f && childAt3.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    @Override
    public final void postInvalidateOnAnimation() {
        if (Build.VERSION.SDK_INT >= 16) {
            super.postInvalidateOnAnimation();
        } else {
            postInvalidate();
        }
    }

    @Override
    public final void postOnAnimation(Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.postOnAnimation(runnable);
        } else {
            postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    public final void q(int i2, int i3, int i4, int i5) {
        if (i3 > 0 && !this.f715b.isEmpty()) {
            if (!this.f722i.isFinished()) {
                this.f722i.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)), getScrollY());
                return;
            }
        }
        e eVarI = i(this.f719f);
        int iMin = (int) ((eVarI != null ? Math.min(eVarI.f745e, this.f730q) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            d(false);
            scrollTo(iMin, getScrollY());
        }
    }

    public final boolean r() {
        this.F = -1;
        this.f736w = false;
        this.f737x = false;
        VelocityTracker velocityTracker = this.G;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.G = null;
        }
        this.L.onRelease();
        this.M.onRelease();
        return this.L.isFinished() || this.M.isFinished();
    }

    @Override
    public final void removeView(View view) {
        if (this.f732s) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public final void s(int i2, int i3, boolean z2, boolean z3) {
        int iMax;
        int scrollX;
        int iAbs;
        e eVarI = i(i2);
        if (eVarI != null) {
            iMax = (int) (Math.max(this.f729p, Math.min(eVarI.f745e, this.f730q)) * getClientWidth());
        } else {
            iMax = 0;
        }
        if (!z2) {
            d(false);
            scrollTo(iMax, 0);
            m(iMax);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f722i;
        if ((scroller == null || scroller.isFinished()) ? false : true) {
            scrollX = this.f723j ? this.f722i.getCurrX() : this.f722i.getStartX();
            this.f722i.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i4 = scrollX;
        int scrollY = getScrollY();
        int i5 = iMax - i4;
        int i6 = 0 - scrollY;
        if (i5 == 0 && i6 == 0) {
            d(false);
            o();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float f2 = clientWidth;
        float f3 = i7;
        float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i5) * 1.0f) / f2) - 0.5f) * 0.47123894f)) * f3) + f3;
        int iAbs2 = Math.abs(i3);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
        } else {
            this.f718e.getClass();
            iAbs = (int) (((Math.abs(i5) / ((f2 * 1.0f) + this.f725l)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.f723j = false;
        this.f722i.startScroll(i4, scrollY, i5, i6, iMin);
        postInvalidateOnAnimation();
    }

    public void setAdapter(f.a aVar) {
        ArrayList<e> arrayList;
        f.a aVar2 = this.f718e;
        if (aVar2 != null) {
            synchronized (aVar2) {
            }
            this.f718e.getClass();
            int i2 = 0;
            while (true) {
                arrayList = this.f715b;
                if (i2 >= arrayList.size()) {
                    break;
                }
                e eVar = arrayList.get(i2);
                f.a aVar3 = this.f718e;
                int i3 = eVar.f742b;
                aVar3.a(this, eVar.f741a);
                i2++;
            }
            this.f718e.getClass();
            arrayList.clear();
            int i4 = 0;
            while (i4 < getChildCount()) {
                if (!((f) getChildAt(i4).getLayoutParams()).f746a) {
                    removeViewAt(i4);
                    i4--;
                }
                i4++;
            }
            this.f719f = 0;
            scrollTo(0, 0);
        }
        this.f718e = aVar;
        this.f714a = 0;
        if (aVar != null) {
            if (this.f724k == null) {
                this.f724k = new i();
            }
            this.f718e.c();
            this.f734u = false;
            boolean z2 = this.N;
            this.N = true;
            this.f714a = this.f718e.b();
            if (this.f720g >= 0) {
                this.f718e.getClass();
                t(this.f720g, 0, false, true);
                this.f720g = -1;
                this.f721h = null;
                return;
            }
            if (z2) {
                requestLayout();
            } else {
                o();
            }
        }
    }

    public void setCurrentItem(int i2) {
        this.f734u = false;
        t(i2, 0, !this.N, false);
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i2 + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.f735v) {
            this.f735v = i2;
            o();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(h hVar) {
    }

    public void setPageMargin(int i2) {
        int i3 = this.f725l;
        this.f725l = i2;
        int width = getWidth();
        q(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f726m = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i2) {
        if (this.R == i2) {
            return;
        }
        this.R = i2;
    }

    public final void t(int i2, int i3, boolean z2, boolean z3) {
        f.a aVar = this.f718e;
        if (aVar == null || aVar.b() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        ArrayList<e> arrayList = this.f715b;
        if (!z3 && this.f719f == i2 && arrayList.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 >= this.f718e.b()) {
            i2 = this.f718e.b() - 1;
        }
        int i4 = this.f735v;
        int i5 = this.f719f;
        if (i2 > i5 + i4 || i2 < i5 - i4) {
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                arrayList.get(i6).f743c = true;
            }
        }
        boolean z4 = this.f719f != i2;
        if (this.N) {
            this.f719f = i2;
            requestLayout();
        } else {
            p(i2);
            s(i2, i3, z2, z4);
        }
    }

    @Override
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f726m;
    }

    public static class f extends ViewGroup.LayoutParams {

        public boolean f746a;

        public final int f747b;

        public float f748c;

        public boolean f749d;

        public f() {
            super(-1, -1);
            this.f748c = 0.0f;
        }

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f748c = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.S);
            this.f747b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }
}
