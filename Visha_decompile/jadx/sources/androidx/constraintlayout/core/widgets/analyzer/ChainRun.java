package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

public class ChainRun extends WidgetRun {
    private int mChainStyle;
    ArrayList<WidgetRun> mWidgets;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.mWidgets = new ArrayList<>();
        this.orientation = i;
        build();
    }

    private void build() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.mWidget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.mWidget = constraintWidget;
        this.mWidgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.mWidgets.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        for (WidgetRun widgetRun : this.mWidgets) {
            int i = this.orientation;
            if (i == 0) {
                widgetRun.mWidget.horizontalChainRun = this;
            } else if (i == 1) {
                widgetRun.mWidget.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.mWidget.getParent()).isRtl() && this.mWidgets.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.mWidgets;
            this.mWidget = arrayList.get(arrayList.size() - 1).mWidget;
        }
        this.mChainStyle = this.orientation == 0 ? this.mWidget.getHorizontalChainStyle() : this.mWidget.getVerticalChainStyle();
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            WidgetRun widgetRun = this.mWidgets.get(i);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.mWidgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.mWidgets.get(size);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    @Override
    public void apply() {
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.mWidgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.mWidgets.get(0).mWidget;
        ConstraintWidget constraintWidget2 = this.mWidgets.get(size - 1).mWidget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override
    public void applyToWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            this.mWidgets.get(i).applyToWidget();
        }
    }

    @Override
    public void clear() {
        this.mRunGroup = null;
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override
    public long getWrapDimension() {
        int size = this.mWidgets.size();
        long wrapDimension = 0;
        for (int i = 0; i < size; i++) {
            WidgetRun widgetRun = this.mWidgets.get(i);
            wrapDimension = wrapDimension + ((long) widgetRun.start.mMargin) + widgetRun.getWrapDimension() + ((long) widgetRun.end.mMargin);
        }
        return wrapDimension;
    }

    @Override
    public void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override
    public boolean supportsWrapComputation() {
        int size = this.mWidgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.mWidgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.mWidgets) {
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:293:0x00f4 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:90:0x0153  */
    @Override
    public void update(Dependency dependency) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        float f;
        boolean z;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        float f2;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.mWidget.getParent();
            boolean zIsRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
            int i14 = this.end.value - this.start.value;
            int size = this.mWidgets.size();
            int i15 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i15 >= size) {
                    i15 = -1;
                    break;
                } else if (this.mWidgets.get(i15).mWidget.getVisibility() != 8) {
                    break;
                } else {
                    i15++;
                }
            }
            int i16 = size - 1;
            for (int i17 = i16; i17 >= 0; i17--) {
                if (this.mWidgets.get(i17).mWidget.getVisibility() != 8) {
                    i = i17;
                    break;
                }
            }
            int i18 = 0;
            while (true) {
                if (i18 >= 2) {
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                    f = 0.0f;
                    break;
                }
                int i19 = 0;
                i4 = 0;
                i5 = 0;
                int i20 = 0;
                f = 0.0f;
                while (i19 < size) {
                    WidgetRun widgetRun = this.mWidgets.get(i19);
                    if (widgetRun.mWidget.getVisibility() != i2) {
                        i20++;
                        if (i19 > 0 && i19 >= i15) {
                            i4 += widgetRun.start.mMargin;
                        }
                        DimensionDependency dimensionDependency = widgetRun.mDimension;
                        int i21 = dimensionDependency.value;
                        boolean z2 = widgetRun.mDimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z2) {
                            int i22 = this.orientation;
                            if (i22 == 0 && !widgetRun.mWidget.mHorizontalRun.mDimension.resolved) {
                                return;
                            }
                            if (i22 == 1 && !widgetRun.mWidget.mVerticalRun.mDimension.resolved) {
                                return;
                            } else {
                                i12 = i21;
                            }
                        } else {
                            i12 = i21;
                            if (widgetRun.matchConstraintsType == 1 && i18 == 0) {
                                i13 = dimensionDependency.wrapValue;
                                i5++;
                            } else {
                                if (dimensionDependency.resolved) {
                                    i13 = i12;
                                }
                                if (z2) {
                                    i4 += i13;
                                } else {
                                    i5++;
                                    f2 = widgetRun.mWidget.mWeight[this.orientation];
                                    if (f2 >= 0.0f) {
                                        f += f2;
                                    }
                                }
                                if (i19 >= i16 && i19 < i) {
                                    i4 += -widgetRun.end.mMargin;
                                }
                            }
                            z2 = true;
                            if (z2) {
                                i5++;
                                f2 = widgetRun.mWidget.mWeight[this.orientation];
                                if (f2 >= 0.0f) {
                                    f += f2;
                                }
                            } else {
                                i4 += i13;
                            }
                            if (i19 >= i16) {
                            }
                        }
                        i13 = i12;
                        if (z2) {
                            i5++;
                            f2 = widgetRun.mWidget.mWeight[this.orientation];
                            if (f2 >= 0.0f) {
                                f += f2;
                            }
                        } else {
                            i4 += i13;
                        }
                        if (i19 >= i16) {
                        }
                    }
                    i19++;
                    i2 = 8;
                }
                if (i4 < i14 || i5 == 0) {
                    i3 = i20;
                    break;
                } else {
                    i18++;
                    i2 = 8;
                }
            }
            int i23 = this.start.value;
            if (zIsRtl) {
                i23 = this.end.value;
            }
            if (i4 > i14) {
                i23 = zIsRtl ? i23 + ((int) (((i4 - i14) / 2.0f) + 0.5f)) : i23 - ((int) (((i4 - i14) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f3 = i14 - i4;
                int i24 = (int) ((f3 / i5) + 0.5f);
                int i25 = 0;
                int i26 = 0;
                while (i25 < size) {
                    WidgetRun widgetRun2 = this.mWidgets.get(i25);
                    int i27 = i24;
                    int i28 = i4;
                    if (widgetRun2.mWidget.getVisibility() != 8 && widgetRun2.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        DimensionDependency dimensionDependency2 = widgetRun2.mDimension;
                        if (dimensionDependency2.resolved) {
                            zIsRtl = zIsRtl;
                            i23 = i23;
                            f3 = f3;
                        } else {
                            int i29 = f > 0.0f ? (int) (((widgetRun2.mWidget.mWeight[this.orientation] * f3) / f) + 0.5f) : i27;
                            if (this.orientation == 0) {
                                ConstraintWidget constraintWidget = widgetRun2.mWidget;
                                i11 = constraintWidget.mMatchConstraintMaxWidth;
                                i10 = constraintWidget.mMatchConstraintMinWidth;
                            } else {
                                ConstraintWidget constraintWidget2 = widgetRun2.mWidget;
                                int i30 = constraintWidget2.mMatchConstraintMaxHeight;
                                i10 = constraintWidget2.mMatchConstraintMinHeight;
                                i11 = i30;
                            }
                            int iMax = Math.max(i10, widgetRun2.matchConstraintsType == 1 ? Math.min(i29, dimensionDependency2.wrapValue) : i29);
                            if (i11 > 0) {
                                iMax = Math.min(i11, iMax);
                            }
                            if (iMax != i29) {
                                i26++;
                                i29 = iMax;
                            }
                            widgetRun2.mDimension.resolve(i29);
                        }
                    } else {
                        zIsRtl = zIsRtl;
                        i23 = i23;
                        f3 = f3;
                    }
                    i25++;
                    i24 = i27;
                    i4 = i28;
                    i23 = i23;
                    f3 = f3;
                    zIsRtl = zIsRtl;
                    i3 = i3;
                }
                z = zIsRtl;
                i6 = i3;
                i7 = i23;
                int i31 = i4;
                if (i26 > 0) {
                    i5 -= i26;
                    i4 = 0;
                    for (int i32 = 0; i32 < size; i32++) {
                        WidgetRun widgetRun3 = this.mWidgets.get(i32);
                        if (widgetRun3.mWidget.getVisibility() != 8) {
                            if (i32 > 0 && i32 >= i15) {
                                i4 += widgetRun3.start.mMargin;
                            }
                            i4 += widgetRun3.mDimension.value;
                            if (i32 < i16 && i32 < i) {
                                i4 += -widgetRun3.end.mMargin;
                            }
                        }
                    }
                } else {
                    i4 = i31;
                }
                i9 = 2;
                if (this.mChainStyle == 2 && i26 == 0) {
                    i8 = 0;
                    this.mChainStyle = 0;
                } else {
                    i8 = 0;
                }
            } else {
                z = zIsRtl;
                i6 = i3;
                i7 = i23;
                i8 = 0;
                i9 = 2;
            }
            if (i4 > i14) {
                this.mChainStyle = i9;
            }
            if (i6 > 0 && i5 == 0 && i15 == i) {
                this.mChainStyle = i9;
            }
            int i33 = this.mChainStyle;
            if (i33 == 1) {
                int i34 = i6;
                int i35 = i34 > 1 ? (i14 - i4) / (i34 - 1) : i34 == 1 ? (i14 - i4) / 2 : i8;
                if (i5 > 0) {
                    i35 = i8;
                }
                int i36 = i7;
                for (int i37 = i8; i37 < size; i37++) {
                    WidgetRun widgetRun4 = this.mWidgets.get(z ? size - (i37 + 1) : i37);
                    if (widgetRun4.mWidget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i36);
                        widgetRun4.end.resolve(i36);
                    } else {
                        if (i37 > 0) {
                            i36 = z ? i36 - i35 : i36 + i35;
                        }
                        if (i37 > 0 && i37 >= i15) {
                            i36 = z ? i36 - widgetRun4.start.mMargin : i36 + widgetRun4.start.mMargin;
                        }
                        if (z) {
                            widgetRun4.end.resolve(i36);
                        } else {
                            widgetRun4.start.resolve(i36);
                        }
                        DimensionDependency dimensionDependency3 = widgetRun4.mDimension;
                        int i38 = dimensionDependency3.value;
                        if (widgetRun4.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i38 = dimensionDependency3.wrapValue;
                        }
                        i36 = z ? i36 - i38 : i36 + i38;
                        if (z) {
                            widgetRun4.start.resolve(i36);
                        } else {
                            widgetRun4.end.resolve(i36);
                        }
                        widgetRun4.mResolved = true;
                        if (i37 < i16 && i37 < i) {
                            i36 = z ? i36 - (-widgetRun4.end.mMargin) : i36 + (-widgetRun4.end.mMargin);
                        }
                    }
                }
                return;
            }
            int i39 = i6;
            if (i33 == 0) {
                int i40 = (i14 - i4) / (i39 + 1);
                if (i5 > 0) {
                    i40 = i8;
                }
                int i41 = i7;
                for (int i42 = i8; i42 < size; i42++) {
                    WidgetRun widgetRun5 = this.mWidgets.get(z ? size - (i42 + 1) : i42);
                    if (widgetRun5.mWidget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i41);
                        widgetRun5.end.resolve(i41);
                    } else {
                        int i43 = z ? i41 - i40 : i41 + i40;
                        if (i42 > 0 && i42 >= i15) {
                            i43 = z ? i43 - widgetRun5.start.mMargin : i43 + widgetRun5.start.mMargin;
                        }
                        if (z) {
                            widgetRun5.end.resolve(i43);
                        } else {
                            widgetRun5.start.resolve(i43);
                        }
                        DimensionDependency dimensionDependency4 = widgetRun5.mDimension;
                        int iMin = dimensionDependency4.value;
                        if (widgetRun5.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            iMin = Math.min(iMin, dimensionDependency4.wrapValue);
                        }
                        i41 = z ? i43 - iMin : i43 + iMin;
                        if (z) {
                            widgetRun5.start.resolve(i41);
                        } else {
                            widgetRun5.end.resolve(i41);
                        }
                        if (i42 < i16 && i42 < i) {
                            i41 = z ? i41 - (-widgetRun5.end.mMargin) : i41 + (-widgetRun5.end.mMargin);
                        }
                    }
                }
                return;
            }
            if (i33 == 2) {
                float horizontalBiasPercent = this.orientation == 0 ? this.mWidget.getHorizontalBiasPercent() : this.mWidget.getVerticalBiasPercent();
                if (z) {
                    horizontalBiasPercent = 1.0f - horizontalBiasPercent;
                }
                int i44 = (int) (((i14 - i4) * horizontalBiasPercent) + 0.5f);
                if (i44 < 0 || i5 > 0) {
                    i44 = i8;
                }
                int i45 = z ? i7 - i44 : i7 + i44;
                for (int i46 = i8; i46 < size; i46++) {
                    WidgetRun widgetRun6 = this.mWidgets.get(z ? size - (i46 + 1) : i46);
                    if (widgetRun6.mWidget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i45);
                        widgetRun6.end.resolve(i45);
                    } else {
                        if (i46 > 0 && i46 >= i15) {
                            i45 = z ? i45 - widgetRun6.start.mMargin : i45 + widgetRun6.start.mMargin;
                        }
                        if (z) {
                            widgetRun6.end.resolve(i45);
                        } else {
                            widgetRun6.start.resolve(i45);
                        }
                        DimensionDependency dimensionDependency5 = widgetRun6.mDimension;
                        int i47 = dimensionDependency5.value;
                        if (widgetRun6.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i47 = dimensionDependency5.wrapValue;
                        }
                        i45 = z ? i45 - i47 : i45 + i47;
                        if (z) {
                            widgetRun6.start.resolve(i45);
                        } else {
                            widgetRun6.end.resolve(i45);
                        }
                        if (i46 < i16 && i46 < i) {
                            i45 = z ? i45 - (-widgetRun6.end.mMargin) : i45 + (-widgetRun6.end.mMargin);
                        }
                    }
                }
            }
        }
    }
}
