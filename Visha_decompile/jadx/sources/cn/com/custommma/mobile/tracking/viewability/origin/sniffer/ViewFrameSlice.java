package cn.com.custommma.mobile.tracking.viewability.origin.sniffer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import defpackage.ap8;
import defpackage.mcc;
import defpackage.oe5;
import defpackage.wk;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ViewFrameSlice implements Serializable {
    private static final long serialVersionUID = 1;
    private String adSize;
    private float alpha;
    private long captureTime;
    private List<ap8> coverAreaList;
    Set<String> coverFrameSet;
    private double coverRate;
    private int isForground;
    private boolean isWindowShowed;
    private int screenOn;
    private int shown;
    private int visibleAbility;
    private String visiblePoint;
    private String visibleSize;

    public ViewFrameSlice(View view, Context context) {
        Rect rectTraverseParent;
        this.isWindowShowed = false;
        this.coverAreaList = null;
        this.coverFrameSet = null;
        try {
            this.captureTime = System.currentTimeMillis();
            this.coverAreaList = new ArrayList();
            this.coverFrameSet = new HashSet();
            this.adSize = view.getWidth() + "x" + view.getHeight();
            Rect rectB = mcc.b(view);
            Point point = new Point();
            point.x = rectB.left;
            point.y = rectB.top;
            this.visiblePoint = point.x + "x" + point.y;
            boolean zCheckFrameBounds = checkFrameBounds(view);
            if (!zCheckFrameBounds && (rectTraverseParent = traverseParent(view, rectB)) != null) {
                rectB = rectTraverseParent;
            }
            this.alpha = view.getAlpha();
            this.shown = view.isShown() ? 1 : 0;
            Rect rectA = mcc.a(context);
            Rect rect = new Rect();
            boolean intersect = rect.setIntersect(rectB, rectA);
            this.visibleSize = Math.abs(rect.right - rect.left) + "x" + Math.abs(rect.bottom - rect.top);
            boolean zIsShowing = isShowing(view);
            this.isWindowShowed = zIsShowing;
            if (zIsShowing) {
                traverseParent(view);
                double dC = this.coverAreaList.size() > 0 ? new wk().c(this.coverAreaList) : 0.0d;
                Rect rect2 = new Rect();
                view.getGlobalVisibleRect(rect2);
                double width = view.getWidth() * view.getHeight();
                this.coverRate = Math.round(((dC + (width - ((double) ((rect2.right - rect2.left) * (rect2.bottom - rect2.top))))) / width) * 100.0d) / 100.0d;
            } else {
                this.coverRate = 1.0d;
            }
            this.screenOn = mcc.c(view) ? 1 : 0;
            this.isForground = view.hasWindowFocus() ? 1 : 0;
            Rect rect3 = new Rect();
            view.getLocalVisibleRect(rect3);
            this.coverAreaList = null;
            this.coverFrameSet = null;
            oe5.d("=================ViewFrameSlice Constructor begin ======================");
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            oe5.d("density:" + displayMetrics.density + "  api:" + displayMetrics.densityDpi);
            StringBuilder sb = new StringBuilder();
            sb.append("screenRect:");
            sb.append(rectA);
            oe5.d(sb.toString());
            oe5.d("adView local visible Rect:" + rect3);
            oe5.d("[2t] captureTime:" + this.captureTime);
            oe5.d("[2k] adView Size:" + this.adSize);
            oe5.d("[2d] adView visible left top Point:" + point);
            oe5.d("[2l] adView alpha:" + this.alpha);
            oe5.d("[2m] adView isShown:" + this.shown);
            oe5.d("[2o] adView visible Size:" + this.visibleSize);
            oe5.d("[2n] adView cover rate:" + this.coverRate);
            oe5.d("[2r] current Screen is Light:" + this.screenOn);
            oe5.d("[2s] adView is forground:" + this.isForground);
            oe5.d("[2f] current adView visible ability:" + this.visibleAbility);
            oe5.d("checkFrameBounds:" + zCheckFrameBounds);
            oe5.d("adView isIntersets :" + intersect + "    overlapRect:" + rect);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("adView window origin Rect:");
            sb2.append(rectB);
            oe5.d(sb2.toString());
            oe5.d("=================ViewFrameSlice Constructor end ======================");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private boolean checkFrameBounds(View view) {
        try {
            Rect rect = new Rect();
            return view.getGlobalVisibleRect(rect, new Point()) && (rect.bottom - rect.top >= view.getMeasuredHeight()) && (rect.right - rect.left >= view.getMeasuredWidth());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SuppressLint({"NewApi"})
    private void checkIntersects(View view, View view2) {
        int paddingLeft;
        int paddingTop;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        Rect rect2 = new Rect();
        Point point = new Point();
        view2.getGlobalVisibleRect(rect2, point);
        if (!((!(view2.getParent() instanceof ViewGroup) || (viewGroup = (ViewGroup) view2.getParent()) == null || !(viewGroup.getParent() instanceof ViewGroup) || (viewGroup2 = (ViewGroup) viewGroup.getParent()) == null) ? true : viewGroup2.getClipChildren())) {
            rect2.left = point.x;
            rect2.top = point.y;
        }
        if (view2.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup3 = (ViewGroup) view2.getParent();
            paddingLeft = viewGroup3.getPaddingLeft();
            paddingTop = viewGroup3.getPaddingTop();
        } else {
            paddingLeft = 0;
            paddingTop = 0;
        }
        if (paddingLeft != 0 || paddingTop != 0) {
            Rect rect3 = new Rect();
            view2.getLocalVisibleRect(rect3);
            rect2.left += rect3.left + paddingLeft;
            rect2.top += rect3.top + paddingTop;
        }
        if (Rect.intersects(rect, rect2)) {
            valOverlapRect(rect, rect2);
        }
    }

    private boolean checkVisibled(View view) {
        try {
            if (view.getVisibility() != 0) {
                return false;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (viewGroup.getBackground() != null) {
                    if (viewGroup.getChildCount() < 1) {
                    }
                }
                return false;
            }
            if (view.getAlpha() <= 0.1f) {
                return false;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return true;
    }

    private int indexOfViewInParent(View view, ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        int i = 0;
        while (i < childCount && viewGroup.getChildAt(i) != view) {
            i++;
        }
        return i;
    }

    private boolean isShowing(View view) {
        return view.getGlobalVisibleRect(new Rect(), new Point());
    }

    private boolean isSubViewNormal(View view) {
        return view.getGlobalVisibleRect(new Rect()) && checkVisibled(view);
    }

    private void traverseParent(View view) {
        View view2 = view;
        while (view2.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2.getParent();
            int iIndexOfViewInParent = indexOfViewInParent(view2, viewGroup);
            int childCount = viewGroup.getChildCount();
            while (true) {
                iIndexOfViewInParent++;
                if (iIndexOfViewInParent < childCount) {
                    View childAt = viewGroup.getChildAt(iIndexOfViewInParent);
                    boolean zIsSubViewNormal = isSubViewNormal(childAt);
                    if (zIsSubViewNormal) {
                        checkIntersects(view, childAt);
                        if (childAt instanceof ViewGroup) {
                            traverseSubviews(view, (ViewGroup) childAt, this.coverFrameSet);
                        }
                    } else {
                        this.isWindowShowed = zIsSubViewNormal;
                    }
                }
            }
            view2 = viewGroup;
        }
    }

    @SuppressLint({"NewApi"})
    private Rect traverseRootView(View view, Rect rect) {
        int i;
        ArrayList arrayList = new ArrayList();
        while (view.getParent() instanceof ViewGroup) {
            try {
                view = (ViewGroup) view.getParent();
                arrayList.add(view);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ViewGroup viewGroup = (ViewGroup) arrayList.get(size);
            viewGroup.getGlobalVisibleRect(new Rect());
            if (viewGroup.getClipChildren() && (i = size - 1) >= 0) {
                ViewGroup viewGroup2 = (ViewGroup) arrayList.get(i);
                Rect rect2 = new Rect();
                viewGroup2.getGlobalVisibleRect(rect2);
                Rect rect3 = new Rect();
                rect3.setIntersect(rect, rect2);
                Math.abs(rect3.right - rect3.left);
                Math.abs(rect3.bottom - rect3.top);
                rect = rect3;
            }
        }
        return rect;
    }

    private void valOverlapRect(Rect rect, Rect rect2) {
        int iMax = Math.max(rect.left, rect2.left);
        int iMax2 = Math.max(rect.top, rect2.top);
        int iMin = Math.min(rect.right, rect2.right);
        int iMin2 = Math.min(rect.bottom, rect2.bottom);
        this.coverFrameSet.add(iMax + "X" + iMax2 + "X" + Math.abs(iMin - iMax) + "X" + Math.abs(iMin2 - iMax2));
        Rect rect3 = new Rect();
        rect3.setIntersect(rect, rect2);
        ap8 ap8Var = new ap8();
        ap8Var.a = (double) rect3.left;
        ap8Var.b = (double) rect3.top;
        ap8Var.c = (double) rect3.right;
        ap8Var.d = (double) rect3.bottom;
        this.coverAreaList.add(ap8Var);
    }

    public String getAdSize() {
        return this.adSize;
    }

    public float getAlpha() {
        return this.alpha;
    }

    public long getCaptureTime() {
        return this.captureTime;
    }

    public double getCoverRate() {
        return this.coverRate;
    }

    public int getIsForGround() {
        return this.isForground;
    }

    public int getScreenOn() {
        return this.screenOn;
    }

    public int getShown() {
        return this.shown;
    }

    public String getVisiblePoint() {
        return this.visiblePoint;
    }

    public String getVisibleSize() {
        return this.visibleSize;
    }

    public boolean isSameAs(ViewFrameSlice viewFrameSlice) {
        try {
            return this.adSize.equals(viewFrameSlice.adSize) && this.visiblePoint.equals(viewFrameSlice.visiblePoint) && this.visibleSize.equals(viewFrameSlice.visibleSize) && ((double) Math.abs(this.alpha - viewFrameSlice.alpha)) < 0.001d && this.shown == viewFrameSlice.shown && this.screenOn == viewFrameSlice.screenOn && this.isForground == viewFrameSlice.isForground && this.coverRate == viewFrameSlice.coverRate;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public String toString() {
        return "[ 2t=" + this.captureTime + ",2k=" + this.adSize + ",2d=" + this.visiblePoint + ",2o=" + this.visibleSize + ",2n=" + this.coverRate + ",2l=" + this.alpha + ",2m=" + this.shown + ",2r=" + this.screenOn + ",2s=" + this.isForground + "]";
    }

    public void traverseSubviews(View view, ViewGroup viewGroup, Set<String> set) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (isSubViewNormal(childAt)) {
                checkIntersects(view, childAt);
                if (childAt instanceof ViewGroup) {
                    traverseSubviews(view, (ViewGroup) childAt, set);
                }
            }
        }
    }

    public boolean validateAdVisible(float f) {
        if (this.coverRate <= f && this.shown == 1 && this.alpha > 0.001d && this.screenOn == 1 && this.isForground == 1) {
            this.visibleAbility = 1;
        } else {
            this.visibleAbility = 0;
        }
        return this.visibleAbility == 1;
    }

    @SuppressLint({"NewApi"})
    private Rect traverseParent(View view, Rect rect) {
        while (view.getParent() instanceof ViewGroup) {
            try {
                view = (ViewGroup) view.getParent();
                Rect rect2 = new Rect();
                view.getGlobalVisibleRect(rect2);
                ViewGroup viewGroup = view.getParent() instanceof ViewGroup ? (ViewGroup) view.getParent() : null;
                if (viewGroup != null ? viewGroup.getClipChildren() : false) {
                    Rect rect3 = new Rect();
                    rect3.setIntersect(rect, rect2);
                    rect = rect3;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return rect;
    }
}
