package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class ConstraintWidget {
    public static final int ANCHOR_BASELINE = 4;
    public static final int ANCHOR_BOTTOM = 3;
    public static final int ANCHOR_LEFT = 0;
    public static final int ANCHOR_RIGHT = 1;
    public static final int ANCHOR_TOP = 2;
    private static final boolean AUTOTAG_CENTER = false;
    public static final int BOTH = 2;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    static final int DIMENSION_HORIZONTAL = 0;
    static final int DIMENSION_VERTICAL = 1;
    protected static final int DIRECT = 2;
    private static final boolean DO_NOT_USE = false;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_RATIO = 3;
    public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    private static final boolean USE_WRAP_DIMENSION_FOR_SPREAD = false;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    private static final int WRAP = -2;
    public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
    public static final int WRAP_BEHAVIOR_INCLUDED = 0;
    public static final int WRAP_BEHAVIOR_SKIPPED = 3;
    public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;
    public WidgetFrame frame;
    public ChainRun horizontalChainRun;
    public int horizontalGroup;
    public boolean[] isTerminalWidget;
    protected ArrayList<ConstraintAnchor> mAnchors;
    private boolean mAnimated;
    public ConstraintAnchor mBaseline;
    int mBaselineDistance;
    public ConstraintAnchor mBottom;
    boolean mBottomHasCentered;
    public ConstraintAnchor mCenter;
    ConstraintAnchor mCenterX;
    ConstraintAnchor mCenterY;
    public float mCircleConstraintAngle;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    public float mDimensionRatio;
    protected int mDimensionRatioSide;
    int mDistToBottom;
    int mDistToLeft;
    int mDistToRight;
    int mDistToTop;
    boolean mGroupsToSolver;
    private boolean mHasBaseline;
    int mHeight;
    private int mHeightOverride;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    public HorizontalWidgetRun mHorizontalRun;
    private boolean mHorizontalSolvingPass;
    boolean mHorizontalWrapVisited;
    private boolean mInPlaceholder;
    private boolean mInVirtualLayout;
    public boolean mIsHeightWrapContent;
    private boolean[] mIsInBarrier;
    public boolean mIsWidthWrapContent;
    private int mLastHorizontalMeasureSpec;
    private int mLastVerticalMeasureSpec;
    public ConstraintAnchor mLeft;
    boolean mLeftHasCentered;
    public ConstraintAnchor[] mListAnchors;
    public DimensionBehaviour[] mListDimensionBehaviors;
    protected ConstraintWidget[] mListNextMatchConstraintsWidget;
    public int mMatchConstraintDefaultHeight;
    public int mMatchConstraintDefaultWidth;
    public int mMatchConstraintMaxHeight;
    public int mMatchConstraintMaxWidth;
    public int mMatchConstraintMinHeight;
    public int mMatchConstraintMinWidth;
    public float mMatchConstraintPercentHeight;
    public float mMatchConstraintPercentWidth;
    private int[] mMaxDimension;
    private boolean mMeasureRequested;
    protected int mMinHeight;
    protected int mMinWidth;
    protected ConstraintWidget[] mNextChainWidget;
    protected int mOffsetX;
    protected int mOffsetY;
    private boolean mOptimizeWrapO;
    private boolean mOptimizeWrapOnResolved;
    public ConstraintWidget mParent;
    int mRelX;
    int mRelY;
    float mResolvedDimensionRatio;
    int mResolvedDimensionRatioSide;
    boolean mResolvedHasRatio;
    private boolean mResolvedHorizontal;
    public int[] mResolvedMatchConstraintDefault;
    private boolean mResolvedVertical;
    public ConstraintAnchor mRight;
    boolean mRightHasCentered;
    public ConstraintAnchor mTop;
    boolean mTopHasCentered;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    public VerticalWidgetRun mVerticalRun;
    private boolean mVerticalSolvingPass;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    public float[] mWeight;
    int mWidth;
    private int mWidthOverride;
    private int mWrapBehaviorInParent;
    protected int mX;
    protected int mY;
    public boolean measured;
    public WidgetRun[] run;
    public String stringId;
    public ChainRun verticalChainRun;
    public int verticalGroup;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public ConstraintWidget() {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.mHorizontalRun = null;
        this.mVerticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.mOptimizeWrapO = false;
        this.mOptimizeWrapOnResolved = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = Float.NaN;
        this.mHasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        addAnchors();
    }

    private void addAnchors() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    /* JADX WARN: Code duplicated, block: B:238:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:240:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:246:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:248:0x041e  */
    /* JADX WARN: Code duplicated, block: B:255:0x0437  */
    /* JADX WARN: Code duplicated, block: B:264:0x0459  */
    /* JADX WARN: Code duplicated, block: B:274:0x0471  */
    /* JADX WARN: Code duplicated, block: B:277:0x0477  */
    /* JADX WARN: Code duplicated, block: B:278:0x0479 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:281:0x047f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:286:0x0488  */
    /* JADX WARN: Code duplicated, block: B:288:0x048c  */
    /* JADX WARN: Code duplicated, block: B:291:0x0492  */
    /* JADX WARN: Code duplicated, block: B:293:0x0496  */
    /* JADX WARN: Code duplicated, block: B:295:0x049a  */
    /* JADX WARN: Code duplicated, block: B:296:0x049c  */
    /* JADX WARN: Code duplicated, block: B:299:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:301:0x04aa A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:305:0x04b2  */
    /* JADX WARN: Code duplicated, block: B:308:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:310:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:311:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:313:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:315:0x04d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:323:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:367:0x0568  */
    private void applyConstraints(LinearSystem linearSystem, boolean z, boolean z2, boolean z3, boolean z4, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z5, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2, int i3, int i4, float f, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i5, int i6, int i7, int i8, float f2, boolean z11) {
        boolean z12;
        boolean z13;
        boolean z14;
        int iMin;
        int i9;
        int i10;
        int i11;
        char c;
        int i12;
        boolean z15;
        boolean z16;
        SolverVariable solverVariableCreateObjectVariable;
        SolverVariable solverVariableCreateObjectVariable2;
        int i13;
        ConstraintAnchor constraintAnchor3;
        int i14;
        int i15;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean z20;
        ConstraintWidget constraintWidget;
        boolean z21;
        ConstraintWidget constraintWidget2;
        int iMax;
        int i16;
        int margin;
        int margin2;
        int iMin2;
        int i17;
        int i18;
        boolean z22;
        int i19;
        int i20;
        int i21;
        boolean z23;
        int i22;
        boolean z24;
        ConstraintWidget constraintWidget3;
        int i23;
        ConstraintWidget constraintWidget4;
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(constraintAnchor);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(constraintAnchor2);
        SolverVariable solverVariableCreateObjectVariable5 = linearSystem.createObjectVariable(constraintAnchor.getTarget());
        SolverVariable solverVariableCreateObjectVariable6 = linearSystem.createObjectVariable(constraintAnchor2.getTarget());
        if (LinearSystem.getMetrics() != null) {
            LinearSystem.getMetrics().nonresolvedWidgets++;
        }
        boolean zIsConnected = constraintAnchor.isConnected();
        boolean zIsConnected2 = constraintAnchor2.isConnected();
        boolean zIsConnected3 = this.mCenter.isConnected();
        int i24 = zIsConnected2 ? (zIsConnected ? 1 : 0) + 1 : zIsConnected ? 1 : 0;
        if (zIsConnected3) {
            i24++;
        }
        int i25 = z6 ? 3 : i5;
        int iOrdinal = dimensionBehaviour.ordinal();
        boolean z25 = (iOrdinal == 0 || iOrdinal == 1 || iOrdinal != 2 || i25 == 4) ? false : true;
        int i26 = this.mWidthOverride;
        if (i26 == -1 || !z) {
            i26 = i2;
            z12 = z25;
        } else {
            this.mWidthOverride = -1;
            z12 = false;
        }
        int i27 = this.mHeightOverride;
        if (i27 == -1 || z) {
            z13 = z12;
        } else {
            this.mHeightOverride = -1;
            i26 = i27;
            z13 = false;
        }
        int i28 = i26;
        if (this.mVisibility == 8) {
            iMin = 0;
            z14 = false;
        } else {
            z14 = z13;
            iMin = i28;
        }
        if (z11) {
            if (!zIsConnected && !zIsConnected2 && !zIsConnected3) {
                linearSystem.addEquality(solverVariableCreateObjectVariable3, i);
            } else if (zIsConnected && !zIsConnected2) {
                i9 = 8;
                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), 8);
            }
            i9 = 8;
        } else {
            i9 = 8;
        }
        if (!z14) {
            if (z5) {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, 0, 3);
                if (i3 > 0) {
                    linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i3, 8);
                }
                if (i4 < Integer.MAX_VALUE) {
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i4, 8);
                }
            } else {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, i9);
            }
            z16 = z4;
            i12 = i7;
            i10 = i8;
            i11 = i24;
            z15 = z14;
            c = 2;
        } else if (i24 == 2 || z6 || !(i25 == 1 || i25 == 0)) {
            int i29 = i7 == -2 ? iMin : i7;
            i10 = i8 == -2 ? iMin : i8;
            if (iMin > 0 && i25 != 1) {
                iMin = 0;
            }
            if (i29 > 0) {
                linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i29, 8);
                iMin = Math.max(iMin, i29);
            }
            if (i10 > 0) {
                if (!z2 || i25 != 1) {
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i10, 8);
                }
                iMin = Math.min(iMin, i10);
            }
            if (i25 == 1) {
                if (z2) {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 8);
                } else if (z8) {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 5);
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 8);
                } else {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 5);
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 8);
                }
                z16 = z4;
                i11 = i24;
                z15 = z14;
                i12 = i29;
                c = 2;
            } else if (i25 == 2) {
                ConstraintAnchor.Type type = constraintAnchor.getType();
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
                if (type == type2 || constraintAnchor.getType() == ConstraintAnchor.Type.BOTTOM) {
                    solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(type2));
                    solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.BOTTOM));
                } else {
                    solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.LEFT));
                    solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.RIGHT));
                }
                SolverVariable solverVariable3 = solverVariableCreateObjectVariable;
                SolverVariable solverVariable4 = solverVariableCreateObjectVariable2;
                ArrayRow arrayRowCreateRow = linearSystem.createRow();
                boolean z26 = z14;
                c = 2;
                int i30 = i29;
                i11 = i24 == true ? 1 : 0;
                linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, solverVariable4, solverVariable3, f2));
                if (z2) {
                    z26 = false;
                }
                i12 = i30;
                z15 = z26;
                z16 = z4;
            } else {
                i11 = i24;
                c = 2;
                i12 = i29;
                z15 = z14;
                z16 = true;
            }
        } else {
            int iMax2 = Math.max(i7, iMin);
            if (i8 > 0) {
                iMax2 = Math.min(i8, iMax2);
            }
            linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMax2, 8);
            z16 = z4;
            i12 = i7;
            i10 = i8;
            i11 = i24;
            z15 = false;
            c = 2;
        }
        if (!z11 || z8) {
            int i31 = 0;
            if (i11 < c && z2 && z16) {
                linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, i31, 8);
                int i32 = (z || this.mBaseline.mTarget == null) ? 1 : i31;
                if (z || (constraintAnchor3 = this.mBaseline.mTarget) == null) {
                    i13 = i32;
                } else {
                    ConstraintWidget constraintWidget5 = constraintAnchor3.mOwner;
                    if (constraintWidget5.mDimensionRatio != 0.0f) {
                        DimensionBehaviour[] dimensionBehaviourArr = constraintWidget5.mListDimensionBehaviors;
                        DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[i31];
                        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
                        if (dimensionBehaviour2 == dimensionBehaviour3 && dimensionBehaviourArr[1] == dimensionBehaviour3) {
                            i13 = 1;
                        } else {
                            i13 = i31;
                        }
                    } else {
                        i13 = i31;
                    }
                }
                if (i13 != 0) {
                    linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable4, i31, 8);
                    return;
                }
                return;
            }
            return;
        }
        if (zIsConnected || zIsConnected2 || zIsConnected3) {
            if (zIsConnected && zIsConnected2 == 0) {
                i23 = (z2 && (constraintAnchor.mTarget.mOwner instanceof Barrier)) ? 8 : 5;
                z21 = z2;
                margin = 0;
                solverVariableCreateObjectVariable4 = solverVariableCreateObjectVariable4;
            } else {
                if (zIsConnected || zIsConnected2 == 0) {
                    if (zIsConnected && zIsConnected2 != 0) {
                        ConstraintWidget constraintWidget6 = constraintAnchor.mTarget.mOwner;
                        ConstraintWidget constraintWidget7 = constraintAnchor2.mTarget.mOwner;
                        ConstraintWidget parent = getParent();
                        int i33 = 6;
                        if (z15) {
                            if (i25 == 0) {
                                if (i10 != 0 || i12 != 0) {
                                    z23 = false;
                                    i20 = 5;
                                    i22 = 5;
                                    z24 = true;
                                    z17 = true;
                                } else if (solverVariableCreateObjectVariable5.isFinalValue && solverVariableCreateObjectVariable6.isFinalValue) {
                                    linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), 8);
                                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, -constraintAnchor2.getMargin(), 8);
                                    return;
                                } else {
                                    z24 = false;
                                    z17 = false;
                                    i20 = 8;
                                    i22 = 8;
                                    z23 = true;
                                }
                                if ((constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier)) {
                                    solverVariable2 = solverVariable2;
                                    i25 = i25;
                                    z19 = z23;
                                    i14 = i20;
                                    i33 = 6;
                                    z18 = z24;
                                    i15 = 4;
                                } else {
                                    z19 = z23;
                                    z18 = z24;
                                    i15 = i22;
                                    i25 = i25;
                                    i14 = i20;
                                    i33 = 6;
                                }
                            } else if (i25 == 2) {
                                if (!(constraintWidget6 instanceof Barrier) && !(constraintWidget7 instanceof Barrier)) {
                                    solverVariable2 = solverVariable2;
                                    i25 = i25;
                                    i33 = 6;
                                    i14 = 5;
                                    i15 = 5;
                                }
                                z18 = true;
                                z17 = true;
                                z19 = false;
                            } else if (i25 == 1) {
                                solverVariable2 = solverVariable2;
                                i25 = i25;
                                i14 = 8;
                                i15 = 4;
                                z18 = true;
                                z17 = true;
                                z19 = false;
                            } else if (i25 == 3) {
                                i25 = i25;
                                if (this.mResolvedDimensionRatioSide == -1) {
                                    if (z9) {
                                        solverVariable2 = solverVariable2;
                                        i33 = z2 ? 5 : 4;
                                    } else {
                                        solverVariable2 = solverVariable2;
                                        i33 = 8;
                                    }
                                    i14 = 8;
                                } else if (z6) {
                                    if (i6 == 2 || i6 == 1) {
                                        i20 = 5;
                                        i21 = 4;
                                    } else {
                                        i20 = 8;
                                        i21 = 5;
                                    }
                                    i15 = i21;
                                    z18 = true;
                                    z17 = true;
                                    z19 = true;
                                    i14 = i20;
                                    i33 = 6;
                                } else {
                                    if (i10 > 0) {
                                        solverVariable2 = solverVariable2;
                                        i33 = 6;
                                        i14 = 5;
                                    } else {
                                        if (i10 != 0 || i12 != 0) {
                                            i14 = 5;
                                        } else if (z9) {
                                            i14 = (constraintWidget6 == parent || constraintWidget7 == parent) ? 5 : 4;
                                        } else {
                                            solverVariable2 = solverVariable2;
                                            i33 = 6;
                                            i14 = 5;
                                            i15 = 8;
                                        }
                                        i15 = 4;
                                    }
                                    z18 = true;
                                    z17 = true;
                                    z19 = true;
                                }
                                i15 = 5;
                                z18 = true;
                                z17 = true;
                                z19 = true;
                            } else {
                                i25 = i25;
                                solverVariable2 = solverVariable2;
                                i33 = 6;
                                i14 = 5;
                                i15 = 4;
                                z18 = false;
                                z17 = false;
                                z19 = false;
                            }
                            if (z17 || solverVariableCreateObjectVariable5 != solverVariableCreateObjectVariable6 || constraintWidget6 == parent) {
                                z20 = true;
                            } else {
                                z17 = false;
                                z20 = false;
                            }
                            if (z18) {
                                if (z15 && !z7 && !z9 && solverVariableCreateObjectVariable5 == solverVariable && solverVariableCreateObjectVariable6 == solverVariable2) {
                                    z21 = false;
                                    i19 = 8;
                                    i18 = 8;
                                    z22 = false;
                                } else {
                                    z21 = z2;
                                    i18 = i33;
                                    z22 = z20;
                                    i19 = i14;
                                }
                                constraintWidget = parent;
                                linearSystem.addCentering(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), f, solverVariableCreateObjectVariable6, solverVariableCreateObjectVariable4, constraintAnchor2.getMargin(), i18);
                                i14 = i19;
                                z20 = z22;
                            } else {
                                constraintWidget = parent;
                                z21 = z2;
                            }
                            if (this.mVisibility != 8 && !constraintAnchor2.hasDependents()) {
                                return;
                            }
                            if (z17) {
                                if (z21 && solverVariableCreateObjectVariable5 != solverVariableCreateObjectVariable6 && !z15 && ((constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier))) {
                                    i14 = 6;
                                }
                                linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), i14);
                                solverVariableCreateObjectVariable4 = solverVariableCreateObjectVariable4;
                                linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, -constraintAnchor2.getMargin(), i14);
                            } else {
                                solverVariableCreateObjectVariable4 = solverVariableCreateObjectVariable4;
                            }
                            if (z21 || !z10 || (constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier)) {
                                constraintWidget2 = constraintWidget;
                            } else {
                                constraintWidget2 = constraintWidget;
                                if (constraintWidget7 != constraintWidget2) {
                                    i14 = 6;
                                    iMax = 6;
                                    z20 = true;
                                }
                                if (z20) {
                                    if (z19 && (!z9 || z3)) {
                                        if (constraintWidget6 != constraintWidget2 && constraintWidget7 != constraintWidget2) {
                                            i33 = iMax;
                                        }
                                        if ((constraintWidget6 instanceof Guideline) || (constraintWidget7 instanceof Guideline)) {
                                            i33 = 5;
                                        }
                                        if ((constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier)) {
                                            i33 = 5;
                                        }
                                        if (z9) {
                                            i17 = 5;
                                        } else {
                                            i17 = i33;
                                        }
                                        iMax = Math.max(i17, iMax);
                                    }
                                    if (z21) {
                                        iMin2 = Math.min(i14, iMax);
                                        if (z6 || z9 || !(constraintWidget6 == constraintWidget2 || constraintWidget7 == constraintWidget2)) {
                                            iMax = iMin2;
                                        } else {
                                            iMax = 4;
                                        }
                                    }
                                    linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), iMax);
                                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, -constraintAnchor2.getMargin(), iMax);
                                }
                                if (z21) {
                                    if (solverVariable == solverVariableCreateObjectVariable5) {
                                        margin2 = constraintAnchor.getMargin();
                                    } else {
                                        margin2 = 0;
                                    }
                                    if (solverVariableCreateObjectVariable5 != solverVariable) {
                                        linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, margin2, 5);
                                    }
                                }
                                if (z21 || !z15 || i3 != 0 || i12 != 0) {
                                    i16 = 5;
                                    margin = 0;
                                } else if (z15 && i25 == 3) {
                                    margin = 0;
                                    linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, 0, 8);
                                    i16 = 5;
                                } else {
                                    margin = 0;
                                    i16 = 5;
                                    linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, 0, 5);
                                }
                            }
                            iMax = i15;
                            if (z20) {
                                if (z19) {
                                    if (constraintWidget6 != constraintWidget2) {
                                        i33 = iMax;
                                    }
                                    if (constraintWidget6 instanceof Guideline) {
                                        i33 = 5;
                                    } else {
                                        i33 = 5;
                                    }
                                    if (constraintWidget6 instanceof Barrier) {
                                        i33 = 5;
                                    } else {
                                        i33 = 5;
                                    }
                                    if (z9) {
                                        i17 = 5;
                                    } else {
                                        i17 = i33;
                                    }
                                    iMax = Math.max(i17, iMax);
                                }
                                if (z21) {
                                    iMin2 = Math.min(i14, iMax);
                                    if (z6) {
                                        iMax = iMin2;
                                    } else {
                                        iMax = iMin2;
                                    }
                                }
                                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), iMax);
                                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, -constraintAnchor2.getMargin(), iMax);
                            }
                            if (z21) {
                                if (solverVariable == solverVariableCreateObjectVariable5) {
                                    margin2 = constraintAnchor.getMargin();
                                } else {
                                    margin2 = 0;
                                }
                                if (solverVariableCreateObjectVariable5 != solverVariable) {
                                    linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, margin2, 5);
                                }
                            }
                            if (z21) {
                                i16 = 5;
                                margin = 0;
                            } else {
                                i16 = 5;
                                margin = 0;
                            }
                        } else if (solverVariableCreateObjectVariable5.isFinalValue && solverVariableCreateObjectVariable6.isFinalValue) {
                            linearSystem.addCentering(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), f, solverVariableCreateObjectVariable6, solverVariableCreateObjectVariable4, constraintAnchor2.getMargin(), 8);
                            if (z2 && z16) {
                                int margin3 = constraintAnchor2.mTarget != null ? constraintAnchor2.getMargin() : 0;
                                if (solverVariableCreateObjectVariable6 != solverVariable2) {
                                    linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable4, margin3, 5);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        i14 = 5;
                        i15 = 4;
                        z18 = true;
                        z17 = true;
                        z19 = false;
                        if (z17) {
                            z20 = true;
                        } else {
                            z20 = true;
                        }
                        if (z18) {
                            if (z15) {
                                z21 = z2;
                                i18 = i33;
                                z22 = z20;
                                i19 = i14;
                            } else {
                                z21 = z2;
                                i18 = i33;
                                z22 = z20;
                                i19 = i14;
                            }
                            constraintWidget = parent;
                            linearSystem.addCentering(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), f, solverVariableCreateObjectVariable6, solverVariableCreateObjectVariable4, constraintAnchor2.getMargin(), i18);
                            i14 = i19;
                            z20 = z22;
                        } else {
                            constraintWidget = parent;
                            z21 = z2;
                        }
                        if (this.mVisibility != 8) {
                        }
                        if (z17) {
                            if (z21) {
                                i14 = 6;
                            }
                            linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), i14);
                            solverVariableCreateObjectVariable4 = solverVariableCreateObjectVariable4;
                            linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, -constraintAnchor2.getMargin(), i14);
                        } else {
                            solverVariableCreateObjectVariable4 = solverVariableCreateObjectVariable4;
                        }
                        if (z21) {
                            constraintWidget2 = constraintWidget;
                            iMax = i15;
                        } else {
                            constraintWidget2 = constraintWidget;
                            iMax = i15;
                        }
                        if (z20) {
                            if (z19) {
                                if (constraintWidget6 != constraintWidget2) {
                                    i33 = iMax;
                                }
                                if (constraintWidget6 instanceof Guideline) {
                                    i33 = 5;
                                } else {
                                    i33 = 5;
                                }
                                if (constraintWidget6 instanceof Barrier) {
                                    i33 = 5;
                                } else {
                                    i33 = 5;
                                }
                                if (z9) {
                                    i17 = 5;
                                } else {
                                    i17 = i33;
                                }
                                iMax = Math.max(i17, iMax);
                            }
                            if (z21) {
                                iMin2 = Math.min(i14, iMax);
                                if (z6) {
                                    iMax = iMin2;
                                } else {
                                    iMax = iMin2;
                                }
                            }
                            linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), iMax);
                            linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, -constraintAnchor2.getMargin(), iMax);
                        }
                        if (z21) {
                            if (solverVariable == solverVariableCreateObjectVariable5) {
                                margin2 = constraintAnchor.getMargin();
                            } else {
                                margin2 = 0;
                            }
                            if (solverVariableCreateObjectVariable5 != solverVariable) {
                                linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, margin2, 5);
                            }
                        }
                        if (z21) {
                            i16 = 5;
                            margin = 0;
                        } else {
                            i16 = 5;
                            margin = 0;
                        }
                    }
                    i23 = i16;
                } else {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, -constraintAnchor2.getMargin(), 8);
                    if (z2) {
                        if (this.mOptimizeWrapO && solverVariableCreateObjectVariable3.isFinalValue && (constraintWidget3 = this.mParent) != null) {
                            ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget3;
                            if (z) {
                                constraintWidgetContainer.addHorizontalWrapMinVariable(constraintAnchor);
                            } else {
                                constraintWidgetContainer.addVerticalWrapMinVariable(constraintAnchor);
                            }
                        } else {
                            i16 = 5;
                            linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, 0, 5);
                            margin = 0;
                        }
                    }
                }
                margin = 0;
                i16 = 5;
            }
            if (z21 || !z16) {
            }
            if (constraintAnchor2.mTarget != null) {
                margin = constraintAnchor2.getMargin();
            }
            if (solverVariableCreateObjectVariable6 != solverVariable2) {
                if (!this.mOptimizeWrapO || !solverVariableCreateObjectVariable4.isFinalValue || (constraintWidget4 = this.mParent) == null) {
                    linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable4, margin, i23);
                    return;
                }
                ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget4;
                if (z) {
                    constraintWidgetContainer2.addHorizontalWrapMaxVariable(constraintAnchor2);
                    return;
                } else {
                    constraintWidgetContainer2.addVerticalWrapMaxVariable(constraintAnchor2);
                    return;
                }
            }
            return;
        }
        i16 = 5;
        margin = 0;
        z21 = z2;
        i23 = i16;
        if (z21) {
        }
    }

    private boolean isChainHead(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i2];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return (constraintAnchor4 == null || constraintAnchor4.mTarget == constraintAnchor3 || (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i2 + 1]).mTarget) == null || constraintAnchor2.mTarget != constraintAnchor) ? false : true;
    }

    private void serializeAnchor(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("',");
        sb.append(constraintAnchor.mMargin);
        sb.append(StringUtils.COMMA);
        sb.append(constraintAnchor.mGoneMargin);
        sb.append(StringUtils.COMMA);
        sb.append(" ] ,\n");
    }

    private void serializeAttribute(StringBuilder sb, String str, float f, float f2) {
        if (f == f2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f);
        sb.append(",\n");
    }

    private void serializeCircle(StringBuilder sb, ConstraintAnchor constraintAnchor, float f) {
        if (constraintAnchor.mTarget == null || Float.isNaN(f)) {
            return;
        }
        sb.append("circle : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("',");
        sb.append(constraintAnchor.mMargin);
        sb.append(StringUtils.COMMA);
        sb.append(f);
        sb.append(StringUtils.COMMA);
        sb.append(" ] ,\n");
    }

    private void serializeDimensionRatio(StringBuilder sb, String str, float f, int i) {
        if (f == 0.0f) {
            return;
        }
        sb.append(str);
        sb.append(" :  [");
        sb.append(f);
        sb.append(StringUtils.COMMA);
        sb.append(i);
        sb.append("");
        sb.append("],\n");
    }

    private void serializeSize(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, int i6, float f, float f2) {
        sb.append(str);
        sb.append(" :  {\n");
        serializeAttribute(sb, PlayAudioData.TAG_SIZE, i, Integer.MIN_VALUE);
        serializeAttribute(sb, "min", i2, 0);
        serializeAttribute(sb, "max", i3, Integer.MAX_VALUE);
        serializeAttribute(sb, "matchMin", i5, 0);
        serializeAttribute(sb, "matchDef", i6, 0);
        serializeAttribute(sb, "matchPercent", i6, 1);
        serializeAttribute(sb, "matchConstraintPercent", f, 1.0f);
        serializeAttribute(sb, "weight", f2, 1.0f);
        serializeAttribute(sb, "override", i4, 1);
        sb.append("},\n");
    }

    public void addChildrenToSolverByDependency(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet<ConstraintWidget> hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            Optimizer.checkMatchParent(constraintWidgetContainer, linearSystem, this);
            hashSet.remove(this);
            addToSolver(linearSystem, constraintWidgetContainer.optimizeFor(64));
        }
        if (i == 0) {
            HashSet<ConstraintAnchor> dependents = this.mLeft.getDependents();
            if (dependents != null) {
                Iterator<ConstraintAnchor> it = dependents.iterator();
                while (it.hasNext()) {
                    it.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
            }
            HashSet<ConstraintAnchor> dependents2 = this.mRight.getDependents();
            if (dependents2 != null) {
                Iterator<ConstraintAnchor> it2 = dependents2.iterator();
                while (it2.hasNext()) {
                    it2.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> dependents3 = this.mTop.getDependents();
        if (dependents3 != null) {
            Iterator<ConstraintAnchor> it3 = dependents3.iterator();
            while (it3.hasNext()) {
                it3.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> dependents4 = this.mBottom.getDependents();
        if (dependents4 != null) {
            Iterator<ConstraintAnchor> it4 = dependents4.iterator();
            while (it4.hasNext()) {
                it4.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> dependents5 = this.mBaseline.getDependents();
        if (dependents5 != null) {
            Iterator<ConstraintAnchor> it5 = dependents5.iterator();
            while (it5.hasNext()) {
                it5.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
    }

    public boolean addFirst() {
        return (this instanceof VirtualLayout) || (this instanceof Guideline);
    }

    /* JADX WARN: Code duplicated, block: B:190:0x02db  */
    /* JADX WARN: Code duplicated, block: B:192:0x02e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:194:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:197:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:19:0x004f  */
    /* JADX WARN: Code duplicated, block: B:201:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:204:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:207:0x0305  */
    /* JADX WARN: Code duplicated, block: B:209:0x0308  */
    /* JADX WARN: Code duplicated, block: B:210:0x030b  */
    /* JADX WARN: Code duplicated, block: B:213:0x0324  */
    /* JADX WARN: Code duplicated, block: B:222:0x033a  */
    /* JADX WARN: Code duplicated, block: B:234:0x0392  */
    /* JADX WARN: Code duplicated, block: B:237:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:238:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:241:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:242:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:245:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:246:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:250:0x044d  */
    /* JADX WARN: Code duplicated, block: B:266:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:269:0x04b4  */
    /* JADX WARN: Code duplicated, block: B:270:0x04b6  */
    /* JADX WARN: Code duplicated, block: B:272:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:310:0x0598  */
    /* JADX WARN: Code duplicated, block: B:313:0x05a0  */
    /* JADX WARN: Code duplicated, block: B:315:0x05a7  */
    /* JADX WARN: Code duplicated, block: B:316:0x05b7  */
    /* JADX WARN: Code duplicated, block: B:319:0x05ce  */
    /* JADX WARN: Code duplicated, block: B:321:0x05f0  */
    /* JADX WARN: Code duplicated, block: B:324:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:326:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public void addToSolver(LinearSystem linearSystem, boolean z) {
        boolean z2;
        boolean z3;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        int i2;
        boolean z7;
        DimensionBehaviour dimensionBehaviour;
        DimensionBehaviour dimensionBehaviour2;
        boolean z8;
        int i3;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        LinearSystem linearSystem2;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        SolverVariable solverVariable5;
        int i4;
        int i5;
        char c;
        int i6;
        int i7;
        Metrics metrics;
        boolean z9;
        VerticalWidgetRun verticalWidgetRun;
        ConstraintWidget constraintWidget3;
        SolverVariable solverVariableCreateObjectVariable;
        ConstraintWidget constraintWidget4;
        SolverVariable solverVariableCreateObjectVariable2;
        DimensionBehaviour[] dimensionBehaviourArr;
        boolean z10;
        HorizontalWidgetRun horizontalWidgetRun;
        int i8;
        int i9;
        boolean zIsInHorizontalChain;
        boolean zIsInVerticalChain;
        HorizontalWidgetRun horizontalWidgetRun2;
        VerticalWidgetRun verticalWidgetRun2;
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable solverVariableCreateObjectVariable5 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable solverVariableCreateObjectVariable6 = linearSystem.createObjectVariable(this.mBottom);
        SolverVariable solverVariableCreateObjectVariable7 = linearSystem.createObjectVariable(this.mBaseline);
        ConstraintWidget constraintWidget5 = this.mParent;
        if (constraintWidget5 == null) {
            z2 = false;
            z3 = false;
        } else {
            boolean z11 = constraintWidget5 != null && constraintWidget5.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT;
            boolean z12 = constraintWidget5 != null && constraintWidget5.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT;
            int i10 = this.mWrapBehaviorInParent;
            if (i10 == 1) {
                z2 = z11;
                z3 = false;
            } else if (i10 == 2) {
                z3 = z12;
                z2 = false;
            } else if (i10 != 3) {
                z3 = z12;
                z2 = z11;
            } else {
                z2 = false;
                z3 = false;
            }
        }
        if (this.mVisibility == 8 && !this.mAnimated && !hasDependencies()) {
            boolean[] zArr = this.mIsInBarrier;
            if (!zArr[0] && !zArr[1]) {
                return;
            }
        }
        boolean z13 = this.mResolvedHorizontal;
        if (z13 || this.mResolvedVertical) {
            if (z13) {
                linearSystem.addEquality(solverVariableCreateObjectVariable3, this.mX);
                linearSystem.addEquality(solverVariableCreateObjectVariable4, this.mX + this.mWidth);
                if (z2 && (constraintWidget2 = this.mParent) != null) {
                    if (this.mOptimizeWrapOnResolved) {
                        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget2;
                        constraintWidgetContainer.addHorizontalWrapMinVariable(this.mLeft);
                        constraintWidgetContainer.addHorizontalWrapMaxVariable(this.mRight);
                    } else {
                        linearSystem.addGreaterThan(linearSystem.createObjectVariable(constraintWidget2.mRight), solverVariableCreateObjectVariable4, 0, 5);
                    }
                }
            }
            if (this.mResolvedVertical) {
                linearSystem.addEquality(solverVariableCreateObjectVariable5, this.mY);
                linearSystem.addEquality(solverVariableCreateObjectVariable6, this.mY + this.mHeight);
                if (this.mBaseline.hasDependents()) {
                    linearSystem.addEquality(solverVariableCreateObjectVariable7, this.mY + this.mBaselineDistance);
                }
                if (z3 && (constraintWidget = this.mParent) != null) {
                    if (this.mOptimizeWrapOnResolved) {
                        ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget;
                        constraintWidgetContainer2.addVerticalWrapMinVariable(this.mTop);
                        constraintWidgetContainer2.addVerticalWrapMaxVariable(this.mBottom);
                    } else {
                        linearSystem.addGreaterThan(linearSystem.createObjectVariable(constraintWidget.mBottom), solverVariableCreateObjectVariable6, 0, 5);
                    }
                }
            }
            if (this.mResolvedHorizontal && this.mResolvedVertical) {
                this.mResolvedHorizontal = false;
                this.mResolvedVertical = false;
                return;
            }
        }
        Metrics metrics2 = LinearSystem.sMetrics;
        if (metrics2 != null) {
            metrics2.widgets++;
        }
        if (z && (horizontalWidgetRun2 = this.mHorizontalRun) != null && (verticalWidgetRun2 = this.mVerticalRun) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun2.start;
            if (dependencyNode.resolved && horizontalWidgetRun2.end.resolved && verticalWidgetRun2.start.resolved && verticalWidgetRun2.end.resolved) {
                if (metrics2 != null) {
                    metrics2.graphSolved++;
                }
                linearSystem.addEquality(solverVariableCreateObjectVariable3, dependencyNode.value);
                linearSystem.addEquality(solverVariableCreateObjectVariable4, this.mHorizontalRun.end.value);
                linearSystem.addEquality(solverVariableCreateObjectVariable5, this.mVerticalRun.start.value);
                linearSystem.addEquality(solverVariableCreateObjectVariable6, this.mVerticalRun.end.value);
                linearSystem.addEquality(solverVariableCreateObjectVariable7, this.mVerticalRun.baseline.value);
                if (this.mParent != null) {
                    if (z2 && this.isTerminalWidget[0] && !isInHorizontalChain()) {
                        linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), solverVariableCreateObjectVariable4, 0, 8);
                    }
                    if (z3 && this.isTerminalWidget[1] && !isInVerticalChain()) {
                        linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mBottom), solverVariableCreateObjectVariable6, 0, 8);
                    }
                }
                this.mResolvedHorizontal = false;
                this.mResolvedVertical = false;
                return;
            }
        }
        if (metrics2 != null) {
            metrics2.linearSolved++;
        }
        if (this.mParent != null) {
            if (isChainHead(0)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, 0);
                zIsInHorizontalChain = true;
            } else {
                zIsInHorizontalChain = isInHorizontalChain();
            }
            if (isChainHead(1)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, 1);
                zIsInVerticalChain = true;
            } else {
                zIsInVerticalChain = isInVerticalChain();
            }
            if (!zIsInHorizontalChain && z2 && this.mVisibility != 8 && this.mLeft.mTarget == null && this.mRight.mTarget == null) {
                linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), solverVariableCreateObjectVariable4, 0, 1);
            }
            if (!zIsInVerticalChain && z3 && this.mVisibility != 8 && this.mTop.mTarget == null && this.mBottom.mTarget == null && this.mBaseline == null) {
                linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mBottom), solverVariableCreateObjectVariable6, 0, 1);
            }
            z5 = zIsInHorizontalChain;
            z4 = zIsInVerticalChain;
        } else {
            z4 = false;
            z5 = false;
        }
        int i11 = this.mWidth;
        int i12 = this.mMinWidth;
        if (i11 >= i12) {
            i12 = i11;
        }
        int i13 = this.mHeight;
        int i14 = this.mMinHeight;
        if (i13 >= i14) {
            i14 = i13;
        }
        DimensionBehaviour[] dimensionBehaviourArr2 = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr2[0];
        DimensionBehaviour dimensionBehaviour4 = DimensionBehaviour.MATCH_CONSTRAINT;
        int i15 = i12;
        boolean z14 = dimensionBehaviour3 != dimensionBehaviour4;
        DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr2[1];
        int i16 = i14;
        boolean z15 = dimensionBehaviour5 != dimensionBehaviour4;
        int i17 = this.mDimensionRatioSide;
        this.mResolvedDimensionRatioSide = i17;
        float f = this.mDimensionRatio;
        this.mResolvedDimensionRatio = f;
        int i18 = this.mMatchConstraintDefaultWidth;
        int i19 = this.mMatchConstraintDefaultHeight;
        if (f > 0.0f && this.mVisibility != 8) {
            if (dimensionBehaviour3 == dimensionBehaviour4 && i18 == 0) {
                i18 = 3;
            }
            if (dimensionBehaviour5 == dimensionBehaviour4 && i19 == 0) {
                i19 = 3;
            }
            if (dimensionBehaviour3 == dimensionBehaviour4 && dimensionBehaviour5 == dimensionBehaviour4) {
                i9 = 3;
                if (i18 == 3 && i19 == 3) {
                    setupDimensionRatio(z2, z3, z14, z15);
                }
                i15 = i15;
                i = i16;
                z6 = true;
                int[] iArr = this.mResolvedMatchConstraintDefault;
                iArr[0] = i18;
                iArr[1] = i19;
                this.mResolvedHasRatio = z6;
                if (z6) {
                    int i20 = this.mResolvedDimensionRatioSide;
                    i2 = -1;
                    boolean z16 = i20 != 0 || i20 == -1;
                    if (z6 || !((i8 = this.mResolvedDimensionRatioSide) == 1 || i8 == i2)) {
                        z7 = false;
                    } else {
                        z7 = true;
                    }
                    dimensionBehaviour = this.mListDimensionBehaviors[0];
                    dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour == dimensionBehaviour2 || !(this instanceof ConstraintWidgetContainer)) {
                        z8 = false;
                    } else {
                        z8 = true;
                    }
                    if (z8) {
                        i3 = 0;
                    } else {
                        i3 = i15;
                    }
                    boolean z17 = !this.mCenter.isConnected();
                    boolean[] zArr2 = this.mIsInBarrier;
                    boolean z18 = zArr2[0];
                    boolean z19 = zArr2[1];
                    if (this.mHorizontalResolution != 2 || this.mResolvedHorizontal) {
                        solverVariable = solverVariableCreateObjectVariable4;
                        solverVariable2 = solverVariableCreateObjectVariable3;
                    } else if (!z || (horizontalWidgetRun = this.mHorizontalRun) == null) {
                        constraintWidget3 = this.mParent;
                        if (constraintWidget3 != null) {
                            solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintWidget3.mRight);
                        } else {
                            solverVariableCreateObjectVariable = null;
                        }
                        constraintWidget4 = this.mParent;
                        if (constraintWidget4 != null) {
                            solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(constraintWidget4.mLeft);
                        } else {
                            solverVariableCreateObjectVariable2 = null;
                        }
                        boolean z20 = this.isTerminalWidget[0];
                        dimensionBehaviourArr = this.mListDimensionBehaviors;
                        DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[0];
                        ConstraintAnchor constraintAnchor = this.mLeft;
                        ConstraintAnchor constraintAnchor2 = this.mRight;
                        int i21 = this.mX;
                        int i22 = this.mMinWidth;
                        int i23 = this.mMaxDimension[0];
                        float f2 = this.mHorizontalBiasPercent;
                        if (dimensionBehaviourArr[1] == dimensionBehaviour4) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        solverVariable = solverVariableCreateObjectVariable4;
                        solverVariable2 = solverVariableCreateObjectVariable3;
                        applyConstraints(linearSystem, true, z2, z3, z20, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, dimensionBehaviour6, z8, constraintAnchor, constraintAnchor2, i21, i3, i22, i23, f2, z16, z10, z5, z4, z18, i18, i19, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, z17);
                    } else {
                        DependencyNode dependencyNode2 = horizontalWidgetRun.start;
                        if (!dependencyNode2.resolved || !horizontalWidgetRun.end.resolved) {
                            constraintWidget3 = this.mParent;
                            if (constraintWidget3 != null) {
                                solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintWidget3.mRight);
                            } else {
                                solverVariableCreateObjectVariable = null;
                            }
                            constraintWidget4 = this.mParent;
                            if (constraintWidget4 != null) {
                                solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(constraintWidget4.mLeft);
                            } else {
                                solverVariableCreateObjectVariable2 = null;
                            }
                            boolean z21 = this.isTerminalWidget[0];
                            dimensionBehaviourArr = this.mListDimensionBehaviors;
                            DimensionBehaviour dimensionBehaviour7 = dimensionBehaviourArr[0];
                            ConstraintAnchor constraintAnchor3 = this.mLeft;
                            ConstraintAnchor constraintAnchor4 = this.mRight;
                            int i24 = this.mX;
                            int i25 = this.mMinWidth;
                            int i26 = this.mMaxDimension[0];
                            float f3 = this.mHorizontalBiasPercent;
                            if (dimensionBehaviourArr[1] == dimensionBehaviour4) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            solverVariable = solverVariableCreateObjectVariable4;
                            solverVariable2 = solverVariableCreateObjectVariable3;
                            applyConstraints(linearSystem, true, z2, z3, z21, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, dimensionBehaviour7, z8, constraintAnchor3, constraintAnchor4, i24, i3, i25, i26, f3, z16, z10, z5, z4, z18, i18, i19, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, z17);
                        } else if (z) {
                            linearSystem.addEquality(solverVariableCreateObjectVariable3, dependencyNode2.value);
                            linearSystem.addEquality(solverVariableCreateObjectVariable4, this.mHorizontalRun.end.value);
                            if (this.mParent != null && z2 && this.isTerminalWidget[0] && !isInHorizontalChain()) {
                                linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), solverVariableCreateObjectVariable4, 0, 8);
                            }
                            solverVariable = solverVariableCreateObjectVariable4;
                            solverVariable2 = solverVariableCreateObjectVariable3;
                        } else {
                            solverVariable = solverVariableCreateObjectVariable4;
                            solverVariable2 = solverVariableCreateObjectVariable3;
                        }
                    }
                    if (z || (verticalWidgetRun = this.mVerticalRun) == null) {
                        linearSystem2 = linearSystem;
                        solverVariable3 = r27;
                        solverVariable4 = r30;
                        solverVariable5 = r31;
                        i4 = 8;
                        i5 = 0;
                        c = 1;
                        i6 = 1;
                    } else {
                        DependencyNode dependencyNode3 = verticalWidgetRun.start;
                        if (dependencyNode3.resolved && verticalWidgetRun.end.resolved) {
                            linearSystem2 = linearSystem;
                            solverVariable5 = solverVariableCreateObjectVariable5;
                            linearSystem2.addEquality(solverVariable5, dependencyNode3.value);
                            solverVariable4 = solverVariableCreateObjectVariable6;
                            linearSystem2.addEquality(solverVariable4, this.mVerticalRun.end.value);
                            solverVariable3 = solverVariableCreateObjectVariable7;
                            linearSystem2.addEquality(solverVariable3, this.mVerticalRun.baseline.value);
                            ConstraintWidget constraintWidget6 = this.mParent;
                            if (constraintWidget6 == null || z4 || !z3) {
                                i4 = 8;
                                i5 = 0;
                                c = 1;
                            } else {
                                c = 1;
                                if (this.isTerminalWidget[1]) {
                                    i4 = 8;
                                    i5 = 0;
                                    linearSystem2.addGreaterThan(linearSystem2.createObjectVariable(constraintWidget6.mBottom), solverVariable4, 0, 8);
                                } else {
                                    i4 = 8;
                                    i5 = 0;
                                }
                            }
                            i6 = i5;
                        } else {
                            linearSystem2 = linearSystem;
                            solverVariable3 = r27;
                            solverVariable4 = r30;
                            solverVariable5 = r31;
                            i4 = 8;
                            i5 = 0;
                            c = 1;
                            i6 = 1;
                        }
                    }
                    if (this.mVerticalResolution == 2) {
                        i7 = i5;
                    } else {
                        i7 = i6;
                    }
                    if (i7 == 0 && !this.mResolvedVertical) {
                        boolean z22 = (this.mListDimensionBehaviors[c] == dimensionBehaviour2 && (this instanceof ConstraintWidgetContainer)) ? c : i5;
                        if (z22 != 0) {
                            i = i5;
                        }
                        ConstraintWidget constraintWidget7 = this.mParent;
                        SolverVariable solverVariableCreateObjectVariable8 = constraintWidget7 != null ? linearSystem2.createObjectVariable(constraintWidget7.mBottom) : null;
                        ConstraintWidget constraintWidget8 = this.mParent;
                        SolverVariable solverVariableCreateObjectVariable9 = constraintWidget8 != null ? linearSystem2.createObjectVariable(constraintWidget8.mTop) : null;
                        if (this.mBaselineDistance > 0 || this.mVisibility == i4) {
                            ConstraintAnchor constraintAnchor5 = this.mBaseline;
                            if (constraintAnchor5.mTarget != null) {
                                linearSystem2.addEquality(solverVariable3, solverVariable5, getBaselineDistance(), i4);
                                linearSystem2.addEquality(solverVariable3, linearSystem2.createObjectVariable(this.mBaseline.mTarget), this.mBaseline.getMargin(), i4);
                                if (z3 != 0) {
                                    linearSystem2.addGreaterThan(solverVariableCreateObjectVariable8, linearSystem2.createObjectVariable(this.mBottom), i5, 5);
                                }
                                z9 = i5;
                            } else {
                                if (this.mVisibility == i4) {
                                    linearSystem2.addEquality(solverVariable3, solverVariable5, constraintAnchor5.getMargin(), i4);
                                } else {
                                    linearSystem2.addEquality(solverVariable3, solverVariable5, getBaselineDistance(), i4);
                                }
                                z9 = z17;
                            }
                        } else {
                            z9 = z17;
                        }
                        boolean z23 = this.isTerminalWidget[c];
                        DimensionBehaviour[] dimensionBehaviourArr3 = this.mListDimensionBehaviors;
                        applyConstraints(linearSystem, false, z3, z2, z23, solverVariableCreateObjectVariable9, solverVariableCreateObjectVariable8, dimensionBehaviourArr3[c], z22, this.mTop, this.mBottom, this.mY, i, this.mMinHeight, this.mMaxDimension[c], this.mVerticalBiasPercent, z7, dimensionBehaviourArr3[0] == dimensionBehaviour4, z4, z5, z19, i19, i18, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight, this.mMatchConstraintPercentHeight, z9);
                    }
                    if (z6) {
                        if (this.mResolvedDimensionRatioSide == 1) {
                            linearSystem.addRatio(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.mResolvedDimensionRatio, 8);
                        } else {
                            linearSystem.addRatio(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.mResolvedDimensionRatio, 8);
                        }
                    }
                    if (this.mCenter.isConnected()) {
                        linearSystem.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
                    }
                    this.mResolvedHorizontal = false;
                    this.mResolvedVertical = false;
                    metrics = LinearSystem.sMetrics;
                    if (metrics != null) {
                        metrics.mEquations = linearSystem.getNumEquations();
                        LinearSystem.sMetrics.mVariables = linearSystem.getNumVariables();
                    }
                }
                i2 = -1;
                if (z6) {
                    z7 = false;
                } else {
                    z7 = false;
                }
                dimensionBehaviour = this.mListDimensionBehaviors[0];
                dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour == dimensionBehaviour2) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (z8) {
                    i3 = 0;
                } else {
                    i3 = i15;
                }
                boolean z110 = !this.mCenter.isConnected();
                boolean[] zArr3 = this.mIsInBarrier;
                boolean z111 = zArr3[0];
                boolean z112 = zArr3[1];
                if (this.mHorizontalResolution != 2) {
                    solverVariable = solverVariableCreateObjectVariable4;
                    solverVariable2 = solverVariableCreateObjectVariable3;
                } else {
                    solverVariable = solverVariableCreateObjectVariable4;
                    solverVariable2 = solverVariableCreateObjectVariable3;
                }
                if (z) {
                    linearSystem2 = linearSystem;
                    solverVariable3 = r27;
                    solverVariable4 = r30;
                    solverVariable5 = r31;
                    i4 = 8;
                    i5 = 0;
                    c = 1;
                    i6 = 1;
                } else {
                    linearSystem2 = linearSystem;
                    solverVariable3 = r27;
                    solverVariable4 = r30;
                    solverVariable5 = r31;
                    i4 = 8;
                    i5 = 0;
                    c = 1;
                    i6 = 1;
                }
                if (this.mVerticalResolution == 2) {
                    i7 = i5;
                } else {
                    i7 = i6;
                }
                if (i7 == 0) {
                }
                if (z6) {
                    if (this.mResolvedDimensionRatioSide == 1) {
                        linearSystem.addRatio(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.mResolvedDimensionRatio, 8);
                    } else {
                        linearSystem.addRatio(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.mResolvedDimensionRatio, 8);
                    }
                }
                if (this.mCenter.isConnected()) {
                    linearSystem.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
                }
                this.mResolvedHorizontal = false;
                this.mResolvedVertical = false;
                metrics = LinearSystem.sMetrics;
                if (metrics != null) {
                    metrics.mEquations = linearSystem.getNumEquations();
                    LinearSystem.sMetrics.mVariables = linearSystem.getNumVariables();
                }
            }
            i9 = 3;
            if (dimensionBehaviour3 == dimensionBehaviour4 && i18 == i9) {
                this.mResolvedDimensionRatioSide = 0;
                int i27 = (int) (f * i13);
                if (dimensionBehaviour5 != dimensionBehaviour4) {
                    i18 = 4;
                    i19 = i19;
                    i = i16;
                    z6 = false;
                    i15 = i27;
                } else {
                    i15 = i27;
                    i = i16;
                    z6 = true;
                }
            } else {
                if (dimensionBehaviour5 == dimensionBehaviour4 && i19 == i9) {
                    this.mResolvedDimensionRatioSide = 1;
                    if (i17 == -1) {
                        this.mResolvedDimensionRatio = 1.0f / f;
                    }
                    int i28 = (int) (this.mResolvedDimensionRatio * i11);
                    if (dimensionBehaviour3 != dimensionBehaviour4) {
                        i19 = 4;
                        i = i28;
                        i18 = i18;
                    } else {
                        i = i28;
                        i18 = i18;
                        i19 = i19;
                        i15 = i15;
                    }
                } else {
                    i15 = i15;
                    i = i16;
                }
                z6 = true;
            }
            int[] iArr2 = this.mResolvedMatchConstraintDefault;
            iArr2[0] = i18;
            iArr2[1] = i19;
            this.mResolvedHasRatio = z6;
            if (z6) {
                int i29 = this.mResolvedDimensionRatioSide;
                i2 = -1;
                if (i29 != 0) {
                }
                if (z6) {
                    z7 = false;
                } else {
                    z7 = false;
                }
                dimensionBehaviour = this.mListDimensionBehaviors[0];
                dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour == dimensionBehaviour2) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (z8) {
                    i3 = 0;
                } else {
                    i3 = i15;
                }
                boolean z113 = !this.mCenter.isConnected();
                boolean[] zArr4 = this.mIsInBarrier;
                boolean z114 = zArr4[0];
                boolean z115 = zArr4[1];
                if (this.mHorizontalResolution != 2) {
                    solverVariable = solverVariableCreateObjectVariable4;
                    solverVariable2 = solverVariableCreateObjectVariable3;
                } else {
                    solverVariable = solverVariableCreateObjectVariable4;
                    solverVariable2 = solverVariableCreateObjectVariable3;
                }
                if (z) {
                    linearSystem2 = linearSystem;
                    solverVariable3 = r27;
                    solverVariable4 = r30;
                    solverVariable5 = r31;
                    i4 = 8;
                    i5 = 0;
                    c = 1;
                    i6 = 1;
                } else {
                    linearSystem2 = linearSystem;
                    solverVariable3 = r27;
                    solverVariable4 = r30;
                    solverVariable5 = r31;
                    i4 = 8;
                    i5 = 0;
                    c = 1;
                    i6 = 1;
                }
                if (this.mVerticalResolution == 2) {
                    i7 = i5;
                } else {
                    i7 = i6;
                }
                if (i7 == 0) {
                }
                if (z6) {
                    if (this.mResolvedDimensionRatioSide == 1) {
                        linearSystem.addRatio(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.mResolvedDimensionRatio, 8);
                    } else {
                        linearSystem.addRatio(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.mResolvedDimensionRatio, 8);
                    }
                }
                if (this.mCenter.isConnected()) {
                    linearSystem.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
                }
                this.mResolvedHorizontal = false;
                this.mResolvedVertical = false;
                metrics = LinearSystem.sMetrics;
                if (metrics != null) {
                    metrics.mEquations = linearSystem.getNumEquations();
                    LinearSystem.sMetrics.mVariables = linearSystem.getNumVariables();
                }
            }
            i2 = -1;
            if (z6) {
                z7 = false;
            } else {
                z7 = false;
            }
            dimensionBehaviour = this.mListDimensionBehaviors[0];
            dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour == dimensionBehaviour2) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (z8) {
                i3 = 0;
            } else {
                i3 = i15;
            }
            boolean z116 = !this.mCenter.isConnected();
            boolean[] zArr5 = this.mIsInBarrier;
            boolean z117 = zArr5[0];
            boolean z118 = zArr5[1];
            if (this.mHorizontalResolution != 2) {
                solverVariable = solverVariableCreateObjectVariable4;
                solverVariable2 = solverVariableCreateObjectVariable3;
            } else {
                solverVariable = solverVariableCreateObjectVariable4;
                solverVariable2 = solverVariableCreateObjectVariable3;
            }
            if (z) {
                linearSystem2 = linearSystem;
                solverVariable3 = r27;
                solverVariable4 = r30;
                solverVariable5 = r31;
                i4 = 8;
                i5 = 0;
                c = 1;
                i6 = 1;
            } else {
                linearSystem2 = linearSystem;
                solverVariable3 = r27;
                solverVariable4 = r30;
                solverVariable5 = r31;
                i4 = 8;
                i5 = 0;
                c = 1;
                i6 = 1;
            }
            if (this.mVerticalResolution == 2) {
                i7 = i5;
            } else {
                i7 = i6;
            }
            if (i7 == 0) {
            }
            if (z6) {
                if (this.mResolvedDimensionRatioSide == 1) {
                    linearSystem.addRatio(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.mResolvedDimensionRatio, 8);
                } else {
                    linearSystem.addRatio(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.mResolvedDimensionRatio, 8);
                }
            }
            if (this.mCenter.isConnected()) {
                linearSystem.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
            }
            this.mResolvedHorizontal = false;
            this.mResolvedVertical = false;
            metrics = LinearSystem.sMetrics;
            if (metrics != null) {
                metrics.mEquations = linearSystem.getNumEquations();
                LinearSystem.sMetrics.mVariables = linearSystem.getNumVariables();
            }
        }
        i18 = i18;
        i19 = i19;
        i = i16;
        z6 = false;
        int[] iArr3 = this.mResolvedMatchConstraintDefault;
        iArr3[0] = i18;
        iArr3[1] = i19;
        this.mResolvedHasRatio = z6;
        if (z6) {
            int i210 = this.mResolvedDimensionRatioSide;
            i2 = -1;
            if (i210 != 0) {
            }
            if (z6) {
                z7 = false;
            } else {
                z7 = false;
            }
            dimensionBehaviour = this.mListDimensionBehaviors[0];
            dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour == dimensionBehaviour2) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (z8) {
                i3 = 0;
            } else {
                i3 = i15;
            }
            boolean z119 = !this.mCenter.isConnected();
            boolean[] zArr6 = this.mIsInBarrier;
            boolean z1110 = zArr6[0];
            boolean z1111 = zArr6[1];
            if (this.mHorizontalResolution != 2) {
                solverVariable = solverVariableCreateObjectVariable4;
                solverVariable2 = solverVariableCreateObjectVariable3;
            } else {
                solverVariable = solverVariableCreateObjectVariable4;
                solverVariable2 = solverVariableCreateObjectVariable3;
            }
            if (z) {
                linearSystem2 = linearSystem;
                solverVariable3 = r27;
                solverVariable4 = r30;
                solverVariable5 = r31;
                i4 = 8;
                i5 = 0;
                c = 1;
                i6 = 1;
            } else {
                linearSystem2 = linearSystem;
                solverVariable3 = r27;
                solverVariable4 = r30;
                solverVariable5 = r31;
                i4 = 8;
                i5 = 0;
                c = 1;
                i6 = 1;
            }
            if (this.mVerticalResolution == 2) {
                i7 = i5;
            } else {
                i7 = i6;
            }
            if (i7 == 0) {
            }
            if (z6) {
                if (this.mResolvedDimensionRatioSide == 1) {
                    linearSystem.addRatio(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.mResolvedDimensionRatio, 8);
                } else {
                    linearSystem.addRatio(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.mResolvedDimensionRatio, 8);
                }
            }
            if (this.mCenter.isConnected()) {
                linearSystem.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
            }
            this.mResolvedHorizontal = false;
            this.mResolvedVertical = false;
            metrics = LinearSystem.sMetrics;
            if (metrics != null) {
                metrics.mEquations = linearSystem.getNumEquations();
                LinearSystem.sMetrics.mVariables = linearSystem.getNumVariables();
            }
        }
        i2 = -1;
        if (z6) {
            z7 = false;
        } else {
            z7 = false;
        }
        dimensionBehaviour = this.mListDimensionBehaviors[0];
        dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour == dimensionBehaviour2) {
            z8 = false;
        } else {
            z8 = false;
        }
        if (z8) {
            i3 = 0;
        } else {
            i3 = i15;
        }
        boolean z1112 = !this.mCenter.isConnected();
        boolean[] zArr7 = this.mIsInBarrier;
        boolean z1113 = zArr7[0];
        boolean z1114 = zArr7[1];
        if (this.mHorizontalResolution != 2) {
            solverVariable = solverVariableCreateObjectVariable4;
            solverVariable2 = solverVariableCreateObjectVariable3;
        } else {
            solverVariable = solverVariableCreateObjectVariable4;
            solverVariable2 = solverVariableCreateObjectVariable3;
        }
        if (z) {
            linearSystem2 = linearSystem;
            solverVariable3 = r27;
            solverVariable4 = r30;
            solverVariable5 = r31;
            i4 = 8;
            i5 = 0;
            c = 1;
            i6 = 1;
        } else {
            linearSystem2 = linearSystem;
            solverVariable3 = r27;
            solverVariable4 = r30;
            solverVariable5 = r31;
            i4 = 8;
            i5 = 0;
            c = 1;
            i6 = 1;
        }
        if (this.mVerticalResolution == 2) {
            i7 = i5;
        } else {
            i7 = i6;
        }
        if (i7 == 0) {
        }
        if (z6) {
            if (this.mResolvedDimensionRatioSide == 1) {
                linearSystem.addRatio(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.mResolvedDimensionRatio, 8);
            } else {
                linearSystem.addRatio(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.mResolvedDimensionRatio, 8);
            }
        }
        if (this.mCenter.isConnected()) {
            linearSystem.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
        }
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        metrics = LinearSystem.sMetrics;
        if (metrics != null) {
            metrics.mEquations = linearSystem.getNumEquations();
            LinearSystem.sMetrics.mVariables = linearSystem.getNumVariables();
        }
    }

    public boolean allowedInBarrier() {
        return this.mVisibility != 8;
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        if (constraintAnchor.getOwner() == this) {
            connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i);
        }
    }

    public void connectCircularConstraint(ConstraintWidget constraintWidget, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        immediateConnect(type, constraintWidget, type, i, 0);
        this.mCircleConstraintAngle = f;
    }

    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        this.mHorizontalResolution = constraintWidget.mHorizontalResolution;
        this.mVerticalResolution = constraintWidget.mVerticalResolution;
        this.mMatchConstraintDefaultWidth = constraintWidget.mMatchConstraintDefaultWidth;
        this.mMatchConstraintDefaultHeight = constraintWidget.mMatchConstraintDefaultHeight;
        int[] iArr = this.mResolvedMatchConstraintDefault;
        int[] iArr2 = constraintWidget.mResolvedMatchConstraintDefault;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.mMatchConstraintMinWidth = constraintWidget.mMatchConstraintMinWidth;
        this.mMatchConstraintMaxWidth = constraintWidget.mMatchConstraintMaxWidth;
        this.mMatchConstraintMinHeight = constraintWidget.mMatchConstraintMinHeight;
        this.mMatchConstraintMaxHeight = constraintWidget.mMatchConstraintMaxHeight;
        this.mMatchConstraintPercentHeight = constraintWidget.mMatchConstraintPercentHeight;
        this.mIsWidthWrapContent = constraintWidget.mIsWidthWrapContent;
        this.mIsHeightWrapContent = constraintWidget.mIsHeightWrapContent;
        this.mResolvedDimensionRatioSide = constraintWidget.mResolvedDimensionRatioSide;
        this.mResolvedDimensionRatio = constraintWidget.mResolvedDimensionRatio;
        int[] iArr3 = constraintWidget.mMaxDimension;
        this.mMaxDimension = Arrays.copyOf(iArr3, iArr3.length);
        this.mCircleConstraintAngle = constraintWidget.mCircleConstraintAngle;
        this.mHasBaseline = constraintWidget.mHasBaseline;
        this.mInPlaceholder = constraintWidget.mInPlaceholder;
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mListDimensionBehaviors = (DimensionBehaviour[]) Arrays.copyOf(this.mListDimensionBehaviors, 2);
        this.mParent = this.mParent == null ? null : map.get(constraintWidget.mParent);
        this.mWidth = constraintWidget.mWidth;
        this.mHeight = constraintWidget.mHeight;
        this.mDimensionRatio = constraintWidget.mDimensionRatio;
        this.mDimensionRatioSide = constraintWidget.mDimensionRatioSide;
        this.mX = constraintWidget.mX;
        this.mY = constraintWidget.mY;
        this.mRelX = constraintWidget.mRelX;
        this.mRelY = constraintWidget.mRelY;
        this.mOffsetX = constraintWidget.mOffsetX;
        this.mOffsetY = constraintWidget.mOffsetY;
        this.mBaselineDistance = constraintWidget.mBaselineDistance;
        this.mMinWidth = constraintWidget.mMinWidth;
        this.mMinHeight = constraintWidget.mMinHeight;
        this.mHorizontalBiasPercent = constraintWidget.mHorizontalBiasPercent;
        this.mVerticalBiasPercent = constraintWidget.mVerticalBiasPercent;
        this.mCompanionWidget = constraintWidget.mCompanionWidget;
        this.mContainerItemSkip = constraintWidget.mContainerItemSkip;
        this.mVisibility = constraintWidget.mVisibility;
        this.mAnimated = constraintWidget.mAnimated;
        this.mDebugName = constraintWidget.mDebugName;
        this.mType = constraintWidget.mType;
        this.mDistToTop = constraintWidget.mDistToTop;
        this.mDistToLeft = constraintWidget.mDistToLeft;
        this.mDistToRight = constraintWidget.mDistToRight;
        this.mDistToBottom = constraintWidget.mDistToBottom;
        this.mLeftHasCentered = constraintWidget.mLeftHasCentered;
        this.mRightHasCentered = constraintWidget.mRightHasCentered;
        this.mTopHasCentered = constraintWidget.mTopHasCentered;
        this.mBottomHasCentered = constraintWidget.mBottomHasCentered;
        this.mHorizontalWrapVisited = constraintWidget.mHorizontalWrapVisited;
        this.mVerticalWrapVisited = constraintWidget.mVerticalWrapVisited;
        this.mHorizontalChainStyle = constraintWidget.mHorizontalChainStyle;
        this.mVerticalChainStyle = constraintWidget.mVerticalChainStyle;
        this.mHorizontalChainFixedPosition = constraintWidget.mHorizontalChainFixedPosition;
        this.mVerticalChainFixedPosition = constraintWidget.mVerticalChainFixedPosition;
        float[] fArr = this.mWeight;
        float[] fArr2 = constraintWidget.mWeight;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.mListNextMatchConstraintsWidget;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.mListNextMatchConstraintsWidget;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.mNextChainWidget;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.mNextChainWidget;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget2 = constraintWidget.mHorizontalNextWidget;
        this.mHorizontalNextWidget = constraintWidget2 == null ? null : map.get(constraintWidget2);
        ConstraintWidget constraintWidget3 = constraintWidget.mVerticalNextWidget;
        this.mVerticalNextWidget = constraintWidget3 != null ? map.get(constraintWidget3) : null;
    }

    public void createObjectVariables(LinearSystem linearSystem) {
        linearSystem.createObjectVariable(this.mLeft);
        linearSystem.createObjectVariable(this.mTop);
        linearSystem.createObjectVariable(this.mRight);
        linearSystem.createObjectVariable(this.mBottom);
        if (this.mBaselineDistance > 0) {
            linearSystem.createObjectVariable(this.mBaseline);
        }
    }

    public void ensureMeasureRequested() {
        this.mMeasureRequested = true;
    }

    public void ensureWidgetRuns() {
        if (this.mHorizontalRun == null) {
            this.mHorizontalRun = new HorizontalWidgetRun(this);
        }
        if (this.mVerticalRun == null) {
            this.mVerticalRun = new VerticalWidgetRun(this);
        }
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[type.ordinal()]) {
            case 1:
                return this.mLeft;
            case 2:
                return this.mTop;
            case 3:
                return this.mRight;
            case 4:
                return this.mBottom;
            case 5:
                return this.mBaseline;
            case 6:
                return this.mCenter;
            case 7:
                return this.mCenterX;
            case 8:
                return this.mCenterY;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public float getBiasPercent(int i) {
        if (i == 0) {
            return this.mHorizontalBiasPercent;
        }
        if (i == 1) {
            return this.mVerticalBiasPercent;
        }
        return -1.0f;
    }

    public int getBottom() {
        return getY() + this.mHeight;
    }

    public Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public int getContainerItemSkip() {
        return this.mContainerItemSkip;
    }

    public String getDebugName() {
        return this.mDebugName;
    }

    public DimensionBehaviour getDimensionBehaviour(int i) {
        if (i == 0) {
            return getHorizontalDimensionBehaviour();
        }
        if (i == 1) {
            return getVerticalDimensionBehaviour();
        }
        return null;
    }

    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    public boolean getHasBaseline() {
        return this.mHasBaseline;
    }

    public int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public float getHorizontalBiasPercent() {
        return this.mHorizontalBiasPercent;
    }

    public ConstraintWidget getHorizontalChainControlWidget() {
        if (!isInHorizontalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public int getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mListDimensionBehaviors[0];
    }

    public int getHorizontalMargin() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        int i = constraintAnchor != null ? constraintAnchor.mMargin : 0;
        ConstraintAnchor constraintAnchor2 = this.mRight;
        return constraintAnchor2 != null ? i + constraintAnchor2.mMargin : i;
    }

    public int getLastHorizontalMeasureSpec() {
        return this.mLastHorizontalMeasureSpec;
    }

    public int getLastVerticalMeasureSpec() {
        return this.mLastVerticalMeasureSpec;
    }

    public int getLeft() {
        return getX();
    }

    public int getLength(int i) {
        if (i == 0) {
            return getWidth();
        }
        if (i == 1) {
            return getHeight();
        }
        return 0;
    }

    public int getMaxHeight() {
        return this.mMaxDimension[1];
    }

    public int getMaxWidth() {
        return this.mMaxDimension[0];
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public ConstraintWidget getNextChainMember(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i != 0) {
            if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.mBottom).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public int getOptimizerWrapHeight() {
        int iMax;
        int i = this.mHeight;
        if (this.mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i;
        }
        if (this.mMatchConstraintDefaultHeight == 1) {
            iMax = Math.max(this.mMatchConstraintMinHeight, i);
        } else {
            iMax = this.mMatchConstraintMinHeight;
            if (iMax > 0) {
                this.mHeight = iMax;
            } else {
                iMax = 0;
            }
        }
        int i2 = this.mMatchConstraintMaxHeight;
        return (i2 <= 0 || i2 >= iMax) ? iMax : i2;
    }

    public int getOptimizerWrapWidth() {
        int iMax;
        int i = this.mWidth;
        if (this.mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i;
        }
        if (this.mMatchConstraintDefaultWidth == 1) {
            iMax = Math.max(this.mMatchConstraintMinWidth, i);
        } else {
            iMax = this.mMatchConstraintMinWidth;
            if (iMax > 0) {
                this.mWidth = iMax;
            } else {
                iMax = 0;
            }
        }
        int i2 = this.mMatchConstraintMaxWidth;
        return (i2 <= 0 || i2 >= iMax) ? iMax : i2;
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public ConstraintWidget getPreviousChainMember(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i != 0) {
            if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.mTop).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public int getRelativePositioning(int i) {
        if (i == 0) {
            return this.mRelX;
        }
        if (i == 1) {
            return this.mRelY;
        }
        return 0;
    }

    public int getRight() {
        return getX() + this.mWidth;
    }

    public int getRootX() {
        return this.mX + this.mOffsetX;
    }

    public int getRootY() {
        return this.mY + this.mOffsetY;
    }

    public WidgetRun getRun(int i) {
        if (i == 0) {
            return this.mHorizontalRun;
        }
        if (i == 1) {
            return this.mVerticalRun;
        }
        return null;
    }

    public void getSceneString(StringBuilder sb) {
        sb.append("  " + this.stringId + ":{\n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("    actualWidth:");
        sb2.append(this.mWidth);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.mHeight);
        sb.append("\n");
        sb.append("    actualLeft:" + this.mX);
        sb.append("\n");
        sb.append("    actualTop:" + this.mY);
        sb.append("\n");
        getSceneString(sb, TtmlNode.LEFT, this.mLeft);
        getSceneString(sb, "top", this.mTop);
        getSceneString(sb, TtmlNode.RIGHT, this.mRight);
        getSceneString(sb, "bottom", this.mBottom);
        getSceneString(sb, "baseline", this.mBaseline);
        getSceneString(sb, "centerX", this.mCenterX);
        getSceneString(sb, "centerY", this.mCenterY);
        getSceneString(sb, "    width", this.mWidth, this.mMinWidth, this.mMaxDimension[0], this.mWidthOverride, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mListDimensionBehaviors[0], this.mWeight[0]);
        getSceneString(sb, "    height", this.mHeight, this.mMinHeight, this.mMaxDimension[1], this.mHeightOverride, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mListDimensionBehaviors[1], this.mWeight[1]);
        serializeDimensionRatio(sb, "    dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
        serializeAttribute(sb, "    horizontalBias", this.mHorizontalBiasPercent, DEFAULT_BIAS);
        serializeAttribute(sb, "    verticalBias", this.mVerticalBiasPercent, DEFAULT_BIAS);
        serializeAttribute(sb, "    horizontalChainStyle", this.mHorizontalChainStyle, 0);
        serializeAttribute(sb, "    verticalChainStyle", this.mVerticalChainStyle, 0);
        sb.append("  }");
    }

    public int getTop() {
        return getY();
    }

    public String getType() {
        return this.mType;
    }

    public float getVerticalBiasPercent() {
        return this.mVerticalBiasPercent;
    }

    public ConstraintWidget getVerticalChainControlWidget() {
        if (!isInVerticalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public int getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mListDimensionBehaviors[1];
    }

    public int getVerticalMargin() {
        int i = this.mLeft != null ? this.mTop.mMargin : 0;
        return this.mRight != null ? i + this.mBottom.mMargin : i;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public int getWrapBehaviorInParent() {
        return this.mWrapBehaviorInParent;
    }

    public int getX() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.mX : ((ConstraintWidgetContainer) constraintWidget).mPaddingLeft + this.mX;
    }

    public int getY() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.mY : ((ConstraintWidgetContainer) constraintWidget).mPaddingTop + this.mY;
    }

    public boolean hasBaseline() {
        return this.mHasBaseline;
    }

    public boolean hasDanglingDimension(int i) {
        if (i == 0) {
            return (this.mLeft.mTarget != null ? 1 : 0) + (this.mRight.mTarget != null ? 1 : 0) < 2;
        }
        return ((this.mTop.mTarget != null ? 1 : 0) + (this.mBottom.mTarget != null ? 1 : 0)) + (this.mBaseline.mTarget != null ? 1 : 0) < 2;
    }

    public boolean hasDependencies() {
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            if (this.mAnchors.get(i).hasDependents()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasDimensionOverride() {
        return (this.mWidthOverride == -1 && this.mHeightOverride == -1) ? false : true;
    }

    public boolean hasResolvedTargets(int i, int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.mLeft.mTarget;
            return constraintAnchor3 != null && constraintAnchor3.hasFinalValue() && (constraintAnchor2 = this.mRight.mTarget) != null && constraintAnchor2.hasFinalValue() && (this.mRight.mTarget.getFinalValue() - this.mRight.getMargin()) - (this.mLeft.mTarget.getFinalValue() + this.mLeft.getMargin()) >= i2;
        }
        ConstraintAnchor constraintAnchor4 = this.mTop.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.hasFinalValue() && (constraintAnchor = this.mBottom.mTarget) != null && constraintAnchor.hasFinalValue() && (this.mBottom.mTarget.getFinalValue() - this.mBottom.getMargin()) - (this.mTop.mTarget.getFinalValue() + this.mTop.getMargin()) >= i2;
        return false;
    }

    public void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i, i2, true);
    }

    public boolean isAnimated() {
        return this.mAnimated;
    }

    public boolean isHeightWrapContent() {
        return this.mIsHeightWrapContent;
    }

    public boolean isHorizontalSolvingPassDone() {
        return this.mHorizontalSolvingPass;
    }

    public boolean isInBarrier(int i) {
        return this.mIsInBarrier[i];
    }

    public boolean isInHorizontalChain() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public boolean isInPlaceholder() {
        return this.mInPlaceholder;
    }

    public boolean isInVerticalChain() {
        ConstraintAnchor constraintAnchor = this.mTop;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mBottom;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public boolean isInVirtualLayout() {
        return this.mInVirtualLayout;
    }

    public boolean isMeasureRequested() {
        return this.mMeasureRequested && this.mVisibility != 8;
    }

    public boolean isResolvedHorizontally() {
        return this.mResolvedHorizontal || (this.mLeft.hasFinalValue() && this.mRight.hasFinalValue());
    }

    public boolean isResolvedVertically() {
        return this.mResolvedVertical || (this.mTop.hasFinalValue() && this.mBottom.hasFinalValue());
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public boolean isSpreadHeight() {
        return this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isSpreadWidth() {
        return this.mMatchConstraintDefaultWidth == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMaxWidth == 0 && this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isVerticalSolvingPassDone() {
        return this.mVerticalSolvingPass;
    }

    public boolean isWidthWrapContent() {
        return this.mIsWidthWrapContent;
    }

    public void markHorizontalSolvingPassDone() {
        this.mHorizontalSolvingPass = true;
    }

    public void markVerticalSolvingPassDone() {
        this.mVerticalSolvingPass = true;
    }

    public boolean oppositeDimensionDependsOn(int i) {
        char c = i == 0 ? (char) 1 : (char) 0;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[i];
        DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[c];
        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour3 && dimensionBehaviour2 == dimensionBehaviour3;
    }

    public boolean oppositeDimensionsTied() {
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour2 && dimensionBehaviourArr[1] == dimensionBehaviour2;
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mCircleConstraintAngle = Float.NaN;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        float[] fArr = this.mWeight;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        int[] iArr = this.mMaxDimension;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
        this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mResolvedHasRatio = false;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mGroupsToSolver = false;
        boolean[] zArr = this.isTerminalWidget;
        zArr[0] = true;
        zArr[1] = true;
        this.mInVirtualLayout = false;
        boolean[] zArr2 = this.mIsInBarrier;
        zArr2[0] = false;
        zArr2[1] = false;
        this.mMeasureRequested = true;
        int[] iArr2 = this.mResolvedMatchConstraintDefault;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
    }

    public void resetAllConstraints() {
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
    }

    public void resetAnchor(ConstraintAnchor constraintAnchor) {
        if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
        ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
        ConstraintAnchor anchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
        ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
        if (constraintAnchor == anchor5) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor.reset();
                anchor2.reset();
            }
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
            this.mVerticalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor6) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget().getOwner() == anchor2.getTarget().getOwner()) {
                anchor.reset();
                anchor2.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor7) {
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget().getOwner() == anchor4.getTarget().getOwner()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.mVerticalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor || constraintAnchor == anchor2) {
            if (anchor.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor5.reset();
            }
        } else if ((constraintAnchor == anchor3 || constraintAnchor == anchor4) && anchor3.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
            anchor5.reset();
        }
        constraintAnchor.reset();
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).reset();
        }
    }

    public void resetFinalResolution() {
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).resetFinalResolution();
        }
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.mCenterX.resetSolverVariable(cache);
        this.mCenterY.resetSolverVariable(cache);
    }

    public void resetSolvingPassFlag() {
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
    }

    public StringBuilder serialize(StringBuilder sb) {
        sb.append("{\n");
        serializeAnchor(sb, TtmlNode.LEFT, this.mLeft);
        serializeAnchor(sb, "top", this.mTop);
        serializeAnchor(sb, TtmlNode.RIGHT, this.mRight);
        serializeAnchor(sb, "bottom", this.mBottom);
        serializeAnchor(sb, "baseline", this.mBaseline);
        serializeAnchor(sb, "centerX", this.mCenterX);
        serializeAnchor(sb, "centerY", this.mCenterY);
        serializeCircle(sb, this.mCenter, this.mCircleConstraintAngle);
        serializeSize(sb, "width", this.mWidth, this.mMinWidth, this.mMaxDimension[0], this.mWidthOverride, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mWeight[0]);
        serializeSize(sb, "height", this.mHeight, this.mMinHeight, this.mMaxDimension[1], this.mHeightOverride, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mWeight[1]);
        serializeDimensionRatio(sb, "dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
        serializeAttribute(sb, "horizontalBias", this.mHorizontalBiasPercent, DEFAULT_BIAS);
        serializeAttribute(sb, "verticalBias", this.mVerticalBiasPercent, DEFAULT_BIAS);
        sb.append("}\n");
        return sb;
    }

    public void setAnimated(boolean z) {
        this.mAnimated = z;
    }

    public void setBaselineDistance(int i) {
        this.mBaselineDistance = i;
        this.mHasBaseline = i > 0;
    }

    public void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    public void setContainerItemSkip(int i) {
        if (i >= 0) {
            this.mContainerItemSkip = i;
        } else {
            this.mContainerItemSkip = 0;
        }
    }

    public void setDebugName(String str) {
        this.mDebugName = str;
    }

    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.mDebugName = str;
        SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        solverVariableCreateObjectVariable.setName(str + ".left");
        solverVariableCreateObjectVariable2.setName(str + ".top");
        solverVariableCreateObjectVariable3.setName(str + ".right");
        solverVariableCreateObjectVariable4.setName(str + ".bottom");
        linearSystem.createObjectVariable(this.mBaseline).setName(str + ".baseline");
    }

    public void setDimension(int i, int i2) {
        this.mWidth = i;
        int i3 = this.mMinWidth;
        if (i < i3) {
            this.mWidth = i3;
        }
        this.mHeight = i2;
        int i4 = this.mMinHeight;
        if (i2 < i4) {
            this.mHeight = i4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[PHI: r0
      0x0086: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:46:0x0086, B:36:0x007f, B:24:0x0051, B:26:0x0057, B:28:0x0063, B:30:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0086 -> B:40:0x0087). Please report as a decompilation issue!!! */
    public void setDimensionRatio(String str) {
        float fAbs;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.mDimensionRatio = 0.0f;
            return;
        }
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i2 = 0;
        int i3 = -1;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (!strSubstring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                i2 = strSubstring.equalsIgnoreCase("H") ? 1 : -1;
            }
            i3 = i2;
            i2 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        try {
            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                String strSubstring2 = str.substring(i2);
                if (strSubstring2.length() > 0) {
                    fAbs = Float.parseFloat(strSubstring2);
                } else {
                    fAbs = i;
                }
            } else {
                String strSubstring3 = str.substring(i2, iIndexOf2);
                String strSubstring4 = str.substring(iIndexOf2 + 1);
                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                    fAbs = i;
                } else {
                    float f = Float.parseFloat(strSubstring3);
                    float f2 = Float.parseFloat(strSubstring4);
                    if (f <= 0.0f || f2 <= 0.0f) {
                        fAbs = i;
                    } else {
                        fAbs = i3 == 1 ? Math.abs(f2 / f) : Math.abs(f / f2);
                    }
                }
            }
        } catch (NumberFormatException unused) {
        }
        i = (fAbs > i ? 1 : (fAbs == i ? 0 : -1));
        if (i > 0) {
            this.mDimensionRatio = fAbs;
            this.mDimensionRatioSide = i3;
        }
    }

    public void setFinalBaseline(int i) {
        if (this.mHasBaseline) {
            int i2 = i - this.mBaselineDistance;
            int i3 = this.mHeight + i2;
            this.mY = i2;
            this.mTop.setFinalValue(i2);
            this.mBottom.setFinalValue(i3);
            this.mBaseline.setFinalValue(i);
            this.mResolvedVertical = true;
        }
    }

    public void setFinalFrame(int i, int i2, int i3, int i4, int i5, int i6) {
        setFrame(i, i2, i3, i4);
        setBaselineDistance(i5);
        if (i6 == 0) {
            this.mResolvedHorizontal = true;
            this.mResolvedVertical = false;
        } else if (i6 == 1) {
            this.mResolvedHorizontal = false;
            this.mResolvedVertical = true;
        } else if (i6 == 2) {
            this.mResolvedHorizontal = true;
            this.mResolvedVertical = true;
        } else {
            this.mResolvedHorizontal = false;
            this.mResolvedVertical = false;
        }
    }

    public void setFinalHorizontal(int i, int i2) {
        if (this.mResolvedHorizontal) {
            return;
        }
        this.mLeft.setFinalValue(i);
        this.mRight.setFinalValue(i2);
        this.mX = i;
        this.mWidth = i2 - i;
        this.mResolvedHorizontal = true;
    }

    public void setFinalLeft(int i) {
        this.mLeft.setFinalValue(i);
        this.mX = i;
    }

    public void setFinalTop(int i) {
        this.mTop.setFinalValue(i);
        this.mY = i;
    }

    public void setFinalVertical(int i, int i2) {
        if (this.mResolvedVertical) {
            return;
        }
        this.mTop.setFinalValue(i);
        this.mBottom.setFinalValue(i2);
        this.mY = i;
        this.mHeight = i2 - i;
        if (this.mHasBaseline) {
            this.mBaseline.setFinalValue(i + this.mBaselineDistance);
        }
        this.mResolvedVertical = true;
    }

    public void setFrame(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.mX = i;
        this.mY = i2;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i7 < (i6 = this.mWidth)) {
            i7 = i6;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i8 < (i5 = this.mHeight)) {
            i8 = i5;
        }
        this.mWidth = i7;
        this.mHeight = i8;
        int i9 = this.mMinHeight;
        if (i8 < i9) {
            this.mHeight = i9;
        }
        int i10 = this.mMinWidth;
        if (i7 < i10) {
            this.mWidth = i10;
        }
        int i11 = this.mMatchConstraintMaxWidth;
        if (i11 > 0 && dimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.mWidth = Math.min(this.mWidth, i11);
        }
        int i12 = this.mMatchConstraintMaxHeight;
        if (i12 > 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.mHeight = Math.min(this.mHeight, i12);
        }
        int i13 = this.mWidth;
        if (i7 != i13) {
            this.mWidthOverride = i13;
        }
        int i14 = this.mHeight;
        if (i8 != i14) {
            this.mHeightOverride = i14;
        }
    }

    public void setGoneMargin(ConstraintAnchor.Type type, int i) {
        int i2 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[type.ordinal()];
        if (i2 == 1) {
            this.mLeft.mGoneMargin = i;
            return;
        }
        if (i2 == 2) {
            this.mTop.mGoneMargin = i;
            return;
        }
        if (i2 == 3) {
            this.mRight.mGoneMargin = i;
        } else if (i2 == 4) {
            this.mBottom.mGoneMargin = i;
        } else {
            if (i2 != 5) {
                return;
            }
            this.mBaseline.mGoneMargin = i;
        }
    }

    public void setHasBaseline(boolean z) {
        this.mHasBaseline = z;
    }

    public void setHeight(int i) {
        this.mHeight = i;
        int i2 = this.mMinHeight;
        if (i < i2) {
            this.mHeight = i2;
        }
    }

    public void setHeightWrapContent(boolean z) {
        this.mIsHeightWrapContent = z;
    }

    public void setHorizontalBiasPercent(float f) {
        this.mHorizontalBiasPercent = f;
    }

    public void setHorizontalChainStyle(int i) {
        this.mHorizontalChainStyle = i;
    }

    public void setHorizontalDimension(int i, int i2) {
        this.mX = i;
        int i3 = i2 - i;
        this.mWidth = i3;
        int i4 = this.mMinWidth;
        if (i3 < i4) {
            this.mWidth = i4;
        }
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
    }

    public void setHorizontalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultWidth = i;
        this.mMatchConstraintMinWidth = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.mMatchConstraintMaxWidth = i3;
        this.mMatchConstraintPercentWidth = f;
        if (f <= 0.0f || f >= 1.0f || i != 0) {
            return;
        }
        this.mMatchConstraintDefaultWidth = 2;
    }

    public void setHorizontalWeight(float f) {
        this.mWeight[0] = f;
    }

    public void setInBarrier(int i, boolean z) {
        this.mIsInBarrier[i] = z;
    }

    public void setInPlaceholder(boolean z) {
        this.mInPlaceholder = z;
    }

    public void setInVirtualLayout(boolean z) {
        this.mInVirtualLayout = z;
    }

    public void setLastMeasureSpec(int i, int i2) {
        this.mLastHorizontalMeasureSpec = i;
        this.mLastVerticalMeasureSpec = i2;
        setMeasureRequested(false);
    }

    public void setLength(int i, int i2) {
        if (i2 == 0) {
            setWidth(i);
        } else if (i2 == 1) {
            setHeight(i);
        }
    }

    public void setMaxHeight(int i) {
        this.mMaxDimension[1] = i;
    }

    public void setMaxWidth(int i) {
        this.mMaxDimension[0] = i;
    }

    public void setMeasureRequested(boolean z) {
        this.mMeasureRequested = z;
    }

    public void setMinHeight(int i) {
        if (i < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i;
        }
    }

    public void setMinWidth(int i) {
        if (i < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i;
        }
    }

    public void setOffset(int i, int i2) {
        this.mOffsetX = i;
        this.mOffsetY = i2;
    }

    public void setOrigin(int i, int i2) {
        this.mX = i;
        this.mY = i2;
    }

    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public void setRelativePositioning(int i, int i2) {
        if (i2 == 0) {
            this.mRelX = i;
        } else if (i2 == 1) {
            this.mRelY = i;
        }
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setVerticalBiasPercent(float f) {
        this.mVerticalBiasPercent = f;
    }

    public void setVerticalChainStyle(int i) {
        this.mVerticalChainStyle = i;
    }

    public void setVerticalDimension(int i, int i2) {
        this.mY = i;
        int i3 = i2 - i;
        this.mHeight = i3;
        int i4 = this.mMinHeight;
        if (i3 < i4) {
            this.mHeight = i4;
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
    }

    public void setVerticalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultHeight = i;
        this.mMatchConstraintMinHeight = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.mMatchConstraintMaxHeight = i3;
        this.mMatchConstraintPercentHeight = f;
        if (f <= 0.0f || f >= 1.0f || i != 0) {
            return;
        }
        this.mMatchConstraintDefaultHeight = 2;
    }

    public void setVerticalWeight(float f) {
        this.mWeight[1] = f;
    }

    public void setVisibility(int i) {
        this.mVisibility = i;
    }

    public void setWidth(int i) {
        this.mWidth = i;
        int i2 = this.mMinWidth;
        if (i < i2) {
            this.mWidth = i2;
        }
    }

    public void setWidthWrapContent(boolean z) {
        this.mIsWidthWrapContent = z;
    }

    public void setWrapBehaviorInParent(int i) {
        if (i < 0 || i > 3) {
            return;
        }
        this.mWrapBehaviorInParent = i;
    }

    public void setX(int i) {
        this.mX = i;
    }

    public void setY(int i) {
        this.mY = i;
    }

    public void setupDimensionRatio(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.mResolvedDimensionRatioSide == -1) {
            if (z3 && !z4) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z3 && z4) {
                this.mResolvedDimensionRatioSide = 1;
                if (this.mDimensionRatioSide == -1) {
                    this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                }
            }
        }
        if (this.mResolvedDimensionRatioSide == 0 && (!this.mTop.isConnected() || !this.mBottom.isConnected())) {
            this.mResolvedDimensionRatioSide = 1;
        } else if (this.mResolvedDimensionRatioSide == 1 && (!this.mLeft.isConnected() || !this.mRight.isConnected())) {
            this.mResolvedDimensionRatioSide = 0;
        }
        if (this.mResolvedDimensionRatioSide == -1 && (!this.mTop.isConnected() || !this.mBottom.isConnected() || !this.mLeft.isConnected() || !this.mRight.isConnected())) {
            if (this.mTop.isConnected() && this.mBottom.isConnected()) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (this.mLeft.isConnected() && this.mRight.isConnected()) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            int i = this.mMatchConstraintMinWidth;
            if (i > 0 && this.mMatchConstraintMinHeight == 0) {
                this.mResolvedDimensionRatioSide = 0;
            } else {
                if (i != 0 || this.mMatchConstraintMinHeight <= 0) {
                    return;
                }
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.mType != null) {
            str = "type: " + this.mType + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.mDebugName != null) {
            str2 = "id: " + this.mDebugName + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.mX);
        sb.append(", ");
        sb.append(this.mY);
        sb.append(") - (");
        sb.append(this.mWidth);
        sb.append(" x ");
        sb.append(this.mHeight);
        sb.append(")");
        return sb.toString();
    }

    public void updateFromRuns(boolean z, boolean z2) {
        int i;
        int i2;
        boolean zIsResolved = z & this.mHorizontalRun.isResolved();
        boolean zIsResolved2 = z2 & this.mVerticalRun.isResolved();
        HorizontalWidgetRun horizontalWidgetRun = this.mHorizontalRun;
        int i3 = horizontalWidgetRun.start.value;
        VerticalWidgetRun verticalWidgetRun = this.mVerticalRun;
        int i4 = verticalWidgetRun.start.value;
        int i5 = horizontalWidgetRun.end.value;
        int i6 = verticalWidgetRun.end.value;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i3 = 0;
            i6 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (zIsResolved) {
            this.mX = i3;
        }
        if (zIsResolved2) {
            this.mY = i4;
        }
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (zIsResolved) {
            if (this.mListDimensionBehaviors[0] == DimensionBehaviour.FIXED && i8 < (i2 = this.mWidth)) {
                i8 = i2;
            }
            this.mWidth = i8;
            int i10 = this.mMinWidth;
            if (i8 < i10) {
                this.mWidth = i10;
            }
        }
        if (zIsResolved2) {
            if (this.mListDimensionBehaviors[1] == DimensionBehaviour.FIXED && i9 < (i = this.mHeight)) {
                i9 = i;
            }
            this.mHeight = i9;
            int i11 = this.mMinHeight;
            if (i9 < i11) {
                this.mHeight = i11;
            }
        }
    }

    public void updateFromSolver(LinearSystem linearSystem, boolean z) {
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        int objectVariableValue = linearSystem.getObjectVariableValue(this.mLeft);
        int objectVariableValue2 = linearSystem.getObjectVariableValue(this.mTop);
        int objectVariableValue3 = linearSystem.getObjectVariableValue(this.mRight);
        int objectVariableValue4 = linearSystem.getObjectVariableValue(this.mBottom);
        if (z && (horizontalWidgetRun = this.mHorizontalRun) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun.start;
            if (dependencyNode.resolved) {
                DependencyNode dependencyNode2 = horizontalWidgetRun.end;
                if (dependencyNode2.resolved) {
                    objectVariableValue = dependencyNode.value;
                    objectVariableValue3 = dependencyNode2.value;
                }
            }
        }
        if (z && (verticalWidgetRun = this.mVerticalRun) != null) {
            DependencyNode dependencyNode3 = verticalWidgetRun.start;
            if (dependencyNode3.resolved) {
                DependencyNode dependencyNode4 = verticalWidgetRun.end;
                if (dependencyNode4.resolved) {
                    objectVariableValue2 = dependencyNode3.value;
                    objectVariableValue4 = dependencyNode4.value;
                }
            }
        }
        int i = objectVariableValue4 - objectVariableValue2;
        if (objectVariableValue3 - objectVariableValue < 0 || i < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
            objectVariableValue = 0;
            objectVariableValue4 = 0;
            objectVariableValue2 = 0;
            objectVariableValue3 = 0;
        }
        setFrame(objectVariableValue, objectVariableValue2, objectVariableValue3, objectVariableValue4);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        connect(type, constraintWidget, type2, 0);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i) {
        ConstraintAnchor.Type type3;
        ConstraintAnchor.Type type4;
        boolean z;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER;
        if (type == type5) {
            if (type2 == type5) {
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
                ConstraintAnchor anchor = getAnchor(type6);
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.RIGHT;
                ConstraintAnchor anchor2 = getAnchor(type7);
                ConstraintAnchor.Type type8 = ConstraintAnchor.Type.TOP;
                ConstraintAnchor anchor3 = getAnchor(type8);
                ConstraintAnchor.Type type9 = ConstraintAnchor.Type.BOTTOM;
                ConstraintAnchor anchor4 = getAnchor(type9);
                boolean z2 = true;
                if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                    connect(type6, constraintWidget, type6, 0);
                    connect(type7, constraintWidget, type7, 0);
                    z = true;
                } else {
                    z = false;
                }
                if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                    connect(type8, constraintWidget, type8, 0);
                    connect(type9, constraintWidget, type9, 0);
                } else {
                    z2 = false;
                }
                if (z && z2) {
                    getAnchor(type5).connect(constraintWidget.getAnchor(type5), 0);
                    return;
                }
                if (z) {
                    ConstraintAnchor.Type type10 = ConstraintAnchor.Type.CENTER_X;
                    getAnchor(type10).connect(constraintWidget.getAnchor(type10), 0);
                    return;
                } else {
                    if (z2) {
                        ConstraintAnchor.Type type11 = ConstraintAnchor.Type.CENTER_Y;
                        getAnchor(type11).connect(constraintWidget.getAnchor(type11), 0);
                        return;
                    }
                    return;
                }
            }
            ConstraintAnchor.Type type12 = ConstraintAnchor.Type.LEFT;
            if (type2 != type12 && type2 != ConstraintAnchor.Type.RIGHT) {
                ConstraintAnchor.Type type13 = ConstraintAnchor.Type.TOP;
                if (type2 == type13 || type2 == ConstraintAnchor.Type.BOTTOM) {
                    connect(type13, constraintWidget, type2, 0);
                    connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0);
                    getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
                    return;
                }
                return;
            }
            connect(type12, constraintWidget, type2, 0);
            connect(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0);
            getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        ConstraintAnchor.Type type14 = ConstraintAnchor.Type.CENTER_X;
        if (type == type14 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor anchor5 = getAnchor(type4);
            ConstraintAnchor anchor6 = constraintWidget.getAnchor(type2);
            ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.RIGHT);
            anchor5.connect(anchor6, 0);
            anchor7.connect(anchor6, 0);
            getAnchor(type14).connect(anchor6, 0);
            return;
        }
        ConstraintAnchor.Type type15 = ConstraintAnchor.Type.CENTER_Y;
        if (type == type15 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor anchor8 = constraintWidget.getAnchor(type2);
            getAnchor(type3).connect(anchor8, 0);
            getAnchor(ConstraintAnchor.Type.BOTTOM).connect(anchor8, 0);
            getAnchor(type15).connect(anchor8, 0);
            return;
        }
        if (type == type14 && type2 == type14) {
            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.LEFT;
            getAnchor(type16).connect(constraintWidget.getAnchor(type16), 0);
            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.RIGHT;
            getAnchor(type17).connect(constraintWidget.getAnchor(type17), 0);
            getAnchor(type14).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        if (type == type15 && type2 == type15) {
            ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
            getAnchor(type18).connect(constraintWidget.getAnchor(type18), 0);
            ConstraintAnchor.Type type19 = ConstraintAnchor.Type.BOTTOM;
            getAnchor(type19).connect(constraintWidget.getAnchor(type19), 0);
            getAnchor(type15).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        ConstraintAnchor anchor9 = getAnchor(type);
        ConstraintAnchor anchor10 = constraintWidget.getAnchor(type2);
        if (anchor9.isValidConnection(anchor10)) {
            ConstraintAnchor.Type type20 = ConstraintAnchor.Type.BASELINE;
            if (type == type20) {
                ConstraintAnchor anchor11 = getAnchor(ConstraintAnchor.Type.TOP);
                ConstraintAnchor anchor12 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                if (anchor11 != null) {
                    anchor11.reset();
                }
                if (anchor12 != null) {
                    anchor12.reset();
                }
            } else if (type != ConstraintAnchor.Type.TOP && type != ConstraintAnchor.Type.BOTTOM) {
                if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                    ConstraintAnchor anchor13 = getAnchor(type5);
                    if (anchor13.getTarget() != anchor10) {
                        anchor13.reset();
                    }
                    ConstraintAnchor opposite = getAnchor(type).getOpposite();
                    ConstraintAnchor anchor14 = getAnchor(type14);
                    if (anchor14.isConnected()) {
                        opposite.reset();
                        anchor14.reset();
                    }
                }
            } else {
                ConstraintAnchor anchor15 = getAnchor(type20);
                if (anchor15 != null) {
                    anchor15.reset();
                }
                ConstraintAnchor anchor16 = getAnchor(type5);
                if (anchor16.getTarget() != anchor10) {
                    anchor16.reset();
                }
                ConstraintAnchor opposite2 = getAnchor(type).getOpposite();
                ConstraintAnchor anchor17 = getAnchor(type15);
                if (anchor17.isConnected()) {
                    opposite2.reset();
                    anchor17.reset();
                }
            }
            anchor9.connect(anchor10, i);
        }
    }

    private void serializeAttribute(StringBuilder sb, String str, int i, int i2) {
        if (i == i2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i);
        sb.append(",\n");
    }

    private void serializeAttribute(StringBuilder sb, String str, String str2, String str3) {
        if (str3.equals(str2)) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(str2);
        sb.append(",\n");
    }

    public void setDimensionRatio(float f, int i) {
        this.mDimensionRatio = f;
        this.mDimensionRatioSide = i;
    }

    public void setFrame(int i, int i2, int i3) {
        if (i3 == 0) {
            setHorizontalDimension(i, i2);
        } else if (i3 == 1) {
            setVerticalDimension(i, i2);
        }
    }

    private void getSceneString(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, int i6, float f, DimensionBehaviour dimensionBehaviour, float f2) {
        sb.append(str);
        sb.append(" :  {\n");
        serializeAttribute(sb, "      behavior", dimensionBehaviour.toString(), DimensionBehaviour.FIXED.toString());
        serializeAttribute(sb, "      size", i, 0);
        serializeAttribute(sb, "      min", i2, 0);
        serializeAttribute(sb, "      max", i3, Integer.MAX_VALUE);
        serializeAttribute(sb, "      matchMin", i5, 0);
        serializeAttribute(sb, "      matchDef", i6, 0);
        serializeAttribute(sb, "      matchPercent", f, 1.0f);
        sb.append("    },\n");
    }

    private void getSceneString(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("'");
        if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE || constraintAnchor.mMargin != 0) {
            sb.append(StringUtils.COMMA);
            sb.append(constraintAnchor.mMargin);
            if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE) {
                sb.append(StringUtils.COMMA);
                sb.append(constraintAnchor.mGoneMargin);
                sb.append(StringUtils.COMMA);
            }
        }
        sb.append(" ] ,\n");
    }

    public ConstraintWidget(String str) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.mHorizontalRun = null;
        this.mVerticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.mOptimizeWrapO = false;
        this.mOptimizeWrapOnResolved = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = Float.NaN;
        this.mHasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        addAnchors();
        setDebugName(str);
    }

    public ConstraintWidget(int i, int i2, int i3, int i4) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.mHorizontalRun = null;
        this.mVerticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.mOptimizeWrapO = false;
        this.mOptimizeWrapOnResolved = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = Float.NaN;
        this.mHasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        this.mX = i;
        this.mY = i2;
        this.mWidth = i3;
        this.mHeight = i4;
        addAnchors();
    }

    public ConstraintWidget(String str, int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4);
        setDebugName(str);
    }

    public ConstraintWidget(int i, int i2) {
        this(0, 0, i, i2);
    }

    public ConstraintWidget(String str, int i, int i2) {
        this(i, i2);
        setDebugName(str);
    }
}
