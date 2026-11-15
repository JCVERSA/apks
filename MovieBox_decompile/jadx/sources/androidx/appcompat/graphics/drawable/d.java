package androidx.appcompat.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;

public class d extends DrawableContainerCompat {

    private a f947m;

    private boolean f948n;

    static class a extends DrawableContainerCompat.c {
        int[][] J;

        a(a aVar, d dVar, Resources resources) {
            super(aVar, dVar, resources);
            if (aVar != null) {
                this.J = aVar.J;
            } else {
                this.J = new int[f()][];
            }
        }

        int A(int[] iArr, Drawable drawable) {
            int iA = a(drawable);
            this.J[iA] = iArr;
            return iA;
        }

        int B(int[] iArr) {
            int[][] iArr2 = this.J;
            int iH = h();
            for (int i10 = 0; i10 < iH; i10++) {
                if (StateSet.stateSetMatches(iArr2[i10], iArr)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override
        public Drawable newDrawable() {
            return new d(this, null);
        }

        @Override
        public void o(int i10, int i11) {
            super.o(i10, i11);
            int[][] iArr = new int[i11][];
            System.arraycopy(this.J, 0, iArr, 0, i10);
            this.J = iArr;
        }

        @Override
        void s() {
            int[][] iArr = this.J;
            int[][] iArr2 = new int[iArr.length][];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[] iArr3 = this.J[length];
                iArr2[length] = iArr3 != null ? (int[]) iArr3.clone() : null;
            }
            this.J = iArr2;
        }

        @Override
        public Drawable newDrawable(Resources resources) {
            return new d(this, resources);
        }
    }

    public d() {
        this(null, null);
    }

    @Override
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override
    void h(DrawableContainerCompat.c cVar) {
        super.h(cVar);
        if (cVar instanceof a) {
            this.f947m = (a) cVar;
        }
    }

    @Override
    public boolean isStateful() {
        return true;
    }

    @Override
    public a b() {
        return new a(this.f947m, this, null);
    }

    int[] k(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i10 = 0;
        for (int i11 = 0; i11 < attributeCount; i11++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i11);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i12 = i10 + 1;
                if (!attributeSet.getAttributeBooleanValue(i11, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i10] = attributeNameResource;
                i10 = i12;
            }
        }
        return StateSet.trimStateSet(iArr, i10);
    }

    @Override
    public Drawable mutate() {
        if (!this.f948n && super.mutate() == this) {
            this.f947m.s();
            this.f948n = true;
        }
        return this;
    }

    @Override
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        int iB = this.f947m.B(iArr);
        if (iB < 0) {
            iB = this.f947m.B(StateSet.WILD_CARD);
        }
        return g(iB) || zOnStateChange;
    }

    d(a aVar, Resources resources) {
        h(new a(aVar, this, resources));
        onStateChange(getState());
    }

    d(a aVar) {
        if (aVar != null) {
            h(aVar);
        }
    }
}
