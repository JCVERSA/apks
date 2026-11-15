package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.e;
import androidx.constraintlayout.core.widgets.i;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.VirtualLayout;
import androidx.constraintlayout.widget.b;

public class Flow extends VirtualLayout {
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static final int HORIZONTAL = 0;
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL = 1;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_NONE = 0;

    private e f6806l;

    public Flow(Context context) {
        super(context);
    }

    @Override
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        this.f6806l = new e();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_android_orientation) {
                    this.f6806l.H2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_padding) {
                    this.f6806l.M1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingStart) {
                    this.f6806l.R1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingEnd) {
                    this.f6806l.O1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingLeft) {
                    this.f6806l.P1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingTop) {
                    this.f6806l.S1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingRight) {
                    this.f6806l.Q1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingBottom) {
                    this.f6806l.N1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_wrapMode) {
                    this.f6806l.M2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.f6806l.B2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.f6806l.L2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.f6806l.v2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.f6806l.D2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.f6806l.x2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.f6806l.F2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.f6806l.z2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.f6806l.u2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.f6806l.C2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.f6806l.w2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.f6806l.E2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalBias) {
                    this.f6806l.J2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.f6806l.y2(typedArrayObtainStyledAttributes.getInt(index, 2));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.f6806l.I2(typedArrayObtainStyledAttributes.getInt(index, 2));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.f6806l.A2(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalGap) {
                    this.f6806l.K2(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.f6806l.G2(typedArrayObtainStyledAttributes.getInt(index, -1));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f7346d = this.f6806l;
        validateParams();
    }

    @Override
    public void loadParameters(b.a aVar, t0.b bVar, ConstraintLayout.b bVar2, SparseArray<ConstraintWidget> sparseArray) {
        super.loadParameters(aVar, bVar, bVar2, sparseArray);
        if (bVar instanceof e) {
            e eVar = (e) bVar;
            int i10 = bVar2.Z;
            if (i10 != -1) {
                eVar.H2(i10);
            }
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        onMeasure(this.f6806l, i10, i11);
    }

    @Override
    public void resolveRtl(ConstraintWidget constraintWidget, boolean z10) {
        this.f6806l.x1(z10);
    }

    public void setFirstHorizontalBias(float f10) {
        this.f6806l.u2(f10);
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i10) {
        this.f6806l.v2(i10);
        requestLayout();
    }

    public void setFirstVerticalBias(float f10) {
        this.f6806l.w2(f10);
        requestLayout();
    }

    public void setFirstVerticalStyle(int i10) {
        this.f6806l.x2(i10);
        requestLayout();
    }

    public void setHorizontalAlign(int i10) {
        this.f6806l.y2(i10);
        requestLayout();
    }

    public void setHorizontalBias(float f10) {
        this.f6806l.z2(f10);
        requestLayout();
    }

    public void setHorizontalGap(int i10) {
        this.f6806l.A2(i10);
        requestLayout();
    }

    public void setHorizontalStyle(int i10) {
        this.f6806l.B2(i10);
        requestLayout();
    }

    public void setLastHorizontalBias(float f10) {
        this.f6806l.C2(f10);
        requestLayout();
    }

    public void setLastHorizontalStyle(int i10) {
        this.f6806l.D2(i10);
        requestLayout();
    }

    public void setLastVerticalBias(float f10) {
        this.f6806l.E2(f10);
        requestLayout();
    }

    public void setLastVerticalStyle(int i10) {
        this.f6806l.F2(i10);
        requestLayout();
    }

    public void setMaxElementsWrap(int i10) {
        this.f6806l.G2(i10);
        requestLayout();
    }

    public void setOrientation(int i10) {
        this.f6806l.H2(i10);
        requestLayout();
    }

    public void setPadding(int i10) {
        this.f6806l.M1(i10);
        requestLayout();
    }

    public void setPaddingBottom(int i10) {
        this.f6806l.N1(i10);
        requestLayout();
    }

    public void setPaddingLeft(int i10) {
        this.f6806l.P1(i10);
        requestLayout();
    }

    public void setPaddingRight(int i10) {
        this.f6806l.Q1(i10);
        requestLayout();
    }

    public void setPaddingTop(int i10) {
        this.f6806l.S1(i10);
        requestLayout();
    }

    public void setVerticalAlign(int i10) {
        this.f6806l.I2(i10);
        requestLayout();
    }

    public void setVerticalBias(float f10) {
        this.f6806l.J2(f10);
        requestLayout();
    }

    public void setVerticalGap(int i10) {
        this.f6806l.K2(i10);
        requestLayout();
    }

    public void setVerticalStyle(int i10) {
        this.f6806l.L2(i10);
        requestLayout();
    }

    public void setWrapMode(int i10) {
        this.f6806l.M2(i10);
        requestLayout();
    }

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onMeasure(i iVar, int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (iVar == null) {
            setMeasuredDimension(0, 0);
        } else {
            iVar.G1(mode, size, mode2, size2);
            setMeasuredDimension(iVar.B1(), iVar.A1());
        }
    }

    public Flow(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
