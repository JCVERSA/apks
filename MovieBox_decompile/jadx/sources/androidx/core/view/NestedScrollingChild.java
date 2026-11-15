package androidx.core.view;

public interface NestedScrollingChild {
    boolean dispatchNestedFling(float f10, float f11, boolean z10);

    boolean dispatchNestedPreFling(float f10, float f11);

    boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2);

    boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr);

    boolean hasNestedScrollingParent();

    boolean isNestedScrollingEnabled();

    void setNestedScrollingEnabled(boolean z10);

    boolean startNestedScroll(int i10);

    void stopNestedScroll();
}
