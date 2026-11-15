package com.yanzhenjie.recyclerview.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

public class DefaultItemDecoration extends RecyclerView.ItemDecoration {
    public final int b;
    public final int c;

    public final void a(Canvas canvas, View view, int i, int i2, int i3) {
        boolean zF = f(0, i, i2, i3);
        boolean zH = h(0, i, i2, i3);
        boolean zE = e(0, i, i2, i3);
        boolean zG = g(0, i, i2, i3);
        if (i2 == 1) {
            if (zF && zG) {
                return;
            }
            if (!zE && !zG) {
                throw null;
            }
            throw null;
        }
        if (zE && zF) {
            throw null;
        }
        if (zE && zH) {
            throw null;
        }
        if (zG && zF) {
            throw null;
        }
        if ((!zG || !zH) && !zE && !zG && !zF && zH) {
            throw null;
        }
        throw null;
    }

    public final void b(Canvas canvas, View view, int i, int i2, int i3) {
        boolean zF = f(1, i, i2, i3);
        boolean zH = h(1, i, i2, i3);
        boolean zE = e(1, i, i2, i3);
        boolean zG = g(1, i, i2, i3);
        if (i2 == 1) {
            if (zF && zH) {
                return;
            }
            if (!zF && !zH) {
                throw null;
            }
            throw null;
        }
        if (zF && zE) {
            throw null;
        }
        if (zF && zG) {
            throw null;
        }
        if (zH && zE) {
            throw null;
        }
        if ((!zH || !zG) && !zF && !zH && !zE && zG) {
            throw null;
        }
        throw null;
    }

