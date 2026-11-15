package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class m {
    private HashMap B;
    private HashMap C;
    private HashMap D;
    private k[] E;
    private int F;
    private int G;
    private View H;
    private int I;
    private float J;
    private Interpolator K;
    private boolean L;

    View f7068b;

    int f7069c;

    String f7071e;

    private androidx.constraintlayout.core.motion.utils.b[] f7077k;

    private androidx.constraintlayout.core.motion.utils.b f7078l;

    float f7082p;

    float f7083q;

    private int[] f7084r;

    private double[] f7085s;

    private double[] f7086t;

    private String[] f7087u;

    private int[] f7088v;

    Rect f7067a = new Rect();

    boolean f7070d = false;

    private int f7072f = -1;

    private o f7073g = new o();

    private o f7074h = new o();

    private l f7075i = new l();

    private l f7076j = new l();

    float f7079m = Float.NaN;

    float f7080n = 0.0f;

    float f7081o = 1.0f;

    private int f7089w = 4;

    private float[] f7090x = new float[4];

    private ArrayList f7091y = new ArrayList();

    private float[] f7092z = new float[1];
    private ArrayList A = new ArrayList();

    class a implements Interpolator {

        final androidx.constraintlayout.core.motion.utils.c f7093a;

        a(androidx.constraintlayout.core.motion.utils.c cVar) {
            this.f7093a = cVar;
        }

        @Override
        public float getInterpolation(float f10) {
            return (float) this.f7093a.a(f10);
        }
    }

    m(View view) {
        int i10 = d.f6940f;
        this.F = i10;
        this.G = i10;
        this.H = null;
        this.I = i10;
        this.J = Float.NaN;
        this.K = null;
        this.L = false;
        H(view);
    }

    private float g(float f10, float[] fArr) {
        float f11 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f12 = this.f7081o;
            if (f12 != 1.0d) {
                float f13 = this.f7080n;
                if (f10 < f13) {
                    f10 = 0.0f;
                }
                if (f10 > f13 && f10 < 1.0d) {
                    f10 = Math.min((f10 - f13) * f12, 1.0f);
                }
            }
        }
        androidx.constraintlayout.core.motion.utils.c cVar = this.f7073g.f7095a;
        float f14 = Float.NaN;
        for (o oVar : this.f7091y) {
            androidx.constraintlayout.core.motion.utils.c cVar2 = oVar.f7095a;
            if (cVar2 != null) {
                float f15 = oVar.f7097c;
                if (f15 < f10) {
                    cVar = cVar2;
                    f11 = f15;
                } else if (Float.isNaN(f14)) {
                    f14 = oVar.f7097c;
                }
            }
        }
        if (cVar != null) {
            float f16 = (Float.isNaN(f14) ? 1.0f : f14) - f11;
            double d10 = (f10 - f11) / f16;
            f10 = (((float) cVar.a(d10)) * f16) + f11;
            if (fArr != null) {
                fArr[0] = (float) cVar.b(d10);
            }
        }
        return f10;
    }

    private static Interpolator p(Context context, int i10, String str, int i11) {
        if (i10 == -2) {
            return AnimationUtils.loadInterpolator(context, i11);
        }
        if (i10 == -1) {
            return new a(androidx.constraintlayout.core.motion.utils.c.c(str));
        }
        if (i10 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i10 == 1) {
            return new AccelerateInterpolator();
        }
        if (i10 == 2) {
            return new DecelerateInterpolator();
        }
        if (i10 == 4) {
            return new BounceInterpolator();
        }
        if (i10 != 5) {
            return null;
        }
        return new OvershootInterpolator();
    }

    private float s() {
        char c10;
        float fHypot;
        float[] fArr = new float[2];
        float f10 = 1.0f / 99;
        double d10 = 0.0d;
        double d11 = 0.0d;
        float f11 = 0.0f;
        int i10 = 0;
        while (i10 < 100) {
            float f12 = i10 * f10;
            double dA = f12;
            androidx.constraintlayout.core.motion.utils.c cVar = this.f7073g.f7095a;
            float f13 = Float.NaN;
            float f14 = 0.0f;
            for (o oVar : this.f7091y) {
                androidx.constraintlayout.core.motion.utils.c cVar2 = oVar.f7095a;
                if (cVar2 != null) {
                    float f15 = oVar.f7097c;
                    if (f15 < f12) {
                        cVar = cVar2;
                        f14 = f15;
                    } else if (Float.isNaN(f13)) {
                        f13 = oVar.f7097c;
                    }
                }
            }
            if (cVar != null) {
                if (Float.isNaN(f13)) {
                    f13 = 1.0f;
                }
                float f16 = f13 - f14;
                dA = (((float) cVar.a((f12 - f14) / f16)) * f16) + f14;
            }
            this.f7077k[0].d(dA, this.f7085s);
            float f17 = f11;
            int i11 = i10;
            this.f7073g.g(dA, this.f7084r, this.f7085s, fArr, 0);
            if (i11 > 0) {
                c10 = 0;
                fHypot = (float) (((double) f17) + Math.hypot(d11 - ((double) fArr[1]), d10 - ((double) fArr[0])));
            } else {
                c10 = 0;
                fHypot = f17;
            }
            d10 = fArr[c10];
            i10 = i11 + 1;
            f11 = fHypot;
            d11 = fArr[1];
        }
        return f11;
    }

    private void w(o oVar) {
        int iBinarySearch = Collections.binarySearch(this.f7091y, oVar);
        if (iBinarySearch == 0) {
            Log.e("MotionController", " KeyPath position \"" + oVar.f7098d + "\" outside of range");
        }
        this.f7091y.add((-iBinarySearch) - 1, oVar);
    }

    private void y(o oVar) {
        oVar.q((int) this.f7068b.getX(), (int) this.f7068b.getY(), this.f7068b.getWidth(), this.f7068b.getHeight());
    }

    void A(Rect rect, Rect rect2, int i10, int i11, int i12) {
        if (i10 == 1) {
            int i13 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = i12 - ((i13 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i10 == 2) {
            int i14 = rect.left + rect.right;
            rect2.left = i11 - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i14 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i10 == 3) {
            int i15 = rect.left + rect.right;
            rect2.left = ((rect.height() / 2) + rect.top) - (i15 / 2);
            rect2.top = i12 - ((i15 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i10 != 4) {
            return;
        }
        int i16 = rect.left + rect.right;
        rect2.left = i11 - (((rect.bottom + rect.top) + rect.width()) / 2);
        rect2.top = (i16 - rect.height()) / 2;
        rect2.right = rect2.left + rect.width();
        rect2.bottom = rect2.top + rect.height();
    }

    void B(View view) {
        o oVar = this.f7073g;
        oVar.f7097c = 0.0f;
        oVar.f7098d = 0.0f;
        this.L = true;
        oVar.q(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f7074h.q(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f7075i.k(view);
        this.f7076j.k(view);
    }

    void C(Rect rect, androidx.constraintlayout.widget.b bVar, int i10, int i11) {
        int i12 = bVar.f7450d;
        if (i12 != 0) {
            A(rect, this.f7067a, i12, i10, i11);
            rect = this.f7067a;
        }
        o oVar = this.f7074h;
        oVar.f7097c = 1.0f;
        oVar.f7098d = 1.0f;
        y(oVar);
        this.f7074h.q(rect.left, rect.top, rect.width(), rect.height());
        this.f7074h.a(bVar.A(this.f7069c));
        this.f7076j.j(rect, bVar, i12, this.f7069c);
    }

    public void D(int i10) {
        this.F = i10;
    }

    void E(View view) {
        o oVar = this.f7073g;
        oVar.f7097c = 0.0f;
        oVar.f7098d = 0.0f;
        oVar.q(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f7075i.k(view);
    }

    void F(Rect rect, androidx.constraintlayout.widget.b bVar, int i10, int i11) {
        int i12 = bVar.f7450d;
        if (i12 != 0) {
            A(rect, this.f7067a, i12, i10, i11);
        }
        o oVar = this.f7073g;
        oVar.f7097c = 0.0f;
        oVar.f7098d = 0.0f;
        y(oVar);
        this.f7073g.q(rect.left, rect.top, rect.width(), rect.height());
        androidx.constraintlayout.widget.b.a aVarA = bVar.A(this.f7069c);
        this.f7073g.a(aVarA);
        this.f7079m = aVarA.f7457d.f7525g;
        this.f7075i.j(rect, bVar, i12, this.f7069c);
        this.G = aVarA.f7459f.f7547i;
        androidx.constraintlayout.widget.b.c cVar = aVarA.f7457d;
        this.I = cVar.f7529k;
        this.J = cVar.f7528j;
        Context context = this.f7068b.getContext();
        androidx.constraintlayout.widget.b.c cVar2 = aVarA.f7457d;
        this.K = p(context, cVar2.f7531m, cVar2.f7530l, cVar2.f7532n);
    }

    public void G(v0.e eVar, View view, int i10, int i11, int i12) {
        o oVar = this.f7073g;
        oVar.f7097c = 0.0f;
        oVar.f7098d = 0.0f;
        Rect rect = new Rect();
        if (i10 == 1) {
            int i13 = eVar.f73427b + eVar.f73429d;
            rect.left = ((eVar.f73428c + eVar.f73430e) - eVar.c()) / 2;
            rect.top = i11 - ((i13 + eVar.b()) / 2);
            rect.right = rect.left + eVar.c();
            rect.bottom = rect.top + eVar.b();
        } else if (i10 == 2) {
            int i14 = eVar.f73427b + eVar.f73429d;
            rect.left = i12 - (((eVar.f73428c + eVar.f73430e) + eVar.c()) / 2);
            rect.top = (i14 - eVar.b()) / 2;
            rect.right = rect.left + eVar.c();
            rect.bottom = rect.top + eVar.b();
        }
        this.f7073g.q(rect.left, rect.top, rect.width(), rect.height());
        this.f7075i.i(rect, view, i10, eVar.f73426a);
    }

    public void H(View view) {
        this.f7068b = view;
        this.f7069c = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            this.f7071e = ((ConstraintLayout.b) layoutParams).a();
        }
    }

    public void I(int i10, int i11, float f10, long j10) {
        ArrayList arrayList;
        String[] strArr;
        ConstraintAttribute constraintAttribute;
        v0.f fVarH;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        v0.d dVarG;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet();
        HashSet<String> hashSet2 = new HashSet();
        HashSet<String> hashSet3 = new HashSet();
        HashMap map = new HashMap();
        int i12 = this.F;
        if (i12 != d.f6940f) {
            this.f7073g.f7105k = i12;
        }
        this.f7075i.g(this.f7076j, hashSet2);
        ArrayList<d> arrayList2 = this.A;
        if (arrayList2 != null) {
            arrayList = null;
            for (d dVar : arrayList2) {
                if (dVar instanceof h) {
                    h hVar = (h) dVar;
                    w(new o(i10, i11, hVar, this.f7073g, this.f7074h));
                    int i13 = hVar.f7000g;
                    if (i13 != d.f6940f) {
                        this.f7072f = i13;
                    }
                } else if (dVar instanceof f) {
                    dVar.d(hashSet3);
                } else if (dVar instanceof j) {
                    dVar.d(hashSet);
                } else if (dVar instanceof k) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((k) dVar);
                } else {
                    dVar.h(map);
                    dVar.d(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.E = (k[]) arrayList.toArray(new k[0]);
        }
        char c10 = 1;
        if (!hashSet2.isEmpty()) {
            this.C = new HashMap();
            for (String str : hashSet2) {
                if (str.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str2 = str.split(",")[1];
                    for (d dVar2 : this.A) {
                        HashMap map2 = dVar2.f6945e;
                        if (map2 != null && (constraintAttribute3 = (ConstraintAttribute) map2.get(str2)) != null) {
                            sparseArray.append(dVar2.f6941a, constraintAttribute3);
                        }
                    }
                    dVarG = v0.d.f(str, sparseArray);
                } else {
                    dVarG = v0.d.g(str);
                }
                if (dVarG != null) {
                    dVarG.d(str);
                    this.C.put(str, dVarG);
                }
            }
            ArrayList<d> arrayList3 = this.A;
            if (arrayList3 != null) {
                for (d dVar3 : arrayList3) {
                    if (dVar3 instanceof e) {
                        dVar3.a(this.C);
                    }
                }
            }
            this.f7075i.a(this.C, 0);
            this.f7076j.a(this.C, 100);
            for (String str3 : this.C.keySet()) {
                int iIntValue = (!map.containsKey(str3) || (num = (Integer) map.get(str3)) == null) ? 0 : num.intValue();
                androidx.constraintlayout.core.motion.utils.i iVar = (androidx.constraintlayout.core.motion.utils.i) this.C.get(str3);
                if (iVar != null) {
                    iVar.e(iIntValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.B == null) {
                this.B = new HashMap();
            }
            for (String str4 : hashSet) {
                if (!this.B.containsKey(str4)) {
                    if (str4.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str5 = str4.split(",")[1];
                        for (d dVar4 : this.A) {
                            HashMap map3 = dVar4.f6945e;
                            if (map3 != null && (constraintAttribute2 = (ConstraintAttribute) map3.get(str5)) != null) {
                                sparseArray2.append(dVar4.f6941a, constraintAttribute2);
                            }
                        }
                        fVarH = v0.f.g(str4, sparseArray2);
                    } else {
                        fVarH = v0.f.h(str4, j10);
                    }
                    if (fVarH != null) {
                        fVarH.d(str4);
                        this.B.put(str4, fVarH);
                    }
                }
            }
            ArrayList<d> arrayList4 = this.A;
            if (arrayList4 != null) {
                for (d dVar5 : arrayList4) {
                    if (dVar5 instanceof j) {
                        ((j) dVar5).U(this.B);
                    }
                }
            }
            for (String str6 : this.B.keySet()) {
                ((v0.f) this.B.get(str6)).e(map.containsKey(str6) ? ((Integer) map.get(str6)).intValue() : 0);
            }
        }
        int size = this.f7091y.size();
        int i14 = size + 2;
        o[] oVarArr = new o[i14];
        oVarArr[0] = this.f7073g;
        oVarArr[size + 1] = this.f7074h;
        if (this.f7091y.size() > 0 && this.f7072f == -1) {
            this.f7072f = 0;
        }
        Iterator it = this.f7091y.iterator();
        int i15 = 1;
        while (it.hasNext()) {
            oVarArr[i15] = (o) it.next();
            i15++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str7 : this.f7074h.f7109o.keySet()) {
            if (this.f7073g.f7109o.containsKey(str7)) {
                if (!hashSet2.contains("CUSTOM," + str7)) {
                    hashSet4.add(str7);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f7087u = strArr2;
        this.f7088v = new int[strArr2.length];
        int i16 = 0;
        while (true) {
            strArr = this.f7087u;
            if (i16 >= strArr.length) {
                break;
            }
            String str8 = strArr[i16];
            this.f7088v[i16] = 0;
            for (int i17 = 0; i17 < i14; i17++) {
                if (oVarArr[i17].f7109o.containsKey(str8) && (constraintAttribute = (ConstraintAttribute) oVarArr[i17].f7109o.get(str8)) != null) {
                    int[] iArr = this.f7088v;
                    iArr[i16] = iArr[i16] + constraintAttribute.h();
                    break;
                }
            }
            i16++;
        }
        boolean z10 = oVarArr[0].f7105k != d.f6940f;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i18 = 1; i18 < i14; i18++) {
            oVarArr[i18].e(oVarArr[i18 - 1], zArr, this.f7087u, z10);
        }
        int i19 = 0;
        for (int i20 = 1; i20 < length; i20++) {
            if (zArr[i20]) {
                i19++;
            }
        }
        this.f7084r = new int[i19];
        int i21 = 2;
        int iMax = Math.max(2, i19);
        this.f7085s = new double[iMax];
        this.f7086t = new double[iMax];
        int i22 = 0;
        for (int i23 = 1; i23 < length; i23++) {
            if (zArr[i23]) {
                this.f7084r[i22] = i23;
                i22++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i14, this.f7084r.length);
        double[] dArr2 = new double[i14];
        for (int i24 = 0; i24 < i14; i24++) {
            oVarArr[i24].f(dArr[i24], this.f7084r);
            dArr2[i24] = oVarArr[i24].f7097c;
        }
        int i25 = 0;
        while (true) {
            int[] iArr2 = this.f7084r;
            if (i25 >= iArr2.length) {
                break;
            }
            if (iArr2[i25] < o.f7094t.length) {
                String str9 = o.f7094t[this.f7084r[i25]] + " [";
                for (int i26 = 0; i26 < i14; i26++) {
                    str9 = str9 + dArr[i26][i25];
                }
            }
            i25++;
        }
        this.f7077k = new androidx.constraintlayout.core.motion.utils.b[this.f7087u.length + 1];
        int i27 = 0;
        while (true) {
            String[] strArr3 = this.f7087u;
            if (i27 >= strArr3.length) {
                break;
            }
            String str10 = strArr3[i27];
            int i28 = 0;
            int i29 = 0;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            while (i28 < i14) {
                if (oVarArr[i28].l(str10)) {
                    if (dArr4 == null) {
                        dArr3 = new double[i14];
                        int[] iArr3 = new int[i21];
                        iArr3[c10] = oVarArr[i28].j(str10);
                        iArr3[0] = i14;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr3);
                    }
                    o oVar = oVarArr[i28];
                    dArr3[i29] = oVar.f7097c;
                    oVar.i(str10, dArr4[i29], 0);
                    i29++;
                }
                i28++;
                dArr = dArr;
                i21 = 2;
                c10 = 1;
            }
            i27++;
            this.f7077k[i27] = androidx.constraintlayout.core.motion.utils.b.a(this.f7072f, Arrays.copyOf(dArr3, i29), (double[][]) Arrays.copyOf(dArr4, i29));
            dArr = dArr;
            i21 = 2;
            c10 = 1;
        }
        this.f7077k[0] = androidx.constraintlayout.core.motion.utils.b.a(this.f7072f, dArr2, dArr);
        if (oVarArr[0].f7105k != d.f6940f) {
            int[] iArr4 = new int[i14];
            double[] dArr5 = new double[i14];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i14, 2);
            for (int i30 = 0; i30 < i14; i30++) {
                o oVar2 = oVarArr[i30];
                iArr4[i30] = oVar2.f7105k;
                dArr5[i30] = oVar2.f7097c;
                double[] dArr7 = dArr6[i30];
                dArr7[0] = oVar2.f7099e;
                dArr7[1] = oVar2.f7100f;
            }
            this.f7078l = androidx.constraintlayout.core.motion.utils.b.b(iArr4, dArr5, dArr6);
        }
        this.D = new HashMap();
        if (this.A != null) {
            float fS = Float.NaN;
            for (String str11 : hashSet3) {
                v0.c cVarI = v0.c.i(str11);
                if (cVarI != null) {
                    if (cVarI.h() && Float.isNaN(fS)) {
                        fS = s();
                    }
                    cVarI.f(str11);
                    this.D.put(str11, cVarI);
                }
            }
            for (d dVar6 : this.A) {
                if (dVar6 instanceof f) {
                    ((f) dVar6).Y(this.D);
                }
            }
            Iterator it2 = this.D.values().iterator();
            while (it2.hasNext()) {
                ((v0.c) it2.next()).g(fS);
            }
        }
    }

    public void J(m mVar) {
        this.f7073g.t(mVar, mVar.f7073g);
        this.f7074h.t(mVar, mVar.f7074h);
    }

    public void a(d dVar) {
        this.A.add(dVar);
    }

    void b(ArrayList arrayList) {
        this.A.addAll(arrayList);
    }

    int c(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] dArrH = this.f7077k[0].h();
        if (iArr != null) {
            Iterator it = this.f7091y.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                iArr[i10] = ((o) it.next()).f7110p;
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < dArrH.length; i12++) {
            this.f7077k[0].d(dArrH[i12], this.f7085s);
            this.f7073g.g(dArrH[i12], this.f7084r, this.f7085s, fArr, i11);
            i11 += 2;
        }
        return i11 / 2;
    }

    void d(float[] fArr, int i10) {
        int i11 = i10;
        float f10 = 1.0f;
        float f11 = 1.0f / (i11 - 1);
        HashMap map = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar = map == null ? null : (androidx.constraintlayout.core.motion.utils.i) map.get("translationX");
        HashMap map2 = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar2 = map2 == null ? null : (androidx.constraintlayout.core.motion.utils.i) map2.get("translationY");
        HashMap map3 = this.D;
        v0.c cVar = map3 == null ? null : (v0.c) map3.get("translationX");
        HashMap map4 = this.D;
        v0.c cVar2 = map4 != null ? (v0.c) map4.get("translationY") : null;
        int i12 = 0;
        while (i12 < i11) {
            float fMin = i12 * f11;
            float f12 = this.f7081o;
            float f13 = 0.0f;
            if (f12 != f10) {
                float f14 = this.f7080n;
                if (fMin < f14) {
                    fMin = 0.0f;
                }
                if (fMin > f14 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f14) * f12, f10);
                }
            }
            double dA = fMin;
            androidx.constraintlayout.core.motion.utils.c cVar3 = this.f7073g.f7095a;
            float f15 = Float.NaN;
            for (o oVar : this.f7091y) {
                androidx.constraintlayout.core.motion.utils.c cVar4 = oVar.f7095a;
                if (cVar4 != null) {
                    float f16 = oVar.f7097c;
                    if (f16 < fMin) {
                        f13 = f16;
                        cVar3 = cVar4;
                    } else if (Float.isNaN(f15)) {
                        f15 = oVar.f7097c;
                    }
                }
            }
            if (cVar3 != null) {
                if (Float.isNaN(f15)) {
                    f15 = 1.0f;
                }
                float f17 = f15 - f13;
                dA = (((float) cVar3.a((fMin - f13) / f17)) * f17) + f13;
            }
            this.f7077k[0].d(dA, this.f7085s);
            androidx.constraintlayout.core.motion.utils.b bVar = this.f7078l;
            if (bVar != null) {
                double[] dArr = this.f7085s;
                if (dArr.length > 0) {
                    bVar.d(dA, dArr);
                }
            }
            int i13 = i12 * 2;
            this.f7073g.g(dA, this.f7084r, this.f7085s, fArr, i13);
            if (cVar != null) {
                fArr[i13] = fArr[i13] + cVar.a(fMin);
            } else if (iVar != null) {
                fArr[i13] = fArr[i13] + iVar.a(fMin);
            }
            if (cVar2 != null) {
                int i14 = i13 + 1;
                fArr[i14] = fArr[i14] + cVar2.a(fMin);
            } else if (iVar2 != null) {
                int i15 = i13 + 1;
                fArr[i15] = fArr[i15] + iVar2.a(fMin);
            }
            i12++;
            i11 = i10;
            f10 = 1.0f;
        }
    }

    void e(float f10, float[] fArr, int i10) {
        this.f7077k[0].d(g(f10, null), this.f7085s);
        this.f7073g.k(this.f7084r, this.f7085s, fArr, i10);
    }

    void f(boolean z10) {
        if (!"button".equals(androidx.constraintlayout.motion.widget.a.d(this.f7068b)) || this.E == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            k[] kVarArr = this.E;
            if (i10 >= kVarArr.length) {
                return;
            }
            kVarArr[i10].y(z10 ? -100.0f : 100.0f, this.f7068b);
            i10++;
        }
    }

    public int h() {
        return this.f7073g.f7106l;
    }

    public void i(double d10, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.f7077k[0].d(d10, dArr);
        this.f7077k[0].g(d10, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.f7073g.h(d10, this.f7084r, dArr, fArr, dArr2, fArr2);
    }

    public float j() {
        return this.f7082p;
    }

    public float k() {
        return this.f7083q;
    }

    void l(float f10, float f11, float f12, float[] fArr) {
        double[] dArr;
        float fG = g(f10, this.f7092z);
        androidx.constraintlayout.core.motion.utils.b[] bVarArr = this.f7077k;
        int i10 = 0;
        if (bVarArr == null) {
            o oVar = this.f7074h;
            float f13 = oVar.f7099e;
            o oVar2 = this.f7073g;
            float f14 = f13 - oVar2.f7099e;
            float f15 = oVar.f7100f - oVar2.f7100f;
            float f16 = (oVar.f7101g - oVar2.f7101g) + f14;
            float f17 = (oVar.f7102h - oVar2.f7102h) + f15;
            fArr[0] = (f14 * (1.0f - f11)) + (f16 * f11);
            fArr[1] = (f15 * (1.0f - f12)) + (f17 * f12);
            return;
        }
        double d10 = fG;
        bVarArr[0].g(d10, this.f7086t);
        this.f7077k[0].d(d10, this.f7085s);
        float f18 = this.f7092z[0];
        while (true) {
            dArr = this.f7086t;
            if (i10 >= dArr.length) {
                break;
            }
            dArr[i10] = dArr[i10] * ((double) f18);
            i10++;
        }
        androidx.constraintlayout.core.motion.utils.b bVar = this.f7078l;
        if (bVar == null) {
            this.f7073g.r(f11, f12, fArr, this.f7084r, dArr, this.f7085s);
            return;
        }
        double[] dArr2 = this.f7085s;
        if (dArr2.length > 0) {
            bVar.d(d10, dArr2);
            this.f7078l.g(d10, this.f7086t);
            this.f7073g.r(f11, f12, fArr, this.f7084r, this.f7086t, this.f7085s);
        }
    }

    public int m() {
        int iMax = this.f7073g.f7096b;
        Iterator it = this.f7091y.iterator();
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((o) it.next()).f7096b);
        }
        return Math.max(iMax, this.f7074h.f7096b);
    }

    public float n() {
        return this.f7074h.f7099e;
    }

    public float o() {
        return this.f7074h.f7100f;
    }

    o q(int i10) {
        return (o) this.f7091y.get(i10);
    }

    void r(float f10, int i10, int i11, float f11, float f12, float[] fArr) {
        float fG = g(f10, this.f7092z);
        HashMap map = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar = map == null ? null : (androidx.constraintlayout.core.motion.utils.i) map.get("translationX");
        HashMap map2 = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar2 = map2 == null ? null : (androidx.constraintlayout.core.motion.utils.i) map2.get("translationY");
        HashMap map3 = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar3 = map3 == null ? null : (androidx.constraintlayout.core.motion.utils.i) map3.get("rotation");
        HashMap map4 = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar4 = map4 == null ? null : (androidx.constraintlayout.core.motion.utils.i) map4.get("scaleX");
        HashMap map5 = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar5 = map5 == null ? null : (androidx.constraintlayout.core.motion.utils.i) map5.get("scaleY");
        HashMap map6 = this.D;
        v0.c cVar = map6 == null ? null : (v0.c) map6.get("translationX");
        HashMap map7 = this.D;
        v0.c cVar2 = map7 == null ? null : (v0.c) map7.get("translationY");
        HashMap map8 = this.D;
        v0.c cVar3 = map8 == null ? null : (v0.c) map8.get("rotation");
        HashMap map9 = this.D;
        v0.c cVar4 = map9 == null ? null : (v0.c) map9.get("scaleX");
        HashMap map10 = this.D;
        v0.c cVar5 = map10 != null ? (v0.c) map10.get("scaleY") : null;
        androidx.constraintlayout.core.motion.utils.o oVar = new androidx.constraintlayout.core.motion.utils.o();
        oVar.b();
        oVar.d(iVar3, fG);
        oVar.h(iVar, iVar2, fG);
        oVar.f(iVar4, iVar5, fG);
        oVar.c(cVar3, fG);
        oVar.g(cVar, cVar2, fG);
        oVar.e(cVar4, cVar5, fG);
        androidx.constraintlayout.core.motion.utils.b bVar = this.f7078l;
        if (bVar != null) {
            double[] dArr = this.f7085s;
            if (dArr.length > 0) {
                double d10 = fG;
                bVar.d(d10, dArr);
                this.f7078l.g(d10, this.f7086t);
                this.f7073g.r(f11, f12, fArr, this.f7084r, this.f7086t, this.f7085s);
            }
            oVar.a(f11, f12, i10, i11, fArr);
            return;
        }
        int i12 = 0;
        if (this.f7077k == null) {
            o oVar2 = this.f7074h;
            float f13 = oVar2.f7099e;
            o oVar3 = this.f7073g;
            float f14 = f13 - oVar3.f7099e;
            v0.c cVar6 = cVar5;
            float f15 = oVar2.f7100f - oVar3.f7100f;
            v0.c cVar7 = cVar4;
            float f16 = (oVar2.f7101g - oVar3.f7101g) + f14;
            float f17 = (oVar2.f7102h - oVar3.f7102h) + f15;
            fArr[0] = (f14 * (1.0f - f11)) + (f16 * f11);
            fArr[1] = (f15 * (1.0f - f12)) + (f17 * f12);
            oVar.b();
            oVar.d(iVar3, fG);
            oVar.h(iVar, iVar2, fG);
            oVar.f(iVar4, iVar5, fG);
            oVar.c(cVar3, fG);
            oVar.g(cVar, cVar2, fG);
            oVar.e(cVar7, cVar6, fG);
            oVar.a(f11, f12, i10, i11, fArr);
            return;
        }
        double dG = g(fG, this.f7092z);
        this.f7077k[0].g(dG, this.f7086t);
        this.f7077k[0].d(dG, this.f7085s);
        float f18 = this.f7092z[0];
        while (true) {
            double[] dArr2 = this.f7086t;
            if (i12 >= dArr2.length) {
                this.f7073g.r(f11, f12, fArr, this.f7084r, dArr2, this.f7085s);
                oVar.a(f11, f12, i10, i11, fArr);
                return;
            } else {
                dArr2[i12] = dArr2[i12] * ((double) f18);
                i12++;
            }
        }
    }

    public float t() {
        return this.f7073g.f7099e;
    }

    public String toString() {
        return " start: x: " + this.f7073g.f7099e + " y: " + this.f7073g.f7100f + " end: x: " + this.f7074h.f7099e + " y: " + this.f7074h.f7100f;
    }

    public float u() {
        return this.f7073g.f7100f;
    }

    public View v() {
        return this.f7068b;
    }

    boolean x(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
        v0.f.d dVar2;
        boolean zJ;
        float fG = g(f10, null);
        int i10 = this.I;
        if (i10 != d.f6940f) {
            float f11 = 1.0f / i10;
            float fFloor = ((float) Math.floor(fG / f11)) * f11;
            float f12 = (fG % f11) / f11;
            if (!Float.isNaN(this.J)) {
                f12 = (f12 + this.J) % 1.0f;
            }
            Interpolator interpolator = this.K;
            fG = ((interpolator != null ? interpolator.getInterpolation(f12) : ((double) f12) > 0.5d ? 1.0f : 0.0f) * f11) + fFloor;
        }
        float f13 = fG;
        HashMap map = this.C;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((v0.d) it.next()).h(view, f13);
            }
        }
        HashMap map2 = this.B;
        if (map2 != null) {
            v0.f.d dVar3 = null;
            boolean zI = false;
            for (v0.f fVar : map2.values()) {
                if (fVar instanceof v0.f.d) {
                    dVar3 = (v0.f.d) fVar;
                } else {
                    zI |= fVar.i(view, f13, j10, dVar);
                }
            }
            zJ = zI;
            dVar2 = dVar3;
        } else {
            dVar2 = null;
            zJ = false;
        }
        androidx.constraintlayout.core.motion.utils.b[] bVarArr = this.f7077k;
        int i11 = 1;
        if (bVarArr != null) {
            double d10 = f13;
            bVarArr[0].d(d10, this.f7085s);
            this.f7077k[0].g(d10, this.f7086t);
            androidx.constraintlayout.core.motion.utils.b bVar = this.f7078l;
            if (bVar != null) {
                double[] dArr = this.f7085s;
                if (dArr.length > 0) {
                    bVar.d(d10, dArr);
                    this.f7078l.g(d10, this.f7086t);
                }
            }
            if (!this.L) {
                this.f7073g.s(f13, view, this.f7084r, this.f7085s, this.f7086t, null, this.f7070d);
                this.f7070d = false;
            }
            if (this.G != d.f6940f) {
                if (this.H == null) {
                    this.H = ((View) view.getParent()).findViewById(this.G);
                }
                View view2 = this.H;
                if (view2 != null) {
                    float top = (view2.getTop() + this.H.getBottom()) / 2.0f;
                    float left = (this.H.getLeft() + this.H.getRight()) / 2.0f;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        float left2 = left - view.getLeft();
                        float top2 = top - view.getTop();
                        view.setPivotX(left2);
                        view.setPivotY(top2);
                    }
                }
            }
            HashMap map3 = this.C;
            if (map3 != null) {
                for (androidx.constraintlayout.core.motion.utils.i iVar : map3.values()) {
                    if (iVar instanceof v0.d.C0907d) {
                        double[] dArr2 = this.f7086t;
                        if (dArr2.length > 1) {
                            ((v0.d.C0907d) iVar).i(view, f13, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (dVar2 != null) {
                double[] dArr3 = this.f7086t;
                zJ |= dVar2.j(view, dVar, f13, j10, dArr3[0], dArr3[1]);
            }
            int i12 = i11;
            while (true) {
                androidx.constraintlayout.core.motion.utils.b[] bVarArr2 = this.f7077k;
                if (i12 >= bVarArr2.length) {
                    break;
                }
                bVarArr2[i12].e(d10, this.f7090x);
                v0.a.b((ConstraintAttribute) this.f7073g.f7109o.get(this.f7087u[i12 - 1]), view, this.f7090x);
                i12++;
            }
            l lVar = this.f7075i;
            if (lVar.f7042b == 0) {
                if (f13 <= 0.0f) {
                    view.setVisibility(lVar.f7043c);
                } else if (f13 >= 1.0f) {
                    view.setVisibility(this.f7076j.f7043c);
                } else if (this.f7076j.f7043c != lVar.f7043c) {
                    view.setVisibility(0);
                }
            }
            if (this.E != null) {
                int i13 = 0;
                while (true) {
                    k[] kVarArr = this.E;
                    if (i13 >= kVarArr.length) {
                        break;
                    }
                    kVarArr[i13].y(f13, view);
                    i13++;
                }
            }
        } else {
            i11 = 1;
            o oVar = this.f7073g;
            float f14 = oVar.f7099e;
            o oVar2 = this.f7074h;
            float f15 = f14 + ((oVar2.f7099e - f14) * f13);
            float f16 = oVar.f7100f;
            float f17 = f16 + ((oVar2.f7100f - f16) * f13);
            float f18 = oVar.f7101g;
            float f19 = oVar2.f7101g;
            float f20 = oVar.f7102h;
            float f21 = oVar2.f7102h;
            float f22 = f15 + 0.5f;
            int i14 = (int) f22;
            float f23 = f17 + 0.5f;
            int i15 = (int) f23;
            int i16 = (int) (f22 + ((f19 - f18) * f13) + f18);
            int i17 = (int) (f23 + ((f21 - f20) * f13) + f20);
            int i18 = i16 - i14;
            int i19 = i17 - i15;
            if (f19 != f18 || f21 != f20 || this.f7070d) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i18, 1073741824), View.MeasureSpec.makeMeasureSpec(i19, 1073741824));
                this.f7070d = false;
            }
            view.layout(i14, i15, i16, i17);
        }
        HashMap map4 = this.D;
        if (map4 != null) {
            for (v0.c cVar : map4.values()) {
                if (cVar instanceof v0.c.d) {
                    double[] dArr4 = this.f7086t;
                    ((v0.c.d) cVar).k(view, f13, dArr4[0], dArr4[i11]);
                } else {
                    cVar.j(view, f13);
                }
            }
        }
        return zJ;
    }

    public void z() {
        this.f7070d = true;
    }
}
