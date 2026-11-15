package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.VirtualLayout;
import androidx.constraintlayout.widget.b;
import java.util.Arrays;

public class CircularFlow extends VirtualLayout {

    private static int f6794v;

    private static float f6795w;

    ConstraintLayout f6796l;

    int f6797m;

    private float[] f6798n;

    private int[] f6799o;

    private int f6800p;

    private int f6801q;

    private String f6802r;

    private String f6803s;

    private Float f6804t;

    private Integer f6805u;

    public CircularFlow(Context context) {
        super(context);
    }

    private void l(String str) {
        float[] fArr;
        if (str == null || str.length() == 0 || this.f7345c == null || (fArr = this.f6798n) == null) {
            return;
        }
        if (this.f6801q + 1 > fArr.length) {
            this.f6798n = Arrays.copyOf(fArr, fArr.length + 1);
        }
        this.f6798n[this.f6801q] = Integer.parseInt(str);
        this.f6801q++;
    }

    private void m(String str) {
        int[] iArr;
        if (str == null || str.length() == 0 || this.f7345c == null || (iArr = this.f6799o) == null) {
            return;
        }
        if (this.f6800p + 1 > iArr.length) {
            this.f6799o = Arrays.copyOf(iArr, iArr.length + 1);
        }
        this.f6799o[this.f6800p] = (int) (Integer.parseInt(str) * this.f7345c.getResources().getDisplayMetrics().density);
        this.f6800p++;
    }

    private void n() {
        this.f6796l = (ConstraintLayout) getParent();
        for (int i10 = 0; i10 < this.f7344b; i10++) {
            View viewById = this.f6796l.getViewById(this.f7343a[i10]);
            if (viewById != null) {
                int i11 = f6794v;
                float f10 = f6795w;
                int[] iArr = this.f6799o;
                if (iArr == null || i10 >= iArr.length) {
                    Integer num = this.f6805u;
                    if (num == null || num.intValue() == -1) {
                        Log.e("CircularFlow", "Added radius to view with id: " + ((String) this.f7351i.get(Integer.valueOf(viewById.getId()))));
                    } else {
                        this.f6800p++;
                        if (this.f6799o == null) {
                            this.f6799o = new int[1];
                        }
                        int[] radius = getRadius();
                        this.f6799o = radius;
                        radius[this.f6800p - 1] = i11;
                    }
                } else {
                    i11 = iArr[i10];
                }
                float[] fArr = this.f6798n;
                if (fArr == null || i10 >= fArr.length) {
                    Float f11 = this.f6804t;
                    if (f11 == null || f11.floatValue() == -1.0f) {
                        Log.e("CircularFlow", "Added angle to view with id: " + ((String) this.f7351i.get(Integer.valueOf(viewById.getId()))));
                    } else {
                        this.f6801q++;
                        if (this.f6798n == null) {
                            this.f6798n = new float[1];
                        }
                        float[] angles = getAngles();
                        this.f6798n = angles;
                        angles[this.f6801q - 1] = f10;
                    }
                } else {
                    f10 = fArr[i10];
                }
                ConstraintLayout.b bVar = (ConstraintLayout.b) viewById.getLayoutParams();
                bVar.f7387r = f10;
                bVar.f7383p = this.f6797m;
                bVar.f7385q = i11;
                viewById.setLayoutParams(bVar);
            }
        }
        d();
    }

    private float[] o(float[] fArr, int i10) {
        return (fArr == null || i10 < 0 || i10 >= this.f6801q) ? fArr : removeElementFromArray(fArr, i10);
    }

    private int[] p(int[] iArr, int i10) {
        return (iArr == null || i10 < 0 || i10 >= this.f6800p) ? iArr : removeElementFromArray(iArr, i10);
    }

    public static int[] removeElementFromArray(int[] iArr, int i10) {
        int[] iArr2 = new int[iArr.length - 1];
        int i11 = 0;
        for (int i12 = 0; i12 < iArr.length; i12++) {
            if (i12 != i10) {
                iArr2[i11] = iArr[i12];
                i11++;
            }
        }
        return iArr2;
    }

