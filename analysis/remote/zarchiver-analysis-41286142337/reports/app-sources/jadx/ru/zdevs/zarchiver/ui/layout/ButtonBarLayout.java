package ru.zdevs.zarchiver.ui.layout;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import ru.zdevs.zarchiver.R;

public class ButtonBarLayout extends LinearLayout {

    public boolean f1927a;

    public int f1928b;

    public int f1929c;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1927a = true;
        this.f1928b = -1;
        this.f1929c = 0;
    }

    private void setStacked(boolean z2) {
        setOrientation(z2 ? 1 : 0);
        setGravity(z2 ? 8388613 : 80);
        View viewFindViewById = findViewById(R.id.spacer);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(z2 ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    @Override
    public int getMinimumHeight() {
        return Build.VERSION.SDK_INT < 16 ? this.f1929c : super.getMinimumHeight();
    }

    @Override
    public final void onMeasure(int i2, int i3) {
        int iMakeMeasureSpec;
        boolean z2;
        int i4;
        int size = View.MeasureSpec.getSize(i2);
        int paddingBottom = 0;
        if (this.f1927a) {
            if (size > this.f1928b) {
                if (getOrientation() == 1) {
                    setStacked(false);
                }
            }
            this.f1928b = size;
        }
        if ((getOrientation() == 1) || View.MeasureSpec.getMode(i2) != 1073741824) {
            iMakeMeasureSpec = i2;
            z2 = false;
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z2 = true;
        }
        super.onMeasure(iMakeMeasureSpec, i3);
        if (this.f1927a) {
            if (!(getOrientation() == 1) && (getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                setStacked(true);
                z2 = true;
            }
        }
        if (z2) {
            super.onMeasure(i2, i3);
        }
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            i4 = -1;
            if (i5 >= childCount) {
                i5 = -1;
                break;
            } else if (getChildAt(i5).getVisibility() == 0) {
                break;
            } else {
                i5++;
            }
        }
        if (i5 >= 0) {
            View childAt = getChildAt(i5);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + getPaddingTop() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if ((getOrientation() == 1 ? 1 : 0) != 0) {
                int childCount2 = getChildCount();
                for (int i6 = i5 + 1; i6 < childCount2; i6++) {
                    if (getChildAt(i6).getVisibility() == 0) {
                        i4 = i6;
                        break;
                    }
                }
                paddingBottom = i4 >= 0 ? (int) ((getResources().getDisplayMetrics().density * 16.0f) + getChildAt(i4).getPaddingTop() + measuredHeight) : measuredHeight;
            } else {
                paddingBottom = getPaddingBottom() + measuredHeight;
            }
        }
        if (getMinimumHeight() != paddingBottom) {
            setMinimumHeight(paddingBottom);
        }
    }

    public void setAllowStacking(boolean z2) {
        if (this.f1927a != z2) {
            this.f1927a = z2;
            if (!z2 && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }

    @Override
    public void setMinimumHeight(int i2) {
        this.f1929c = i2;
        super.setMinimumHeight(i2);
    }
}