    public final int c(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).getOrientation();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getOrientation();
        }
        return 1;
    }

    public final int d(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).getSpanCount();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
        }
        return 1;
    }

    public final boolean e(int i, int i2, int i3, int i4) {
        if (i == 1) {
            return i3 == 1 || i2 % i3 == 0;
        }
        return i2 < i3;
    }

    public final boolean f(int i, int i2, int i3, int i4) {
        if (i == 1) {
            return i2 < i3;
        }
        return i3 == 1 || i2 % i3 == 0;
    }

    public final boolean g(int i, int i2, int i3, int i4) {
        if (i == 1) {
            return i3 == 1 || (i2 + 1) % i3 == 0;
        }
        if (i3 == 1) {
            return i2 + 1 == i4;
        }
        int i5 = i4 % i3;
        int i6 = ((i4 - i5) / i3) + (i5 > 0 ? 1 : 0);
        int i7 = i2 + 1;
        int i8 = i7 % i3;
        if (i8 == 0) {
            return i6 == i7 / i3;
        }
        return i6 == ((i7 - i8) / i3) + 1;
    }

    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                int i = this.b;
                int i2 = this.c;
                rect.set(i, i2, i, i2);
                return;
            }
            return;
        }
        int iC = c(layoutManager);
        int childLayoutPosition = recyclerView.getChildLayoutPosition(view);
        int iD = d(layoutManager);
        int itemCount = layoutManager.getItemCount();
        if (iC == 1) {
            j(rect, childLayoutPosition, iD, itemCount);
        } else {
            i(rect, childLayoutPosition, iD, itemCount);
        }
    }

    public final boolean h(int i, int i2, int i3, int i4) {
        if (i != 1) {
            return i3 == 1 || (i2 + 1) % i3 == 0;
        }
        if (i3 == 1) {
            return i2 + 1 == i4;
        }
        int i5 = i4 % i3;
        int i6 = ((i4 - i5) / i3) + (i5 > 0 ? 1 : 0);
        int i7 = i2 + 1;
        int i8 = i7 % i3;
        if (i8 == 0) {
            return i6 == i7 / i3;
        }
        return i6 == ((i7 - i8) / i3) + 1;
    }

    public final void i(Rect rect, int i, int i2, int i3) {
        boolean zF = f(0, i, i2, i3);
        boolean zH = h(0, i, i2, i3);
        boolean zE = e(0, i, i2, i3);
        boolean zG = g(0, i, i2, i3);
        if (i2 == 1) {
            if (zE && zG) {
                rect.set(0, 0, 0, 0);
                return;
            }
            if (zE) {
                rect.set(0, 0, this.b, 0);
                return;
            } else if (zG) {
                rect.set(this.b, 0, 0, 0);
                return;
            } else {
                int i4 = this.b;
                rect.set(i4, 0, i4, 0);
                return;
            }
        }
        if (zE && zF) {
            rect.set(0, 0, this.b, this.c);
            return;
        }
        if (zE && zH) {
            rect.set(0, this.c, this.b, 0);
            return;
        }
        if (zG && zF) {
            rect.set(this.b, 0, 0, this.c);
            return;
        }
        if (zG && zH) {
            rect.set(this.b, this.c, 0, 0);
            return;
        }
        if (zE) {
            int i5 = this.c;
            rect.set(0, i5, this.b, i5);
            return;
        }
        if (zG) {
            int i6 = this.b;
            int i7 = this.c;
            rect.set(i6, i7, 0, i7);
        } else if (zF) {
            int i8 = this.b;
            rect.set(i8, 0, i8, this.c);
        } else if (zH) {
            int i9 = this.b;
            rect.set(i9, this.c, i9, 0);
        } else {
            int i10 = this.b;
            int i11 = this.c;
            rect.set(i10, i11, i10, i11);
        }
    }

    public final void j(Rect rect, int i, int i2, int i3) {
        boolean zF = f(1, i, i2, i3);
        boolean zH = h(1, i, i2, i3);
        boolean zE = e(1, i, i2, i3);
        boolean zG = g(1, i, i2, i3);
        if (i2 == 1) {
            if (zF && zH) {
                rect.set(0, 0, 0, 0);
                return;
            }
            if (zF) {
                rect.set(0, 0, 0, this.c);
                return;
            } else if (zH) {
                rect.set(0, this.c, 0, 0);
                return;
            } else {
                int i4 = this.c;
                rect.set(0, i4, 0, i4);
                return;
            }
        }
        if (zF && zE) {
            rect.set(0, 0, this.b, this.c);
            return;
        }
        if (zF && zG) {
            rect.set(this.b, 0, 0, this.c);
            return;
        }
        if (zH && zE) {
            rect.set(0, this.c, this.b, 0);
            return;
        }
        if (zH && zG) {
            rect.set(this.b, this.c, 0, 0);
            return;
        }
        if (zF) {
            int i5 = this.b;
            rect.set(i5, 0, i5, this.c);
            return;
        }
        if (zH) {
            int i6 = this.b;
            rect.set(i6, this.c, i6, 0);
            return;
        }
        if (zE) {
            int i7 = this.c;
            rect.set(0, i7, this.b, i7);
        } else if (zG) {
            int i8 = this.b;
            int i9 = this.c;
            rect.set(i8, i9, 0, i9);
        } else {
            int i10 = this.b;
            int i11 = this.c;
            rect.set(i10, i11, i10, i11);
        }
    }

    @Override
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        int iC = c(layoutManager);
        int iD = d(layoutManager);
        int childCount = layoutManager.getChildCount();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                canvas.save();
                if (childCount <= 0) {
                    canvas.restore();
                    return;
                } else {
                    layoutManager.getChildAt(0);
                    throw null;
                }
            }
            return;
        }
        canvas.save();
        for (int i = 0; i < childCount; i++) {
            View childAt = layoutManager.getChildAt(i);
            int childLayoutPosition = recyclerView.getChildLayoutPosition(childAt);
            if (iC == 1) {
                b(canvas, childAt, childLayoutPosition, iD, childCount);
            } else {
                a(canvas, childAt, childLayoutPosition, iD, childCount);
            }
        }
        canvas.restore();
    }
}