    private void setAngles(String str) {
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f6801q = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                l(str.substring(i10).trim());
                return;
            } else {
                l(str.substring(i10, iIndexOf).trim());
                i10 = iIndexOf + 1;
            }
        }
    }

    private void setRadius(String str) {
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f6800p = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                m(str.substring(i10).trim());
                return;
            } else {
                m(str.substring(i10, iIndexOf).trim());
                i10 = iIndexOf + 1;
            }
        }
    }

    public void addViewToCircularFlow(View view, int i10, float f10) {
        if (containsId(view.getId())) {
            return;
        }
        addView(view);
        this.f6801q++;
        float[] angles = getAngles();
        this.f6798n = angles;
        angles[this.f6801q - 1] = f10;
        this.f6800p++;
        int[] radius = getRadius();
        this.f6799o = radius;
        radius[this.f6800p - 1] = (int) (i10 * this.f7345c.getResources().getDisplayMetrics().density);
        n();
    }

    public float[] getAngles() {
        return Arrays.copyOf(this.f6798n, this.f6801q);
    }

    public int[] getRadius() {
        return Arrays.copyOf(this.f6799o, this.f6800p);
    }

    public boolean isUpdatable(View view) {
        return containsId(view.getId()) && indexFromId(view.getId()) != -1;
    }

    @Override
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_circularflow_viewCenter) {
                    this.f6797m = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_angles) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f6802r = string;
                    setAngles(string);
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_radiusInDP) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f6803s = string2;
                    setRadius(string2);
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_defaultAngle) {
                    Float fValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, f6795w));
                    this.f6804t = fValueOf;
                    setDefaultAngle(fValueOf.floatValue());
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_defaultRadius) {
                    Integer numValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, f6794v));
                    this.f6805u = numValueOf;
                    setDefaultRadius(numValueOf.intValue());
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f6802r;
        if (str != null) {
            this.f6798n = new float[1];
            setAngles(str);
        }
        String str2 = this.f6803s;
        if (str2 != null) {
            this.f6799o = new int[1];
            setRadius(str2);
        }
        Float f10 = this.f6804t;
        if (f10 != null) {
            setDefaultAngle(f10.floatValue());
        }
        Integer num = this.f6805u;
        if (num != null) {
            setDefaultRadius(num.intValue());
        }
        n();
    }

    @Override
    public int removeView(View view) {
        int iRemoveView = super.removeView(view);
        if (iRemoveView == -1) {
            return iRemoveView;
        }
        b bVar = new b();
        bVar.p(this.f6796l);
        bVar.n(view.getId(), 8);
        bVar.i(this.f6796l);
        float[] fArr = this.f6798n;
        if (iRemoveView < fArr.length) {
            this.f6798n = o(fArr, iRemoveView);
            this.f6801q--;
        }
        int[] iArr = this.f6799o;
        if (iRemoveView < iArr.length) {
            this.f6799o = p(iArr, iRemoveView);
            this.f6800p--;
        }
        n();
        return iRemoveView;
    }

    public void setDefaultAngle(float f10) {
        f6795w = f10;
    }

    public void setDefaultRadius(int i10) {
        f6794v = i10;
    }

    public void updateAngle(View view, float f10) {
        if (!isUpdatable(view)) {
            Log.e("CircularFlow", "It was not possible to update angle to view with id: " + view.getId());
            return;
        }
        int iIndexFromId = indexFromId(view.getId());
        if (iIndexFromId > this.f6798n.length) {
            return;
        }
        float[] angles = getAngles();
        this.f6798n = angles;
        angles[iIndexFromId] = f10;
        n();
    }

    public void updateRadius(View view, int i10) {
        if (!isUpdatable(view)) {
            Log.e("CircularFlow", "It was not possible to update radius to view with id: " + view.getId());
            return;
        }
        int iIndexFromId = indexFromId(view.getId());
        if (iIndexFromId > this.f6799o.length) {
            return;
        }
        int[] radius = getRadius();
        this.f6799o = radius;
        radius[iIndexFromId] = (int) (i10 * this.f7345c.getResources().getDisplayMetrics().density);
        n();
    }

    public void updateReference(View view, int i10, float f10) {
        if (!isUpdatable(view)) {
            Log.e("CircularFlow", "It was not possible to update radius and angle to view with id: " + view.getId());
            return;
        }
        int iIndexFromId = indexFromId(view.getId());
        if (getAngles().length > iIndexFromId) {
            float[] angles = getAngles();
            this.f6798n = angles;
            angles[iIndexFromId] = f10;
        }
        if (getRadius().length > iIndexFromId) {
            int[] radius = getRadius();
            this.f6799o = radius;
            radius[iIndexFromId] = (int) (i10 * this.f7345c.getResources().getDisplayMetrics().density);
        }
        n();
    }

    public CircularFlow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CircularFlow(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public static float[] removeElementFromArray(float[] fArr, int i10) {
        float[] fArr2 = new float[fArr.length - 1];
        int i11 = 0;
        for (int i12 = 0; i12 < fArr.length; i12++) {
            if (i12 != i10) {
                fArr2[i11] = fArr[i12];
                i11++;
            }
        }
        return fArr2;
    }
}
