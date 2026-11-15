package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;

public abstract class ConstraintHelper extends View {

    protected int[] f7343a;

    protected int f7344b;

    protected Context f7345c;

    protected t0.a f7346d;

    protected boolean f7347e;

    protected String f7348f;

    protected String f7349g;

    private View[] f7350h;

    protected HashMap f7351i;

    public ConstraintHelper(Context context) {
        super(context);
        this.f7343a = new int[32];
        this.f7347e = false;
        this.f7350h = null;
        this.f7351i = new HashMap();
        this.f7345c = context;
        k(null);
    }

    private void a(String str) {
        if (str == null || str.length() == 0 || this.f7345c == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int i10 = i(strTrim);
        if (i10 != 0) {
            this.f7351i.put(Integer.valueOf(i10), strTrim);
            b(i10);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    private void b(int i10) {
        if (i10 == getId()) {
            return;
        }
        int i11 = this.f7344b + 1;
        int[] iArr = this.f7343a;
        if (i11 > iArr.length) {
            this.f7343a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f7343a;
        int i12 = this.f7344b;
        iArr2[i12] = i10;
        this.f7344b = i12 + 1;
    }

    private void c(String str) {
        if (str == null || str.length() == 0 || this.f7345c == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.b) && strTrim.equals(((ConstraintLayout.b) layoutParams).f7358c0)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    b(childAt.getId());
                }
            }
        }
    }

    private int[] g(View view, String str) {
        String[] strArrSplit = str.split(",");
        view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i10 = 0;
        for (String str2 : strArrSplit) {
            int i11 = i(str2.trim());
            if (i11 != 0) {
                iArr[i10] = i11;
                i10++;
            }
        }
        return i10 != strArrSplit.length ? Arrays.copyOf(iArr, i10) : iArr;
    }

    private int h(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String resourceEntryName;
        if (str == null || constraintLayout == null || (resources = this.f7345c.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            if (childAt.getId() != -1) {
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = null;
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    private int i(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int iH = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object designInformation = constraintLayout.getDesignInformation(0, str);
            if (designInformation instanceof Integer) {
                iH = ((Integer) designInformation).intValue();
            }
        }
        if (iH == 0 && constraintLayout != null) {
            iH = h(constraintLayout, str);
        }
        if (iH == 0) {
            try {
                iH = R$id.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        return iH == 0 ? this.f7345c.getResources().getIdentifier(str, "id", this.f7345c.getPackageName()) : iH;
    }

    public void addView(View view) {
        if (view == this) {
            return;
        }
        if (view.getId() == -1) {
            Log.e("ConstraintHelper", "Views added to a ConstraintHelper need to have an id");
        } else {
            if (view.getParent() == null) {
                Log.e("ConstraintHelper", "Views added to a ConstraintHelper need to have a parent");
                return;
            }
            this.f7348f = null;
            b(view.getId());
            requestLayout();
        }
    }

    public boolean containsId(int i10) {
        for (int i11 : this.f7343a) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    protected void d() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        e((ConstraintLayout) parent);
    }

    protected void e(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i10 = 0; i10 < this.f7344b; i10++) {
            View viewById = constraintLayout.getViewById(this.f7343a[i10]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    protected void f(ConstraintLayout constraintLayout) {
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f7343a, this.f7344b);
    }

    public int indexFromId(int i10) {
        int i11 = -1;
        for (int i12 : this.f7343a) {
            i11++;
            if (i12 == i10) {
                return i11;
            }
        }
        return i11;
    }

    protected View[] j(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f7350h;
        if (viewArr == null || viewArr.length != this.f7344b) {
            this.f7350h = new View[this.f7344b];
        }
        for (int i10 = 0; i10 < this.f7344b; i10++) {
            this.f7350h[i10] = constraintLayout.getViewById(this.f7343a[i10]);
        }
        return this.f7350h;
    }

    protected void k(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f7348f = string;
                    setIds(string);
                } else if (index == R$styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f7349g = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void loadParameters(b.a aVar, t0.b bVar, ConstraintLayout.b bVar2, SparseArray<ConstraintWidget> sparseArray) {
        b.C0056b c0056b = aVar.f7458e;
        int[] iArr = c0056b.f7496k0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = c0056b.f7498l0;
            if (str != null) {
                if (str.length() > 0) {
                    b.C0056b c0056b2 = aVar.f7458e;
                    c0056b2.f7496k0 = g(this, c0056b2.f7498l0);
                } else {
                    aVar.f7458e.f7496k0 = null;
                }
            }
        }
        if (bVar == null) {
            return;
        }
        bVar.b();
        if (aVar.f7458e.f7496k0 == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            int[] iArr2 = aVar.f7458e.f7496k0;
            if (i10 >= iArr2.length) {
                return;
            }
            ConstraintWidget constraintWidget = sparseArray.get(iArr2[i10]);
            if (constraintWidget != null) {
                bVar.a(constraintWidget);
            }
            i10++;
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f7348f;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f7349g;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        if (this.f7347e) {
            super.onMeasure(i10, i11);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public int removeView(View view) {
        int i10;
        int id2 = view.getId();
        int i11 = -1;
        if (id2 == -1) {
            return -1;
        }
        this.f7348f = null;
        for (int i12 = 0; i12 < this.f7344b; i12++) {
            if (this.f7343a[i12] == id2) {
                int i13 = i12;
                while (true) {
                    i10 = this.f7344b;
                    if (i13 >= i10 - 1) {
                        break;
                    }
                    int[] iArr = this.f7343a;
                    int i14 = i13 + 1;
                    iArr[i13] = iArr[i14];
                    i13 = i14;
                }
                this.f7343a[i10 - 1] = 0;
                this.f7344b = i10 - 1;
                i11 = i12;
                break;
            }
        }
        requestLayout();
        return i11;
    }

    public void resolveRtl(ConstraintWidget constraintWidget, boolean z10) {
    }

    protected void setIds(String str) {
        this.f7348f = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f7344b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                a(str.substring(i10));
                return;
            } else {
                a(str.substring(i10, iIndexOf));
                i10 = iIndexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.f7349g = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f7344b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                c(str.substring(i10));
                return;
            } else {
                c(str.substring(i10, iIndexOf));
                i10 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f7348f = null;
        this.f7344b = 0;
        for (int i10 : iArr) {
            b(i10);
        }
    }

    @Override
    public void setTag(int i10, Object obj) {
        super.setTag(i10, obj);
        if (obj == null && this.f7348f == null) {
            b(i10);
        }
    }

    public void updatePostConstraints(ConstraintLayout constraintLayout) {
    }

    public void updatePostLayout(ConstraintLayout constraintLayout) {
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
    }

    public void updatePreDraw(ConstraintLayout constraintLayout) {
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        String str;
        int iH;
        if (isInEditMode()) {
            setIds(this.f7348f);
        }
        t0.a aVar = this.f7346d;
        if (aVar == null) {
            return;
        }
        aVar.b();
        for (int i10 = 0; i10 < this.f7344b; i10++) {
            int i11 = this.f7343a[i10];
            View viewById = constraintLayout.getViewById(i11);
            if (viewById == null && (iH = h(constraintLayout, (str = (String) this.f7351i.get(Integer.valueOf(i11))))) != 0) {
                this.f7343a[i10] = iH;
                this.f7351i.put(Integer.valueOf(iH), str);
                viewById = constraintLayout.getViewById(iH);
            }
            if (viewById != null) {
                this.f7346d.a(constraintLayout.getViewWidget(viewById));
            }
        }
        this.f7346d.c(constraintLayout.mLayoutWidget);
    }

    public void validateParams() {
        if (this.f7346d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            ((ConstraintLayout.b) layoutParams).f7396v0 = (ConstraintWidget) this.f7346d;
        }
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7343a = new int[32];
        this.f7347e = false;
        this.f7350h = null;
        this.f7351i = new HashMap();
        this.f7345c = context;
        k(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7343a = new int[32];
        this.f7347e = false;
        this.f7350h = null;
        this.f7351i = new HashMap();
        this.f7345c = context;
        k(attributeSet);
    }

    public void updatePreLayout(androidx.constraintlayout.core.widgets.d dVar, t0.a aVar, SparseArray<ConstraintWidget> sparseArray) {
        aVar.b();
        for (int i10 = 0; i10 < this.f7344b; i10++) {
            aVar.a(sparseArray.get(this.f7343a[i10]));
        }
    }
}
