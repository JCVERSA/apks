package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.j;
import androidx.constraintlayout.core.widgets.analyzer.l;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class ConstraintWidget {
    public static float U0 = 0.5f;
    int A0;
    int B0;
    boolean C0;
    boolean D0;
    boolean E0;
    public boolean F;
    boolean F0;
    public boolean G;
    boolean G0;
    boolean H0;
    boolean I0;
    int J0;
    int K0;
    boolean L0;
    private boolean M;
    boolean M0;
    public float[] N0;
    protected ConstraintWidget[] O0;
    protected ConstraintWidget[] P0;
    ConstraintWidget Q0;
    ConstraintWidget R0;
    public int S0;
    public int T0;
    public ConstraintAnchor X;
    public ConstraintAnchor[] Y;
    protected ArrayList Z;

    private boolean[] f6548a0;

    public DimensionBehaviour[] f6550b0;

    public androidx.constraintlayout.core.widgets.analyzer.c f6551c;

    public ConstraintWidget f6552c0;

    public androidx.constraintlayout.core.widgets.analyzer.c f6553d;

    int f6554d0;

    int f6556e0;

    public float f6558f0;

    protected int f6560g0;

    protected int f6562h0;

    protected int f6564i0;

    int f6566j0;

    int f6568k0;

    protected int f6570l0;

    protected int f6572m0;

    int f6574n0;

    public String f6575o;

    protected int f6576o0;

    protected int f6578p0;

    float f6580q0;

    float f6582r0;

    private Object f6584s0;

    private int f6586t0;

    private int f6588u0;

    private boolean f6590v0;

    private String f6592w0;

    private String f6594x0;

    int f6596y0;

    int f6598z0;

    public boolean f6547a = false;

    public WidgetRun[] f6549b = new WidgetRun[2];

    public j f6555e = null;

    public l f6557f = null;

    public boolean[] f6559g = {true, true};

    boolean f6561h = false;

    private boolean f6563i = true;

    private boolean f6565j = false;

    private boolean f6567k = true;

    private int f6569l = -1;

    private int f6571m = -1;

    public s0.a f6573n = new s0.a(this);

    private boolean f6577p = false;

    private boolean f6579q = false;

    private boolean f6581r = false;

    private boolean f6583s = false;

    public int f6585t = -1;

    public int f6587u = -1;

    private int f6589v = 0;

    public int f6591w = 0;

    public int f6593x = 0;

    public int[] f6595y = new int[2];

    public int f6597z = 0;
    public int A = 0;
    public float B = 1.0f;
    public int C = 0;
    public int D = 0;
    public float E = 1.0f;
    int H = -1;
    float I = 1.0f;
    private int[] J = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private float K = 0.0f;
    private boolean L = false;
    private boolean N = false;
    private int O = 0;
    private int P = 0;
    public ConstraintAnchor Q = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
    public ConstraintAnchor R = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
    public ConstraintAnchor S = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
    public ConstraintAnchor T = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
    public ConstraintAnchor U = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
    ConstraintAnchor V = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
    ConstraintAnchor W = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    static class a {

        static final int[] f6599a;

        static final int[] f6600b;

        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            f6600b = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6600b[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6600b[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6600b[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            f6599a = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6599a[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6599a[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6599a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6599a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f6599a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f6599a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f6599a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f6599a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public ConstraintWidget() {
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.X = constraintAnchor;
        this.Y = new ConstraintAnchor[]{this.Q, this.S, this.R, this.T, this.U, constraintAnchor};
        this.Z = new ArrayList();
        this.f6548a0 = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.f6550b0 = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.f6552c0 = null;
        this.f6554d0 = 0;
        this.f6556e0 = 0;
        this.f6558f0 = 0.0f;
        this.f6560g0 = -1;
        this.f6562h0 = 0;
        this.f6564i0 = 0;
        this.f6566j0 = 0;
        this.f6568k0 = 0;
        this.f6570l0 = 0;
        this.f6572m0 = 0;
        this.f6574n0 = 0;
        float f10 = U0;
        this.f6580q0 = f10;
        this.f6582r0 = f10;
        this.f6586t0 = 0;
        this.f6588u0 = 0;
        this.f6590v0 = false;
        this.f6592w0 = null;
        this.f6594x0 = null;
        this.I0 = false;
        this.J0 = 0;
        this.K0 = 0;
        this.N0 = new float[]{-1.0f, -1.0f};
        this.O0 = new ConstraintWidget[]{null, null};
        this.P0 = new ConstraintWidget[]{null, null};
        this.Q0 = null;
        this.R0 = null;
        this.S0 = -1;
        this.T0 = -1;
        d();
    }

    private void A0(StringBuilder sb2, String str, float f10, float f11) {
        if (f10 == f11) {
            return;
        }
        sb2.append(str);
        sb2.append(" :   ");
        sb2.append(f10);
        sb2.append(",\n");
    }

    private void B0(StringBuilder sb2, String str, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        sb2.append(str);
        sb2.append(" :   ");
        sb2.append(i10);
        sb2.append(",\n");
    }

    private void C0(StringBuilder sb2, String str, float f10, int i10) {
        if (f10 == 0.0f) {
            return;
        }
        sb2.append(str);
        sb2.append(" :  [");
        sb2.append(f10);
        sb2.append(",");
        sb2.append(i10);
        sb2.append("");
        sb2.append("],\n");
    }

    private void R(StringBuilder sb2, String str, int i10, int i11, int i12, int i13, int i14, int i15, float f10, float f11) {
        sb2.append(str);
        sb2.append(" :  {\n");
        B0(sb2, "      size", i10, 0);
        B0(sb2, "      min", i11, 0);
        B0(sb2, "      max", i12, Integer.MAX_VALUE);
        B0(sb2, "      matchMin", i14, 0);
        B0(sb2, "      matchDef", i15, 0);
        A0(sb2, "      matchPercent", f10, 1.0f);
        sb2.append("    },\n");
    }

    private void S(StringBuilder sb2, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.f6542f == null) {
            return;
        }
        sb2.append("    ");
        sb2.append(str);
        sb2.append(" : [ '");
        sb2.append(constraintAnchor.f6542f);
        sb2.append("'");
        if (constraintAnchor.f6544h != Integer.MIN_VALUE || constraintAnchor.f6543g != 0) {
            sb2.append(",");
            sb2.append(constraintAnchor.f6543g);
            if (constraintAnchor.f6544h != Integer.MIN_VALUE) {
                sb2.append(",");
                sb2.append(constraintAnchor.f6544h);
                sb2.append(",");
            }
        }
        sb2.append(" ] ,\n");
    }

    private void d() {
        this.Z.add(this.Q);
        this.Z.add(this.R);
        this.Z.add(this.S);
        this.Z.add(this.T);
        this.Z.add(this.V);
        this.Z.add(this.W);
        this.Z.add(this.X);
        this.Z.add(this.U);
    }

    private boolean h0(int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i11 = i10 * 2;
        ConstraintAnchor[] constraintAnchorArr = this.Y;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i11];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6542f;
        return (constraintAnchor4 == null || constraintAnchor4.f6542f == constraintAnchor3 || (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i11 + 1]).f6542f) == null || constraintAnchor2.f6542f != constraintAnchor) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0197  */
    /* JADX WARN: Code duplicated, block: B:107:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:109:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:235:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:237:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:243:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:245:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:252:0x040d  */
    /* JADX WARN: Code duplicated, block: B:261:0x042f  */
    /* JADX WARN: Code duplicated, block: B:271:0x0447  */
    /* JADX WARN: Code duplicated, block: B:274:0x044d  */
    /* JADX WARN: Code duplicated, block: B:275:0x044f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:278:0x0455 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:281:0x045a  */
    /* JADX WARN: Code duplicated, block: B:284:0x0460  */
    /* JADX WARN: Code duplicated, block: B:286:0x0464  */
    /* JADX WARN: Code duplicated, block: B:289:0x0469  */
    /* JADX WARN: Code duplicated, block: B:291:0x046d  */
    /* JADX WARN: Code duplicated, block: B:293:0x0470  */
    /* JADX WARN: Code duplicated, block: B:296:0x0477  */
    /* JADX WARN: Code duplicated, block: B:298:0x047d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:302:0x0485  */
    /* JADX WARN: Code duplicated, block: B:305:0x0497  */
    /* JADX WARN: Code duplicated, block: B:307:0x049b  */
    /* JADX WARN: Code duplicated, block: B:308:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:310:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:312:0x04a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:31:0x008c  */
    /* JADX WARN: Code duplicated, block: B:320:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:364:0x053e  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:48:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:67:0x0113  */
    /* JADX WARN: Code duplicated, block: B:69:0x0116  */
    /* JADX WARN: Code duplicated, block: B:70:0x0118  */
    /* JADX WARN: Code duplicated, block: B:72:0x011b  */
    /* JADX WARN: Code duplicated, block: B:73:0x011d  */
    /* JADX WARN: Code duplicated, block: B:75:0x0120  */
    /* JADX WARN: Code duplicated, block: B:80:0x0128  */
    /* JADX WARN: Code duplicated, block: B:83:0x0132  */
    /* JADX WARN: Code duplicated, block: B:84:0x0134 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:86:0x0137  */
    /* JADX WARN: Code duplicated, block: B:89:0x0140 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x0142  */
    /* JADX WARN: Code duplicated, block: B:91:0x0147 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x0149  */
    /* JADX WARN: Code duplicated, block: B:93:0x0151  */
    /* JADX WARN: Code duplicated, block: B:95:0x0166  */
    /* JADX WARN: Code duplicated, block: B:97:0x016a  */
    /* JADX WARN: Code duplicated, block: B:99:0x0172  */
    private void i(androidx.constraintlayout.core.d dVar, boolean z10, boolean z11, boolean z12, boolean z13, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z14, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10, int i11, int i12, int i13, float f10, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, int i14, int i15, int i16, int i17, float f11, boolean z20) {
        int i18;
        boolean z21;
        int iMin;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        boolean z22;
        boolean z23;
        ConstraintAnchor.Type typeK;
        ConstraintAnchor.Type type;
        SolverVariable solverVariableQ;
        SolverVariable solverVariableQ2;
        int i24;
        char c10;
        int i25;
        ConstraintAnchor constraintAnchor3;
        int i26;
        int i27;
        boolean z24;
        boolean z25;
        boolean z26;
        boolean z27;
        int i28;
        ConstraintWidget constraintWidget;
        boolean z28;
        ConstraintWidget constraintWidget2;
        int iMax;
        int i29;
        int i30;
        int iF;
        int iMin2;
        int i31;
        int i32;
        boolean z29;
        int i33;
        int i34;
        int i35;
        boolean z30;
        int i36;
        boolean z31;
        ConstraintWidget constraintWidget3;
        int i37;
        ConstraintWidget constraintWidget4;
        SolverVariable solverVariableQ3 = dVar.q(constraintAnchor);
        SolverVariable solverVariableQ4 = dVar.q(constraintAnchor2);
        SolverVariable solverVariableQ5 = dVar.q(constraintAnchor.j());
        SolverVariable solverVariableQ6 = dVar.q(constraintAnchor2.j());
        if (androidx.constraintlayout.core.d.x() != null) {
            androidx.constraintlayout.core.d.x().f6386w++;
        }
        boolean zO = constraintAnchor.o();
        boolean zO2 = constraintAnchor2.o();
        boolean zO3 = this.X.o();
        int i38 = zO2 ? (zO ? 1 : 0) + 1 : zO ? 1 : 0;
        if (zO3) {
            i38++;
        }
        int i39 = z15 ? 3 : i14;
        int i40 = a.f6600b[dimensionBehaviour.ordinal()];
        if (i40 != 1 && i40 != 2 && i40 != 3 && i40 == 4) {
            i18 = i39;
            z21 = i18 != 4;
            iMin = this.f6569l;
            if (iMin == -1 && z10) {
                this.f6569l = -1;
                z21 = false;
            } else {
                iMin = i11;
            }
            i19 = this.f6571m;
            if (i19 != -1 && !z10) {
                this.f6571m = -1;
                iMin = i19;
                z21 = false;
            }
            if (this.f6588u0 == 8) {
                iMin = 0;
                z21 = false;
            }
            if (z20) {
                if (zO && !zO2 && !zO3) {
                    dVar.f(solverVariableQ3, i10);
                } else if (zO && !zO2) {
                    dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
                }
            }
            if (!z21) {
                if (z14) {
                    dVar.e(solverVariableQ4, solverVariableQ3, 0, 3);
                    if (i12 > 0) {
                        dVar.h(solverVariableQ4, solverVariableQ3, i12, 8);
                    }
                    if (i13 < Integer.MAX_VALUE) {
                        dVar.j(solverVariableQ4, solverVariableQ3, i13, 8);
                    }
                } else {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                }
                i21 = i17;
                i22 = i38;
                z22 = z21;
                z23 = z13;
                i23 = i16;
            } else if (i38 == 2 && !z15 && (i18 == 1 || i18 == 0)) {
                int iMax2 = Math.max(i16, iMin);
                if (i17 > 0) {
                    iMax2 = Math.min(i17, iMax2);
                }
                dVar.e(solverVariableQ4, solverVariableQ3, iMax2, 8);
                z23 = z13;
                i21 = i17;
                i22 = i38;
                z22 = false;
                i23 = i16;
            } else {
                if (i16 == -2) {
                    i20 = iMin;
                } else {
                    i20 = i16;
                }
                if (i17 == -2) {
                    i21 = iMin;
                } else {
                    i21 = i17;
                }
                if (iMin > 0 && i18 != 1) {
                    iMin = 0;
                }
                if (i20 > 0) {
                    dVar.h(solverVariableQ4, solverVariableQ3, i20, 8);
                    iMin = Math.max(iMin, i20);
                }
                if (i21 > 0) {
                    if (z11 || i18 != 1) {
                        dVar.j(solverVariableQ4, solverVariableQ3, i21, 8);
                    }
                    iMin = Math.min(iMin, i21);
                }
                if (i18 == 1) {
                    if (z11) {
                        dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                    } else if (z17) {
                        dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                        dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                    } else {
                        dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                        dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                    }
                    i22 = i38;
                    z22 = z21;
                    z23 = z13;
                    i23 = i20;
                } else if (i18 == 2) {
                    typeK = constraintAnchor.k();
                    type = ConstraintAnchor.Type.TOP;
                    if (typeK != type || constraintAnchor.k() == ConstraintAnchor.Type.BOTTOM) {
                        solverVariableQ = dVar.q(this.f6552c0.q(type));
                        solverVariableQ2 = dVar.q(this.f6552c0.q(ConstraintAnchor.Type.BOTTOM));
                    } else {
                        solverVariableQ = dVar.q(this.f6552c0.q(ConstraintAnchor.Type.LEFT));
                        solverVariableQ2 = dVar.q(this.f6552c0.q(ConstraintAnchor.Type.RIGHT));
                    }
                    SolverVariable solverVariable3 = solverVariableQ;
                    SolverVariable solverVariable4 = solverVariableQ2;
                    androidx.constraintlayout.core.b bVarR = dVar.r();
                    i22 = i38 == true ? 1 : 0;
                    i23 = i20;
                    dVar.d(bVarR.k(solverVariableQ4, solverVariableQ3, solverVariable4, solverVariable3, f11));
                    if (z11) {
                        z21 = false;
                    }
                    z22 = z21;
                    z23 = z13;
                } else {
                    i22 = i38;
                    i23 = i20;
                    z22 = z21;
                    z23 = true;
                }
            }
            if (z20 || z17) {
                i24 = 0;
                c10 = 2;
                if (i22 >= c10 && z11 && z23) {
                    dVar.h(solverVariableQ3, solverVariable, i24, 8);
                    int i41 = (z10 || this.U.f6542f == null) ? 1 : i24;
                    if (z10 || (constraintAnchor3 = this.U.f6542f) == null) {
                        i25 = i41;
                    } else {
                        ConstraintWidget constraintWidget5 = constraintAnchor3.f6540d;
                        if (constraintWidget5.f6558f0 != 0.0f) {
                            DimensionBehaviour[] dimensionBehaviourArr = constraintWidget5.f6550b0;
                            DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[i24];
                            DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
                            if (dimensionBehaviour2 == dimensionBehaviour3 && dimensionBehaviourArr[1] == dimensionBehaviour3) {
                                i25 = 1;
                            } else {
                                i25 = i24;
                            }
                        } else {
                            i25 = i24;
                        }
                    }
                    if (i25 != 0) {
                        dVar.h(solverVariable2, solverVariableQ4, i24, 8);
                        return;
                    }
                    return;
                }
                return;
            }
            if (zO || zO2 || zO3) {
                if (!zO || zO2) {
                    if (zO || !zO2) {
                        if (zO && zO2) {
                            ConstraintWidget constraintWidget6 = constraintAnchor.f6542f.f6540d;
                            ConstraintWidget constraintWidget7 = constraintAnchor2.f6542f.f6540d;
                            ConstraintWidget constraintWidgetM = M();
                            int i42 = 6;
                            if (z22) {
                                if (i18 == 0) {
                                    if (i21 != 0 || i23 != 0) {
                                        z30 = false;
                                        i34 = 5;
                                        i36 = 5;
                                        z31 = true;
                                        z24 = true;
                                    } else if (solverVariableQ5.f6304g && solverVariableQ6.f6304g) {
                                        dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
                                        dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), 8);
                                        return;
                                    } else {
                                        z31 = false;
                                        z24 = false;
                                        i34 = 8;
                                        i36 = 8;
                                        z30 = true;
                                    }
                                    if ((constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                        solverVariable2 = solverVariable2;
                                        i26 = i34;
                                        i42 = 6;
                                        z26 = z30;
                                        z25 = z31;
                                        i27 = 4;
                                    } else {
                                        z26 = z30;
                                        z25 = z31;
                                        i27 = i36;
                                        i26 = i34;
                                        i42 = 6;
                                    }
                                } else if (i18 == 2) {
                                    if (!(constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) && !(constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                        solverVariable2 = solverVariable2;
                                        i42 = 6;
                                        i26 = 5;
                                        i27 = 5;
                                    }
                                    z25 = true;
                                    z24 = true;
                                    z26 = false;
                                } else if (i18 == 1) {
                                    i26 = 8;
                                    i27 = 4;
                                    z25 = true;
                                    z24 = true;
                                    z26 = false;
                                } else if (i18 == 3) {
                                    if (this.H == -1) {
                                        if (z18) {
                                            solverVariable2 = solverVariable2;
                                            i42 = z11 ? 5 : 4;
                                        } else {
                                            solverVariable2 = solverVariable2;
                                            i42 = 8;
                                        }
                                        i26 = 8;
                                    } else if (z15) {
                                        if (i15 == 2 || i15 == 1) {
                                            i34 = 5;
                                            i35 = 4;
                                        } else {
                                            i34 = 8;
                                            i35 = 5;
                                        }
                                        i27 = i35;
                                        z25 = true;
                                        z24 = true;
                                        z26 = true;
                                        i26 = i34;
                                        i42 = 6;
                                    } else {
                                        if (i21 > 0) {
                                            solverVariable2 = solverVariable2;
                                            i42 = 6;
                                            i26 = 5;
                                        } else {
                                            if (i21 != 0 || i23 != 0) {
                                                i26 = 5;
                                            } else if (z18) {
                                                i26 = (constraintWidget6 == constraintWidgetM || constraintWidget7 == constraintWidgetM) ? 5 : 4;
                                            } else {
                                                solverVariable2 = solverVariable2;
                                                i42 = 6;
                                                i26 = 5;
                                                i27 = 8;
                                            }
                                            i27 = 4;
                                        }
                                        z25 = true;
                                        z24 = true;
                                        z26 = true;
                                    }
                                    i27 = 5;
                                    z25 = true;
                                    z24 = true;
                                    z26 = true;
                                } else {
                                    solverVariable2 = solverVariable2;
                                    i42 = 6;
                                    i26 = 5;
                                    i27 = 4;
                                    z25 = false;
                                    z24 = false;
                                    z26 = false;
                                }
                                if (z24 || solverVariableQ5 != solverVariableQ6 || constraintWidget6 == constraintWidgetM) {
                                    z27 = true;
                                } else {
                                    z24 = false;
                                    z27 = false;
                                }
                                if (z25) {
                                    if (z22 && !z16 && !z18 && solverVariableQ5 == solverVariable && solverVariableQ6 == solverVariable2) {
                                        z28 = false;
                                        i33 = 8;
                                        i32 = 8;
                                        z29 = false;
                                    } else {
                                        z28 = z11;
                                        i32 = i42;
                                        z29 = z27;
                                        i33 = i26;
                                    }
                                    i28 = i18;
                                    constraintWidget = constraintWidgetM;
                                    dVar.c(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), f10, solverVariableQ6, solverVariableQ4, constraintAnchor2.f(), i32);
                                    i26 = i33;
                                    z27 = z29;
                                } else {
                                    i28 = i18;
                                    constraintWidget = constraintWidgetM;
                                    z28 = z11;
                                }
                                if (this.f6588u0 != 8 && !constraintAnchor2.m()) {
                                    return;
                                }
                                if (z24) {
                                    if (z28 && solverVariableQ5 != solverVariableQ6 && !z22 && ((constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a))) {
                                        i26 = 6;
                                    }
                                    dVar.h(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), i26);
                                    solverVariableQ4 = solverVariableQ4;
                                    dVar.j(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), i26);
                                } else {
                                    solverVariableQ4 = solverVariableQ4;
                                }
                                if (z28 || !z19 || (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                    constraintWidget2 = constraintWidget;
                                } else {
                                    constraintWidget2 = constraintWidget;
                                    if (constraintWidget7 != constraintWidget2) {
                                        i26 = 6;
                                        iMax = 6;
                                        z27 = true;
                                    }
                                    if (z27) {
                                        if (z26 && (!z18 || z12)) {
                                            if (constraintWidget6 != constraintWidget2 || constraintWidget7 == constraintWidget2) {
                                                i31 = 6;
                                            } else {
                                                i31 = iMax;
                                            }
                                            if ((constraintWidget6 instanceof f) || (constraintWidget7 instanceof f)) {
                                                i31 = 5;
                                            }
                                            if ((constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                                i31 = 5;
                                            }
                                            if (z18) {
                                                i31 = 5;
                                            }
                                            iMax = Math.max(i31, iMax);
                                        }
                                        if (z28) {
                                            iMin2 = Math.min(i26, iMax);
                                            if (z15 || z18 || !(constraintWidget6 == constraintWidget2 || constraintWidget7 == constraintWidget2)) {
                                                iMax = iMin2;
                                            } else {
                                                iMax = 4;
                                            }
                                        }
                                        dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), iMax);
                                        dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), iMax);
                                    }
                                    if (z28) {
                                        if (solverVariable == solverVariableQ5) {
                                            iF = constraintAnchor.f();
                                        } else {
                                            iF = 0;
                                        }
                                        if (solverVariableQ5 != solverVariable) {
                                            dVar.h(solverVariableQ3, solverVariable, iF, 5);
                                        }
                                    }
                                    if (z28 || !z22 || i12 != 0 || i23 != 0) {
                                        i29 = 5;
                                        i30 = 0;
                                    } else if (z22 && i28 == 3) {
                                        i30 = 0;
                                        dVar.h(solverVariableQ4, solverVariableQ3, 0, 8);
                                        i29 = 5;
                                    } else {
                                        i30 = 0;
                                        i29 = 5;
                                        dVar.h(solverVariableQ4, solverVariableQ3, 0, 5);
                                    }
                                }
                                iMax = i27;
                                if (z27) {
                                    if (z26) {
                                        if (constraintWidget6 != constraintWidget2) {
                                            i31 = 6;
                                        } else {
                                            i31 = 6;
                                        }
                                        if (constraintWidget6 instanceof f) {
                                            i31 = 5;
                                        } else {
                                            i31 = 5;
                                        }
                                        if (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) {
                                            i31 = 5;
                                        } else {
                                            i31 = 5;
                                        }
                                        if (z18) {
                                            i31 = 5;
                                        }
                                        iMax = Math.max(i31, iMax);
                                    }
                                    if (z28) {
                                        iMin2 = Math.min(i26, iMax);
                                        if (z15) {
                                            iMax = iMin2;
                                        } else {
                                            iMax = iMin2;
                                        }
                                    }
                                    dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), iMax);
                                    dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), iMax);
                                }
                                if (z28) {
                                    if (solverVariable == solverVariableQ5) {
                                        iF = constraintAnchor.f();
                                    } else {
                                        iF = 0;
                                    }
                                    if (solverVariableQ5 != solverVariable) {
                                        dVar.h(solverVariableQ3, solverVariable, iF, 5);
                                    }
                                }
                                if (z28) {
                                    i29 = 5;
                                    i30 = 0;
                                } else {
                                    i29 = 5;
                                    i30 = 0;
                                }
                            } else if (solverVariableQ5.f6304g && solverVariableQ6.f6304g) {
                                dVar.c(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), f10, solverVariableQ6, solverVariableQ4, constraintAnchor2.f(), 8);
                                if (z11 && z23) {
                                    int iF2 = constraintAnchor2.f6542f != null ? constraintAnchor2.f() : 0;
                                    if (solverVariableQ6 != solverVariable2) {
                                        dVar.h(solverVariable2, solverVariableQ4, iF2, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            i26 = 5;
                            i27 = 4;
                            z25 = true;
                            z24 = true;
                            z26 = false;
                            if (z24) {
                                z27 = true;
                            } else {
                                z27 = true;
                            }
                            if (z25) {
                                if (z22) {
                                    z28 = z11;
                                    i32 = i42;
                                    z29 = z27;
                                    i33 = i26;
                                } else {
                                    z28 = z11;
                                    i32 = i42;
                                    z29 = z27;
                                    i33 = i26;
                                }
                                i28 = i18;
                                constraintWidget = constraintWidgetM;
                                dVar.c(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), f10, solverVariableQ6, solverVariableQ4, constraintAnchor2.f(), i32);
                                i26 = i33;
                                z27 = z29;
                            } else {
                                i28 = i18;
                                constraintWidget = constraintWidgetM;
                                z28 = z11;
                            }
                            if (this.f6588u0 != 8) {
                            }
                            if (z24) {
                                if (z28) {
                                    i26 = 6;
                                }
                                dVar.h(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), i26);
                                solverVariableQ4 = solverVariableQ4;
                                dVar.j(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), i26);
                            } else {
                                solverVariableQ4 = solverVariableQ4;
                            }
                            if (z28) {
                                constraintWidget2 = constraintWidget;
                                iMax = i27;
                            } else {
                                constraintWidget2 = constraintWidget;
                                iMax = i27;
                            }
                            if (z27) {
                                if (z26) {
                                    if (constraintWidget6 != constraintWidget2) {
                                        i31 = 6;
                                    } else {
                                        i31 = 6;
                                    }
                                    if (constraintWidget6 instanceof f) {
                                        i31 = 5;
                                    } else {
                                        i31 = 5;
                                    }
                                    if (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) {
                                        i31 = 5;
                                    } else {
                                        i31 = 5;
                                    }
                                    if (z18) {
                                        i31 = 5;
                                    }
                                    iMax = Math.max(i31, iMax);
                                }
                                if (z28) {
                                    iMin2 = Math.min(i26, iMax);
                                    if (z15) {
                                        iMax = iMin2;
                                    } else {
                                        iMax = iMin2;
                                    }
                                }
                                dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), iMax);
                                dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), iMax);
                            }
                            if (z28) {
                                if (solverVariable == solverVariableQ5) {
                                    iF = constraintAnchor.f();
                                } else {
                                    iF = 0;
                                }
                                if (solverVariableQ5 != solverVariable) {
                                    dVar.h(solverVariableQ3, solverVariable, iF, 5);
                                }
                            }
                            if (z28) {
                                i29 = 5;
                                i30 = 0;
                            } else {
                                i29 = 5;
                                i30 = 0;
                            }
                        }
                        i37 = i29;
                    } else {
                        dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), 8);
                        if (z11) {
                            if (this.f6565j && solverVariableQ3.f6304g && (constraintWidget3 = this.f6552c0) != null) {
                                d dVar2 = (d) constraintWidget3;
                                if (z10) {
                                    dVar2.D1(constraintAnchor);
                                } else {
                                    dVar2.I1(constraintAnchor);
                                }
                            } else {
                                i29 = 5;
                                dVar.h(solverVariableQ3, solverVariable, 0, 5);
                                i30 = 0;
                            }
                        }
                    }
                    i30 = 0;
                    i29 = 5;
                } else {
                    z28 = z11;
                    i30 = 0;
                    i37 = (z11 && (constraintAnchor.f6542f.f6540d instanceof androidx.constraintlayout.core.widgets.a)) ? 8 : 5;
                    solverVariableQ4 = solverVariableQ4;
                }
                if (z28 || !z23) {
                    return;
                }
                int iF3 = constraintAnchor2.f6542f != null ? constraintAnchor2.f() : i30;
                if (solverVariableQ6 != solverVariable2) {
                    if (!this.f6565j || !solverVariableQ4.f6304g || (constraintWidget4 = this.f6552c0) == null) {
                        dVar.h(solverVariable2, solverVariableQ4, iF3, i37);
                        return;
                    }
                    d dVar3 = (d) constraintWidget4;
                    if (z10) {
                        dVar3.C1(constraintAnchor2);
                        return;
                    } else {
                        dVar3.H1(constraintAnchor2);
                        return;
                    }
                }
                return;
            }
            i29 = 5;
            i30 = 0;
            z28 = z11;
            i37 = i29;
            if (z28) {
                return;
            } else {
                return;
            }
        }
        i18 = i39;
        iMin = this.f6569l;
        if (iMin == -1) {
            iMin = i11;
        } else {
            iMin = i11;
        }
        i19 = this.f6571m;
        if (i19 != -1) {
            this.f6571m = -1;
            iMin = i19;
            z21 = false;
        }
        if (this.f6588u0 == 8) {
            iMin = 0;
            z21 = false;
        }
        if (z20) {
            if (zO) {
                if (zO) {
                    dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
                }
            } else if (zO) {
                dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
            }
        }
        if (!z21) {
            if (z14) {
                dVar.e(solverVariableQ4, solverVariableQ3, 0, 3);
                if (i12 > 0) {
                    dVar.h(solverVariableQ4, solverVariableQ3, i12, 8);
                }
                if (i13 < Integer.MAX_VALUE) {
                    dVar.j(solverVariableQ4, solverVariableQ3, i13, 8);
                }
            } else {
                dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
            }
            i21 = i17;
            i22 = i38;
            z22 = z21;
            z23 = z13;
            i23 = i16;
        } else if (i38 == 2) {
            if (i16 == -2) {
                i20 = iMin;
            } else {
                i20 = i16;
            }
            if (i17 == -2) {
                i21 = iMin;
            } else {
                i21 = i17;
            }
            if (iMin > 0) {
                iMin = 0;
            }
            if (i20 > 0) {
                dVar.h(solverVariableQ4, solverVariableQ3, i20, 8);
                iMin = Math.max(iMin, i20);
            }
            if (i21 > 0) {
                if (z11) {
                    dVar.j(solverVariableQ4, solverVariableQ3, i21, 8);
                } else {
                    dVar.j(solverVariableQ4, solverVariableQ3, i21, 8);
                }
                iMin = Math.min(iMin, i21);
            }
            if (i18 == 1) {
                if (z11) {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else if (z17) {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                }
                i22 = i38;
                z22 = z21;
                z23 = z13;
                i23 = i20;
            } else if (i18 == 2) {
                typeK = constraintAnchor.k();
                type = ConstraintAnchor.Type.TOP;
                if (typeK != type) {
                    solverVariableQ = dVar.q(this.f6552c0.q(type));
                    solverVariableQ2 = dVar.q(this.f6552c0.q(ConstraintAnchor.Type.BOTTOM));
                } else {
                    solverVariableQ = dVar.q(this.f6552c0.q(type));
                    solverVariableQ2 = dVar.q(this.f6552c0.q(ConstraintAnchor.Type.BOTTOM));
                }
                SolverVariable solverVariable5 = solverVariableQ;
                SolverVariable solverVariable6 = solverVariableQ2;
                androidx.constraintlayout.core.b bVarR2 = dVar.r();
                i22 = i38 == true ? 1 : 0;
                i23 = i20;
                dVar.d(bVarR2.k(solverVariableQ4, solverVariableQ3, solverVariable6, solverVariable5, f11));
                if (z11) {
                    z21 = false;
                }
                z22 = z21;
                z23 = z13;
            } else {
                i22 = i38;
                i23 = i20;
                z22 = z21;
                z23 = true;
            }
        } else {
            if (i16 == -2) {
                i20 = iMin;
            } else {
                i20 = i16;
            }
            if (i17 == -2) {
                i21 = iMin;
            } else {
                i21 = i17;
            }
            if (iMin > 0) {
                iMin = 0;
            }
            if (i20 > 0) {
                dVar.h(solverVariableQ4, solverVariableQ3, i20, 8);
                iMin = Math.max(iMin, i20);
            }
            if (i21 > 0) {
                if (z11) {
                    dVar.j(solverVariableQ4, solverVariableQ3, i21, 8);
                } else {
                    dVar.j(solverVariableQ4, solverVariableQ3, i21, 8);
                }
                iMin = Math.min(iMin, i21);
            }
            if (i18 == 1) {
                if (z11) {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else if (z17) {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                }
                i22 = i38;
                z22 = z21;
                z23 = z13;
                i23 = i20;
            } else if (i18 == 2) {
                typeK = constraintAnchor.k();
                type = ConstraintAnchor.Type.TOP;
                if (typeK != type) {
                    solverVariableQ = dVar.q(this.f6552c0.q(type));
                    solverVariableQ2 = dVar.q(this.f6552c0.q(ConstraintAnchor.Type.BOTTOM));
                } else {
                    solverVariableQ = dVar.q(this.f6552c0.q(type));
                    solverVariableQ2 = dVar.q(this.f6552c0.q(ConstraintAnchor.Type.BOTTOM));
                }
                SolverVariable solverVariable7 = solverVariableQ;
                SolverVariable solverVariable8 = solverVariableQ2;
                androidx.constraintlayout.core.b bVarR3 = dVar.r();
                i22 = i38 == true ? 1 : 0;
                i23 = i20;
                dVar.d(bVarR3.k(solverVariableQ4, solverVariableQ3, solverVariable8, solverVariable7, f11));
                if (z11) {
                    z21 = false;
                }
                z22 = z21;
                z23 = z13;
            } else {
                i22 = i38;
                i23 = i20;
                z22 = z21;
                z23 = true;
            }
        }
        if (z20) {
            i24 = 0;
            c10 = 2;
        } else {
            i24 = 0;
            c10 = 2;
        }
        if (i22 >= c10) {
        }
    }

    public float A() {
        return this.f6580q0;
    }

    public int B() {
        return this.J0;
    }

    public DimensionBehaviour C() {
        return this.f6550b0[0];
    }

    public int D() {
        ConstraintAnchor constraintAnchor = this.Q;
        int i10 = constraintAnchor != null ? constraintAnchor.f6543g : 0;
        ConstraintAnchor constraintAnchor2 = this.S;
        return constraintAnchor2 != null ? i10 + constraintAnchor2.f6543g : i10;
    }

    public void D0(boolean z10) {
        this.f6590v0 = z10;
    }

    public int E() {
        return this.O;
    }

    public void E0(int i10) {
        this.f6574n0 = i10;
        this.L = i10 > 0;
    }

    public int F() {
        return this.P;
    }

    public void F0(Object obj) {
        this.f6584s0 = obj;
    }

    public int G(int i10) {
        if (i10 == 0) {
            return Y();
        }
        if (i10 == 1) {
            return z();
        }
        return 0;
    }

    public void G0(String str) {
        this.f6592w0 = str;
    }

    public int H() {
        return this.J[1];
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[PHI: r0
      0x0086: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:46:0x0086, B:36:0x007f, B:24:0x0051, B:26:0x0057, B:28:0x0063, B:30:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0086 -> B:40:0x0087). Please report as a decompilation issue!!! */
    public void H0(String str) {
        float fAbs;
        int i10 = 0;
        if (str == null || str.length() == 0) {
            this.f6558f0 = 0.0f;
            return;
        }
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i11 = 0;
        int i12 = -1;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (!strSubstring.equalsIgnoreCase("W")) {
                i11 = strSubstring.equalsIgnoreCase("H") ? 1 : -1;
            }
            i12 = i11;
            i11 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        try {
            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                String strSubstring2 = str.substring(i11);
                if (strSubstring2.length() > 0) {
                    fAbs = Float.parseFloat(strSubstring2);
                } else {
                    fAbs = i10;
                }
            } else {
                String strSubstring3 = str.substring(i11, iIndexOf2);
                String strSubstring4 = str.substring(iIndexOf2 + 1);
                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                    fAbs = i10;
                } else {
                    float f10 = Float.parseFloat(strSubstring3);
                    float f11 = Float.parseFloat(strSubstring4);
                    if (f10 <= 0.0f || f11 <= 0.0f) {
                        fAbs = i10;
                    } else {
                        fAbs = i12 == 1 ? Math.abs(f11 / f10) : Math.abs(f10 / f11);
                    }
                }
            }
        } catch (NumberFormatException unused) {
        }
        i10 = (fAbs > i10 ? 1 : (fAbs == i10 ? 0 : -1));
        if (i10 > 0) {
            this.f6558f0 = fAbs;
            this.f6560g0 = i12;
        }
    }

    public int I() {
        return this.J[0];
    }

    public void I0(int i10) {
        if (this.L) {
            int i11 = i10 - this.f6574n0;
            int i12 = this.f6556e0 + i11;
            this.f6564i0 = i11;
            this.R.t(i11);
            this.T.t(i12);
            this.U.t(i10);
            this.f6579q = true;
        }
    }

    public int J() {
        return this.f6578p0;
    }

    public void J0(int i10, int i11) {
        if (this.f6577p) {
            return;
        }
        this.Q.t(i10);
        this.S.t(i11);
        this.f6562h0 = i10;
        this.f6554d0 = i11 - i10;
        this.f6577p = true;
    }

    public int K() {
        return this.f6576o0;
    }

    public void K0(int i10) {
        this.Q.t(i10);
        this.f6562h0 = i10;
    }

    public ConstraintWidget L(int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i10 != 0) {
            if (i10 == 1 && (constraintAnchor2 = (constraintAnchor = this.T).f6542f) != null && constraintAnchor2.f6542f == constraintAnchor) {
                return constraintAnchor2.f6540d;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.S;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6542f;
        if (constraintAnchor4 == null || constraintAnchor4.f6542f != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.f6540d;
    }

    public void L0(int i10) {
        this.R.t(i10);
        this.f6564i0 = i10;
    }

    public ConstraintWidget M() {
        return this.f6552c0;
    }

    public void M0(int i10, int i11) {
        if (this.f6579q) {
            return;
        }
        this.R.t(i10);
        this.T.t(i11);
        this.f6564i0 = i10;
        this.f6556e0 = i11 - i10;
        if (this.L) {
            this.U.t(i10 + this.f6574n0);
        }
        this.f6579q = true;
    }

    public ConstraintWidget N(int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i10 != 0) {
            if (i10 == 1 && (constraintAnchor2 = (constraintAnchor = this.R).f6542f) != null && constraintAnchor2.f6542f == constraintAnchor) {
                return constraintAnchor2.f6540d;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.Q;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6542f;
        if (constraintAnchor4 == null || constraintAnchor4.f6542f != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.f6540d;
    }

    public void N0(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16 = i12 - i10;
        int i17 = i13 - i11;
        this.f6562h0 = i10;
        this.f6564i0 = i11;
        if (this.f6588u0 == 8) {
            this.f6554d0 = 0;
            this.f6556e0 = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.f6550b0;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i16 < (i15 = this.f6554d0)) {
            i16 = i15;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i17 < (i14 = this.f6556e0)) {
            i17 = i14;
        }
        this.f6554d0 = i16;
        this.f6556e0 = i17;
        int i18 = this.f6578p0;
        if (i17 < i18) {
            this.f6556e0 = i18;
        }
        int i19 = this.f6576o0;
        if (i16 < i19) {
            this.f6554d0 = i19;
        }
        int i20 = this.A;
        if (i20 > 0 && dimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.f6554d0 = Math.min(this.f6554d0, i20);
        }
        int i21 = this.D;
        if (i21 > 0 && this.f6550b0[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.f6556e0 = Math.min(this.f6556e0, i21);
        }
        int i22 = this.f6554d0;
        if (i16 != i22) {
            this.f6569l = i22;
        }
        int i23 = this.f6556e0;
        if (i17 != i23) {
            this.f6571m = i23;
        }
    }

    public int O() {
        return Z() + this.f6554d0;
    }

    public void O0(boolean z10) {
        this.L = z10;
    }

    public WidgetRun P(int i10) {
        if (i10 == 0) {
            return this.f6555e;
        }
        if (i10 == 1) {
            return this.f6557f;
        }
        return null;
    }

    public void P0(int i10) {
        this.f6556e0 = i10;
        int i11 = this.f6578p0;
        if (i10 < i11) {
            this.f6556e0 = i11;
        }
    }

    public void Q(StringBuilder sb2) {
        sb2.append("  " + this.f6575o + ":{\n");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("    actualWidth:");
        sb3.append(this.f6554d0);
        sb2.append(sb3.toString());
        sb2.append("\n");
        sb2.append("    actualHeight:" + this.f6556e0);
        sb2.append("\n");
        sb2.append("    actualLeft:" + this.f6562h0);
        sb2.append("\n");
        sb2.append("    actualTop:" + this.f6564i0);
        sb2.append("\n");
        S(sb2, TtmlNode.LEFT, this.Q);
        S(sb2, IntegrationConstants.TAB_BAR_POSITION_TOP, this.R);
        S(sb2, TtmlNode.RIGHT, this.S);
        S(sb2, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, this.T);
        S(sb2, "baseline", this.U);
        S(sb2, "centerX", this.V);
        S(sb2, "centerY", this.W);
        R(sb2, "    width", this.f6554d0, this.f6576o0, this.J[0], this.f6569l, this.f6597z, this.f6591w, this.B, this.N0[0]);
        R(sb2, "    height", this.f6556e0, this.f6578p0, this.J[1], this.f6571m, this.C, this.f6593x, this.E, this.N0[1]);
        C0(sb2, "    dimensionRatio", this.f6558f0, this.f6560g0);
        A0(sb2, "    horizontalBias", this.f6580q0, U0);
        A0(sb2, "    verticalBias", this.f6582r0, U0);
        B0(sb2, "    horizontalChainStyle", this.J0, 0);
        B0(sb2, "    verticalChainStyle", this.K0, 0);
        sb2.append("  }");
    }

    public void Q0(float f10) {
        this.f6580q0 = f10;
    }

    public void R0(int i10) {
        this.J0 = i10;
    }

    public void S0(int i10, int i11) {
        this.f6562h0 = i10;
        int i12 = i11 - i10;
        this.f6554d0 = i12;
        int i13 = this.f6576o0;
        if (i12 < i13) {
            this.f6554d0 = i13;
        }
    }

    public float T() {
        return this.f6582r0;
    }

    public void T0(DimensionBehaviour dimensionBehaviour) {
        this.f6550b0[0] = dimensionBehaviour;
    }

    public int U() {
        return this.K0;
    }

    public void U0(int i10, int i11, int i12, float f10) {
        this.f6591w = i10;
        this.f6597z = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.A = i12;
        this.B = f10;
        if (f10 <= 0.0f || f10 >= 1.0f || i10 != 0) {
            return;
        }
        this.f6591w = 2;
    }

    public DimensionBehaviour V() {
        return this.f6550b0[1];
    }

    public void V0(float f10) {
        this.N0[0] = f10;
    }

    public int W() {
        int i10 = this.Q != null ? this.R.f6543g : 0;
        return this.S != null ? i10 + this.T.f6543g : i10;
    }

    protected void W0(int i10, boolean z10) {
        this.f6548a0[i10] = z10;
    }

    public int X() {
        return this.f6588u0;
    }

    public void X0(boolean z10) {
        this.M = z10;
    }

    public int Y() {
        if (this.f6588u0 == 8) {
            return 0;
        }
        return this.f6554d0;
    }

    public void Y0(boolean z10) {
        this.N = z10;
    }

    public int Z() {
        ConstraintWidget constraintWidget = this.f6552c0;
        return (constraintWidget == null || !(constraintWidget instanceof d)) ? this.f6562h0 : ((d) constraintWidget).f6709d1 + this.f6562h0;
    }

    public void Z0(int i10, int i11) {
        this.O = i10;
        this.P = i11;
        c1(false);
    }

    public int a0() {
        ConstraintWidget constraintWidget = this.f6552c0;
        return (constraintWidget == null || !(constraintWidget instanceof d)) ? this.f6564i0 : ((d) constraintWidget).f6710e1 + this.f6564i0;
    }

    public void a1(int i10) {
        this.J[1] = i10;
    }

    public boolean b0() {
        return this.L;
    }

    public void b1(int i10) {
        this.J[0] = i10;
    }

    public boolean c0(int i10) {
        if (i10 == 0) {
            return (this.Q.f6542f != null ? 1 : 0) + (this.S.f6542f != null ? 1 : 0) < 2;
        }
        return ((this.R.f6542f != null ? 1 : 0) + (this.T.f6542f != null ? 1 : 0)) + (this.U.f6542f != null ? 1 : 0) < 2;
    }

    public void c1(boolean z10) {
        this.f6563i = z10;
    }

    public boolean d0() {
        int size = this.Z.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((ConstraintAnchor) this.Z.get(i10)).m()) {
                return true;
            }
        }
        return false;
    }

    public void d1(int i10) {
        if (i10 < 0) {
            this.f6578p0 = 0;
        } else {
            this.f6578p0 = i10;
        }
    }

    public void e(d dVar, androidx.constraintlayout.core.d dVar2, HashSet hashSet, int i10, boolean z10) {
        if (z10) {
            if (!hashSet.contains(this)) {
                return;
            }
            g.a(dVar, dVar2, this);
            hashSet.remove(this);
            g(dVar2, dVar.Y1(64));
        }
        if (i10 == 0) {
            HashSet hashSetD = this.Q.d();
            if (hashSetD != null) {
                Iterator it = hashSetD.iterator();
                while (it.hasNext()) {
                    ((ConstraintAnchor) it.next()).f6540d.e(dVar, dVar2, hashSet, i10, true);
                }
            }
            HashSet hashSetD2 = this.S.d();
            if (hashSetD2 != null) {
                Iterator it2 = hashSetD2.iterator();
                while (it2.hasNext()) {
                    ((ConstraintAnchor) it2.next()).f6540d.e(dVar, dVar2, hashSet, i10, true);
                }
                return;
            }
            return;
        }
        HashSet hashSetD3 = this.R.d();
        if (hashSetD3 != null) {
            Iterator it3 = hashSetD3.iterator();
            while (it3.hasNext()) {
                ((ConstraintAnchor) it3.next()).f6540d.e(dVar, dVar2, hashSet, i10, true);
            }
        }
        HashSet hashSetD4 = this.T.d();
        if (hashSetD4 != null) {
            Iterator it4 = hashSetD4.iterator();
            while (it4.hasNext()) {
                ((ConstraintAnchor) it4.next()).f6540d.e(dVar, dVar2, hashSet, i10, true);
            }
        }
        HashSet hashSetD5 = this.U.d();
        if (hashSetD5 != null) {
            Iterator it5 = hashSetD5.iterator();
            while (it5.hasNext()) {
                ((ConstraintAnchor) it5.next()).f6540d.e(dVar, dVar2, hashSet, i10, true);
            }
        }
    }

    public boolean e0() {
        return (this.f6569l == -1 && this.f6571m == -1) ? false : true;
    }

    public void e1(int i10) {
        if (i10 < 0) {
            this.f6576o0 = 0;
        } else {
            this.f6576o0 = i10;
        }
    }

    boolean f() {
        return (this instanceof i) || (this instanceof f);
    }

    public boolean f0(int i10, int i11) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i10 == 0) {
            ConstraintAnchor constraintAnchor3 = this.Q.f6542f;
            return constraintAnchor3 != null && constraintAnchor3.n() && (constraintAnchor2 = this.S.f6542f) != null && constraintAnchor2.n() && (this.S.f6542f.e() - this.S.f()) - (this.Q.f6542f.e() + this.Q.f()) >= i11;
        }
        ConstraintAnchor constraintAnchor4 = this.R.f6542f;
        return constraintAnchor4 != null && constraintAnchor4.n() && (constraintAnchor = this.T.f6542f) != null && constraintAnchor.n() && (this.T.f6542f.e() - this.T.f()) - (this.R.f6542f.e() + this.R.f()) >= i11;
        return false;
    }

    public void f1(int i10, int i11) {
        this.f6562h0 = i10;
        this.f6564i0 = i11;
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
    /* JADX WARN: Code duplicated, block: B:249:0x044b  */
    /* JADX WARN: Code duplicated, block: B:251:0x0451  */
    /* JADX WARN: Code duplicated, block: B:253:0x0457  */
    /* JADX WARN: Code duplicated, block: B:266:0x04af  */
    /* JADX WARN: Code duplicated, block: B:270:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:271:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:273:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:311:0x05a7  */
    /* JADX WARN: Code duplicated, block: B:314:0x05af  */
    /* JADX WARN: Code duplicated, block: B:316:0x05b6  */
    /* JADX WARN: Code duplicated, block: B:317:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:320:0x05dd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r15v5, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r53v0, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v6 */
    public void g(androidx.constraintlayout.core.d dVar, boolean z10) {
        boolean z11;
        boolean z12;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        boolean z13;
        boolean z14;
        int i10;
        boolean z15;
        int i11;
        boolean z16;
        DimensionBehaviour dimensionBehaviour;
        DimensionBehaviour dimensionBehaviour2;
        boolean z17;
        int i12;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        int i13;
        int i14;
        int i15;
        ?? r15;
        int i16;
        ?? r16;
        int i17;
        ?? r27;
        l lVar;
        DependencyNode dependencyNode;
        ConstraintWidget constraintWidget3;
        SolverVariable solverVariableQ;
        ConstraintWidget constraintWidget4;
        SolverVariable solverVariableQ2;
        DimensionBehaviour[] dimensionBehaviourArr;
        boolean z18;
        j jVar;
        int i18;
        int i19;
        boolean zK0;
        boolean zM0;
        j jVar2;
        l lVar2;
        SolverVariable solverVariableQ3 = dVar.q(this.Q);
        SolverVariable solverVariableQ4 = dVar.q(this.S);
        SolverVariable solverVariableQ5 = dVar.q(this.R);
        SolverVariable solverVariableQ6 = dVar.q(this.T);
        SolverVariable solverVariableQ7 = dVar.q(this.U);
        ConstraintWidget constraintWidget5 = this.f6552c0;
        if (constraintWidget5 == null) {
            z11 = false;
            z12 = false;
        } else {
            boolean z19 = constraintWidget5 != null && constraintWidget5.f6550b0[0] == DimensionBehaviour.WRAP_CONTENT;
            boolean z20 = constraintWidget5 != null && constraintWidget5.f6550b0[1] == DimensionBehaviour.WRAP_CONTENT;
            int i20 = this.f6589v;
            if (i20 == 1) {
                z11 = z19;
                z12 = false;
            } else if (i20 == 2) {
                z12 = z20;
                z11 = false;
            } else if (i20 != 3) {
                z12 = z20;
                z11 = z19;
            } else {
                z11 = false;
                z12 = false;
            }
        }
        if (this.f6588u0 == 8 && !this.f6590v0 && !d0()) {
            boolean[] zArr = this.f6548a0;
            if (!zArr[0] && !zArr[1]) {
                return;
            }
        }
        boolean z21 = this.f6577p;
        if (z21 || this.f6579q) {
            if (z21) {
                dVar.f(solverVariableQ3, this.f6562h0);
                dVar.f(solverVariableQ4, this.f6562h0 + this.f6554d0);
                if (z11 && (constraintWidget2 = this.f6552c0) != null) {
                    if (this.f6567k) {
                        d dVar2 = (d) constraintWidget2;
                        dVar2.D1(this.Q);
                        dVar2.C1(this.S);
                    } else {
                        dVar.h(dVar.q(constraintWidget2.S), solverVariableQ4, 0, 5);
                    }
                }
            }
            if (this.f6579q) {
                dVar.f(solverVariableQ5, this.f6564i0);
                dVar.f(solverVariableQ6, this.f6564i0 + this.f6556e0);
                if (this.U.m()) {
                    dVar.f(solverVariableQ7, this.f6564i0 + this.f6574n0);
                }
                if (z12 && (constraintWidget = this.f6552c0) != null) {
                    if (this.f6567k) {
                        d dVar3 = (d) constraintWidget;
                        dVar3.I1(this.R);
                        dVar3.H1(this.T);
                    } else {
                        dVar.h(dVar.q(constraintWidget.T), solverVariableQ6, 0, 5);
                    }
                }
            }
            if (this.f6577p && this.f6579q) {
                this.f6577p = false;
                this.f6579q = false;
                return;
            }
        }
        androidx.constraintlayout.core.e eVar = androidx.constraintlayout.core.d.f6343x;
        if (eVar != null) {
            eVar.f6389z++;
        }
        if (z10 && (jVar2 = this.f6555e) != null && (lVar2 = this.f6557f) != null) {
            DependencyNode dependencyNode2 = jVar2.f6621h;
            if (dependencyNode2.f6611j && jVar2.f6622i.f6611j && lVar2.f6621h.f6611j && lVar2.f6622i.f6611j) {
                if (eVar != null) {
                    eVar.f6381r++;
                }
                dVar.f(solverVariableQ3, dependencyNode2.f6608g);
                dVar.f(solverVariableQ4, this.f6555e.f6622i.f6608g);
                dVar.f(solverVariableQ5, this.f6557f.f6621h.f6608g);
                dVar.f(solverVariableQ6, this.f6557f.f6622i.f6608g);
                dVar.f(solverVariableQ7, this.f6557f.f6666k.f6608g);
                if (this.f6552c0 != null) {
                    if (z11 && this.f6559g[0] && !k0()) {
                        dVar.h(dVar.q(this.f6552c0.S), solverVariableQ4, 0, 8);
                    }
                    if (z12 && this.f6559g[1] && !m0()) {
                        dVar.h(dVar.q(this.f6552c0.T), solverVariableQ6, 0, 8);
                    }
                }
                this.f6577p = false;
                this.f6579q = false;
                return;
            }
        }
        if (eVar != null) {
            eVar.f6382s++;
        }
        if (this.f6552c0 != null) {
            if (h0(0)) {
                ((d) this.f6552c0).z1(this, 0);
                zK0 = true;
            } else {
                zK0 = k0();
            }
            if (h0(1)) {
                ((d) this.f6552c0).z1(this, 1);
                zM0 = true;
            } else {
                zM0 = m0();
            }
            if (!zK0 && z11 && this.f6588u0 != 8 && this.Q.f6542f == null && this.S.f6542f == null) {
                dVar.h(dVar.q(this.f6552c0.S), solverVariableQ4, 0, 1);
            }
            if (!zM0 && z12 && this.f6588u0 != 8 && this.R.f6542f == null && this.T.f6542f == null && this.U == null) {
                dVar.h(dVar.q(this.f6552c0.T), solverVariableQ6, 0, 1);
            }
            z14 = zK0;
            z13 = zM0;
        } else {
            z13 = false;
            z14 = false;
        }
        int i21 = this.f6554d0;
        int i22 = this.f6576o0;
        if (i21 >= i22) {
            i22 = i21;
        }
        int i23 = this.f6556e0;
        int i24 = this.f6578p0;
        if (i23 >= i24) {
            i24 = i23;
        }
        DimensionBehaviour[] dimensionBehaviourArr2 = this.f6550b0;
        DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr2[0];
        DimensionBehaviour dimensionBehaviour4 = DimensionBehaviour.MATCH_CONSTRAINT;
        int i25 = i22;
        boolean z22 = dimensionBehaviour3 != dimensionBehaviour4;
        DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr2[1];
        int i26 = i24;
        SolverVariable solverVariable3 = solverVariableQ7;
        boolean z23 = dimensionBehaviour5 != dimensionBehaviour4;
        int i27 = this.f6560g0;
        this.H = i27;
        SolverVariable solverVariable4 = solverVariableQ6;
        float f10 = this.f6558f0;
        this.I = f10;
        SolverVariable solverVariable5 = solverVariableQ5;
        int i28 = this.f6591w;
        int i29 = this.f6593x;
        if (f10 > 0.0f && this.f6588u0 != 8) {
            if (dimensionBehaviour3 == dimensionBehaviour4 && i28 == 0) {
                i28 = 3;
            }
            if (dimensionBehaviour5 == dimensionBehaviour4 && i29 == 0) {
                i29 = 3;
            }
            if (dimensionBehaviour3 == dimensionBehaviour4 && dimensionBehaviour5 == dimensionBehaviour4) {
                i19 = 3;
                if (i28 == 3 && i29 == 3) {
                    s1(z11, z12, z22, z23);
                }
                i25 = i25;
                i10 = i26;
                z15 = true;
                int[] iArr = this.f6595y;
                iArr[0] = i28;
                iArr[1] = i29;
                this.f6561h = z15;
                if (z15) {
                    int i30 = this.H;
                    i11 = -1;
                    boolean z24 = i30 != 0 || i30 == -1;
                    if (z15 || !((i18 = this.H) == 1 || i18 == i11)) {
                        z16 = false;
                    } else {
                        z16 = true;
                    }
                    dimensionBehaviour = this.f6550b0[0];
                    dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour == dimensionBehaviour2 || !(this instanceof d)) {
                        z17 = false;
                    } else {
                        z17 = true;
                    }
                    if (z17) {
                        i12 = 0;
                    } else {
                        i12 = i25;
                    }
                    boolean z25 = !this.X.o();
                    boolean[] zArr2 = this.f6548a0;
                    boolean z26 = zArr2[0];
                    boolean z27 = zArr2[1];
                    if (this.f6585t != 2 || this.f6577p) {
                        solverVariable = solverVariableQ4;
                        solverVariable2 = solverVariableQ3;
                    } else if (!z10 || (jVar = this.f6555e) == null) {
                        constraintWidget3 = this.f6552c0;
                        if (constraintWidget3 != null) {
                            solverVariableQ = dVar.q(constraintWidget3.S);
                        } else {
                            solverVariableQ = null;
                        }
                        constraintWidget4 = this.f6552c0;
                        if (constraintWidget4 != null) {
                            solverVariableQ2 = dVar.q(constraintWidget4.Q);
                        } else {
                            solverVariableQ2 = null;
                        }
                        boolean z28 = this.f6559g[0];
                        dimensionBehaviourArr = this.f6550b0;
                        DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[0];
                        ConstraintAnchor constraintAnchor = this.Q;
                        ConstraintAnchor constraintAnchor2 = this.S;
                        int i31 = this.f6562h0;
                        int i32 = this.f6576o0;
                        int i33 = this.J[0];
                        float f11 = this.f6580q0;
                        if (dimensionBehaviourArr[1] == dimensionBehaviour4) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        solverVariable = solverVariableQ4;
                        solverVariable2 = solverVariableQ3;
                        i(dVar, true, z11, z12, z28, solverVariableQ2, solverVariableQ, dimensionBehaviour6, z17, constraintAnchor, constraintAnchor2, i31, i12, i32, i33, f11, z24, z18, z14, z13, z26, i28, i29, this.f6597z, this.A, this.B, z25);
                    } else {
                        DependencyNode dependencyNode3 = jVar.f6621h;
                        if (!dependencyNode3.f6611j || !jVar.f6622i.f6611j) {
                            constraintWidget3 = this.f6552c0;
                            if (constraintWidget3 != null) {
                                solverVariableQ = dVar.q(constraintWidget3.S);
                            } else {
                                solverVariableQ = null;
                            }
                            constraintWidget4 = this.f6552c0;
                            if (constraintWidget4 != null) {
                                solverVariableQ2 = dVar.q(constraintWidget4.Q);
                            } else {
                                solverVariableQ2 = null;
                            }
                            boolean z29 = this.f6559g[0];
                            dimensionBehaviourArr = this.f6550b0;
                            DimensionBehaviour dimensionBehaviour7 = dimensionBehaviourArr[0];
                            ConstraintAnchor constraintAnchor3 = this.Q;
                            ConstraintAnchor constraintAnchor4 = this.S;
                            int i34 = this.f6562h0;
                            int i35 = this.f6576o0;
                            int i36 = this.J[0];
                            float f12 = this.f6580q0;
                            if (dimensionBehaviourArr[1] == dimensionBehaviour4) {
                                z18 = true;
                            } else {
                                z18 = false;
                            }
                            solverVariable = solverVariableQ4;
                            solverVariable2 = solverVariableQ3;
                            i(dVar, true, z11, z12, z29, solverVariableQ2, solverVariableQ, dimensionBehaviour7, z17, constraintAnchor3, constraintAnchor4, i34, i12, i35, i36, f12, z24, z18, z14, z13, z26, i28, i29, this.f6597z, this.A, this.B, z25);
                        } else if (z10) {
                            dVar.f(solverVariableQ3, dependencyNode3.f6608g);
                            dVar.f(solverVariableQ4, this.f6555e.f6622i.f6608g);
                            if (this.f6552c0 != null && z11 && this.f6559g[0] && !k0()) {
                                dVar.h(dVar.q(this.f6552c0.S), solverVariableQ4, 0, 8);
                            }
                            solverVariable = solverVariableQ4;
                            solverVariable2 = solverVariableQ3;
                        } else {
                            solverVariable = solverVariableQ4;
                            solverVariable2 = solverVariableQ3;
                        }
                    }
                    if (z10) {
                        ?? r17 = this;
                        lVar = r17.f6557f;
                        if (lVar != null) {
                            dependencyNode = lVar.f6621h;
                            if (!dependencyNode.f6611j && lVar.f6622i.f6611j) {
                                dVar = dVar;
                                solverVariable5 = solverVariable5;
                                dVar.f(solverVariable5, dependencyNode.f6608g);
                                solverVariable4 = solverVariable4;
                                dVar.f(solverVariable4, r17.f6557f.f6622i.f6608g);
                                solverVariable3 = solverVariable3;
                                dVar.f(solverVariable3, r17.f6557f.f6666k.f6608g);
                                ConstraintWidget constraintWidget6 = r17.f6552c0;
                                if (constraintWidget6 == null || z13 || !z12) {
                                    i13 = 8;
                                    i14 = 0;
                                    i15 = 1;
                                } else {
                                    i15 = 1;
                                    if (r17.f6559g[1]) {
                                        i13 = 8;
                                        i14 = 0;
                                        dVar.h(dVar.q(constraintWidget6.T), solverVariable4, 0, 8);
                                    } else {
                                        i13 = 8;
                                        i14 = 0;
                                    }
                                }
                                i16 = i14;
                                r16 = r17;
                            }
                            if (r16.f6587u == 2) {
                                i17 = i14;
                            } else {
                                i17 = i16;
                            }
                            if (i17 == 0 && !r16.f6579q) {
                                ?? r10 = (r16.f6550b0[i15] == dimensionBehaviour2 && (r16 instanceof d)) ? i15 : i14;
                                if (r10 != 0) {
                                    i10 = i14;
                                }
                                ConstraintWidget constraintWidget7 = r16.f6552c0;
                                SolverVariable solverVariableQ8 = constraintWidget7 != null ? dVar.q(constraintWidget7.T) : null;
                                ConstraintWidget constraintWidget8 = r16.f6552c0;
                                SolverVariable solverVariableQ9 = constraintWidget8 != null ? dVar.q(constraintWidget8.R) : null;
                                if (r16.f6574n0 > 0 || r16.f6588u0 == i13) {
                                    ConstraintAnchor constraintAnchor5 = r16.U;
                                    if (constraintAnchor5.f6542f != null) {
                                        dVar.e(solverVariable3, solverVariable5, r(), i13);
                                        dVar.e(solverVariable3, dVar.q(r16.U.f6542f), r16.U.f(), i13);
                                        if (z12 != 0) {
                                            dVar.h(solverVariableQ8, dVar.q(r16.T), i14, 5);
                                        }
                                        r27 = i14;
                                    } else {
                                        if (r16.f6588u0 == i13) {
                                            dVar.e(solverVariable3, solverVariable5, constraintAnchor5.f(), i13);
                                        } else {
                                            dVar.e(solverVariable3, solverVariable5, r(), i13);
                                        }
                                        r27 = z25;
                                    }
                                } else {
                                    r27 = z25;
                                }
                                boolean z30 = r16.f6559g[i15];
                                DimensionBehaviour[] dimensionBehaviourArr3 = r16.f6550b0;
                                i(dVar, false, z12, z11, z30, solverVariableQ9, solverVariableQ8, dimensionBehaviourArr3[i15], r10, r16.R, r16.T, r16.f6564i0, i10, r16.f6578p0, r16.J[i15], r16.f6582r0, z16, dimensionBehaviourArr3[0] == dimensionBehaviour4, z13, z14, z27, i29, i28, r16.C, r16.D, r16.E, r27);
                            }
                            if (z15) {
                                if (this.H == 1) {
                                    dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                                } else {
                                    dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                                }
                            }
                            if (this.X.o()) {
                                dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
                            }
                            this.f6577p = false;
                            this.f6579q = false;
                        }
                        i13 = 8;
                        i14 = 0;
                        i15 = 1;
                        r15 = r17;
                    } else {
                        i13 = 8;
                        i14 = 0;
                        i15 = 1;
                        r15 = this;
                    }
                    i16 = i15;
                    r16 = r15;
                    if (r16.f6587u == 2) {
                        i17 = i14;
                    } else {
                        i17 = i16;
                    }
                    if (i17 == 0) {
                    }
                    if (z15) {
                        if (this.H == 1) {
                            dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                        } else {
                            dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                        }
                    }
                    if (this.X.o()) {
                        dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
                    }
                    this.f6577p = false;
                    this.f6579q = false;
                }
                i11 = -1;
                if (z15) {
                    z16 = false;
                } else {
                    z16 = false;
                }
                dimensionBehaviour = this.f6550b0[0];
                dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour == dimensionBehaviour2) {
                    z17 = false;
                } else {
                    z17 = false;
                }
                if (z17) {
                    i12 = 0;
                } else {
                    i12 = i25;
                }
                boolean z210 = !this.X.o();
                boolean[] zArr3 = this.f6548a0;
                boolean z211 = zArr3[0];
                boolean z212 = zArr3[1];
                if (this.f6585t != 2) {
                    solverVariable = solverVariableQ4;
                    solverVariable2 = solverVariableQ3;
                } else {
                    solverVariable = solverVariableQ4;
                    solverVariable2 = solverVariableQ3;
                }
                if (z10) {
                    ?? r18 = this;
                    lVar = r18.f6557f;
                    if (lVar != null) {
                        dependencyNode = lVar.f6621h;
                        if (!dependencyNode.f6611j) {
                        }
                    }
                    i13 = 8;
                    i14 = 0;
                    i15 = 1;
                    r15 = r18;
                } else {
                    i13 = 8;
                    i14 = 0;
                    i15 = 1;
                    r15 = this;
                }
                i16 = i15;
                r16 = r15;
                if (r16.f6587u == 2) {
                    i17 = i14;
                } else {
                    i17 = i16;
                }
                if (i17 == 0) {
                }
                if (z15) {
                    if (this.H == 1) {
                        dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                    } else {
                        dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                    }
                }
                if (this.X.o()) {
                    dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
                }
                this.f6577p = false;
                this.f6579q = false;
            }
            i19 = 3;
            if (dimensionBehaviour3 == dimensionBehaviour4 && i28 == i19) {
                this.H = 0;
                int i37 = (int) (f10 * i23);
                if (dimensionBehaviour5 != dimensionBehaviour4) {
                    i28 = 4;
                    i29 = i29;
                    i10 = i26;
                    z15 = false;
                    i25 = i37;
                } else {
                    i25 = i37;
                    i10 = i26;
                    z15 = true;
                }
            } else {
                if (dimensionBehaviour5 == dimensionBehaviour4 && i29 == i19) {
                    this.H = 1;
                    if (i27 == -1) {
                        this.I = 1.0f / f10;
                    }
                    int i38 = (int) (this.I * i21);
                    if (dimensionBehaviour3 != dimensionBehaviour4) {
                        i29 = 4;
                        i10 = i38;
                        i28 = i28;
                    } else {
                        i10 = i38;
                        i28 = i28;
                        i29 = i29;
                        i25 = i25;
                    }
                } else {
                    i25 = i25;
                    i10 = i26;
                }
                z15 = true;
            }
            int[] iArr2 = this.f6595y;
            iArr2[0] = i28;
            iArr2[1] = i29;
            this.f6561h = z15;
            if (z15) {
                int i39 = this.H;
                i11 = -1;
                if (i39 != 0) {
                }
                if (z15) {
                    z16 = false;
                } else {
                    z16 = false;
                }
                dimensionBehaviour = this.f6550b0[0];
                dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour == dimensionBehaviour2) {
                    z17 = false;
                } else {
                    z17 = false;
                }
                if (z17) {
                    i12 = 0;
                } else {
                    i12 = i25;
                }
                boolean z213 = !this.X.o();
                boolean[] zArr4 = this.f6548a0;
                boolean z214 = zArr4[0];
                boolean z215 = zArr4[1];
                if (this.f6585t != 2) {
                    solverVariable = solverVariableQ4;
                    solverVariable2 = solverVariableQ3;
                } else {
                    solverVariable = solverVariableQ4;
                    solverVariable2 = solverVariableQ3;
                }
                if (z10) {
                    ?? r19 = this;
                    lVar = r19.f6557f;
                    if (lVar != null) {
                        dependencyNode = lVar.f6621h;
                        if (!dependencyNode.f6611j) {
                        }
                    }
                    i13 = 8;
                    i14 = 0;
                    i15 = 1;
                    r15 = r19;
                } else {
                    i13 = 8;
                    i14 = 0;
                    i15 = 1;
                    r15 = this;
                }
                i16 = i15;
                r16 = r15;
                if (r16.f6587u == 2) {
                    i17 = i14;
                } else {
                    i17 = i16;
                }
                if (i17 == 0) {
                }
                if (z15) {
                    if (this.H == 1) {
                        dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                    } else {
                        dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                    }
                }
                if (this.X.o()) {
                    dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
                }
                this.f6577p = false;
                this.f6579q = false;
            }
            i11 = -1;
            if (z15) {
                z16 = false;
            } else {
                z16 = false;
            }
            dimensionBehaviour = this.f6550b0[0];
            dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour == dimensionBehaviour2) {
                z17 = false;
            } else {
                z17 = false;
            }
            if (z17) {
                i12 = 0;
            } else {
                i12 = i25;
            }
            boolean z216 = !this.X.o();
            boolean[] zArr5 = this.f6548a0;
            boolean z217 = zArr5[0];
            boolean z218 = zArr5[1];
            if (this.f6585t != 2) {
                solverVariable = solverVariableQ4;
                solverVariable2 = solverVariableQ3;
            } else {
                solverVariable = solverVariableQ4;
                solverVariable2 = solverVariableQ3;
            }
            if (z10) {
                ?? r110 = this;
                lVar = r110.f6557f;
                if (lVar != null) {
                    dependencyNode = lVar.f6621h;
                    if (!dependencyNode.f6611j) {
                    }
                }
                i13 = 8;
                i14 = 0;
                i15 = 1;
                r15 = r110;
            } else {
                i13 = 8;
                i14 = 0;
                i15 = 1;
                r15 = this;
            }
            i16 = i15;
            r16 = r15;
            if (r16.f6587u == 2) {
                i17 = i14;
            } else {
                i17 = i16;
            }
            if (i17 == 0) {
            }
            if (z15) {
                if (this.H == 1) {
                    dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                } else {
                    dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                }
            }
            if (this.X.o()) {
                dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
            }
            this.f6577p = false;
            this.f6579q = false;
        }
        i28 = i28;
        i29 = i29;
        i10 = i26;
        z15 = false;
        int[] iArr3 = this.f6595y;
        iArr3[0] = i28;
        iArr3[1] = i29;
        this.f6561h = z15;
        if (z15) {
            int i310 = this.H;
            i11 = -1;
            if (i310 != 0) {
            }
            if (z15) {
                z16 = false;
            } else {
                z16 = false;
            }
            dimensionBehaviour = this.f6550b0[0];
            dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour == dimensionBehaviour2) {
                z17 = false;
            } else {
                z17 = false;
            }
            if (z17) {
                i12 = 0;
            } else {
                i12 = i25;
            }
            boolean z219 = !this.X.o();
            boolean[] zArr6 = this.f6548a0;
            boolean z2110 = zArr6[0];
            boolean z2111 = zArr6[1];
            if (this.f6585t != 2) {
                solverVariable = solverVariableQ4;
                solverVariable2 = solverVariableQ3;
            } else {
                solverVariable = solverVariableQ4;
                solverVariable2 = solverVariableQ3;
            }
            if (z10) {
                ?? r111 = this;
                lVar = r111.f6557f;
                if (lVar != null) {
                    dependencyNode = lVar.f6621h;
                    if (!dependencyNode.f6611j) {
                    }
                }
                i13 = 8;
                i14 = 0;
                i15 = 1;
                r15 = r111;
            } else {
                i13 = 8;
                i14 = 0;
                i15 = 1;
                r15 = this;
            }
            i16 = i15;
            r16 = r15;
            if (r16.f6587u == 2) {
                i17 = i14;
            } else {
                i17 = i16;
            }
            if (i17 == 0) {
            }
            if (z15) {
                if (this.H == 1) {
                    dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                } else {
                    dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                }
            }
            if (this.X.o()) {
                dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
            }
            this.f6577p = false;
            this.f6579q = false;
        }
        i11 = -1;
        if (z15) {
            z16 = false;
        } else {
            z16 = false;
        }
        dimensionBehaviour = this.f6550b0[0];
        dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour == dimensionBehaviour2) {
            z17 = false;
        } else {
            z17 = false;
        }
        if (z17) {
            i12 = 0;
        } else {
            i12 = i25;
        }
        boolean z2112 = !this.X.o();
        boolean[] zArr7 = this.f6548a0;
        boolean z2113 = zArr7[0];
        boolean z2114 = zArr7[1];
        if (this.f6585t != 2) {
            solverVariable = solverVariableQ4;
            solverVariable2 = solverVariableQ3;
        } else {
            solverVariable = solverVariableQ4;
            solverVariable2 = solverVariableQ3;
        }
        if (z10) {
            ?? r112 = this;
            lVar = r112.f6557f;
            if (lVar != null) {
                dependencyNode = lVar.f6621h;
                if (!dependencyNode.f6611j) {
                }
            }
            i13 = 8;
            i14 = 0;
            i15 = 1;
            r15 = r112;
        } else {
            i13 = 8;
            i14 = 0;
            i15 = 1;
            r15 = this;
        }
        i16 = i15;
        r16 = r15;
        if (r16.f6587u == 2) {
            i17 = i14;
        } else {
            i17 = i16;
        }
        if (i17 == 0) {
        }
        if (z15) {
            if (this.H == 1) {
                dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
            } else {
                dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
            }
        }
        if (this.X.o()) {
            dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
        }
        this.f6577p = false;
        this.f6579q = false;
    }

    public void g0(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i10, int i11) {
        q(type).b(constraintWidget.q(type2), i10, i11, true);
    }

    public void g1(ConstraintWidget constraintWidget) {
        this.f6552c0 = constraintWidget;
    }

    public boolean h() {
        return this.f6588u0 != 8;
    }

    public void h1(float f10) {
        this.f6582r0 = f10;
    }

    public boolean i0() {
        return this.f6581r;
    }

    public void i1(int i10) {
        this.K0 = i10;
    }

    public void j(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        k(type, constraintWidget, type2, 0);
    }

    public boolean j0(int i10) {
        return this.f6548a0[i10];
    }

    public void j1(int i10, int i11) {
        this.f6564i0 = i10;
        int i12 = i11 - i10;
        this.f6556e0 = i12;
        int i13 = this.f6578p0;
        if (i12 < i13) {
            this.f6556e0 = i13;
        }
    }

    public void k(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i10) {
        ConstraintAnchor.Type type3;
        ConstraintAnchor.Type type4;
        boolean z10;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER;
        if (type == type5) {
            if (type2 != type5) {
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
                if (type2 == type6 || type2 == ConstraintAnchor.Type.RIGHT) {
                    k(type6, constraintWidget, type2, 0);
                    k(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0);
                    q(type5).a(constraintWidget.q(type2), 0);
                    return;
                }
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.TOP;
                if (type2 == type7 || type2 == ConstraintAnchor.Type.BOTTOM) {
                    k(type7, constraintWidget, type2, 0);
                    k(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0);
                    q(type5).a(constraintWidget.q(type2), 0);
                    return;
                }
                return;
            }
            ConstraintAnchor.Type type8 = ConstraintAnchor.Type.LEFT;
            ConstraintAnchor constraintAnchorQ = q(type8);
            ConstraintAnchor.Type type9 = ConstraintAnchor.Type.RIGHT;
            ConstraintAnchor constraintAnchorQ2 = q(type9);
            ConstraintAnchor.Type type10 = ConstraintAnchor.Type.TOP;
            ConstraintAnchor constraintAnchorQ3 = q(type10);
            ConstraintAnchor.Type type11 = ConstraintAnchor.Type.BOTTOM;
            ConstraintAnchor constraintAnchorQ4 = q(type11);
            boolean z11 = true;
            if ((constraintAnchorQ == null || !constraintAnchorQ.o()) && (constraintAnchorQ2 == null || !constraintAnchorQ2.o())) {
                k(type8, constraintWidget, type8, 0);
                k(type9, constraintWidget, type9, 0);
                z10 = true;
            } else {
                z10 = false;
            }
            if ((constraintAnchorQ3 == null || !constraintAnchorQ3.o()) && (constraintAnchorQ4 == null || !constraintAnchorQ4.o())) {
                k(type10, constraintWidget, type10, 0);
                k(type11, constraintWidget, type11, 0);
            } else {
                z11 = false;
            }
            if (z10 && z11) {
                q(type5).a(constraintWidget.q(type5), 0);
                return;
            }
            if (z10) {
                ConstraintAnchor.Type type12 = ConstraintAnchor.Type.CENTER_X;
                q(type12).a(constraintWidget.q(type12), 0);
                return;
            } else {
                if (z11) {
                    ConstraintAnchor.Type type13 = ConstraintAnchor.Type.CENTER_Y;
                    q(type13).a(constraintWidget.q(type13), 0);
                    return;
                }
                return;
            }
        }
        ConstraintAnchor.Type type14 = ConstraintAnchor.Type.CENTER_X;
        if (type == type14 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor constraintAnchorQ5 = q(type4);
            ConstraintAnchor constraintAnchorQ6 = constraintWidget.q(type2);
            ConstraintAnchor constraintAnchorQ7 = q(ConstraintAnchor.Type.RIGHT);
            constraintAnchorQ5.a(constraintAnchorQ6, 0);
            constraintAnchorQ7.a(constraintAnchorQ6, 0);
            q(type14).a(constraintAnchorQ6, 0);
            return;
        }
        ConstraintAnchor.Type type15 = ConstraintAnchor.Type.CENTER_Y;
        if (type == type15 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor constraintAnchorQ8 = constraintWidget.q(type2);
            q(type3).a(constraintAnchorQ8, 0);
            q(ConstraintAnchor.Type.BOTTOM).a(constraintAnchorQ8, 0);
            q(type15).a(constraintAnchorQ8, 0);
            return;
        }
        if (type == type14 && type2 == type14) {
            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.LEFT;
            q(type16).a(constraintWidget.q(type16), 0);
            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.RIGHT;
            q(type17).a(constraintWidget.q(type17), 0);
            q(type14).a(constraintWidget.q(type2), 0);
            return;
        }
        if (type == type15 && type2 == type15) {
            ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
            q(type18).a(constraintWidget.q(type18), 0);
            ConstraintAnchor.Type type19 = ConstraintAnchor.Type.BOTTOM;
            q(type19).a(constraintWidget.q(type19), 0);
            q(type15).a(constraintWidget.q(type2), 0);
            return;
        }
        ConstraintAnchor constraintAnchorQ9 = q(type);
        ConstraintAnchor constraintAnchorQ10 = constraintWidget.q(type2);
        if (constraintAnchorQ9.p(constraintAnchorQ10)) {
            ConstraintAnchor.Type type20 = ConstraintAnchor.Type.BASELINE;
            if (type == type20) {
                ConstraintAnchor constraintAnchorQ11 = q(ConstraintAnchor.Type.TOP);
                ConstraintAnchor constraintAnchorQ12 = q(ConstraintAnchor.Type.BOTTOM);
                if (constraintAnchorQ11 != null) {
                    constraintAnchorQ11.q();
                }
                if (constraintAnchorQ12 != null) {
                    constraintAnchorQ12.q();
                }
            } else if (type == ConstraintAnchor.Type.TOP || type == ConstraintAnchor.Type.BOTTOM) {
                ConstraintAnchor constraintAnchorQ13 = q(type20);
                if (constraintAnchorQ13 != null) {
                    constraintAnchorQ13.q();
                }
                ConstraintAnchor constraintAnchorQ14 = q(type5);
                if (constraintAnchorQ14.j() != constraintAnchorQ10) {
                    constraintAnchorQ14.q();
                }
                ConstraintAnchor constraintAnchorG = q(type).g();
                ConstraintAnchor constraintAnchorQ15 = q(type15);
                if (constraintAnchorQ15.o()) {
                    constraintAnchorG.q();
                    constraintAnchorQ15.q();
                }
            } else if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                ConstraintAnchor constraintAnchorQ16 = q(type5);
                if (constraintAnchorQ16.j() != constraintAnchorQ10) {
                    constraintAnchorQ16.q();
                }
                ConstraintAnchor constraintAnchorG2 = q(type).g();
                ConstraintAnchor constraintAnchorQ17 = q(type14);
                if (constraintAnchorQ17.o()) {
                    constraintAnchorG2.q();
                    constraintAnchorQ17.q();
                }
            }
            constraintAnchorQ9.a(constraintAnchorQ10, i10);
        }
    }

    public boolean k0() {
        ConstraintAnchor constraintAnchor = this.Q;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f6542f;
        if (constraintAnchor2 != null && constraintAnchor2.f6542f == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.S;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6542f;
        return constraintAnchor4 != null && constraintAnchor4.f6542f == constraintAnchor3;
    }

    public void k1(DimensionBehaviour dimensionBehaviour) {
        this.f6550b0[1] = dimensionBehaviour;
    }

    public void l(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10) {
        if (constraintAnchor.h() == this) {
            k(constraintAnchor.k(), constraintAnchor2.h(), constraintAnchor2.k(), i10);
        }
    }

    public boolean l0() {
        return this.M;
    }

    public void l1(int i10, int i11, int i12, float f10) {
        this.f6593x = i10;
        this.C = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.D = i12;
        this.E = f10;
        if (f10 <= 0.0f || f10 >= 1.0f || i10 != 0) {
            return;
        }
        this.f6593x = 2;
    }

    public void m(ConstraintWidget constraintWidget, float f10, int i10) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        g0(type, constraintWidget, type, i10, 0);
        this.K = f10;
    }

    public boolean m0() {
        ConstraintAnchor constraintAnchor = this.R;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f6542f;
        if (constraintAnchor2 != null && constraintAnchor2.f6542f == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.T;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6542f;
        return constraintAnchor4 != null && constraintAnchor4.f6542f == constraintAnchor3;
    }

    public void m1(float f10) {
        this.N0[1] = f10;
    }

    public void n(ConstraintWidget constraintWidget, HashMap map) {
        this.f6585t = constraintWidget.f6585t;
        this.f6587u = constraintWidget.f6587u;
        this.f6591w = constraintWidget.f6591w;
        this.f6593x = constraintWidget.f6593x;
        int[] iArr = this.f6595y;
        int[] iArr2 = constraintWidget.f6595y;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.f6597z = constraintWidget.f6597z;
        this.A = constraintWidget.A;
        this.C = constraintWidget.C;
        this.D = constraintWidget.D;
        this.E = constraintWidget.E;
        this.F = constraintWidget.F;
        this.G = constraintWidget.G;
        this.H = constraintWidget.H;
        this.I = constraintWidget.I;
        int[] iArr3 = constraintWidget.J;
        this.J = Arrays.copyOf(iArr3, iArr3.length);
        this.K = constraintWidget.K;
        this.L = constraintWidget.L;
        this.M = constraintWidget.M;
        this.Q.q();
        this.R.q();
        this.S.q();
        this.T.q();
        this.U.q();
        this.V.q();
        this.W.q();
        this.X.q();
        this.f6550b0 = (DimensionBehaviour[]) Arrays.copyOf(this.f6550b0, 2);
        this.f6552c0 = this.f6552c0 == null ? null : (ConstraintWidget) map.get(constraintWidget.f6552c0);
        this.f6554d0 = constraintWidget.f6554d0;
        this.f6556e0 = constraintWidget.f6556e0;
        this.f6558f0 = constraintWidget.f6558f0;
        this.f6560g0 = constraintWidget.f6560g0;
        this.f6562h0 = constraintWidget.f6562h0;
        this.f6564i0 = constraintWidget.f6564i0;
        this.f6566j0 = constraintWidget.f6566j0;
        this.f6568k0 = constraintWidget.f6568k0;
        this.f6570l0 = constraintWidget.f6570l0;
        this.f6572m0 = constraintWidget.f6572m0;
        this.f6574n0 = constraintWidget.f6574n0;
        this.f6576o0 = constraintWidget.f6576o0;
        this.f6578p0 = constraintWidget.f6578p0;
        this.f6580q0 = constraintWidget.f6580q0;
        this.f6582r0 = constraintWidget.f6582r0;
        this.f6584s0 = constraintWidget.f6584s0;
        this.f6586t0 = constraintWidget.f6586t0;
        this.f6588u0 = constraintWidget.f6588u0;
        this.f6590v0 = constraintWidget.f6590v0;
        this.f6592w0 = constraintWidget.f6592w0;
        this.f6594x0 = constraintWidget.f6594x0;
        this.f6596y0 = constraintWidget.f6596y0;
        this.f6598z0 = constraintWidget.f6598z0;
        this.A0 = constraintWidget.A0;
        this.B0 = constraintWidget.B0;
        this.C0 = constraintWidget.C0;
        this.D0 = constraintWidget.D0;
        this.E0 = constraintWidget.E0;
        this.F0 = constraintWidget.F0;
        this.G0 = constraintWidget.G0;
        this.H0 = constraintWidget.H0;
        this.J0 = constraintWidget.J0;
        this.K0 = constraintWidget.K0;
        this.L0 = constraintWidget.L0;
        this.M0 = constraintWidget.M0;
        float[] fArr = this.N0;
        float[] fArr2 = constraintWidget.N0;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.O0;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.O0;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.P0;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.P0;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget2 = constraintWidget.Q0;
        this.Q0 = constraintWidget2 == null ? null : (ConstraintWidget) map.get(constraintWidget2);
        ConstraintWidget constraintWidget3 = constraintWidget.R0;
        this.R0 = constraintWidget3 != null ? (ConstraintWidget) map.get(constraintWidget3) : null;
    }

    public boolean n0() {
        return this.N;
    }

    public void n1(int i10) {
        this.f6588u0 = i10;
    }

    public void o(androidx.constraintlayout.core.d dVar) {
        dVar.q(this.Q);
        dVar.q(this.R);
        dVar.q(this.S);
        dVar.q(this.T);
        if (this.f6574n0 > 0) {
            dVar.q(this.U);
        }
    }

    public boolean o0() {
        return this.f6563i && this.f6588u0 != 8;
    }

    public void o1(int i10) {
        this.f6554d0 = i10;
        int i11 = this.f6576o0;
        if (i10 < i11) {
            this.f6554d0 = i11;
        }
    }

    public void p() {
        if (this.f6555e == null) {
            this.f6555e = new j(this);
        }
        if (this.f6557f == null) {
            this.f6557f = new l(this);
        }
    }

    public boolean p0() {
        return this.f6577p || (this.Q.n() && this.S.n());
    }

    public void p1(int i10) {
        if (i10 < 0 || i10 > 3) {
            return;
        }
        this.f6589v = i10;
    }

    public ConstraintAnchor q(ConstraintAnchor.Type type) {
        switch (a.f6599a[type.ordinal()]) {
            case 1:
                return this.Q;
            case 2:
                return this.R;
            case 3:
                return this.S;
            case 4:
                return this.T;
            case 5:
                return this.U;
            case 6:
                return this.X;
            case 7:
                return this.V;
            case 8:
                return this.W;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public boolean q0() {
        return this.f6579q || (this.R.n() && this.T.n());
    }

    public void q1(int i10) {
        this.f6562h0 = i10;
    }

    public int r() {
        return this.f6574n0;
    }

    public boolean r0() {
        return this.f6583s;
    }

    public void r1(int i10) {
        this.f6564i0 = i10;
    }

    public float s(int i10) {
        if (i10 == 0) {
            return this.f6580q0;
        }
        if (i10 == 1) {
            return this.f6582r0;
        }
        return -1.0f;
    }

    public void s0() {
        this.f6581r = true;
    }

    public void s1(boolean z10, boolean z11, boolean z12, boolean z13) {
        if (this.H == -1) {
            if (z12 && !z13) {
                this.H = 0;
            } else if (!z12 && z13) {
                this.H = 1;
                if (this.f6560g0 == -1) {
                    this.I = 1.0f / this.I;
                }
            }
        }
        if (this.H == 0 && (!this.R.o() || !this.T.o())) {
            this.H = 1;
        } else if (this.H == 1 && (!this.Q.o() || !this.S.o())) {
            this.H = 0;
        }
        if (this.H == -1 && (!this.R.o() || !this.T.o() || !this.Q.o() || !this.S.o())) {
            if (this.R.o() && this.T.o()) {
                this.H = 0;
            } else if (this.Q.o() && this.S.o()) {
                this.I = 1.0f / this.I;
                this.H = 1;
            }
        }
        if (this.H == -1) {
            int i10 = this.f6597z;
            if (i10 > 0 && this.C == 0) {
                this.H = 0;
            } else {
                if (i10 != 0 || this.C <= 0) {
                    return;
                }
                this.I = 1.0f / this.I;
                this.H = 1;
            }
        }
    }

    public int t() {
        return a0() + this.f6556e0;
    }

    public void t0() {
        this.f6583s = true;
    }

    public void t1(boolean z10, boolean z11) {
        int i10;
        int i11;
        boolean zK = z10 & this.f6555e.k();
        boolean zK2 = z11 & this.f6557f.k();
        j jVar = this.f6555e;
        int i12 = jVar.f6621h.f6608g;
        l lVar = this.f6557f;
        int i13 = lVar.f6621h.f6608g;
        int i14 = jVar.f6622i.f6608g;
        int i15 = lVar.f6622i.f6608g;
        int i16 = i15 - i13;
        if (i14 - i12 < 0 || i16 < 0 || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE || i15 == Integer.MIN_VALUE || i15 == Integer.MAX_VALUE) {
            i14 = 0;
            i12 = 0;
            i15 = 0;
            i13 = 0;
        }
        int i17 = i14 - i12;
        int i18 = i15 - i13;
        if (zK) {
            this.f6562h0 = i12;
        }
        if (zK2) {
            this.f6564i0 = i13;
        }
        if (this.f6588u0 == 8) {
            this.f6554d0 = 0;
            this.f6556e0 = 0;
            return;
        }
        if (zK) {
            if (this.f6550b0[0] == DimensionBehaviour.FIXED && i17 < (i11 = this.f6554d0)) {
                i17 = i11;
            }
            this.f6554d0 = i17;
            int i19 = this.f6576o0;
            if (i17 < i19) {
                this.f6554d0 = i19;
            }
        }
        if (zK2) {
            if (this.f6550b0[1] == DimensionBehaviour.FIXED && i18 < (i10 = this.f6556e0)) {
                i18 = i10;
            }
            this.f6556e0 = i18;
            int i20 = this.f6578p0;
            if (i18 < i20) {
                this.f6556e0 = i20;
            }
        }
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        String str2 = "";
        if (this.f6594x0 != null) {
            str = "type: " + this.f6594x0 + " ";
        } else {
            str = "";
        }
        sb2.append(str);
        if (this.f6592w0 != null) {
            str2 = "id: " + this.f6592w0 + " ";
        }
        sb2.append(str2);
        sb2.append("(");
        sb2.append(this.f6562h0);
        sb2.append(", ");
        sb2.append(this.f6564i0);
        sb2.append(") - (");
        sb2.append(this.f6554d0);
        sb2.append(" x ");
        sb2.append(this.f6556e0);
        sb2.append(")");
        return sb2.toString();
    }

    public Object u() {
        return this.f6584s0;
    }

    public boolean u0() {
        DimensionBehaviour[] dimensionBehaviourArr = this.f6550b0;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour2 && dimensionBehaviourArr[1] == dimensionBehaviour2;
    }

    public void u1(androidx.constraintlayout.core.d dVar, boolean z10) {
        l lVar;
        j jVar;
        int iY = dVar.y(this.Q);
        int iY2 = dVar.y(this.R);
        int iY3 = dVar.y(this.S);
        int iY4 = dVar.y(this.T);
        if (z10 && (jVar = this.f6555e) != null) {
            DependencyNode dependencyNode = jVar.f6621h;
            if (dependencyNode.f6611j) {
                DependencyNode dependencyNode2 = jVar.f6622i;
                if (dependencyNode2.f6611j) {
                    iY = dependencyNode.f6608g;
                    iY3 = dependencyNode2.f6608g;
                }
            }
        }
        if (z10 && (lVar = this.f6557f) != null) {
            DependencyNode dependencyNode3 = lVar.f6621h;
            if (dependencyNode3.f6611j) {
                DependencyNode dependencyNode4 = lVar.f6622i;
                if (dependencyNode4.f6611j) {
                    iY2 = dependencyNode3.f6608g;
                    iY4 = dependencyNode4.f6608g;
                }
            }
        }
        int i10 = iY4 - iY2;
        if (iY3 - iY < 0 || i10 < 0 || iY == Integer.MIN_VALUE || iY == Integer.MAX_VALUE || iY2 == Integer.MIN_VALUE || iY2 == Integer.MAX_VALUE || iY3 == Integer.MIN_VALUE || iY3 == Integer.MAX_VALUE || iY4 == Integer.MIN_VALUE || iY4 == Integer.MAX_VALUE) {
            iY = 0;
            iY4 = 0;
            iY2 = 0;
            iY3 = 0;
        }
        N0(iY, iY2, iY3, iY4);
    }

    public String v() {
        return this.f6592w0;
    }

    public void v0() {
        this.Q.q();
        this.R.q();
        this.S.q();
        this.T.q();
        this.U.q();
        this.V.q();
        this.W.q();
        this.X.q();
        this.f6552c0 = null;
        this.K = 0.0f;
        this.f6554d0 = 0;
        this.f6556e0 = 0;
        this.f6558f0 = 0.0f;
        this.f6560g0 = -1;
        this.f6562h0 = 0;
        this.f6564i0 = 0;
        this.f6570l0 = 0;
        this.f6572m0 = 0;
        this.f6574n0 = 0;
        this.f6576o0 = 0;
        this.f6578p0 = 0;
        float f10 = U0;
        this.f6580q0 = f10;
        this.f6582r0 = f10;
        DimensionBehaviour[] dimensionBehaviourArr = this.f6550b0;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.f6584s0 = null;
        this.f6586t0 = 0;
        this.f6588u0 = 0;
        this.f6594x0 = null;
        this.G0 = false;
        this.H0 = false;
        this.J0 = 0;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        float[] fArr = this.N0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f6585t = -1;
        this.f6587u = -1;
        int[] iArr = this.J;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f6591w = 0;
        this.f6593x = 0;
        this.B = 1.0f;
        this.E = 1.0f;
        this.A = Integer.MAX_VALUE;
        this.D = Integer.MAX_VALUE;
        this.f6597z = 0;
        this.C = 0;
        this.f6561h = false;
        this.H = -1;
        this.I = 1.0f;
        this.I0 = false;
        boolean[] zArr = this.f6559g;
        zArr[0] = true;
        zArr[1] = true;
        this.N = false;
        boolean[] zArr2 = this.f6548a0;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f6563i = true;
        int[] iArr2 = this.f6595y;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.f6569l = -1;
        this.f6571m = -1;
    }

    public DimensionBehaviour w(int i10) {
        if (i10 == 0) {
            return C();
        }
        if (i10 == 1) {
            return V();
        }
        return null;
    }

    public void w0() {
        x0();
        h1(U0);
        Q0(U0);
    }

    public float x() {
        return this.f6558f0;
    }

    public void x0() {
        ConstraintWidget constraintWidgetM = M();
        if (constraintWidgetM != null && (constraintWidgetM instanceof d) && ((d) M()).Q1()) {
            return;
        }
        int size = this.Z.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((ConstraintAnchor) this.Z.get(i10)).q();
        }
    }

    public int y() {
        return this.f6560g0;
    }

    public void y0() {
        this.f6577p = false;
        this.f6579q = false;
        this.f6581r = false;
        this.f6583s = false;
        int size = this.Z.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((ConstraintAnchor) this.Z.get(i10)).r();
        }
    }

    public int z() {
        if (this.f6588u0 == 8) {
            return 0;
        }
        return this.f6556e0;
    }

    public void z0(androidx.constraintlayout.core.c cVar) {
        this.Q.s(cVar);
        this.R.s(cVar);
        this.S.s(cVar);
        this.T.s(cVar);
        this.U.s(cVar);
        this.X.s(cVar);
        this.V.s(cVar);
        this.W.s(cVar);
    }
}
