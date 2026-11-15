package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.motion.widget.MotionLayout;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class b {

    private static final int[] f7444h = {0, 4, 8};

    private static SparseIntArray f7445i = new SparseIntArray();

    private static SparseIntArray f7446j = new SparseIntArray();

    private boolean f7447a;

    public String f7448b;

    public String f7449c = "";

    public int f7450d = 0;

    private HashMap f7451e = new HashMap();

    private boolean f7452f = true;

    private HashMap f7453g = new HashMap();

    public static class a {

        int f7454a;

        String f7455b;

        public final d f7456c = new d();

        public final c f7457d = new c();

        public final C0056b f7458e = new C0056b();

        public final e f7459f = new e();

        public HashMap f7460g = new HashMap();

        C0055a f7461h;

        static class C0055a {

            int[] f7462a = new int[10];

            int[] f7463b = new int[10];

            int f7464c = 0;

            int[] f7465d = new int[10];

            float[] f7466e = new float[10];

            int f7467f = 0;

            int[] f7468g = new int[5];

            String[] f7469h = new String[5];

            int f7470i = 0;

            int[] f7471j = new int[4];

            boolean[] f7472k = new boolean[4];

            int f7473l = 0;

            C0055a() {
            }

            void a(int i10, float f10) {
                int i11 = this.f7467f;
                int[] iArr = this.f7465d;
                if (i11 >= iArr.length) {
                    this.f7465d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f7466e;
                    this.f7466e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.f7465d;
                int i12 = this.f7467f;
                iArr2[i12] = i10;
                float[] fArr2 = this.f7466e;
                this.f7467f = i12 + 1;
                fArr2[i12] = f10;
            }

            void b(int i10, int i11) {
                int i12 = this.f7464c;
                int[] iArr = this.f7462a;
                if (i12 >= iArr.length) {
                    this.f7462a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.f7463b;
                    this.f7463b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f7462a;
                int i13 = this.f7464c;
                iArr3[i13] = i10;
                int[] iArr4 = this.f7463b;
                this.f7464c = i13 + 1;
                iArr4[i13] = i11;
            }

            void c(int i10, String str) {
                int i11 = this.f7470i;
                int[] iArr = this.f7468g;
                if (i11 >= iArr.length) {
                    this.f7468g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f7469h;
                    this.f7469h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.f7468g;
                int i12 = this.f7470i;
                iArr2[i12] = i10;
                String[] strArr2 = this.f7469h;
                this.f7470i = i12 + 1;
                strArr2[i12] = str;
            }

            void d(int i10, boolean z10) {
                int i11 = this.f7473l;
                int[] iArr = this.f7471j;
                if (i11 >= iArr.length) {
                    this.f7471j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.f7472k;
                    this.f7472k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.f7471j;
                int i12 = this.f7473l;
                iArr2[i12] = i10;
                boolean[] zArr2 = this.f7472k;
                this.f7473l = i12 + 1;
                zArr2[i12] = z10;
            }

            void e(a aVar) {
                for (int i10 = 0; i10 < this.f7464c; i10++) {
                    b.P(aVar, this.f7462a[i10], this.f7463b[i10]);
                }
                for (int i11 = 0; i11 < this.f7467f; i11++) {
                    b.O(aVar, this.f7465d[i11], this.f7466e[i11]);
                }
                for (int i12 = 0; i12 < this.f7470i; i12++) {
                    b.Q(aVar, this.f7468g[i12], this.f7469h[i12]);
                }
                for (int i13 = 0; i13 < this.f7473l; i13++) {
                    b.R(aVar, this.f7471j[i13], this.f7472k[i13]);
                }
            }
        }

        public void g(int i10, ConstraintLayout.b bVar) {
            this.f7454a = i10;
            C0056b c0056b = this.f7458e;
            c0056b.f7493j = bVar.f7361e;
            c0056b.f7495k = bVar.f7363f;
            c0056b.f7497l = bVar.f7365g;
            c0056b.f7499m = bVar.f7367h;
            c0056b.f7501n = bVar.f7369i;
            c0056b.f7503o = bVar.f7371j;
            c0056b.f7505p = bVar.f7373k;
            c0056b.f7507q = bVar.f7375l;
            c0056b.f7509r = bVar.f7377m;
            c0056b.f7510s = bVar.f7379n;
            c0056b.f7511t = bVar.f7381o;
            c0056b.f7512u = bVar.f7389s;
            c0056b.f7513v = bVar.f7391t;
            c0056b.f7514w = bVar.f7393u;
            c0056b.f7515x = bVar.f7395v;
            c0056b.f7516y = bVar.G;
            c0056b.f7517z = bVar.H;
            c0056b.A = bVar.I;
            c0056b.B = bVar.f7383p;
            c0056b.C = bVar.f7385q;
            c0056b.D = bVar.f7387r;
            c0056b.E = bVar.X;
            c0056b.F = bVar.Y;
            c0056b.G = bVar.Z;
            c0056b.f7489h = bVar.f7357c;
            c0056b.f7485f = bVar.f7353a;
            c0056b.f7487g = bVar.f7355b;
            c0056b.f7481d = ((ViewGroup.MarginLayoutParams) bVar).width;
            c0056b.f7483e = ((ViewGroup.MarginLayoutParams) bVar).height;
            c0056b.H = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            c0056b.I = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
            c0056b.J = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            c0056b.K = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
            c0056b.N = bVar.D;
            c0056b.V = bVar.M;
            c0056b.W = bVar.L;
            c0056b.Y = bVar.O;
            c0056b.X = bVar.N;
            c0056b.f7502n0 = bVar.f7354a0;
            c0056b.f7504o0 = bVar.f7356b0;
            c0056b.Z = bVar.P;
            c0056b.f7476a0 = bVar.Q;
            c0056b.f7478b0 = bVar.T;
            c0056b.f7480c0 = bVar.U;
            c0056b.f7482d0 = bVar.R;
            c0056b.f7484e0 = bVar.S;
            c0056b.f7486f0 = bVar.V;
            c0056b.f7488g0 = bVar.W;
            c0056b.f7500m0 = bVar.f7358c0;
            c0056b.P = bVar.f7399x;
            c0056b.R = bVar.f7401z;
            c0056b.O = bVar.f7397w;
            c0056b.Q = bVar.f7400y;
            c0056b.T = bVar.A;
            c0056b.S = bVar.B;
            c0056b.U = bVar.C;
            c0056b.f7508q0 = bVar.f7360d0;
            c0056b.L = bVar.getMarginEnd();
            this.f7458e.M = bVar.getMarginStart();
        }

        public void h(int i10, Constraints.a aVar) {
            g(i10, aVar);
            this.f7456c.f7536d = aVar.f7412x0;
            e eVar = this.f7459f;
            eVar.f7540b = aVar.A0;
            eVar.f7541c = aVar.B0;
            eVar.f7542d = aVar.C0;
            eVar.f7543e = aVar.D0;
            eVar.f7544f = aVar.E0;
            eVar.f7545g = aVar.F0;
            eVar.f7546h = aVar.G0;
            eVar.f7548j = aVar.H0;
            eVar.f7549k = aVar.I0;
            eVar.f7550l = aVar.J0;
            eVar.f7552n = aVar.f7414z0;
            eVar.f7551m = aVar.f7413y0;
        }

        public void i(ConstraintHelper constraintHelper, int i10, Constraints.a aVar) {
            h(i10, aVar);
            if (constraintHelper instanceof Barrier) {
                C0056b c0056b = this.f7458e;
                c0056b.f7494j0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                c0056b.f7490h0 = barrier.getType();
                this.f7458e.f7496k0 = barrier.getReferencedIds();
                this.f7458e.f7492i0 = barrier.getMargin();
            }
        }

        public void d(a aVar) {
            C0055a c0055a = this.f7461h;
            if (c0055a != null) {
                c0055a.e(aVar);
            }
        }

        public void e(ConstraintLayout.b bVar) {
            C0056b c0056b = this.f7458e;
            bVar.f7361e = c0056b.f7493j;
            bVar.f7363f = c0056b.f7495k;
            bVar.f7365g = c0056b.f7497l;
            bVar.f7367h = c0056b.f7499m;
            bVar.f7369i = c0056b.f7501n;
            bVar.f7371j = c0056b.f7503o;
            bVar.f7373k = c0056b.f7505p;
            bVar.f7375l = c0056b.f7507q;
            bVar.f7377m = c0056b.f7509r;
            bVar.f7379n = c0056b.f7510s;
            bVar.f7381o = c0056b.f7511t;
            bVar.f7389s = c0056b.f7512u;
            bVar.f7391t = c0056b.f7513v;
            bVar.f7393u = c0056b.f7514w;
            bVar.f7395v = c0056b.f7515x;
            ((ViewGroup.MarginLayoutParams) bVar).leftMargin = c0056b.H;
            ((ViewGroup.MarginLayoutParams) bVar).rightMargin = c0056b.I;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = c0056b.J;
            ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = c0056b.K;
            bVar.A = c0056b.T;
            bVar.B = c0056b.S;
            bVar.f7399x = c0056b.P;
            bVar.f7401z = c0056b.R;
            bVar.G = c0056b.f7516y;
            bVar.H = c0056b.f7517z;
            bVar.f7383p = c0056b.B;
            bVar.f7385q = c0056b.C;
            bVar.f7387r = c0056b.D;
            bVar.I = c0056b.A;
            bVar.X = c0056b.E;
            bVar.Y = c0056b.F;
            bVar.M = c0056b.V;
            bVar.L = c0056b.W;
            bVar.O = c0056b.Y;
            bVar.N = c0056b.X;
            bVar.f7354a0 = c0056b.f7502n0;
            bVar.f7356b0 = c0056b.f7504o0;
            bVar.P = c0056b.Z;
            bVar.Q = c0056b.f7476a0;
            bVar.T = c0056b.f7478b0;
            bVar.U = c0056b.f7480c0;
            bVar.R = c0056b.f7482d0;
            bVar.S = c0056b.f7484e0;
            bVar.V = c0056b.f7486f0;
            bVar.W = c0056b.f7488g0;
            bVar.Z = c0056b.G;
            bVar.f7357c = c0056b.f7489h;
            bVar.f7353a = c0056b.f7485f;
            bVar.f7355b = c0056b.f7487g;
            ((ViewGroup.MarginLayoutParams) bVar).width = c0056b.f7481d;
            ((ViewGroup.MarginLayoutParams) bVar).height = c0056b.f7483e;
            String str = c0056b.f7500m0;
            if (str != null) {
                bVar.f7358c0 = str;
            }
            bVar.f7360d0 = c0056b.f7508q0;
            bVar.setMarginStart(c0056b.M);
            bVar.setMarginEnd(this.f7458e.L);
            bVar.c();
        }

        public a clone() {
            a aVar = new a();
            aVar.f7458e.a(this.f7458e);
            aVar.f7457d.a(this.f7457d);
            aVar.f7456c.a(this.f7456c);
            aVar.f7459f.a(this.f7459f);
            aVar.f7454a = this.f7454a;
            aVar.f7461h = this.f7461h;
            return aVar;
        }
    }

    public static class C0056b {

        private static SparseIntArray f7474r0;

        public int f7481d;

        public int f7483e;

        public int[] f7496k0;

        public String f7498l0;

        public String f7500m0;

        public boolean f7475a = false;

        public boolean f7477b = false;

        public boolean f7479c = false;

        public int f7485f = -1;

        public int f7487g = -1;

        public float f7489h = -1.0f;

        public boolean f7491i = true;

        public int f7493j = -1;

        public int f7495k = -1;

        public int f7497l = -1;

        public int f7499m = -1;

        public int f7501n = -1;

        public int f7503o = -1;

        public int f7505p = -1;

        public int f7507q = -1;

        public int f7509r = -1;

        public int f7510s = -1;

        public int f7511t = -1;

        public int f7512u = -1;

        public int f7513v = -1;

        public int f7514w = -1;

        public int f7515x = -1;

        public float f7516y = 0.5f;

        public float f7517z = 0.5f;
        public String A = null;
        public int B = -1;
        public int C = 0;
        public float D = 0.0f;
        public int E = -1;
        public int F = -1;
        public int G = -1;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = 0;
        public int N = 0;
        public int O = Integer.MIN_VALUE;
        public int P = Integer.MIN_VALUE;
        public int Q = Integer.MIN_VALUE;
        public int R = Integer.MIN_VALUE;
        public int S = Integer.MIN_VALUE;
        public int T = Integer.MIN_VALUE;
        public int U = Integer.MIN_VALUE;
        public float V = -1.0f;
        public float W = -1.0f;
        public int X = 0;
        public int Y = 0;
        public int Z = 0;

        public int f7476a0 = 0;

        public int f7478b0 = 0;

        public int f7480c0 = 0;

        public int f7482d0 = 0;

        public int f7484e0 = 0;

        public float f7486f0 = 1.0f;

        public float f7488g0 = 1.0f;

        public int f7490h0 = -1;

        public int f7492i0 = 0;

        public int f7494j0 = -1;

        public boolean f7502n0 = false;

        public boolean f7504o0 = false;

        public boolean f7506p0 = true;

        public int f7508q0 = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7474r0 = sparseIntArray;
            sparseIntArray.append(R$styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            f7474r0.append(R$styleable.Layout_layout_constraintLeft_toRightOf, 25);
            f7474r0.append(R$styleable.Layout_layout_constraintRight_toLeftOf, 28);
            f7474r0.append(R$styleable.Layout_layout_constraintRight_toRightOf, 29);
            f7474r0.append(R$styleable.Layout_layout_constraintTop_toTopOf, 35);
            f7474r0.append(R$styleable.Layout_layout_constraintTop_toBottomOf, 34);
            f7474r0.append(R$styleable.Layout_layout_constraintBottom_toTopOf, 4);
            f7474r0.append(R$styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            f7474r0.append(R$styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f7474r0.append(R$styleable.Layout_layout_editor_absoluteX, 6);
            f7474r0.append(R$styleable.Layout_layout_editor_absoluteY, 7);
            f7474r0.append(R$styleable.Layout_layout_constraintGuide_begin, 17);
            f7474r0.append(R$styleable.Layout_layout_constraintGuide_end, 18);
            f7474r0.append(R$styleable.Layout_layout_constraintGuide_percent, 19);
            f7474r0.append(R$styleable.Layout_guidelineUseRtl, 90);
            f7474r0.append(R$styleable.Layout_android_orientation, 26);
            f7474r0.append(R$styleable.Layout_layout_constraintStart_toEndOf, 31);
            f7474r0.append(R$styleable.Layout_layout_constraintStart_toStartOf, 32);
            f7474r0.append(R$styleable.Layout_layout_constraintEnd_toStartOf, 10);
            f7474r0.append(R$styleable.Layout_layout_constraintEnd_toEndOf, 9);
            f7474r0.append(R$styleable.Layout_layout_goneMarginLeft, 13);
            f7474r0.append(R$styleable.Layout_layout_goneMarginTop, 16);
            f7474r0.append(R$styleable.Layout_layout_goneMarginRight, 14);
            f7474r0.append(R$styleable.Layout_layout_goneMarginBottom, 11);
            f7474r0.append(R$styleable.Layout_layout_goneMarginStart, 15);
            f7474r0.append(R$styleable.Layout_layout_goneMarginEnd, 12);
            f7474r0.append(R$styleable.Layout_layout_constraintVertical_weight, 38);
            f7474r0.append(R$styleable.Layout_layout_constraintHorizontal_weight, 37);
            f7474r0.append(R$styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            f7474r0.append(R$styleable.Layout_layout_constraintVertical_chainStyle, 40);
            f7474r0.append(R$styleable.Layout_layout_constraintHorizontal_bias, 20);
            f7474r0.append(R$styleable.Layout_layout_constraintVertical_bias, 36);
            f7474r0.append(R$styleable.Layout_layout_constraintDimensionRatio, 5);
            f7474r0.append(R$styleable.Layout_layout_constraintLeft_creator, 91);
            f7474r0.append(R$styleable.Layout_layout_constraintTop_creator, 91);
            f7474r0.append(R$styleable.Layout_layout_constraintRight_creator, 91);
            f7474r0.append(R$styleable.Layout_layout_constraintBottom_creator, 91);
            f7474r0.append(R$styleable.Layout_layout_constraintBaseline_creator, 91);
            f7474r0.append(R$styleable.Layout_android_layout_marginLeft, 23);
            f7474r0.append(R$styleable.Layout_android_layout_marginRight, 27);
            f7474r0.append(R$styleable.Layout_android_layout_marginStart, 30);
            f7474r0.append(R$styleable.Layout_android_layout_marginEnd, 8);
            f7474r0.append(R$styleable.Layout_android_layout_marginTop, 33);
            f7474r0.append(R$styleable.Layout_android_layout_marginBottom, 2);
            f7474r0.append(R$styleable.Layout_android_layout_width, 22);
            f7474r0.append(R$styleable.Layout_android_layout_height, 21);
            f7474r0.append(R$styleable.Layout_layout_constraintWidth, 41);
            f7474r0.append(R$styleable.Layout_layout_constraintHeight, 42);
            f7474r0.append(R$styleable.Layout_layout_constrainedWidth, 41);
            f7474r0.append(R$styleable.Layout_layout_constrainedHeight, 42);
            f7474r0.append(R$styleable.Layout_layout_wrapBehaviorInParent, 76);
            f7474r0.append(R$styleable.Layout_layout_constraintCircle, 61);
            f7474r0.append(R$styleable.Layout_layout_constraintCircleRadius, 62);
            f7474r0.append(R$styleable.Layout_layout_constraintCircleAngle, 63);
            f7474r0.append(R$styleable.Layout_layout_constraintWidth_percent, 69);
            f7474r0.append(R$styleable.Layout_layout_constraintHeight_percent, 70);
            f7474r0.append(R$styleable.Layout_chainUseRtl, 71);
            f7474r0.append(R$styleable.Layout_barrierDirection, 72);
            f7474r0.append(R$styleable.Layout_barrierMargin, 73);
            f7474r0.append(R$styleable.Layout_constraint_referenced_ids, 74);
            f7474r0.append(R$styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        public void a(C0056b c0056b) {
            this.f7475a = c0056b.f7475a;
            this.f7481d = c0056b.f7481d;
            this.f7477b = c0056b.f7477b;
            this.f7483e = c0056b.f7483e;
            this.f7485f = c0056b.f7485f;
            this.f7487g = c0056b.f7487g;
            this.f7489h = c0056b.f7489h;
            this.f7491i = c0056b.f7491i;
            this.f7493j = c0056b.f7493j;
            this.f7495k = c0056b.f7495k;
            this.f7497l = c0056b.f7497l;
            this.f7499m = c0056b.f7499m;
            this.f7501n = c0056b.f7501n;
            this.f7503o = c0056b.f7503o;
            this.f7505p = c0056b.f7505p;
            this.f7507q = c0056b.f7507q;
            this.f7509r = c0056b.f7509r;
            this.f7510s = c0056b.f7510s;
            this.f7511t = c0056b.f7511t;
            this.f7512u = c0056b.f7512u;
            this.f7513v = c0056b.f7513v;
            this.f7514w = c0056b.f7514w;
            this.f7515x = c0056b.f7515x;
            this.f7516y = c0056b.f7516y;
            this.f7517z = c0056b.f7517z;
            this.A = c0056b.A;
            this.B = c0056b.B;
            this.C = c0056b.C;
            this.D = c0056b.D;
            this.E = c0056b.E;
            this.F = c0056b.F;
            this.G = c0056b.G;
            this.H = c0056b.H;
            this.I = c0056b.I;
            this.J = c0056b.J;
            this.K = c0056b.K;
            this.L = c0056b.L;
            this.M = c0056b.M;
            this.N = c0056b.N;
            this.O = c0056b.O;
            this.P = c0056b.P;
            this.Q = c0056b.Q;
            this.R = c0056b.R;
            this.S = c0056b.S;
            this.T = c0056b.T;
            this.U = c0056b.U;
            this.V = c0056b.V;
            this.W = c0056b.W;
            this.X = c0056b.X;
            this.Y = c0056b.Y;
            this.Z = c0056b.Z;
            this.f7476a0 = c0056b.f7476a0;
            this.f7478b0 = c0056b.f7478b0;
            this.f7480c0 = c0056b.f7480c0;
            this.f7482d0 = c0056b.f7482d0;
            this.f7484e0 = c0056b.f7484e0;
            this.f7486f0 = c0056b.f7486f0;
            this.f7488g0 = c0056b.f7488g0;
            this.f7490h0 = c0056b.f7490h0;
            this.f7492i0 = c0056b.f7492i0;
            this.f7494j0 = c0056b.f7494j0;
            this.f7500m0 = c0056b.f7500m0;
            int[] iArr = c0056b.f7496k0;
            if (iArr == null || c0056b.f7498l0 != null) {
                this.f7496k0 = null;
            } else {
                this.f7496k0 = Arrays.copyOf(iArr, iArr.length);
            }
            this.f7498l0 = c0056b.f7498l0;
            this.f7502n0 = c0056b.f7502n0;
            this.f7504o0 = c0056b.f7504o0;
            this.f7506p0 = c0056b.f7506p0;
            this.f7508q0 = c0056b.f7508q0;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Layout);
            this.f7477b = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                int i11 = f7474r0.get(index);
                switch (i11) {
                    case 1:
                        this.f7509r = b.G(typedArrayObtainStyledAttributes, index, this.f7509r);
                        break;
                    case 2:
                        this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        break;
                    case 3:
                        this.f7507q = b.G(typedArrayObtainStyledAttributes, index, this.f7507q);
                        break;
                    case 4:
                        this.f7505p = b.G(typedArrayObtainStyledAttributes, index, this.f7505p);
                        break;
                    case 5:
                        this.A = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.E = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.E);
                        break;
                    case 7:
                        this.F = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.F);
                        break;
                    case 8:
                        this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        break;
                    case 9:
                        this.f7515x = b.G(typedArrayObtainStyledAttributes, index, this.f7515x);
                        break;
                    case 10:
                        this.f7514w = b.G(typedArrayObtainStyledAttributes, index, this.f7514w);
                        break;
                    case 11:
                        this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                        break;
                    case 12:
                        this.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.S);
                        break;
                    case 13:
                        this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    case 14:
                        this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        break;
                    case 15:
                        this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.T);
                        break;
                    case 16:
                        this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        break;
                    case 17:
                        this.f7485f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f7485f);
                        break;
                    case 18:
                        this.f7487g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f7487g);
                        break;
                    case 19:
                        this.f7489h = typedArrayObtainStyledAttributes.getFloat(index, this.f7489h);
                        break;
                    case 20:
                        this.f7516y = typedArrayObtainStyledAttributes.getFloat(index, this.f7516y);
                        break;
                    case 21:
                        this.f7483e = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f7483e);
                        break;
                    case 22:
                        this.f7481d = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f7481d);
                        break;
                    case 23:
                        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                        break;
                    case 24:
                        this.f7493j = b.G(typedArrayObtainStyledAttributes, index, this.f7493j);
                        break;
                    case 25:
                        this.f7495k = b.G(typedArrayObtainStyledAttributes, index, this.f7495k);
                        break;
                    case 26:
                        this.G = typedArrayObtainStyledAttributes.getInt(index, this.G);
                        break;
                    case 27:
                        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                        break;
                    case 28:
                        this.f7497l = b.G(typedArrayObtainStyledAttributes, index, this.f7497l);
                        break;
                    case NOTIFICATION_REDIRECT_VALUE:
                        this.f7499m = b.G(typedArrayObtainStyledAttributes, index, this.f7499m);
                        break;
                    case 30:
                        this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        break;
                    case TEMPLATE_HTML_SIZE_VALUE:
                        this.f7512u = b.G(typedArrayObtainStyledAttributes, index, this.f7512u);
                        break;
                    case 32:
                        this.f7513v = b.G(typedArrayObtainStyledAttributes, index, this.f7513v);
                        break;
                    case 33:
                        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                        break;
                    case 34:
                        this.f7503o = b.G(typedArrayObtainStyledAttributes, index, this.f7503o);
                        break;
                    case 35:
                        this.f7501n = b.G(typedArrayObtainStyledAttributes, index, this.f7501n);
                        break;
                    case 36:
                        this.f7517z = typedArrayObtainStyledAttributes.getFloat(index, this.f7517z);
                        break;
                    case 37:
                        this.W = typedArrayObtainStyledAttributes.getFloat(index, this.W);
                        break;
                    case 38:
                        this.V = typedArrayObtainStyledAttributes.getFloat(index, this.V);
                        break;
                    case 39:
                        this.X = typedArrayObtainStyledAttributes.getInt(index, this.X);
                        break;
                    case 40:
                        this.Y = typedArrayObtainStyledAttributes.getInt(index, this.Y);
                        break;
                    case 41:
                        b.H(this, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case 42:
                        b.H(this, typedArrayObtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (i11) {
                            case 61:
                                this.B = b.G(typedArrayObtainStyledAttributes, index, this.B);
                                break;
                            case 62:
                                this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            case 63:
                                this.D = typedArrayObtainStyledAttributes.getFloat(index, this.D);
                                break;
                            default:
                                switch (i11) {
                                    case 69:
                                        this.f7486f0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 70:
                                        this.f7488g0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 71:
                                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                        break;
                                    case 72:
                                        this.f7490h0 = typedArrayObtainStyledAttributes.getInt(index, this.f7490h0);
                                        break;
                                    case 73:
                                        this.f7492i0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7492i0);
                                        break;
                                    case 74:
                                        this.f7498l0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case 75:
                                        this.f7506p0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f7506p0);
                                        break;
                                    case 76:
                                        this.f7508q0 = typedArrayObtainStyledAttributes.getInt(index, this.f7508q0);
                                        break;
                                    case 77:
                                        this.f7510s = b.G(typedArrayObtainStyledAttributes, index, this.f7510s);
                                        break;
                                    case 78:
                                        this.f7511t = b.G(typedArrayObtainStyledAttributes, index, this.f7511t);
                                        break;
                                    case 79:
                                        this.U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.U);
                                        break;
                                    case 80:
                                        this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                                        break;
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW:
                                        this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                                        break;
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW:
                                        this.f7476a0 = typedArrayObtainStyledAttributes.getInt(index, this.f7476a0);
                                        break;
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW:
                                        this.f7480c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7480c0);
                                        break;
                                    case 84:
                                        this.f7478b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7478b0);
                                        break;
                                    case 85:
                                        this.f7484e0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7484e0);
                                        break;
                                    case 86:
                                        this.f7482d0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7482d0);
                                        break;
                                    case 87:
                                        this.f7502n0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f7502n0);
                                        break;
                                    case 88:
                                        this.f7504o0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f7504o0);
                                        break;
                                    case TsExtractor.TS_STREAM_TYPE_DVBSUBS:
                                        this.f7500m0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case TmcConstants.NOTIFY_ADDHOME_API_SHOW:
                                        this.f7491i = typedArrayObtainStyledAttributes.getBoolean(index, this.f7491i);
                                        break;
                                    case 91:
                                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7474r0.get(index));
                                        break;
                                    default:
                                        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f7474r0.get(index));
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class c {

        private static SparseIntArray f7518o;

        public boolean f7519a = false;

        public int f7520b = -1;

        public int f7521c = 0;

        public String f7522d = null;

        public int f7523e = -1;

        public int f7524f = 0;

        public float f7525g = Float.NaN;

        public int f7526h = -1;

        public float f7527i = Float.NaN;

        public float f7528j = Float.NaN;

        public int f7529k = -1;

        public String f7530l = null;

        public int f7531m = -3;

        public int f7532n = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7518o = sparseIntArray;
            sparseIntArray.append(R$styleable.Motion_motionPathRotate, 1);
            f7518o.append(R$styleable.Motion_pathMotionArc, 2);
            f7518o.append(R$styleable.Motion_transitionEasing, 3);
            f7518o.append(R$styleable.Motion_drawPath, 4);
            f7518o.append(R$styleable.Motion_animateRelativeTo, 5);
            f7518o.append(R$styleable.Motion_animateCircleAngleTo, 6);
            f7518o.append(R$styleable.Motion_motionStagger, 7);
            f7518o.append(R$styleable.Motion_quantizeMotionSteps, 8);
            f7518o.append(R$styleable.Motion_quantizeMotionPhase, 9);
            f7518o.append(R$styleable.Motion_quantizeMotionInterpolator, 10);
        }

        public void a(c cVar) {
            this.f7519a = cVar.f7519a;
            this.f7520b = cVar.f7520b;
            this.f7522d = cVar.f7522d;
            this.f7523e = cVar.f7523e;
            this.f7524f = cVar.f7524f;
            this.f7527i = cVar.f7527i;
            this.f7525g = cVar.f7525g;
            this.f7526h = cVar.f7526h;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Motion);
            this.f7519a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                switch (f7518o.get(index)) {
                    case 1:
                        this.f7527i = typedArrayObtainStyledAttributes.getFloat(index, this.f7527i);
                        break;
                    case 2:
                        this.f7523e = typedArrayObtainStyledAttributes.getInt(index, this.f7523e);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.f7522d = typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            this.f7522d = androidx.constraintlayout.core.motion.utils.c.f6459c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        this.f7524f = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f7520b = b.G(typedArrayObtainStyledAttributes, index, this.f7520b);
                        break;
                    case 6:
                        this.f7521c = typedArrayObtainStyledAttributes.getInteger(index, this.f7521c);
                        break;
                    case 7:
                        this.f7525g = typedArrayObtainStyledAttributes.getFloat(index, this.f7525g);
                        break;
                    case 8:
                        this.f7529k = typedArrayObtainStyledAttributes.getInteger(index, this.f7529k);
                        break;
                    case 9:
                        this.f7528j = typedArrayObtainStyledAttributes.getFloat(index, this.f7528j);
                        break;
                    case 10:
                        int i11 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i11 == 1) {
                            int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.f7532n = resourceId;
                            if (resourceId != -1) {
                                this.f7531m = -2;
                            }
                        } else if (i11 == 3) {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            this.f7530l = string;
                            if (string.indexOf("/") > 0) {
                                this.f7532n = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                this.f7531m = -2;
                            } else {
                                this.f7531m = -1;
                            }
                        } else {
                            this.f7531m = typedArrayObtainStyledAttributes.getInteger(index, this.f7532n);
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class d {

        public boolean f7533a = false;

        public int f7534b = 0;

        public int f7535c = 0;

        public float f7536d = 1.0f;

        public float f7537e = Float.NaN;

        public void a(d dVar) {
            this.f7533a = dVar.f7533a;
            this.f7534b = dVar.f7534b;
            this.f7536d = dVar.f7536d;
            this.f7537e = dVar.f7537e;
            this.f7535c = dVar.f7535c;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PropertySet);
            this.f7533a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.PropertySet_android_alpha) {
                    this.f7536d = typedArrayObtainStyledAttributes.getFloat(index, this.f7536d);
                } else if (index == R$styleable.PropertySet_android_visibility) {
                    this.f7534b = typedArrayObtainStyledAttributes.getInt(index, this.f7534b);
                    this.f7534b = b.f7444h[this.f7534b];
                } else if (index == R$styleable.PropertySet_visibilityMode) {
                    this.f7535c = typedArrayObtainStyledAttributes.getInt(index, this.f7535c);
                } else if (index == R$styleable.PropertySet_motionProgress) {
                    this.f7537e = typedArrayObtainStyledAttributes.getFloat(index, this.f7537e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class e {

        private static SparseIntArray f7538o;

        public boolean f7539a = false;

        public float f7540b = 0.0f;

        public float f7541c = 0.0f;

        public float f7542d = 0.0f;

        public float f7543e = 1.0f;

        public float f7544f = 1.0f;

        public float f7545g = Float.NaN;

        public float f7546h = Float.NaN;

        public int f7547i = -1;

        public float f7548j = 0.0f;

        public float f7549k = 0.0f;

        public float f7550l = 0.0f;

        public boolean f7551m = false;

        public float f7552n = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7538o = sparseIntArray;
            sparseIntArray.append(R$styleable.Transform_android_rotation, 1);
            f7538o.append(R$styleable.Transform_android_rotationX, 2);
            f7538o.append(R$styleable.Transform_android_rotationY, 3);
            f7538o.append(R$styleable.Transform_android_scaleX, 4);
            f7538o.append(R$styleable.Transform_android_scaleY, 5);
            f7538o.append(R$styleable.Transform_android_transformPivotX, 6);
            f7538o.append(R$styleable.Transform_android_transformPivotY, 7);
            f7538o.append(R$styleable.Transform_android_translationX, 8);
            f7538o.append(R$styleable.Transform_android_translationY, 9);
            f7538o.append(R$styleable.Transform_android_translationZ, 10);
            f7538o.append(R$styleable.Transform_android_elevation, 11);
            f7538o.append(R$styleable.Transform_transformPivotTarget, 12);
        }

        public void a(e eVar) {
            this.f7539a = eVar.f7539a;
            this.f7540b = eVar.f7540b;
            this.f7541c = eVar.f7541c;
            this.f7542d = eVar.f7542d;
            this.f7543e = eVar.f7543e;
            this.f7544f = eVar.f7544f;
            this.f7545g = eVar.f7545g;
            this.f7546h = eVar.f7546h;
            this.f7547i = eVar.f7547i;
            this.f7548j = eVar.f7548j;
            this.f7549k = eVar.f7549k;
            this.f7550l = eVar.f7550l;
            this.f7551m = eVar.f7551m;
            this.f7552n = eVar.f7552n;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Transform);
            this.f7539a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                switch (f7538o.get(index)) {
                    case 1:
                        this.f7540b = typedArrayObtainStyledAttributes.getFloat(index, this.f7540b);
                        break;
                    case 2:
                        this.f7541c = typedArrayObtainStyledAttributes.getFloat(index, this.f7541c);
                        break;
                    case 3:
                        this.f7542d = typedArrayObtainStyledAttributes.getFloat(index, this.f7542d);
                        break;
                    case 4:
                        this.f7543e = typedArrayObtainStyledAttributes.getFloat(index, this.f7543e);
                        break;
                    case 5:
                        this.f7544f = typedArrayObtainStyledAttributes.getFloat(index, this.f7544f);
                        break;
                    case 6:
                        this.f7545g = typedArrayObtainStyledAttributes.getDimension(index, this.f7545g);
                        break;
                    case 7:
                        this.f7546h = typedArrayObtainStyledAttributes.getDimension(index, this.f7546h);
                        break;
                    case 8:
                        this.f7548j = typedArrayObtainStyledAttributes.getDimension(index, this.f7548j);
                        break;
                    case 9:
                        this.f7549k = typedArrayObtainStyledAttributes.getDimension(index, this.f7549k);
                        break;
                    case 10:
                        this.f7550l = typedArrayObtainStyledAttributes.getDimension(index, this.f7550l);
                        break;
                    case 11:
                        this.f7551m = true;
                        this.f7552n = typedArrayObtainStyledAttributes.getDimension(index, this.f7552n);
                        break;
                    case 12:
                        this.f7547i = b.G(typedArrayObtainStyledAttributes, index, this.f7547i);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static {
        f7445i.append(R$styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        f7445i.append(R$styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        f7445i.append(R$styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        f7445i.append(R$styleable.Constraint_layout_constraintRight_toRightOf, 30);
        f7445i.append(R$styleable.Constraint_layout_constraintTop_toTopOf, 36);
        f7445i.append(R$styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        f7445i.append(R$styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        f7445i.append(R$styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        f7445i.append(R$styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f7445i.append(R$styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        f7445i.append(R$styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        f7445i.append(R$styleable.Constraint_layout_editor_absoluteX, 6);
        f7445i.append(R$styleable.Constraint_layout_editor_absoluteY, 7);
        f7445i.append(R$styleable.Constraint_layout_constraintGuide_begin, 17);
        f7445i.append(R$styleable.Constraint_layout_constraintGuide_end, 18);
        f7445i.append(R$styleable.Constraint_layout_constraintGuide_percent, 19);
        f7445i.append(R$styleable.Constraint_guidelineUseRtl, 99);
        f7445i.append(R$styleable.Constraint_android_orientation, 27);
        f7445i.append(R$styleable.Constraint_layout_constraintStart_toEndOf, 32);
        f7445i.append(R$styleable.Constraint_layout_constraintStart_toStartOf, 33);
        f7445i.append(R$styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        f7445i.append(R$styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        f7445i.append(R$styleable.Constraint_layout_goneMarginLeft, 13);
        f7445i.append(R$styleable.Constraint_layout_goneMarginTop, 16);
        f7445i.append(R$styleable.Constraint_layout_goneMarginRight, 14);
        f7445i.append(R$styleable.Constraint_layout_goneMarginBottom, 11);
        f7445i.append(R$styleable.Constraint_layout_goneMarginStart, 15);
        f7445i.append(R$styleable.Constraint_layout_goneMarginEnd, 12);
        f7445i.append(R$styleable.Constraint_layout_constraintVertical_weight, 40);
        f7445i.append(R$styleable.Constraint_layout_constraintHorizontal_weight, 39);
        f7445i.append(R$styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f7445i.append(R$styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        f7445i.append(R$styleable.Constraint_layout_constraintHorizontal_bias, 20);
        f7445i.append(R$styleable.Constraint_layout_constraintVertical_bias, 37);
        f7445i.append(R$styleable.Constraint_layout_constraintDimensionRatio, 5);
        f7445i.append(R$styleable.Constraint_layout_constraintLeft_creator, 87);
        f7445i.append(R$styleable.Constraint_layout_constraintTop_creator, 87);
        f7445i.append(R$styleable.Constraint_layout_constraintRight_creator, 87);
        f7445i.append(R$styleable.Constraint_layout_constraintBottom_creator, 87);
        f7445i.append(R$styleable.Constraint_layout_constraintBaseline_creator, 87);
        f7445i.append(R$styleable.Constraint_android_layout_marginLeft, 24);
        f7445i.append(R$styleable.Constraint_android_layout_marginRight, 28);
        f7445i.append(R$styleable.Constraint_android_layout_marginStart, 31);
        f7445i.append(R$styleable.Constraint_android_layout_marginEnd, 8);
        f7445i.append(R$styleable.Constraint_android_layout_marginTop, 34);
        f7445i.append(R$styleable.Constraint_android_layout_marginBottom, 2);
        f7445i.append(R$styleable.Constraint_android_layout_width, 23);
        f7445i.append(R$styleable.Constraint_android_layout_height, 21);
        f7445i.append(R$styleable.Constraint_layout_constraintWidth, 95);
        f7445i.append(R$styleable.Constraint_layout_constraintHeight, 96);
        f7445i.append(R$styleable.Constraint_android_visibility, 22);
        f7445i.append(R$styleable.Constraint_android_alpha, 43);
        f7445i.append(R$styleable.Constraint_android_elevation, 44);
        f7445i.append(R$styleable.Constraint_android_rotationX, 45);
        f7445i.append(R$styleable.Constraint_android_rotationY, 46);
        f7445i.append(R$styleable.Constraint_android_rotation, 60);
        f7445i.append(R$styleable.Constraint_android_scaleX, 47);
        f7445i.append(R$styleable.Constraint_android_scaleY, 48);
        f7445i.append(R$styleable.Constraint_android_transformPivotX, 49);
        f7445i.append(R$styleable.Constraint_android_transformPivotY, 50);
        f7445i.append(R$styleable.Constraint_android_translationX, 51);
        f7445i.append(R$styleable.Constraint_android_translationY, 52);
        f7445i.append(R$styleable.Constraint_android_translationZ, 53);
        f7445i.append(R$styleable.Constraint_layout_constraintWidth_default, 54);
        f7445i.append(R$styleable.Constraint_layout_constraintHeight_default, 55);
        f7445i.append(R$styleable.Constraint_layout_constraintWidth_max, 56);
        f7445i.append(R$styleable.Constraint_layout_constraintHeight_max, 57);
        f7445i.append(R$styleable.Constraint_layout_constraintWidth_min, 58);
        f7445i.append(R$styleable.Constraint_layout_constraintHeight_min, 59);
        f7445i.append(R$styleable.Constraint_layout_constraintCircle, 61);
        f7445i.append(R$styleable.Constraint_layout_constraintCircleRadius, 62);
        f7445i.append(R$styleable.Constraint_layout_constraintCircleAngle, 63);
        f7445i.append(R$styleable.Constraint_animateRelativeTo, 64);
        f7445i.append(R$styleable.Constraint_transitionEasing, 65);
        f7445i.append(R$styleable.Constraint_drawPath, 66);
        f7445i.append(R$styleable.Constraint_transitionPathRotate, 67);
        f7445i.append(R$styleable.Constraint_motionStagger, 79);
        f7445i.append(R$styleable.Constraint_android_id, 38);
        f7445i.append(R$styleable.Constraint_motionProgress, 68);
        f7445i.append(R$styleable.Constraint_layout_constraintWidth_percent, 69);
        f7445i.append(R$styleable.Constraint_layout_constraintHeight_percent, 70);
        f7445i.append(R$styleable.Constraint_layout_wrapBehaviorInParent, 97);
        f7445i.append(R$styleable.Constraint_chainUseRtl, 71);
        f7445i.append(R$styleable.Constraint_barrierDirection, 72);
        f7445i.append(R$styleable.Constraint_barrierMargin, 73);
        f7445i.append(R$styleable.Constraint_constraint_referenced_ids, 74);
        f7445i.append(R$styleable.Constraint_barrierAllowsGoneWidgets, 75);
        f7445i.append(R$styleable.Constraint_pathMotionArc, 76);
        f7445i.append(R$styleable.Constraint_layout_constraintTag, 77);
        f7445i.append(R$styleable.Constraint_visibilityMode, 78);
        f7445i.append(R$styleable.Constraint_layout_constrainedWidth, 80);
        f7445i.append(R$styleable.Constraint_layout_constrainedHeight, 81);
        f7445i.append(R$styleable.Constraint_polarRelativeTo, 82);
        f7445i.append(R$styleable.Constraint_transformPivotTarget, 83);
        f7445i.append(R$styleable.Constraint_quantizeMotionSteps, 84);
        f7445i.append(R$styleable.Constraint_quantizeMotionPhase, 85);
        f7445i.append(R$styleable.Constraint_quantizeMotionInterpolator, 86);
        f7446j.append(R$styleable.ConstraintOverride_layout_editor_absoluteY, 6);
        f7446j.append(R$styleable.ConstraintOverride_layout_editor_absoluteY, 7);
        f7446j.append(R$styleable.ConstraintOverride_android_orientation, 27);
        f7446j.append(R$styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        f7446j.append(R$styleable.ConstraintOverride_layout_goneMarginTop, 16);
        f7446j.append(R$styleable.ConstraintOverride_layout_goneMarginRight, 14);
        f7446j.append(R$styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        f7446j.append(R$styleable.ConstraintOverride_layout_goneMarginStart, 15);
        f7446j.append(R$styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        f7446j.append(R$styleable.ConstraintOverride_android_layout_marginLeft, 24);
        f7446j.append(R$styleable.ConstraintOverride_android_layout_marginRight, 28);
        f7446j.append(R$styleable.ConstraintOverride_android_layout_marginStart, 31);
        f7446j.append(R$styleable.ConstraintOverride_android_layout_marginEnd, 8);
        f7446j.append(R$styleable.ConstraintOverride_android_layout_marginTop, 34);
        f7446j.append(R$styleable.ConstraintOverride_android_layout_marginBottom, 2);
        f7446j.append(R$styleable.ConstraintOverride_android_layout_width, 23);
        f7446j.append(R$styleable.ConstraintOverride_android_layout_height, 21);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintWidth, 95);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintHeight, 96);
        f7446j.append(R$styleable.ConstraintOverride_android_visibility, 22);
        f7446j.append(R$styleable.ConstraintOverride_android_alpha, 43);
        f7446j.append(R$styleable.ConstraintOverride_android_elevation, 44);
        f7446j.append(R$styleable.ConstraintOverride_android_rotationX, 45);
        f7446j.append(R$styleable.ConstraintOverride_android_rotationY, 46);
        f7446j.append(R$styleable.ConstraintOverride_android_rotation, 60);
        f7446j.append(R$styleable.ConstraintOverride_android_scaleX, 47);
        f7446j.append(R$styleable.ConstraintOverride_android_scaleY, 48);
        f7446j.append(R$styleable.ConstraintOverride_android_transformPivotX, 49);
        f7446j.append(R$styleable.ConstraintOverride_android_transformPivotY, 50);
        f7446j.append(R$styleable.ConstraintOverride_android_translationX, 51);
        f7446j.append(R$styleable.ConstraintOverride_android_translationY, 52);
        f7446j.append(R$styleable.ConstraintOverride_android_translationZ, 53);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        f7446j.append(R$styleable.ConstraintOverride_animateRelativeTo, 64);
        f7446j.append(R$styleable.ConstraintOverride_transitionEasing, 65);
        f7446j.append(R$styleable.ConstraintOverride_drawPath, 66);
        f7446j.append(R$styleable.ConstraintOverride_transitionPathRotate, 67);
        f7446j.append(R$styleable.ConstraintOverride_motionStagger, 79);
        f7446j.append(R$styleable.ConstraintOverride_android_id, 38);
        f7446j.append(R$styleable.ConstraintOverride_motionTarget, 98);
        f7446j.append(R$styleable.ConstraintOverride_motionProgress, 68);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        f7446j.append(R$styleable.ConstraintOverride_chainUseRtl, 71);
        f7446j.append(R$styleable.ConstraintOverride_barrierDirection, 72);
        f7446j.append(R$styleable.ConstraintOverride_barrierMargin, 73);
        f7446j.append(R$styleable.ConstraintOverride_constraint_referenced_ids, 74);
        f7446j.append(R$styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        f7446j.append(R$styleable.ConstraintOverride_pathMotionArc, 76);
        f7446j.append(R$styleable.ConstraintOverride_layout_constraintTag, 77);
        f7446j.append(R$styleable.ConstraintOverride_visibilityMode, 78);
        f7446j.append(R$styleable.ConstraintOverride_layout_constrainedWidth, 80);
        f7446j.append(R$styleable.ConstraintOverride_layout_constrainedHeight, 81);
        f7446j.append(R$styleable.ConstraintOverride_polarRelativeTo, 82);
        f7446j.append(R$styleable.ConstraintOverride_transformPivotTarget, 83);
        f7446j.append(R$styleable.ConstraintOverride_quantizeMotionSteps, 84);
        f7446j.append(R$styleable.ConstraintOverride_quantizeMotionPhase, 85);
        f7446j.append(R$styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        f7446j.append(R$styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    public static int G(TypedArray typedArray, int i10, int i11) {
        int resourceId = typedArray.getResourceId(i10, i11);
        return resourceId == -1 ? typedArray.getInt(i10, -1) : resourceId;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0033  */
    /* JADX WARN: Code duplicated, block: B:23:0x0037  */
    /* JADX WARN: Code duplicated, block: B:24:0x003c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0041  */
    /* JADX WARN: Code duplicated, block: B:27:0x0045  */
    /* JADX WARN: Code duplicated, block: B:29:0x0049  */
    /* JADX WARN: Code duplicated, block: B:30:0x004e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0053  */
    /* JADX WARN: Code duplicated, block: B:33:0x0057  */
    /* JADX WARN: Code duplicated, block: B:35:0x005b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0066  */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    static void H(Object obj, TypedArray typedArray, int i10, int i11) {
        int dimensionPixelSize;
        boolean z10;
        a.C0055a c0055a;
        C0056b c0056b;
        ConstraintLayout.b bVar;
        if (obj == null) {
            return;
        }
        int i12 = typedArray.peekValue(i10).type;
        if (i12 == 3) {
            I(obj, typedArray.getString(i10), i11);
            return;
        }
        int i13 = 0;
        if (i12 != 5) {
            dimensionPixelSize = typedArray.getInt(i10, 0);
            if (dimensionPixelSize == -4) {
                z10 = true;
                i13 = -2;
            } else if (dimensionPixelSize == -3 || (dimensionPixelSize != -2 && dimensionPixelSize != -1)) {
                z10 = false;
            }
            if (obj instanceof ConstraintLayout.b) {
                bVar = (ConstraintLayout.b) obj;
                if (i11 == 0) {
                    ((ViewGroup.MarginLayoutParams) bVar).width = i13;
                    bVar.f7354a0 = z10;
                    return;
                } else {
                    ((ViewGroup.MarginLayoutParams) bVar).height = i13;
                    bVar.f7356b0 = z10;
                    return;
                }
            }
            if (obj instanceof C0056b) {
                c0056b = (C0056b) obj;
                if (i11 == 0) {
                    c0056b.f7481d = i13;
                    c0056b.f7502n0 = z10;
                    return;
                } else {
                    c0056b.f7483e = i13;
                    c0056b.f7504o0 = z10;
                    return;
                }
            }
            if (obj instanceof a.C0055a) {
                c0055a = (a.C0055a) obj;
                if (i11 == 0) {
                    c0055a.b(23, i13);
                    c0055a.d(80, z10);
                } else {
                    c0055a.b(21, i13);
                    c0055a.d(81, z10);
                }
            }
        }
        dimensionPixelSize = typedArray.getDimensionPixelSize(i10, 0);
        i13 = dimensionPixelSize;
        z10 = false;
        if (obj instanceof ConstraintLayout.b) {
            bVar = (ConstraintLayout.b) obj;
            if (i11 == 0) {
                ((ViewGroup.MarginLayoutParams) bVar).width = i13;
                bVar.f7354a0 = z10;
                return;
            } else {
                ((ViewGroup.MarginLayoutParams) bVar).height = i13;
                bVar.f7356b0 = z10;
                return;
            }
        }
        if (obj instanceof C0056b) {
            c0056b = (C0056b) obj;
            if (i11 == 0) {
                c0056b.f7481d = i13;
                c0056b.f7502n0 = z10;
                return;
            } else {
                c0056b.f7483e = i13;
                c0056b.f7504o0 = z10;
                return;
            }
        }
        if (obj instanceof a.C0055a) {
            c0055a = (a.C0055a) obj;
            if (i11 == 0) {
                c0055a.b(23, i13);
                c0055a.d(80, z10);
            } else {
                c0055a.b(21, i13);
                c0055a.d(81, z10);
            }
        }
    }

    static void I(Object obj, String str, int i10) {
        if (str == null) {
            return;
        }
        int iIndexOf = str.indexOf(61);
        int length = str.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if ("ratio".equalsIgnoreCase(strTrim)) {
                if (obj instanceof ConstraintLayout.b) {
                    ConstraintLayout.b bVar = (ConstraintLayout.b) obj;
                    if (i10 == 0) {
                        ((ViewGroup.MarginLayoutParams) bVar).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) bVar).height = 0;
                    }
                    J(bVar, strTrim2);
                    return;
                }
                if (obj instanceof C0056b) {
                    ((C0056b) obj).A = strTrim2;
                    return;
                } else {
                    if (obj instanceof a.C0055a) {
                        ((a.C0055a) obj).c(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(strTrim)) {
                    float f10 = Float.parseFloat(strTrim2);
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar2 = (ConstraintLayout.b) obj;
                        if (i10 == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar2).width = 0;
                            bVar2.L = f10;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar2).height = 0;
                            bVar2.M = f10;
                        }
                    } else if (obj instanceof C0056b) {
                        C0056b c0056b = (C0056b) obj;
                        if (i10 == 0) {
                            c0056b.f7481d = 0;
                            c0056b.W = f10;
                        } else {
                            c0056b.f7483e = 0;
                            c0056b.V = f10;
                        }
                    } else if (obj instanceof a.C0055a) {
                        a.C0055a c0055a = (a.C0055a) obj;
                        if (i10 == 0) {
                            c0055a.b(23, 0);
                            c0055a.a(39, f10);
                        } else {
                            c0055a.b(21, 0);
                            c0055a.a(40, f10);
                        }
                    }
                } else {
                    if (!"parent".equalsIgnoreCase(strTrim)) {
                        return;
                    }
                    float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar3 = (ConstraintLayout.b) obj;
                        if (i10 == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar3).width = 0;
                            bVar3.V = fMax;
                            bVar3.P = 2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar3).height = 0;
                            bVar3.W = fMax;
                            bVar3.Q = 2;
                        }
                    } else if (obj instanceof C0056b) {
                        C0056b c0056b2 = (C0056b) obj;
                        if (i10 == 0) {
                            c0056b2.f7481d = 0;
                            c0056b2.f7486f0 = fMax;
                            c0056b2.Z = 2;
                        } else {
                            c0056b2.f7483e = 0;
                            c0056b2.f7488g0 = fMax;
                            c0056b2.f7476a0 = 2;
                        }
                    } else if (obj instanceof a.C0055a) {
                        a.C0055a c0055a2 = (a.C0055a) obj;
                        if (i10 == 0) {
                            c0055a2.b(23, 0);
                            c0055a2.b(54, 2);
                        } else {
                            c0055a2.b(21, 0);
                            c0055a2.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    static void J(ConstraintLayout.b bVar, String str) {
        float fAbs = Float.NaN;
        int i10 = -1;
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            int i11 = 0;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                if (strSubstring.equalsIgnoreCase("W")) {
                    i10 = 0;
                } else if (strSubstring.equalsIgnoreCase("H")) {
                    i10 = 1;
                }
                i11 = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i11);
                    if (strSubstring2.length() > 0) {
                        fAbs = Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i11, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f10 = Float.parseFloat(strSubstring3);
                        float f11 = Float.parseFloat(strSubstring4);
                        if (f10 > 0.0f && f11 > 0.0f) {
                            fAbs = i10 == 1 ? Math.abs(f11 / f10) : Math.abs(f10 / f11);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        bVar.I = str;
        bVar.J = fAbs;
        bVar.K = i10;
    }

    private void K(Context context, a aVar, TypedArray typedArray, boolean z10) {
        if (z10) {
            L(context, aVar, typedArray);
            return;
        }
        int indexCount = typedArray.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            if (index != R$styleable.Constraint_android_id && R$styleable.Constraint_android_layout_marginStart != index && R$styleable.Constraint_android_layout_marginEnd != index) {
                aVar.f7457d.f7519a = true;
                aVar.f7458e.f7477b = true;
                aVar.f7456c.f7533a = true;
                aVar.f7459f.f7539a = true;
            }
            switch (f7445i.get(index)) {
                case 1:
                    C0056b c0056b = aVar.f7458e;
                    c0056b.f7509r = G(typedArray, index, c0056b.f7509r);
                    break;
                case 2:
                    C0056b c0056b2 = aVar.f7458e;
                    c0056b2.K = typedArray.getDimensionPixelSize(index, c0056b2.K);
                    break;
                case 3:
                    C0056b c0056b3 = aVar.f7458e;
                    c0056b3.f7507q = G(typedArray, index, c0056b3.f7507q);
                    break;
                case 4:
                    C0056b c0056b4 = aVar.f7458e;
                    c0056b4.f7505p = G(typedArray, index, c0056b4.f7505p);
                    break;
                case 5:
                    aVar.f7458e.A = typedArray.getString(index);
                    break;
                case 6:
                    C0056b c0056b5 = aVar.f7458e;
                    c0056b5.E = typedArray.getDimensionPixelOffset(index, c0056b5.E);
                    break;
                case 7:
                    C0056b c0056b6 = aVar.f7458e;
                    c0056b6.F = typedArray.getDimensionPixelOffset(index, c0056b6.F);
                    break;
                case 8:
                    C0056b c0056b7 = aVar.f7458e;
                    c0056b7.L = typedArray.getDimensionPixelSize(index, c0056b7.L);
                    break;
                case 9:
                    C0056b c0056b8 = aVar.f7458e;
                    c0056b8.f7515x = G(typedArray, index, c0056b8.f7515x);
                    break;
                case 10:
                    C0056b c0056b9 = aVar.f7458e;
                    c0056b9.f7514w = G(typedArray, index, c0056b9.f7514w);
                    break;
                case 11:
                    C0056b c0056b10 = aVar.f7458e;
                    c0056b10.R = typedArray.getDimensionPixelSize(index, c0056b10.R);
                    break;
                case 12:
                    C0056b c0056b11 = aVar.f7458e;
                    c0056b11.S = typedArray.getDimensionPixelSize(index, c0056b11.S);
                    break;
                case 13:
                    C0056b c0056b12 = aVar.f7458e;
                    c0056b12.O = typedArray.getDimensionPixelSize(index, c0056b12.O);
                    break;
                case 14:
                    C0056b c0056b13 = aVar.f7458e;
                    c0056b13.Q = typedArray.getDimensionPixelSize(index, c0056b13.Q);
                    break;
                case 15:
                    C0056b c0056b14 = aVar.f7458e;
                    c0056b14.T = typedArray.getDimensionPixelSize(index, c0056b14.T);
                    break;
                case 16:
                    C0056b c0056b15 = aVar.f7458e;
                    c0056b15.P = typedArray.getDimensionPixelSize(index, c0056b15.P);
                    break;
                case 17:
                    C0056b c0056b16 = aVar.f7458e;
                    c0056b16.f7485f = typedArray.getDimensionPixelOffset(index, c0056b16.f7485f);
                    break;
                case 18:
                    C0056b c0056b17 = aVar.f7458e;
                    c0056b17.f7487g = typedArray.getDimensionPixelOffset(index, c0056b17.f7487g);
                    break;
                case 19:
                    C0056b c0056b18 = aVar.f7458e;
                    c0056b18.f7489h = typedArray.getFloat(index, c0056b18.f7489h);
                    break;
                case 20:
                    C0056b c0056b19 = aVar.f7458e;
                    c0056b19.f7516y = typedArray.getFloat(index, c0056b19.f7516y);
                    break;
                case 21:
                    C0056b c0056b20 = aVar.f7458e;
                    c0056b20.f7483e = typedArray.getLayoutDimension(index, c0056b20.f7483e);
                    break;
                case 22:
                    d dVar = aVar.f7456c;
                    dVar.f7534b = typedArray.getInt(index, dVar.f7534b);
                    d dVar2 = aVar.f7456c;
                    dVar2.f7534b = f7444h[dVar2.f7534b];
                    break;
                case 23:
                    C0056b c0056b21 = aVar.f7458e;
                    c0056b21.f7481d = typedArray.getLayoutDimension(index, c0056b21.f7481d);
                    break;
                case 24:
                    C0056b c0056b22 = aVar.f7458e;
                    c0056b22.H = typedArray.getDimensionPixelSize(index, c0056b22.H);
                    break;
                case 25:
                    C0056b c0056b23 = aVar.f7458e;
                    c0056b23.f7493j = G(typedArray, index, c0056b23.f7493j);
                    break;
                case 26:
                    C0056b c0056b24 = aVar.f7458e;
                    c0056b24.f7495k = G(typedArray, index, c0056b24.f7495k);
                    break;
                case 27:
                    C0056b c0056b25 = aVar.f7458e;
                    c0056b25.G = typedArray.getInt(index, c0056b25.G);
                    break;
                case 28:
                    C0056b c0056b26 = aVar.f7458e;
                    c0056b26.I = typedArray.getDimensionPixelSize(index, c0056b26.I);
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    C0056b c0056b27 = aVar.f7458e;
                    c0056b27.f7497l = G(typedArray, index, c0056b27.f7497l);
                    break;
                case 30:
                    C0056b c0056b28 = aVar.f7458e;
                    c0056b28.f7499m = G(typedArray, index, c0056b28.f7499m);
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    C0056b c0056b29 = aVar.f7458e;
                    c0056b29.M = typedArray.getDimensionPixelSize(index, c0056b29.M);
                    break;
                case 32:
                    C0056b c0056b30 = aVar.f7458e;
                    c0056b30.f7512u = G(typedArray, index, c0056b30.f7512u);
                    break;
                case 33:
                    C0056b c0056b31 = aVar.f7458e;
                    c0056b31.f7513v = G(typedArray, index, c0056b31.f7513v);
                    break;
                case 34:
                    C0056b c0056b32 = aVar.f7458e;
                    c0056b32.J = typedArray.getDimensionPixelSize(index, c0056b32.J);
                    break;
                case 35:
                    C0056b c0056b33 = aVar.f7458e;
                    c0056b33.f7503o = G(typedArray, index, c0056b33.f7503o);
                    break;
                case 36:
                    C0056b c0056b34 = aVar.f7458e;
                    c0056b34.f7501n = G(typedArray, index, c0056b34.f7501n);
                    break;
                case 37:
                    C0056b c0056b35 = aVar.f7458e;
                    c0056b35.f7517z = typedArray.getFloat(index, c0056b35.f7517z);
                    break;
                case 38:
                    aVar.f7454a = typedArray.getResourceId(index, aVar.f7454a);
                    break;
                case 39:
                    C0056b c0056b36 = aVar.f7458e;
                    c0056b36.W = typedArray.getFloat(index, c0056b36.W);
                    break;
                case 40:
                    C0056b c0056b37 = aVar.f7458e;
                    c0056b37.V = typedArray.getFloat(index, c0056b37.V);
                    break;
                case 41:
                    C0056b c0056b38 = aVar.f7458e;
                    c0056b38.X = typedArray.getInt(index, c0056b38.X);
                    break;
                case 42:
                    C0056b c0056b39 = aVar.f7458e;
                    c0056b39.Y = typedArray.getInt(index, c0056b39.Y);
                    break;
                case 43:
                    d dVar3 = aVar.f7456c;
                    dVar3.f7536d = typedArray.getFloat(index, dVar3.f7536d);
                    break;
                case 44:
                    e eVar = aVar.f7459f;
                    eVar.f7551m = true;
                    eVar.f7552n = typedArray.getDimension(index, eVar.f7552n);
                    break;
                case 45:
                    e eVar2 = aVar.f7459f;
                    eVar2.f7541c = typedArray.getFloat(index, eVar2.f7541c);
                    break;
                case 46:
                    e eVar3 = aVar.f7459f;
                    eVar3.f7542d = typedArray.getFloat(index, eVar3.f7542d);
                    break;
                case 47:
                    e eVar4 = aVar.f7459f;
                    eVar4.f7543e = typedArray.getFloat(index, eVar4.f7543e);
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    e eVar5 = aVar.f7459f;
                    eVar5.f7544f = typedArray.getFloat(index, eVar5.f7544f);
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    e eVar6 = aVar.f7459f;
                    eVar6.f7545g = typedArray.getDimension(index, eVar6.f7545g);
                    break;
                case 50:
                    e eVar7 = aVar.f7459f;
                    eVar7.f7546h = typedArray.getDimension(index, eVar7.f7546h);
                    break;
                case AD_REWARD_USER_VALUE:
                    e eVar8 = aVar.f7459f;
                    eVar8.f7548j = typedArray.getDimension(index, eVar8.f7548j);
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    e eVar9 = aVar.f7459f;
                    eVar9.f7549k = typedArray.getDimension(index, eVar9.f7549k);
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    e eVar10 = aVar.f7459f;
                    eVar10.f7550l = typedArray.getDimension(index, eVar10.f7550l);
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    C0056b c0056b40 = aVar.f7458e;
                    c0056b40.Z = typedArray.getInt(index, c0056b40.Z);
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    C0056b c0056b41 = aVar.f7458e;
                    c0056b41.f7476a0 = typedArray.getInt(index, c0056b41.f7476a0);
                    break;
                case AD_VISIBILITY_VALUE:
                    C0056b c0056b42 = aVar.f7458e;
                    c0056b42.f7478b0 = typedArray.getDimensionPixelSize(index, c0056b42.f7478b0);
                    break;
                case 57:
                    C0056b c0056b43 = aVar.f7458e;
                    c0056b43.f7480c0 = typedArray.getDimensionPixelSize(index, c0056b43.f7480c0);
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    C0056b c0056b44 = aVar.f7458e;
                    c0056b44.f7482d0 = typedArray.getDimensionPixelSize(index, c0056b44.f7482d0);
                    break;
                case 59:
                    C0056b c0056b45 = aVar.f7458e;
                    c0056b45.f7484e0 = typedArray.getDimensionPixelSize(index, c0056b45.f7484e0);
                    break;
                case 60:
                    e eVar11 = aVar.f7459f;
                    eVar11.f7540b = typedArray.getFloat(index, eVar11.f7540b);
                    break;
                case 61:
                    C0056b c0056b46 = aVar.f7458e;
                    c0056b46.B = G(typedArray, index, c0056b46.B);
                    break;
                case 62:
                    C0056b c0056b47 = aVar.f7458e;
                    c0056b47.C = typedArray.getDimensionPixelSize(index, c0056b47.C);
                    break;
                case 63:
                    C0056b c0056b48 = aVar.f7458e;
                    c0056b48.D = typedArray.getFloat(index, c0056b48.D);
                    break;
                case 64:
                    c cVar = aVar.f7457d;
                    cVar.f7520b = G(typedArray, index, cVar.f7520b);
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.f7457d.f7522d = typedArray.getString(index);
                    } else {
                        aVar.f7457d.f7522d = androidx.constraintlayout.core.motion.utils.c.f6459c[typedArray.getInteger(index, 0)];
                    }
                    break;
                case 66:
                    aVar.f7457d.f7524f = typedArray.getInt(index, 0);
                    break;
                case 67:
                    c cVar2 = aVar.f7457d;
                    cVar2.f7527i = typedArray.getFloat(index, cVar2.f7527i);
                    break;
                case 68:
                    d dVar4 = aVar.f7456c;
                    dVar4.f7537e = typedArray.getFloat(index, dVar4.f7537e);
                    break;
                case 69:
                    aVar.f7458e.f7486f0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.f7458e.f7488g0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    C0056b c0056b49 = aVar.f7458e;
                    c0056b49.f7490h0 = typedArray.getInt(index, c0056b49.f7490h0);
                    break;
                case 73:
                    C0056b c0056b50 = aVar.f7458e;
                    c0056b50.f7492i0 = typedArray.getDimensionPixelSize(index, c0056b50.f7492i0);
                    break;
                case 74:
                    aVar.f7458e.f7498l0 = typedArray.getString(index);
                    break;
                case 75:
                    C0056b c0056b51 = aVar.f7458e;
                    c0056b51.f7506p0 = typedArray.getBoolean(index, c0056b51.f7506p0);
                    break;
                case 76:
                    c cVar3 = aVar.f7457d;
                    cVar3.f7523e = typedArray.getInt(index, cVar3.f7523e);
                    break;
                case 77:
                    aVar.f7458e.f7500m0 = typedArray.getString(index);
                    break;
                case 78:
                    d dVar5 = aVar.f7456c;
                    dVar5.f7535c = typedArray.getInt(index, dVar5.f7535c);
                    break;
                case 79:
                    c cVar4 = aVar.f7457d;
                    cVar4.f7525g = typedArray.getFloat(index, cVar4.f7525g);
                    break;
                case 80:
                    C0056b c0056b52 = aVar.f7458e;
                    c0056b52.f7502n0 = typedArray.getBoolean(index, c0056b52.f7502n0);
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW:
                    C0056b c0056b53 = aVar.f7458e;
                    c0056b53.f7504o0 = typedArray.getBoolean(index, c0056b53.f7504o0);
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW:
                    c cVar5 = aVar.f7457d;
                    cVar5.f7521c = typedArray.getInteger(index, cVar5.f7521c);
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW:
                    e eVar12 = aVar.f7459f;
                    eVar12.f7547i = G(typedArray, index, eVar12.f7547i);
                    break;
                case 84:
                    c cVar6 = aVar.f7457d;
                    cVar6.f7529k = typedArray.getInteger(index, cVar6.f7529k);
                    break;
                case 85:
                    c cVar7 = aVar.f7457d;
                    cVar7.f7528j = typedArray.getFloat(index, cVar7.f7528j);
                    break;
                case 86:
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        aVar.f7457d.f7532n = typedArray.getResourceId(index, -1);
                        c cVar8 = aVar.f7457d;
                        if (cVar8.f7532n != -1) {
                            cVar8.f7531m = -2;
                        }
                    } else if (i11 == 3) {
                        aVar.f7457d.f7530l = typedArray.getString(index);
                        if (aVar.f7457d.f7530l.indexOf("/") > 0) {
                            aVar.f7457d.f7532n = typedArray.getResourceId(index, -1);
                            aVar.f7457d.f7531m = -2;
                        } else {
                            aVar.f7457d.f7531m = -1;
                        }
                    } else {
                        c cVar9 = aVar.f7457d;
                        cVar9.f7531m = typedArray.getInteger(index, cVar9.f7532n);
                    }
                    break;
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7445i.get(index));
                    break;
                case 88:
                case TsExtractor.TS_STREAM_TYPE_DVBSUBS:
                case TmcConstants.NOTIFY_ADDHOME_API_SHOW:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f7445i.get(index));
                    break;
                case 91:
                    C0056b c0056b54 = aVar.f7458e;
                    c0056b54.f7510s = G(typedArray, index, c0056b54.f7510s);
                    break;
                case 92:
                    C0056b c0056b55 = aVar.f7458e;
                    c0056b55.f7511t = G(typedArray, index, c0056b55.f7511t);
                    break;
                case 93:
                    C0056b c0056b56 = aVar.f7458e;
                    c0056b56.N = typedArray.getDimensionPixelSize(index, c0056b56.N);
                    break;
                case MBSupportMuteAdType.REWARD_VIDEO:
                    C0056b c0056b57 = aVar.f7458e;
                    c0056b57.U = typedArray.getDimensionPixelSize(index, c0056b57.U);
                    break;
                case 95:
                    H(aVar.f7458e, typedArray, index, 0);
                    break;
                case 96:
                    H(aVar.f7458e, typedArray, index, 1);
                    break;
                case 97:
                    C0056b c0056b58 = aVar.f7458e;
                    c0056b58.f7508q0 = typedArray.getInt(index, c0056b58.f7508q0);
                    break;
            }
        }
        C0056b c0056b59 = aVar.f7458e;
        if (c0056b59.f7498l0 != null) {
            c0056b59.f7496k0 = null;
        }
    }

    private static void L(Context context, a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        a.C0055a c0055a = new a.C0055a();
        aVar.f7461h = c0055a;
        aVar.f7457d.f7519a = false;
        aVar.f7458e.f7477b = false;
        aVar.f7456c.f7533a = false;
        aVar.f7459f.f7539a = false;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            switch (f7446j.get(index)) {
                case 2:
                    c0055a.b(2, typedArray.getDimensionPixelSize(index, aVar.f7458e.K));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case 61:
                case 88:
                case TsExtractor.TS_STREAM_TYPE_DVBSUBS:
                case TmcConstants.NOTIFY_ADDHOME_API_SHOW:
                case 91:
                case 92:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f7445i.get(index));
                    break;
                case 5:
                    c0055a.c(5, typedArray.getString(index));
                    break;
                case 6:
                    c0055a.b(6, typedArray.getDimensionPixelOffset(index, aVar.f7458e.E));
                    break;
                case 7:
                    c0055a.b(7, typedArray.getDimensionPixelOffset(index, aVar.f7458e.F));
                    break;
                case 8:
                    c0055a.b(8, typedArray.getDimensionPixelSize(index, aVar.f7458e.L));
                    break;
                case 11:
                    c0055a.b(11, typedArray.getDimensionPixelSize(index, aVar.f7458e.R));
                    break;
                case 12:
                    c0055a.b(12, typedArray.getDimensionPixelSize(index, aVar.f7458e.S));
                    break;
                case 13:
                    c0055a.b(13, typedArray.getDimensionPixelSize(index, aVar.f7458e.O));
                    break;
                case 14:
                    c0055a.b(14, typedArray.getDimensionPixelSize(index, aVar.f7458e.Q));
                    break;
                case 15:
                    c0055a.b(15, typedArray.getDimensionPixelSize(index, aVar.f7458e.T));
                    break;
                case 16:
                    c0055a.b(16, typedArray.getDimensionPixelSize(index, aVar.f7458e.P));
                    break;
                case 17:
                    c0055a.b(17, typedArray.getDimensionPixelOffset(index, aVar.f7458e.f7485f));
                    break;
                case 18:
                    c0055a.b(18, typedArray.getDimensionPixelOffset(index, aVar.f7458e.f7487g));
                    break;
                case 19:
                    c0055a.a(19, typedArray.getFloat(index, aVar.f7458e.f7489h));
                    break;
                case 20:
                    c0055a.a(20, typedArray.getFloat(index, aVar.f7458e.f7516y));
                    break;
                case 21:
                    c0055a.b(21, typedArray.getLayoutDimension(index, aVar.f7458e.f7483e));
                    break;
                case 22:
                    c0055a.b(22, f7444h[typedArray.getInt(index, aVar.f7456c.f7534b)]);
                    break;
                case 23:
                    c0055a.b(23, typedArray.getLayoutDimension(index, aVar.f7458e.f7481d));
                    break;
                case 24:
                    c0055a.b(24, typedArray.getDimensionPixelSize(index, aVar.f7458e.H));
                    break;
                case 27:
                    c0055a.b(27, typedArray.getInt(index, aVar.f7458e.G));
                    break;
                case 28:
                    c0055a.b(28, typedArray.getDimensionPixelSize(index, aVar.f7458e.I));
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    c0055a.b(31, typedArray.getDimensionPixelSize(index, aVar.f7458e.M));
                    break;
                case 34:
                    c0055a.b(34, typedArray.getDimensionPixelSize(index, aVar.f7458e.J));
                    break;
                case 37:
                    c0055a.a(37, typedArray.getFloat(index, aVar.f7458e.f7517z));
                    break;
                case 38:
                    int resourceId = typedArray.getResourceId(index, aVar.f7454a);
                    aVar.f7454a = resourceId;
                    c0055a.b(38, resourceId);
                    break;
                case 39:
                    c0055a.a(39, typedArray.getFloat(index, aVar.f7458e.W));
                    break;
                case 40:
                    c0055a.a(40, typedArray.getFloat(index, aVar.f7458e.V));
                    break;
                case 41:
                    c0055a.b(41, typedArray.getInt(index, aVar.f7458e.X));
                    break;
                case 42:
                    c0055a.b(42, typedArray.getInt(index, aVar.f7458e.Y));
                    break;
                case 43:
                    c0055a.a(43, typedArray.getFloat(index, aVar.f7456c.f7536d));
                    break;
                case 44:
                    c0055a.d(44, true);
                    c0055a.a(44, typedArray.getDimension(index, aVar.f7459f.f7552n));
                    break;
                case 45:
                    c0055a.a(45, typedArray.getFloat(index, aVar.f7459f.f7541c));
                    break;
                case 46:
                    c0055a.a(46, typedArray.getFloat(index, aVar.f7459f.f7542d));
                    break;
                case 47:
                    c0055a.a(47, typedArray.getFloat(index, aVar.f7459f.f7543e));
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    c0055a.a(48, typedArray.getFloat(index, aVar.f7459f.f7544f));
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    c0055a.a(49, typedArray.getDimension(index, aVar.f7459f.f7545g));
                    break;
                case 50:
                    c0055a.a(50, typedArray.getDimension(index, aVar.f7459f.f7546h));
                    break;
                case AD_REWARD_USER_VALUE:
                    c0055a.a(51, typedArray.getDimension(index, aVar.f7459f.f7548j));
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    c0055a.a(52, typedArray.getDimension(index, aVar.f7459f.f7549k));
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    c0055a.a(53, typedArray.getDimension(index, aVar.f7459f.f7550l));
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    c0055a.b(54, typedArray.getInt(index, aVar.f7458e.Z));
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    c0055a.b(55, typedArray.getInt(index, aVar.f7458e.f7476a0));
                    break;
                case AD_VISIBILITY_VALUE:
                    c0055a.b(56, typedArray.getDimensionPixelSize(index, aVar.f7458e.f7478b0));
                    break;
                case 57:
                    c0055a.b(57, typedArray.getDimensionPixelSize(index, aVar.f7458e.f7480c0));
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    c0055a.b(58, typedArray.getDimensionPixelSize(index, aVar.f7458e.f7482d0));
                    break;
                case 59:
                    c0055a.b(59, typedArray.getDimensionPixelSize(index, aVar.f7458e.f7484e0));
                    break;
                case 60:
                    c0055a.a(60, typedArray.getFloat(index, aVar.f7459f.f7540b));
                    break;
                case 62:
                    c0055a.b(62, typedArray.getDimensionPixelSize(index, aVar.f7458e.C));
                    break;
                case 63:
                    c0055a.a(63, typedArray.getFloat(index, aVar.f7458e.D));
                    break;
                case 64:
                    c0055a.b(64, G(typedArray, index, aVar.f7457d.f7520b));
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (typedArray.peekValue(index).type == 3) {
                        c0055a.c(65, typedArray.getString(index));
                    } else {
                        c0055a.c(65, androidx.constraintlayout.core.motion.utils.c.f6459c[typedArray.getInteger(index, 0)]);
                    }
                    break;
                case 66:
                    c0055a.b(66, typedArray.getInt(index, 0));
                    break;
                case 67:
                    c0055a.a(67, typedArray.getFloat(index, aVar.f7457d.f7527i));
                    break;
                case 68:
                    c0055a.a(68, typedArray.getFloat(index, aVar.f7456c.f7537e));
                    break;
                case 69:
                    c0055a.a(69, typedArray.getFloat(index, 1.0f));
                    break;
                case 70:
                    c0055a.a(70, typedArray.getFloat(index, 1.0f));
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    c0055a.b(72, typedArray.getInt(index, aVar.f7458e.f7490h0));
                    break;
                case 73:
                    c0055a.b(73, typedArray.getDimensionPixelSize(index, aVar.f7458e.f7492i0));
                    break;
                case 74:
                    c0055a.c(74, typedArray.getString(index));
                    break;
                case 75:
                    c0055a.d(75, typedArray.getBoolean(index, aVar.f7458e.f7506p0));
                    break;
                case 76:
                    c0055a.b(76, typedArray.getInt(index, aVar.f7457d.f7523e));
                    break;
                case 77:
                    c0055a.c(77, typedArray.getString(index));
                    break;
                case 78:
                    c0055a.b(78, typedArray.getInt(index, aVar.f7456c.f7535c));
                    break;
                case 79:
                    c0055a.a(79, typedArray.getFloat(index, aVar.f7457d.f7525g));
                    break;
                case 80:
                    c0055a.d(80, typedArray.getBoolean(index, aVar.f7458e.f7502n0));
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW:
                    c0055a.d(81, typedArray.getBoolean(index, aVar.f7458e.f7504o0));
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW:
                    c0055a.b(82, typedArray.getInteger(index, aVar.f7457d.f7521c));
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW:
                    c0055a.b(83, G(typedArray, index, aVar.f7459f.f7547i));
                    break;
                case 84:
                    c0055a.b(84, typedArray.getInteger(index, aVar.f7457d.f7529k));
                    break;
                case 85:
                    c0055a.a(85, typedArray.getFloat(index, aVar.f7457d.f7528j));
                    break;
                case 86:
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        aVar.f7457d.f7532n = typedArray.getResourceId(index, -1);
                        c0055a.b(89, aVar.f7457d.f7532n);
                        c cVar = aVar.f7457d;
                        if (cVar.f7532n != -1) {
                            cVar.f7531m = -2;
                            c0055a.b(88, -2);
                        }
                    } else if (i11 == 3) {
                        aVar.f7457d.f7530l = typedArray.getString(index);
                        c0055a.c(90, aVar.f7457d.f7530l);
                        if (aVar.f7457d.f7530l.indexOf("/") > 0) {
                            aVar.f7457d.f7532n = typedArray.getResourceId(index, -1);
                            c0055a.b(89, aVar.f7457d.f7532n);
                            aVar.f7457d.f7531m = -2;
                            c0055a.b(88, -2);
                        } else {
                            aVar.f7457d.f7531m = -1;
                            c0055a.b(88, -1);
                        }
                    } else {
                        c cVar2 = aVar.f7457d;
                        cVar2.f7531m = typedArray.getInteger(index, cVar2.f7532n);
                        c0055a.b(88, aVar.f7457d.f7531m);
                    }
                    break;
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7445i.get(index));
                    break;
                case 93:
                    c0055a.b(93, typedArray.getDimensionPixelSize(index, aVar.f7458e.N));
                    break;
                case MBSupportMuteAdType.REWARD_VIDEO:
                    c0055a.b(94, typedArray.getDimensionPixelSize(index, aVar.f7458e.U));
                    break;
                case 95:
                    H(c0055a, typedArray, index, 0);
                    break;
                case 96:
                    H(c0055a, typedArray, index, 1);
                    break;
                case 97:
                    c0055a.b(97, typedArray.getInt(index, aVar.f7458e.f7508q0));
                    break;
                case 98:
                    if (MotionLayout.IS_IN_EDIT_MODE) {
                        int resourceId2 = typedArray.getResourceId(index, aVar.f7454a);
                        aVar.f7454a = resourceId2;
                        if (resourceId2 == -1) {
                            aVar.f7455b = typedArray.getString(index);
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        aVar.f7455b = typedArray.getString(index);
                    } else {
                        aVar.f7454a = typedArray.getResourceId(index, aVar.f7454a);
                    }
                    break;
                case 99:
                    c0055a.d(99, typedArray.getBoolean(index, aVar.f7458e.f7491i));
                    break;
            }
        }
    }

    public static void O(a aVar, int i10, float f10) {
        if (i10 == 19) {
            aVar.f7458e.f7489h = f10;
        }
        if (i10 == 20) {
            aVar.f7458e.f7516y = f10;
            return;
        }
        if (i10 == 37) {
            aVar.f7458e.f7517z = f10;
            return;
        }
        if (i10 == 60) {
            aVar.f7459f.f7540b = f10;
            return;
        }
        if (i10 == 63) {
            aVar.f7458e.D = f10;
            return;
        }
        if (i10 == 79) {
            aVar.f7457d.f7525g = f10;
            return;
        }
        if (i10 == 85) {
            aVar.f7457d.f7528j = f10;
            return;
        }
        if (i10 != 87) {
            if (i10 == 39) {
                aVar.f7458e.W = f10;
                return;
            }
            if (i10 == 40) {
                aVar.f7458e.V = f10;
                return;
            }
            switch (i10) {
                case 43:
                    aVar.f7456c.f7536d = f10;
                    break;
                case 44:
                    e eVar = aVar.f7459f;
                    eVar.f7552n = f10;
                    eVar.f7551m = true;
                    break;
                case 45:
                    aVar.f7459f.f7541c = f10;
                    break;
                case 46:
                    aVar.f7459f.f7542d = f10;
                    break;
                case 47:
                    aVar.f7459f.f7543e = f10;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    aVar.f7459f.f7544f = f10;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    aVar.f7459f.f7545g = f10;
                    break;
                case 50:
                    aVar.f7459f.f7546h = f10;
                    break;
                case AD_REWARD_USER_VALUE:
                    aVar.f7459f.f7548j = f10;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    aVar.f7459f.f7549k = f10;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    aVar.f7459f.f7550l = f10;
                    break;
                default:
                    switch (i10) {
                        case 67:
                            aVar.f7457d.f7527i = f10;
                            break;
                        case 68:
                            aVar.f7456c.f7537e = f10;
                            break;
                        case 69:
                            aVar.f7458e.f7486f0 = f10;
                            break;
                        case 70:
                            aVar.f7458e.f7488g0 = f10;
                            break;
                        default:
                            Log.w("ConstraintSet", "Unknown attribute 0x");
                            break;
                    }
                    break;
            }
        }
    }

    public static void P(a aVar, int i10, int i11) {
        if (i10 == 6) {
            aVar.f7458e.E = i11;
        }
        if (i10 == 7) {
            aVar.f7458e.F = i11;
            return;
        }
        if (i10 == 8) {
            aVar.f7458e.L = i11;
            return;
        }
        if (i10 == 27) {
            aVar.f7458e.G = i11;
            return;
        }
        if (i10 == 28) {
            aVar.f7458e.I = i11;
            return;
        }
        if (i10 == 41) {
            aVar.f7458e.X = i11;
            return;
        }
        if (i10 == 42) {
            aVar.f7458e.Y = i11;
            return;
        }
        if (i10 == 61) {
            aVar.f7458e.B = i11;
            return;
        }
        if (i10 == 62) {
            aVar.f7458e.C = i11;
            return;
        }
        if (i10 == 72) {
            aVar.f7458e.f7490h0 = i11;
            return;
        }
        if (i10 == 73) {
            aVar.f7458e.f7492i0 = i11;
            return;
        }
        switch (i10) {
            case 2:
                aVar.f7458e.K = i11;
                break;
            case 11:
                aVar.f7458e.R = i11;
                break;
            case 12:
                aVar.f7458e.S = i11;
                break;
            case 13:
                aVar.f7458e.O = i11;
                break;
            case 14:
                aVar.f7458e.Q = i11;
                break;
            case 15:
                aVar.f7458e.T = i11;
                break;
            case 16:
                aVar.f7458e.P = i11;
                break;
            case 17:
                aVar.f7458e.f7485f = i11;
                break;
            case 18:
                aVar.f7458e.f7487g = i11;
                break;
            case TEMPLATE_HTML_SIZE_VALUE:
                aVar.f7458e.M = i11;
                break;
            case 34:
                aVar.f7458e.J = i11;
                break;
            case 38:
                aVar.f7454a = i11;
                break;
            case 64:
                aVar.f7457d.f7520b = i11;
                break;
            case 66:
                aVar.f7457d.f7524f = i11;
                break;
            case 76:
                aVar.f7457d.f7523e = i11;
                break;
            case 78:
                aVar.f7456c.f7535c = i11;
                break;
            case 93:
                aVar.f7458e.N = i11;
                break;
            case MBSupportMuteAdType.REWARD_VIDEO:
                aVar.f7458e.U = i11;
                break;
            case 97:
                aVar.f7458e.f7508q0 = i11;
                break;
            default:
                switch (i10) {
                    case 21:
                        aVar.f7458e.f7483e = i11;
                        break;
                    case 22:
                        aVar.f7456c.f7534b = i11;
                        break;
                    case 23:
                        aVar.f7458e.f7481d = i11;
                        break;
                    case 24:
                        aVar.f7458e.H = i11;
                        break;
                    default:
                        switch (i10) {
                            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                aVar.f7458e.Z = i11;
                                break;
                            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                aVar.f7458e.f7476a0 = i11;
                                break;
                            case AD_VISIBILITY_VALUE:
                                aVar.f7458e.f7478b0 = i11;
                                break;
                            case 57:
                                aVar.f7458e.f7480c0 = i11;
                                break;
                            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                aVar.f7458e.f7482d0 = i11;
                                break;
                            case 59:
                                aVar.f7458e.f7484e0 = i11;
                                break;
                            default:
                                switch (i10) {
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW:
                                        aVar.f7457d.f7521c = i11;
                                        break;
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW:
                                        aVar.f7459f.f7547i = i11;
                                        break;
                                    case 84:
                                        aVar.f7457d.f7529k = i11;
                                        break;
                                    default:
                                        switch (i10) {
                                            case 87:
                                                break;
                                            case 88:
                                                aVar.f7457d.f7531m = i11;
                                                break;
                                            case TsExtractor.TS_STREAM_TYPE_DVBSUBS:
                                                aVar.f7457d.f7532n = i11;
                                                break;
                                            default:
                                                Log.w("ConstraintSet", "Unknown attribute 0x");
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public static void Q(a aVar, int i10, String str) {
        if (i10 == 5) {
            aVar.f7458e.A = str;
            return;
        }
        if (i10 == 65) {
            aVar.f7457d.f7522d = str;
            return;
        }
        if (i10 == 74) {
            C0056b c0056b = aVar.f7458e;
            c0056b.f7498l0 = str;
            c0056b.f7496k0 = null;
        } else if (i10 == 77) {
            aVar.f7458e.f7500m0 = str;
        } else if (i10 != 87) {
            if (i10 != 90) {
                Log.w("ConstraintSet", "Unknown attribute 0x");
            } else {
                aVar.f7457d.f7530l = str;
            }
        }
    }

    public static void R(a aVar, int i10, boolean z10) {
        if (i10 == 44) {
            aVar.f7459f.f7551m = z10;
            return;
        }
        if (i10 == 75) {
            aVar.f7458e.f7506p0 = z10;
            return;
        }
        if (i10 != 87) {
            if (i10 == 80) {
                aVar.f7458e.f7502n0 = z10;
            } else if (i10 != 81) {
                Log.w("ConstraintSet", "Unknown attribute 0x");
            } else {
                aVar.f7458e.f7504o0 = z10;
            }
        }
    }

    private String X(int i10) {
        switch (i10) {
            case 1:
                return TtmlNode.LEFT;
            case 2:
                return TtmlNode.RIGHT;
            case 3:
                return IntegrationConstants.TAB_BAR_POSITION_TOP;
            case 4:
                return IntegrationConstants.TAB_BAR_POSITION_DEFAULT;
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return TtmlNode.END;
            default:
                return "undefined";
        }
    }

    public static a m(Context context, XmlPullParser xmlPullParser) {
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSetAsAttributeSet, R$styleable.ConstraintOverride);
        L(context, aVar, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    private int[] u(View view, String str) {
        int iIntValue;
        Object designInformation;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < strArrSplit.length) {
            String strTrim = strArrSplit[i10].trim();
            try {
                iIntValue = R$id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) {
                iIntValue = ((Integer) designInformation).intValue();
            }
            iArr[i11] = iIntValue;
            i10++;
            i11++;
        }
        return i11 != strArrSplit.length ? Arrays.copyOf(iArr, i11) : iArr;
    }

    private a v(Context context, AttributeSet attributeSet, boolean z10) {
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z10 ? R$styleable.ConstraintOverride : R$styleable.Constraint);
        K(context, aVar, typedArrayObtainStyledAttributes, z10);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    private a w(int i10) {
        if (!this.f7453g.containsKey(Integer.valueOf(i10))) {
            this.f7453g.put(Integer.valueOf(i10), new a());
        }
        return (a) this.f7453g.get(Integer.valueOf(i10));
    }

    public a A(int i10) {
        return w(i10);
    }

    public int B(int i10) {
        return w(i10).f7456c.f7534b;
    }

    public int C(int i10) {
        return w(i10).f7456c.f7535c;
    }

    public int D(int i10) {
        return w(i10).f7458e.f7481d;
    }

    public void E(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a aVarV = v(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        aVarV.f7458e.f7475a = true;
                    }
                    this.f7453g.put(Integer.valueOf(aVarV.f7454a), aVarV);
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void F(Context context, XmlPullParser xmlPullParser) {
        try {
            int eventType = xmlPullParser.getEventType();
            a aVarV = null;
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else if (eventType == 2) {
                    switch (xmlPullParser.getName()) {
                        case "Constraint":
                            aVarV = v(context, Xml.asAttributeSet(xmlPullParser), false);
                            break;
                        case "ConstraintOverride":
                            aVarV = v(context, Xml.asAttributeSet(xmlPullParser), true);
                            break;
                        case "Guideline":
                            aVarV = v(context, Xml.asAttributeSet(xmlPullParser), false);
                            C0056b c0056b = aVarV.f7458e;
                            c0056b.f7475a = true;
                            c0056b.f7477b = true;
                            break;
                        case "Barrier":
                            aVarV = v(context, Xml.asAttributeSet(xmlPullParser), false);
                            aVarV.f7458e.f7494j0 = 1;
                            break;
                        case "PropertySet":
                            if (aVarV == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVarV.f7456c.b(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                            break;
                        case "Transform":
                            if (aVarV == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVarV.f7459f.b(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                            break;
                        case "Layout":
                            if (aVarV == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVarV.f7458e.b(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                            break;
                        case "Motion":
                            if (aVarV == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVarV.f7457d.b(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                            break;
                        case "CustomAttribute":
                        case "CustomMethod":
                            if (aVarV == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            ConstraintAttribute.i(context, xmlPullParser, aVarV.f7460g);
                            break;
                            break;
                    }
                } else if (eventType == 3) {
                    String lowerCase = xmlPullParser.getName().toLowerCase(Locale.ROOT);
                    switch (lowerCase.hashCode()) {
                        case -2075718416:
                            if (lowerCase.equals("guideline")) {
                            }
                            break;
                        case -190376483:
                            if (lowerCase.equals("constraint")) {
                            }
                            break;
                        case 426575017:
                            if (lowerCase.equals("constraintoverride")) {
                            }
                            break;
                        case 2146106725:
                            if (lowerCase.equals("constraintset")) {
                            }
                            break;
                    }
                    if (r4 == 0) {
                        return;
                    }
                    if (r4 == 1 || r4 == 2 || r4 == 3) {
                        this.f7453g.put(Integer.valueOf(aVarV.f7454a), aVarV);
                        aVarV = null;
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    public void M(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.f7452f && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f7453g.containsKey(Integer.valueOf(id2))) {
                this.f7453g.put(Integer.valueOf(id2), new a());
            }
            a aVar = (a) this.f7453g.get(Integer.valueOf(id2));
            if (aVar != null) {
                if (!aVar.f7458e.f7477b) {
                    aVar.g(id2, bVar);
                    if (childAt instanceof ConstraintHelper) {
                        aVar.f7458e.f7496k0 = ((ConstraintHelper) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            aVar.f7458e.f7506p0 = barrier.getAllowsGoneWidget();
                            aVar.f7458e.f7490h0 = barrier.getType();
                            aVar.f7458e.f7492i0 = barrier.getMargin();
                        }
                    }
                    aVar.f7458e.f7477b = true;
                }
                d dVar = aVar.f7456c;
                if (!dVar.f7533a) {
                    dVar.f7534b = childAt.getVisibility();
                    aVar.f7456c.f7536d = childAt.getAlpha();
                    aVar.f7456c.f7533a = true;
                }
                e eVar = aVar.f7459f;
                if (!eVar.f7539a) {
                    eVar.f7539a = true;
                    eVar.f7540b = childAt.getRotation();
                    aVar.f7459f.f7541c = childAt.getRotationX();
                    aVar.f7459f.f7542d = childAt.getRotationY();
                    aVar.f7459f.f7543e = childAt.getScaleX();
                    aVar.f7459f.f7544f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        e eVar2 = aVar.f7459f;
                        eVar2.f7545g = pivotX;
                        eVar2.f7546h = pivotY;
                    }
                    aVar.f7459f.f7548j = childAt.getTranslationX();
                    aVar.f7459f.f7549k = childAt.getTranslationY();
                    aVar.f7459f.f7550l = childAt.getTranslationZ();
                    e eVar3 = aVar.f7459f;
                    if (eVar3.f7551m) {
                        eVar3.f7552n = childAt.getElevation();
                    }
                }
            }
        }
    }

    public void N(b bVar) {
        for (Integer num : bVar.f7453g.keySet()) {
            num.intValue();
            a aVar = (a) bVar.f7453g.get(num);
            if (!this.f7453g.containsKey(num)) {
                this.f7453g.put(num, new a());
            }
            a aVar2 = (a) this.f7453g.get(num);
            if (aVar2 != null) {
                C0056b c0056b = aVar2.f7458e;
                if (!c0056b.f7477b) {
                    c0056b.a(aVar.f7458e);
                }
                d dVar = aVar2.f7456c;
                if (!dVar.f7533a) {
                    dVar.a(aVar.f7456c);
                }
                e eVar = aVar2.f7459f;
                if (!eVar.f7539a) {
                    eVar.a(aVar.f7459f);
                }
                c cVar = aVar2.f7457d;
                if (!cVar.f7519a) {
                    cVar.a(aVar.f7457d);
                }
                for (String str : aVar.f7460g.keySet()) {
                    if (!aVar2.f7460g.containsKey(str)) {
                        aVar2.f7460g.put(str, (ConstraintAttribute) aVar.f7460g.get(str));
                    }
                }
            }
        }
    }

    public void S(boolean z10) {
        this.f7452f = z10;
    }

    public void T(int i10, int i11) {
        w(i10).f7458e.f7487g = i11;
        w(i10).f7458e.f7485f = -1;
        w(i10).f7458e.f7489h = -1.0f;
    }

    public void U(int i10, int i11, int i12) {
        a aVarW = w(i10);
        switch (i11) {
            case 1:
                aVarW.f7458e.H = i12;
                return;
            case 2:
                aVarW.f7458e.I = i12;
                return;
            case 3:
                aVarW.f7458e.J = i12;
                return;
            case 4:
                aVarW.f7458e.K = i12;
                return;
            case 5:
                aVarW.f7458e.N = i12;
                return;
            case 6:
                aVarW.f7458e.M = i12;
                return;
            case 7:
                aVarW.f7458e.L = i12;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void V(boolean z10) {
        this.f7447a = z10;
    }

    public void W(int i10, float f10) {
        w(i10).f7458e.f7517z = f10;
    }

    public void g(ConstraintLayout constraintLayout) {
        a aVar;
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            int id2 = childAt.getId();
            if (!this.f7453g.containsKey(Integer.valueOf(id2))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.motion.widget.a.d(childAt));
            } else {
                if (this.f7452f && id2 == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (this.f7453g.containsKey(Integer.valueOf(id2)) && (aVar = (a) this.f7453g.get(Integer.valueOf(id2))) != null) {
                    ConstraintAttribute.j(childAt, aVar.f7460g);
                }
            }
        }
    }

    public void h(b bVar) {
        for (a aVar : bVar.f7453g.values()) {
            if (aVar.f7461h != null) {
                if (aVar.f7455b != null) {
                    Iterator it = this.f7453g.keySet().iterator();
                    while (it.hasNext()) {
                        a aVarX = x(((Integer) it.next()).intValue());
                        String str = aVarX.f7458e.f7500m0;
                        if (str != null && aVar.f7455b.matches(str)) {
                            aVar.f7461h.e(aVarX);
                            aVarX.f7460g.putAll((HashMap) aVar.f7460g.clone());
                        }
                    }
                } else {
                    aVar.f7461h.e(x(aVar.f7454a));
                }
            }
        }
    }

    public void i(ConstraintLayout constraintLayout) {
        k(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void j(ConstraintHelper constraintHelper, ConstraintWidget constraintWidget, ConstraintLayout.b bVar, SparseArray sparseArray) {
        a aVar;
        int id2 = constraintHelper.getId();
        if (this.f7453g.containsKey(Integer.valueOf(id2)) && (aVar = (a) this.f7453g.get(Integer.valueOf(id2))) != null && (constraintWidget instanceof t0.b)) {
            constraintHelper.loadParameters(aVar, (t0.b) constraintWidget, bVar, sparseArray);
        }
    }

    void k(ConstraintLayout constraintLayout, boolean z10) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.f7453g.keySet());
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            int id2 = childAt.getId();
            if (!this.f7453g.containsKey(Integer.valueOf(id2))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.motion.widget.a.d(childAt));
            } else {
                if (this.f7452f && id2 == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id2 != -1) {
                    if (this.f7453g.containsKey(Integer.valueOf(id2))) {
                        hashSet.remove(Integer.valueOf(id2));
                        a aVar = (a) this.f7453g.get(Integer.valueOf(id2));
                        if (aVar != null) {
                            if (childAt instanceof Barrier) {
                                aVar.f7458e.f7494j0 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id2);
                                barrier.setType(aVar.f7458e.f7490h0);
                                barrier.setMargin(aVar.f7458e.f7492i0);
                                barrier.setAllowsGoneWidget(aVar.f7458e.f7506p0);
                                C0056b c0056b = aVar.f7458e;
                                int[] iArr = c0056b.f7496k0;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = c0056b.f7498l0;
                                    if (str != null) {
                                        c0056b.f7496k0 = u(barrier, str);
                                        barrier.setReferencedIds(aVar.f7458e.f7496k0);
                                    }
                                }
                            }
                            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
                            bVar.c();
                            aVar.e(bVar);
                            if (z10) {
                                ConstraintAttribute.j(childAt, aVar.f7460g);
                            }
                            childAt.setLayoutParams(bVar);
                            d dVar = aVar.f7456c;
                            if (dVar.f7535c == 0) {
                                childAt.setVisibility(dVar.f7534b);
                            }
                            childAt.setAlpha(aVar.f7456c.f7536d);
                            childAt.setRotation(aVar.f7459f.f7540b);
                            childAt.setRotationX(aVar.f7459f.f7541c);
                            childAt.setRotationY(aVar.f7459f.f7542d);
                            childAt.setScaleX(aVar.f7459f.f7543e);
                            childAt.setScaleY(aVar.f7459f.f7544f);
                            e eVar = aVar.f7459f;
                            if (eVar.f7547i != -1) {
                                View viewFindViewById = ((View) childAt.getParent()).findViewById(aVar.f7459f.f7547i);
                                if (viewFindViewById != null) {
                                    float top = (viewFindViewById.getTop() + viewFindViewById.getBottom()) / 2.0f;
                                    float left = (viewFindViewById.getLeft() + viewFindViewById.getRight()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        float left2 = left - childAt.getLeft();
                                        float top2 = top - childAt.getTop();
                                        childAt.setPivotX(left2);
                                        childAt.setPivotY(top2);
                                    }
                                }
                            } else {
                                if (!Float.isNaN(eVar.f7545g)) {
                                    childAt.setPivotX(aVar.f7459f.f7545g);
                                }
                                if (!Float.isNaN(aVar.f7459f.f7546h)) {
                                    childAt.setPivotY(aVar.f7459f.f7546h);
                                }
                            }
                            childAt.setTranslationX(aVar.f7459f.f7548j);
                            childAt.setTranslationY(aVar.f7459f.f7549k);
                            childAt.setTranslationZ(aVar.f7459f.f7550l);
                            e eVar2 = aVar.f7459f;
                            if (eVar2.f7551m) {
                                childAt.setElevation(eVar2.f7552n);
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id2);
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            a aVar2 = (a) this.f7453g.get(num);
            if (aVar2 != null) {
                if (aVar2.f7458e.f7494j0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    C0056b c0056b2 = aVar2.f7458e;
                    int[] iArr2 = c0056b2.f7496k0;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = c0056b2.f7498l0;
                        if (str2 != null) {
                            c0056b2.f7496k0 = u(barrier2, str2);
                            barrier2.setReferencedIds(aVar2.f7458e.f7496k0);
                        }
                    }
                    barrier2.setType(aVar2.f7458e.f7490h0);
                    barrier2.setMargin(aVar2.f7458e.f7492i0);
                    ConstraintLayout.b bVarGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.validateParams();
                    aVar2.e(bVarGenerateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, bVarGenerateDefaultLayoutParams);
                }
                if (aVar2.f7458e.f7475a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.b bVarGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    aVar2.e(bVarGenerateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, bVarGenerateDefaultLayoutParams2);
                }
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt2 = constraintLayout.getChildAt(i11);
            if (childAt2 instanceof ConstraintHelper) {
                ((ConstraintHelper) childAt2).f(constraintLayout);
            }
        }
    }

    public void l(int i10, ConstraintLayout.b bVar) {
        a aVar;
        if (!this.f7453g.containsKey(Integer.valueOf(i10)) || (aVar = (a) this.f7453g.get(Integer.valueOf(i10))) == null) {
            return;
        }
        aVar.e(bVar);
    }

    public void n(int i10, int i11) {
        a aVar;
        if (!this.f7453g.containsKey(Integer.valueOf(i10)) || (aVar = (a) this.f7453g.get(Integer.valueOf(i10))) == null) {
            return;
        }
        switch (i11) {
            case 1:
                C0056b c0056b = aVar.f7458e;
                c0056b.f7495k = -1;
                c0056b.f7493j = -1;
                c0056b.H = -1;
                c0056b.O = Integer.MIN_VALUE;
                return;
            case 2:
                C0056b c0056b2 = aVar.f7458e;
                c0056b2.f7499m = -1;
                c0056b2.f7497l = -1;
                c0056b2.I = -1;
                c0056b2.Q = Integer.MIN_VALUE;
                return;
            case 3:
                C0056b c0056b3 = aVar.f7458e;
                c0056b3.f7503o = -1;
                c0056b3.f7501n = -1;
                c0056b3.J = 0;
                c0056b3.P = Integer.MIN_VALUE;
                return;
            case 4:
                C0056b c0056b4 = aVar.f7458e;
                c0056b4.f7505p = -1;
                c0056b4.f7507q = -1;
                c0056b4.K = 0;
                c0056b4.R = Integer.MIN_VALUE;
                return;
            case 5:
                C0056b c0056b5 = aVar.f7458e;
                c0056b5.f7509r = -1;
                c0056b5.f7510s = -1;
                c0056b5.f7511t = -1;
                c0056b5.N = 0;
                c0056b5.U = Integer.MIN_VALUE;
                return;
            case 6:
                C0056b c0056b6 = aVar.f7458e;
                c0056b6.f7512u = -1;
                c0056b6.f7513v = -1;
                c0056b6.M = 0;
                c0056b6.T = Integer.MIN_VALUE;
                return;
            case 7:
                C0056b c0056b7 = aVar.f7458e;
                c0056b7.f7514w = -1;
                c0056b7.f7515x = -1;
                c0056b7.L = 0;
                c0056b7.S = Integer.MIN_VALUE;
                return;
            case 8:
                C0056b c0056b8 = aVar.f7458e;
                c0056b8.D = -1.0f;
                c0056b8.C = -1;
                c0056b8.B = -1;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void o(Context context, int i10) {
        p((ConstraintLayout) LayoutInflater.from(context).inflate(i10, (ViewGroup) null));
    }

    public void p(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f7453g.clear();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.f7452f && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f7453g.containsKey(Integer.valueOf(id2))) {
                this.f7453g.put(Integer.valueOf(id2), new a());
            }
            a aVar = (a) this.f7453g.get(Integer.valueOf(id2));
            if (aVar != null) {
                aVar.f7460g = ConstraintAttribute.b(this.f7451e, childAt);
                aVar.g(id2, bVar);
                aVar.f7456c.f7534b = childAt.getVisibility();
                aVar.f7456c.f7536d = childAt.getAlpha();
                aVar.f7459f.f7540b = childAt.getRotation();
                aVar.f7459f.f7541c = childAt.getRotationX();
                aVar.f7459f.f7542d = childAt.getRotationY();
                aVar.f7459f.f7543e = childAt.getScaleX();
                aVar.f7459f.f7544f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    e eVar = aVar.f7459f;
                    eVar.f7545g = pivotX;
                    eVar.f7546h = pivotY;
                }
                aVar.f7459f.f7548j = childAt.getTranslationX();
                aVar.f7459f.f7549k = childAt.getTranslationY();
                aVar.f7459f.f7550l = childAt.getTranslationZ();
                e eVar2 = aVar.f7459f;
                if (eVar2.f7551m) {
                    eVar2.f7552n = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    aVar.f7458e.f7506p0 = barrier.getAllowsGoneWidget();
                    aVar.f7458e.f7496k0 = barrier.getReferencedIds();
                    aVar.f7458e.f7490h0 = barrier.getType();
                    aVar.f7458e.f7492i0 = barrier.getMargin();
                }
            }
        }
    }

    public void q(b bVar) {
        this.f7453g.clear();
        for (Integer num : bVar.f7453g.keySet()) {
            a aVar = (a) bVar.f7453g.get(num);
            if (aVar != null) {
                this.f7453g.put(num, aVar.clone());
            }
        }
    }

    public void r(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f7453g.clear();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraints.getChildAt(i10);
            Constraints.a aVar = (Constraints.a) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.f7452f && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f7453g.containsKey(Integer.valueOf(id2))) {
                this.f7453g.put(Integer.valueOf(id2), new a());
            }
            a aVar2 = (a) this.f7453g.get(Integer.valueOf(id2));
            if (aVar2 != null) {
                if (childAt instanceof ConstraintHelper) {
                    aVar2.i((ConstraintHelper) childAt, id2, aVar);
                }
                aVar2.h(id2, aVar);
            }
        }
    }

    public void s(int i10, int i11, int i12, int i13) {
        if (!this.f7453g.containsKey(Integer.valueOf(i10))) {
            this.f7453g.put(Integer.valueOf(i10), new a());
        }
        a aVar = (a) this.f7453g.get(Integer.valueOf(i10));
        if (aVar == null) {
            return;
        }
        switch (i11) {
            case 1:
                if (i13 == 1) {
                    C0056b c0056b = aVar.f7458e;
                    c0056b.f7493j = i12;
                    c0056b.f7495k = -1;
                    return;
                } else if (i13 == 2) {
                    C0056b c0056b2 = aVar.f7458e;
                    c0056b2.f7495k = i12;
                    c0056b2.f7493j = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + X(i13) + " undefined");
                }
            case 2:
                if (i13 == 1) {
                    C0056b c0056b3 = aVar.f7458e;
                    c0056b3.f7497l = i12;
                    c0056b3.f7499m = -1;
                    return;
                } else if (i13 == 2) {
                    C0056b c0056b4 = aVar.f7458e;
                    c0056b4.f7499m = i12;
                    c0056b4.f7497l = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + X(i13) + " undefined");
                }
            case 3:
                if (i13 == 3) {
                    C0056b c0056b5 = aVar.f7458e;
                    c0056b5.f7501n = i12;
                    c0056b5.f7503o = -1;
                    c0056b5.f7509r = -1;
                    c0056b5.f7510s = -1;
                    c0056b5.f7511t = -1;
                    return;
                }
                if (i13 != 4) {
                    throw new IllegalArgumentException("right to " + X(i13) + " undefined");
                }
                C0056b c0056b6 = aVar.f7458e;
                c0056b6.f7503o = i12;
                c0056b6.f7501n = -1;
                c0056b6.f7509r = -1;
                c0056b6.f7510s = -1;
                c0056b6.f7511t = -1;
                return;
            case 4:
                if (i13 == 4) {
                    C0056b c0056b7 = aVar.f7458e;
                    c0056b7.f7507q = i12;
                    c0056b7.f7505p = -1;
                    c0056b7.f7509r = -1;
                    c0056b7.f7510s = -1;
                    c0056b7.f7511t = -1;
                    return;
                }
                if (i13 != 3) {
                    throw new IllegalArgumentException("right to " + X(i13) + " undefined");
                }
                C0056b c0056b8 = aVar.f7458e;
                c0056b8.f7505p = i12;
                c0056b8.f7507q = -1;
                c0056b8.f7509r = -1;
                c0056b8.f7510s = -1;
                c0056b8.f7511t = -1;
                return;
            case 5:
                if (i13 == 5) {
                    C0056b c0056b9 = aVar.f7458e;
                    c0056b9.f7509r = i12;
                    c0056b9.f7507q = -1;
                    c0056b9.f7505p = -1;
                    c0056b9.f7501n = -1;
                    c0056b9.f7503o = -1;
                    return;
                }
                if (i13 == 3) {
                    C0056b c0056b10 = aVar.f7458e;
                    c0056b10.f7510s = i12;
                    c0056b10.f7507q = -1;
                    c0056b10.f7505p = -1;
                    c0056b10.f7501n = -1;
                    c0056b10.f7503o = -1;
                    return;
                }
                if (i13 != 4) {
                    throw new IllegalArgumentException("right to " + X(i13) + " undefined");
                }
                C0056b c0056b11 = aVar.f7458e;
                c0056b11.f7511t = i12;
                c0056b11.f7507q = -1;
                c0056b11.f7505p = -1;
                c0056b11.f7501n = -1;
                c0056b11.f7503o = -1;
                return;
            case 6:
                if (i13 == 6) {
                    C0056b c0056b12 = aVar.f7458e;
                    c0056b12.f7513v = i12;
                    c0056b12.f7512u = -1;
                    return;
                } else if (i13 == 7) {
                    C0056b c0056b13 = aVar.f7458e;
                    c0056b13.f7512u = i12;
                    c0056b13.f7513v = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + X(i13) + " undefined");
                }
            case 7:
                if (i13 == 7) {
                    C0056b c0056b14 = aVar.f7458e;
                    c0056b14.f7515x = i12;
                    c0056b14.f7514w = -1;
                    return;
                } else if (i13 == 6) {
                    C0056b c0056b15 = aVar.f7458e;
                    c0056b15.f7514w = i12;
                    c0056b15.f7515x = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + X(i13) + " undefined");
                }
            default:
                throw new IllegalArgumentException(X(i11) + " to " + X(i13) + " unknown");
        }
    }

    public void t(int i10, int i11, int i12, float f10) {
        C0056b c0056b = w(i10).f7458e;
        c0056b.B = i11;
        c0056b.C = i12;
        c0056b.D = f10;
    }

    public a x(int i10) {
        if (this.f7453g.containsKey(Integer.valueOf(i10))) {
            return (a) this.f7453g.get(Integer.valueOf(i10));
        }
        return null;
    }

    public int y(int i10) {
        return w(i10).f7458e.f7483e;
    }

    public int[] z() {
        Integer[] numArr = (Integer[]) this.f7453g.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = numArr[i10].intValue();
        }
        return iArr;
    }
}
