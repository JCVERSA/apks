package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.badge;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import xy.b;
import xy.d;
import zy.a;

public class BadgePagerTitleView extends FrameLayout implements b {

    private d f67261a;

    private View f67262b;

    private boolean f67263c;

    public BadgePagerTitleView(Context context) {
        super(context);
        this.f67263c = true;
    }

    public View getBadgeView() {
        return this.f67262b;
    }

    @Override
    public int getContentBottom() {
        d dVar = this.f67261a;
        return dVar instanceof b ? ((b) dVar).getContentBottom() : getBottom();
    }

    @Override
    public int getContentLeft() {
        return this.f67261a instanceof b ? getLeft() + ((b) this.f67261a).getContentLeft() : getLeft();
    }

    @Override
    public int getContentRight() {
        return this.f67261a instanceof b ? getLeft() + ((b) this.f67261a).getContentRight() : getRight();
    }

    @Override
    public int getContentTop() {
        d dVar = this.f67261a;
        return dVar instanceof b ? ((b) dVar).getContentTop() : getTop();
    }

    public d getInnerPagerTitleView() {
        return this.f67261a;
    }

    public a getXBadgeRule() {
        return null;
    }

    public a getYBadgeRule() {
        return null;
    }

    public boolean isAutoCancelBadge() {
        return this.f67263c;
    }

    @Override
    public void onDeselected(int i10, int i11) {
        d dVar = this.f67261a;
        if (dVar != null) {
            dVar.onDeselected(i10, i11);
        }
    }

    @Override
    public void onEnter(int i10, int i11, float f10, boolean z10) {
        d dVar = this.f67261a;
        if (dVar != null) {
            dVar.onEnter(i10, i11, f10, z10);
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        Object obj = this.f67261a;
        if (!(obj instanceof View) || this.f67262b == null) {
            return;
        }
        int[] iArr = new int[14];
        View view = (View) obj;
        iArr[0] = view.getLeft();
        iArr[1] = view.getTop();
        iArr[2] = view.getRight();
        iArr[3] = view.getBottom();
        d dVar = this.f67261a;
        if (dVar instanceof b) {
            b bVar = (b) dVar;
            iArr[4] = bVar.getContentLeft();
            iArr[5] = bVar.getContentTop();
            iArr[6] = bVar.getContentRight();
            iArr[7] = bVar.getContentBottom();
        } else {
            for (int i14 = 4; i14 < 8; i14++) {
                iArr[i14] = iArr[i14 - 4];
            }
        }
        iArr[8] = view.getWidth() / 2;
        iArr[9] = view.getHeight() / 2;
        iArr[10] = iArr[4] / 2;
        iArr[11] = iArr[5] / 2;
        int i15 = iArr[6];
        iArr[12] = i15 + ((iArr[2] - i15) / 2);
        int i16 = iArr[7];
        iArr[13] = i16 + ((iArr[3] - i16) / 2);
    }

    @Override
    public void onLeave(int i10, int i11, float f10, boolean z10) {
        d dVar = this.f67261a;
        if (dVar != null) {
            dVar.onLeave(i10, i11, f10, z10);
        }
    }

    @Override
    public void onSelected(int i10, int i11) {
        d dVar = this.f67261a;
        if (dVar != null) {
            dVar.onSelected(i10, i11);
        }
        if (this.f67263c) {
            setBadgeView(null);
        }
    }

    public void setAutoCancelBadge(boolean z10) {
        this.f67263c = z10;
    }

    public void setBadgeView(View view) {
        if (this.f67262b == view) {
            return;
        }
        this.f67262b = view;
        removeAllViews();
        if (this.f67261a instanceof View) {
            addView((View) this.f67261a, new FrameLayout.LayoutParams(-1, -1));
        }
        if (this.f67262b != null) {
            addView(this.f67262b, new FrameLayout.LayoutParams(-2, -2));
        }
    }

    public void setInnerPagerTitleView(d dVar) {
        if (this.f67261a == dVar) {
            return;
        }
        this.f67261a = dVar;
        removeAllViews();
        if (this.f67261a instanceof View) {
            addView((View) this.f67261a, new FrameLayout.LayoutParams(-1, -1));
        }
        if (this.f67262b != null) {
            addView(this.f67262b, new FrameLayout.LayoutParams(-2, -2));
        }
    }

    public void setXBadgeRule(a aVar) {
    }

    public void setYBadgeRule(a aVar) {
    }
}
