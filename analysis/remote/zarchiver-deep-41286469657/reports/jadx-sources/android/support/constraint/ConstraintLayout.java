package android.support.constraint;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import c.b;
import c.c;
import c.d;
import c.e;
import c.g;
import java.util.ArrayList;

public class ConstraintLayout extends ViewGroup {

    public final SparseArray<View> f191a;

    public final ArrayList<c> f192b;

    public final d f193c;

    public boolean f194d;

    public int f195e;

    public int f196f;

    public int f197g;

    public int f198h;

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        SparseArray<View> sparseArray = new SparseArray<>();
        this.f191a = sparseArray;
        this.f192b = new ArrayList<>(100);
        d dVar = new d();
        this.f193c = dVar;
        this.f194d = true;
        this.f195e = -1;
        this.f196f = -1;
        this.f197g = -1;
        this.f198h = -1;
        dVar.E = this;
        sparseArray.put(getId(), this);
    }

    public final c a(int i2) {
        View view;
        d dVar = this.f193c;
        if (i2 == 0 || (view = this.f191a.get(i2)) == this) {
            return dVar;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).S;
    }

    public final c b(View view) {
        if (view == this) {
            return this.f193c;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).S;
    }

    @Override
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    @Override
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new a();
    }

    @Override
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    @Override
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            a aVar = (a) childAt.getLayoutParams();
            if (childAt.getVisibility() != 8 || aVar.K) {
                c cVar = aVar.S;
                int i7 = cVar.f356t + cVar.f360x;
                int i8 = cVar.f357u + cVar.f361y;
                childAt.layout(i7, i8, cVar.e() + i7, cVar.d() + i8);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:146:0x0282  */
    /* JADX WARN: Code duplicated, block: B:148:0x0288  */
    /* JADX WARN: Code duplicated, block: B:149:0x029a  */
    /* JADX WARN: Code duplicated, block: B:150:0x029c  */
    /* JADX WARN: Code duplicated, block: B:152:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:155:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:157:0x02c4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:163:0x0305  */
    /* JADX WARN: Code duplicated, block: B:168:0x0311  */
    /* JADX WARN: Code duplicated, block: B:173:0x031c  */
    /* JADX WARN: Code duplicated, block: B:175:0x0328  */
    /* JADX WARN: Code duplicated, block: B:176:0x0330  */
    /* JADX WARN: Code duplicated, block: B:179:0x033d  */
    /* JADX WARN: Code duplicated, block: B:181:0x0349  */
    /* JADX WARN: Code duplicated, block: B:182:0x0351  */
    /* JADX WARN: Code duplicated, block: B:185:0x0360  */
    /* JADX WARN: Code duplicated, block: B:191:0x036f  */
    /* JADX WARN: Code duplicated, block: B:193:0x0375  */
    /* JADX WARN: Code duplicated, block: B:194:0x0379  */
    /* JADX WARN: Code duplicated, block: B:196:0x0385  */
    /* JADX WARN: Code duplicated, block: B:206:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:209:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:225:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:227:0x03f5 A[Catch: NumberFormatException -> 0x03e9, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException -> 0x03e9, blocks: (B:215:0x03ca, B:221:0x03dd, B:222:0x03e3, B:227:0x03f5), top: B:309:0x03ca }] */
    /* JADX WARN: Code duplicated, block: B:229:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:232:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    /* JADX WARN: Code duplicated, block: B:288:0x0542  */
    /* JADX WARN: Code duplicated, block: B:289:0x0547  */
    /* JADX WARN: Code duplicated, block: B:292:0x054e  */
    /* JADX WARN: Code duplicated, block: B:33:0x007f A[PHI: r17
      0x007f: PHI (r17v1 int) = (r17v0 int), (r17v0 int), (r17v2 int) binds: [B:25:0x006e, B:31:0x007b, B:28:0x0074] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public final void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        ArrayList<c> arrayList;
        int i9;
        int i10;
        int i11;
        View view;
        int childMeasureSpec;
        int measuredWidth;
        int measuredHeight;
        boolean z2;
        int baseline;
        int i12;
        int childMeasureSpec2;
        int baseline2;
        boolean z3;
        int i13;
        ArrayList<c> arrayList2;
        int i14;
        int i15;
        int i16;
        float f2;
        int i17;
        int i18;
        int i19;
        c cVarA;
        c cVarA2;
        c cVarA3;
        float f3;
        String str;
        int iIndexOf;
        int i20;
        int i21;
        int iIndexOf2;
        String strSubstring;
        float fAbs;
        View view2;
        c cVarA4;
        c cVarA5;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i34 = this.f195e;
        d dVar = this.f193c;
        int i35 = -1;
        if (i34 == -1 || (i31 = this.f196f) == -1 || (i32 = this.f198h) == -1 || (i33 = this.f197g) == -1 || i34 != paddingLeft || i31 != paddingTop || i33 != i2 || i32 != i3) {
            dVar.f354r = paddingLeft;
            dVar.f355s = paddingTop;
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            int size2 = View.MeasureSpec.getSize(i3);
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int paddingRight = getPaddingRight() + getPaddingLeft();
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            int i36 = 2;
            if (mode == Integer.MIN_VALUE) {
                i4 = 2;
                i5 = 0;
            } else {
                if (mode == 0) {
                    i5 = layoutParams.width;
                    if (i5 <= 0) {
                        i4 = 2;
                        i5 = 0;
                    }
                } else if (mode != 1073741824) {
                    i4 = 1;
                    i5 = 0;
                } else {
                    i5 = size - paddingRight;
                }
                i4 = 1;
            }
            if (mode2 == Integer.MIN_VALUE) {
                i6 = i36;
                i7 = 0;
            } else if (mode2 == 0) {
                i7 = layoutParams.height;
                if (i7 > 0) {
                    i6 = 1;
                } else {
                    i6 = i36;
                    i7 = 0;
                }
            } else if (mode2 != 1073741824) {
                i36 = 1;
                i6 = i36;
                i7 = 0;
            } else {
                i7 = size2 - paddingBottom;
                i6 = 1;
            }
            dVar.l(i4);
            dVar.p(i5);
            dVar.o(i6);
            dVar.j(i7);
        }
        boolean z4 = this.f194d;
        ArrayList<c> arrayList3 = this.f192b;
        if (z4) {
            this.f194d = false;
            int childCount = getChildCount();
            int i37 = 0;
            while (true) {
                if (i37 >= childCount) {
                    z3 = false;
                    break;
                } else {
                    if (getChildAt(i37).isLayoutRequested()) {
                        z3 = true;
                        break;
                    }
                    i37++;
                }
            }
            if (z3) {
                arrayList3.clear();
                int childCount2 = getChildCount();
                int i38 = 0;
                while (i38 < childCount2) {
                    View childAt = getChildAt(i38);
                    c cVarB = b(childAt);
                    if (cVarB == null) {
                        i13 = childCount2;
                        arrayList2 = arrayList3;
                        paddingLeft = paddingLeft;
                        paddingTop = paddingTop;
                        i38 = i38;
                    } else {
                        a aVar = (a) childAt.getLayoutParams();
                        cVarB.g();
                        cVarB.f349m = dVar;
                        cVarB.F = childAt.getVisibility();
                        cVarB.E = childAt;
                        if (!aVar.I || !aVar.H) {
                            arrayList3.add(cVarB);
                        }
                        if (aVar.K) {
                            e eVar = (e) cVarB;
                            int i39 = aVar.f199a;
                            if (i39 != i35 && i39 > i35) {
                                eVar.M = -1.0f;
                                eVar.N = i39;
                                eVar.O = i35;
                            }
                            int i40 = aVar.f200b;
                            if (i40 != i35 && i40 > i35) {
                                eVar.M = -1.0f;
                                eVar.N = i35;
                                eVar.O = i40;
                            }
                            float f4 = aVar.f201c;
                            if (f4 != -1.0f && f4 > -1.0f) {
                                eVar.M = f4;
                                eVar.N = i35;
                                eVar.O = i35;
                            }
                            i13 = childCount2;
                            arrayList2 = arrayList3;
                            paddingLeft = paddingLeft;
                            paddingTop = paddingTop;
                            i38 = i38;
                        } else {
                            int i41 = aVar.L;
                            int i42 = aVar.E;
                            int i43 = aVar.f209k;
                            int i44 = aVar.f208j;
                            int i45 = aVar.f207i;
                            i13 = childCount2;
                            int i46 = aVar.f206h;
                            arrayList2 = arrayList3;
                            int i47 = aVar.F;
                            int i48 = aVar.f210l;
                            if (i41 == -1 && aVar.M == -1 && aVar.N == -1 && aVar.O == -1 && i46 == -1 && i45 == -1 && i44 == -1 && i43 == -1 && i48 == -1 && i42 == -1 && i47 == -1) {
                                paddingLeft = paddingLeft;
                                paddingTop = paddingTop;
                                i38 = i38;
                            } else {
                                int i49 = aVar.M;
                                int i50 = aVar.N;
                                int i51 = aVar.O;
                                int i52 = aVar.P;
                                int i53 = aVar.Q;
                                float f5 = aVar.R;
                                if (Build.VERSION.SDK_INT < 17) {
                                    int i54 = aVar.f202d;
                                    int i55 = aVar.f203e;
                                    if (i54 == -1 && i55 == -1) {
                                        i22 = i54;
                                        i23 = aVar.f212n;
                                        if (i23 == -1) {
                                            int i56 = aVar.f211m;
                                            if (i56 != -1) {
                                                i25 = i22;
                                                i24 = i56;
                                            }
                                        } else {
                                            i24 = i55;
                                            i25 = i23;
                                        }
                                        i26 = aVar.f204f;
                                        int i57 = i25;
                                        int i58 = aVar.f205g;
                                        if (i26 == -1 || i58 != -1) {
                                            i27 = i26;
                                        } else {
                                            i27 = i26;
                                            i28 = aVar.f213o;
                                            if (i28 == -1) {
                                                i30 = aVar.f214p;
                                                if (i30 != -1) {
                                                    i29 = i27;
                                                }
                                            } else {
                                                i29 = i28;
                                                i30 = i58;
                                            }
                                            i19 = aVar.f215q;
                                            i17 = i29;
                                            i18 = i57;
                                            i15 = i30;
                                            i16 = aVar.f217s;
                                            f2 = aVar.f221w;
                                            i14 = i24;
                                        }
                                        i28 = i27;
                                        i29 = i28;
                                        i30 = i58;
                                        i19 = aVar.f215q;
                                        i17 = i29;
                                        i18 = i57;
                                        i15 = i30;
                                        i16 = aVar.f217s;
                                        f2 = aVar.f221w;
                                        i14 = i24;
                                    } else {
                                        i22 = i54;
                                    }
                                    i23 = i22;
                                    i24 = i55;
                                    i25 = i23;
                                    i26 = aVar.f204f;
                                    int i59 = i25;
                                    int i510 = aVar.f205g;
                                    if (i26 == -1) {
                                        i27 = i26;
                                        i28 = i27;
                                        i29 = i28;
                                        i30 = i510;
                                    } else {
                                        i27 = i26;
                                        i28 = i27;
                                        i29 = i28;
                                        i30 = i510;
                                    }
                                    i19 = aVar.f215q;
                                    i17 = i29;
                                    i18 = i59;
                                    i15 = i30;
                                    i16 = aVar.f217s;
                                    f2 = aVar.f221w;
                                    i14 = i24;
                                } else {
                                    i14 = i49;
                                    i15 = i51;
                                    i16 = i53;
                                    f2 = f5;
                                    i17 = i50;
                                    i18 = i41;
                                    i19 = i52;
                                }
                                b.a aVar2 = b.a.f330c;
                                b.a aVar3 = b.a.f328a;
                                if (i18 != -1) {
                                    c cVarA6 = a(i18);
                                    if (cVarA6 != null) {
                                        cVarB.f(aVar3, cVarA6, aVar3, ((ViewGroup.MarginLayoutParams) aVar).leftMargin, i19);
                                    }
                                } else if (i14 != -1 && (cVarA = a(i14)) != null) {
                                    cVarB.f(aVar3, cVarA, aVar2, ((ViewGroup.MarginLayoutParams) aVar).leftMargin, i19);
                                }
                                if (i17 != -1) {
                                    c cVarA7 = a(i17);
                                    if (cVarA7 != null) {
                                        cVarB.f(aVar2, cVarA7, aVar3, ((ViewGroup.MarginLayoutParams) aVar).rightMargin, i16);
                                    }
                                } else if (i15 != -1 && (cVarA2 = a(i15)) != null) {
                                    cVarB.f(aVar2, cVarA2, aVar2, ((ViewGroup.MarginLayoutParams) aVar).rightMargin, i16);
                                }
                                b.a aVar4 = b.a.f331d;
                                b.a aVar5 = b.a.f329b;
                                int i60 = -1;
                                if (i46 != -1) {
                                    c cVarA8 = a(i46);
                                    if (cVarA8 != null) {
                                        cVarB.f(aVar5, cVarA8, aVar5, ((ViewGroup.MarginLayoutParams) aVar).topMargin, aVar.f216r);
                                    }
                                } else {
                                    if (i45 != -1) {
                                        c cVarA9 = a(i45);
                                        if (cVarA9 != null) {
                                            cVarB.f(aVar5, cVarA9, aVar4, ((ViewGroup.MarginLayoutParams) aVar).topMargin, aVar.f216r);
                                        }
                                    }
                                    if (i44 != i60) {
                                        cVarA5 = a(i44);
                                        if (cVarA5 != null) {
                                            cVarB.f(aVar4, cVarA5, aVar5, ((ViewGroup.MarginLayoutParams) aVar).bottomMargin, aVar.f218t);
                                        }
                                    } else {
                                        if (i43 != i60) {
                                            cVarA3 = a(i43);
                                            if (cVarA3 != null) {
                                                cVarB.f(aVar4, cVarA3, aVar4, ((ViewGroup.MarginLayoutParams) aVar).bottomMargin, aVar.f218t);
                                            }
                                        }
                                        if (i48 != i60) {
                                            view2 = this.f191a.get(i48);
                                            cVarA4 = a(i48);
                                            if (cVarA4 != null && view2 != null && (view2.getLayoutParams() instanceof a)) {
                                                a aVar6 = (a) view2.getLayoutParams();
                                                aVar.J = true;
                                                aVar6.J = true;
                                                b.a aVar7 = b.a.f332e;
                                                cVarB.c(aVar7).a(cVarA4.c(aVar7), 0, -1, 2, 0, true);
                                                cVarB.c(aVar5).c();
                                                cVarB.c(aVar4).c();
                                            }
                                        }
                                        if (f2 >= 0.0f && f2 != 0.5f) {
                                            cVarB.A = f2;
                                        }
                                        f3 = aVar.f222x;
                                        if (f3 >= 0.0f && f3 != 0.5f) {
                                            cVarB.B = f3;
                                        }
                                        if (aVar.H) {
                                            cVarB.l(1);
                                            cVarB.p(((ViewGroup.MarginLayoutParams) aVar).width);
                                        } else {
                                            cVarB.l(3);
                                            cVarB.p(0);
                                            if (((ViewGroup.MarginLayoutParams) aVar).width == -1) {
                                                cVarB.p(dVar.e());
                                            }
                                        }
                                        if (aVar.I) {
                                            cVarB.o(1);
                                            cVarB.j(((ViewGroup.MarginLayoutParams) aVar).height);
                                        } else {
                                            cVarB.o(3);
                                            cVarB.j(0);
                                            if (((ViewGroup.MarginLayoutParams) aVar).height == -1) {
                                                cVarB.p(dVar.d());
                                            }
                                        }
                                        if (isInEditMode() && (i42 != -1 || i47 != -1)) {
                                            cVarB.f354r = i42;
                                            cVarB.f355s = i47;
                                        }
                                        str = aVar.f223y;
                                        if (str != null) {
                                            if (str.length() == 0) {
                                                cVarB.f352p = 0.0f;
                                            } else {
                                                int length = str.length();
                                                iIndexOf = str.indexOf(44);
                                                if (iIndexOf > 0 || iIndexOf >= length - 1) {
                                                    i20 = 0;
                                                    i21 = -1;
                                                } else {
                                                    String strSubstring2 = str.substring(0, iIndexOf);
                                                    if (strSubstring2.equalsIgnoreCase("W")) {
                                                        i21 = 0;
                                                    } else {
                                                        i21 = strSubstring2.equalsIgnoreCase("H") ? 1 : -1;
                                                    }
                                                    i20 = iIndexOf + 1;
                                                }
                                                iIndexOf2 = str.indexOf(58);
                                                if (iIndexOf2 >= 0 || iIndexOf2 >= length - 1) {
                                                    strSubstring = str.substring(i20);
                                                    if (strSubstring.length() > 0) {
                                                        fAbs = Float.parseFloat(strSubstring);
                                                    } else {
                                                        fAbs = 0.0f;
                                                    }
                                                } else {
                                                    String strSubstring3 = str.substring(i20, iIndexOf2);
                                                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                                                    if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                                                        fAbs = 0.0f;
                                                    } else {
                                                        try {
                                                            float f6 = Float.parseFloat(strSubstring3);
                                                            float f7 = Float.parseFloat(strSubstring4);
                                                            if (f6 <= 0.0f || f7 <= 0.0f) {
                                                                fAbs = 0.0f;
                                                            } else {
                                                                fAbs = i21 == 1 ? Math.abs(f7 / f6) : Math.abs(f6 / f7);
                                                            }
                                                        } catch (NumberFormatException unused) {
                                                        }
                                                    }
                                                }
                                                if (fAbs > 0.0f) {
                                                    cVarB.f352p = fAbs;
                                                    cVarB.f353q = i21;
                                                }
                                            }
                                        }
                                        cVarB.K = aVar.A;
                                        cVarB.L = aVar.B;
                                        cVarB.G = aVar.C;
                                        cVarB.H = aVar.D;
                                    }
                                    i60 = -1;
                                    if (i48 != i60) {
                                        view2 = this.f191a.get(i48);
                                        cVarA4 = a(i48);
                                        if (cVarA4 != null) {
                                            a aVar8 = (a) view2.getLayoutParams();
                                            aVar.J = true;
                                            aVar8.J = true;
                                            b.a aVar9 = b.a.f332e;
                                            cVarB.c(aVar9).a(cVarA4.c(aVar9), 0, -1, 2, 0, true);
                                            cVarB.c(aVar5).c();
                                            cVarB.c(aVar4).c();
                                        }
                                    }
                                    if (f2 >= 0.0f) {
                                        cVarB.A = f2;
                                    }
                                    f3 = aVar.f222x;
                                    if (f3 >= 0.0f) {
                                        cVarB.B = f3;
                                    }
                                    if (aVar.H) {
                                        cVarB.l(3);
                                        cVarB.p(0);
                                        if (((ViewGroup.MarginLayoutParams) aVar).width == -1) {
                                            cVarB.p(dVar.e());
                                        }
                                    } else {
                                        cVarB.l(1);
                                        cVarB.p(((ViewGroup.MarginLayoutParams) aVar).width);
                                    }
                                    if (aVar.I) {
                                        cVarB.o(3);
                                        cVarB.j(0);
                                        if (((ViewGroup.MarginLayoutParams) aVar).height == -1) {
                                            cVarB.p(dVar.d());
                                        }
                                    } else {
                                        cVarB.o(1);
                                        cVarB.j(((ViewGroup.MarginLayoutParams) aVar).height);
                                    }
                                    if (isInEditMode()) {
                                        cVarB.f354r = i42;
                                        cVarB.f355s = i47;
                                    }
                                    str = aVar.f223y;
                                    if (str != null) {
                                        if (str.length() == 0) {
                                            cVarB.f352p = 0.0f;
                                        } else {
                                            int length2 = str.length();
                                            iIndexOf = str.indexOf(44);
                                            if (iIndexOf > 0) {
                                                i20 = 0;
                                                i21 = -1;
                                            } else {
                                                i20 = 0;
                                                i21 = -1;
                                            }
                                            iIndexOf2 = str.indexOf(58);
                                            if (iIndexOf2 >= 0) {
                                                strSubstring = str.substring(i20);
                                                if (strSubstring.length() > 0) {
                                                    fAbs = Float.parseFloat(strSubstring);
                                                } else {
                                                    fAbs = 0.0f;
                                                }
                                            } else {
                                                strSubstring = str.substring(i20);
                                                if (strSubstring.length() > 0) {
                                                    fAbs = Float.parseFloat(strSubstring);
                                                } else {
                                                    fAbs = 0.0f;
                                                }
                                            }
                                            if (fAbs > 0.0f) {
                                                cVarB.f352p = fAbs;
                                                cVarB.f353q = i21;
                                            }
                                        }
                                    }
                                    cVarB.K = aVar.A;
                                    cVarB.L = aVar.B;
                                    cVarB.G = aVar.C;
                                    cVarB.H = aVar.D;
                                }
                                i60 = -1;
                                if (i44 != i60) {
                                    cVarA5 = a(i44);
                                    if (cVarA5 != null) {
                                        cVarB.f(aVar4, cVarA5, aVar5, ((ViewGroup.MarginLayoutParams) aVar).bottomMargin, aVar.f218t);
                                    }
                                } else {
                                    if (i43 != i60) {
                                        cVarA3 = a(i43);
                                        if (cVarA3 != null) {
                                            cVarB.f(aVar4, cVarA3, aVar4, ((ViewGroup.MarginLayoutParams) aVar).bottomMargin, aVar.f218t);
                                        }
                                    }
                                    if (i48 != i60) {
                                        view2 = this.f191a.get(i48);
                                        cVarA4 = a(i48);
                                        if (cVarA4 != null) {
                                            a aVar10 = (a) view2.getLayoutParams();
                                            aVar.J = true;
                                            aVar10.J = true;
                                            b.a aVar11 = b.a.f332e;
                                            cVarB.c(aVar11).a(cVarA4.c(aVar11), 0, -1, 2, 0, true);
                                            cVarB.c(aVar5).c();
                                            cVarB.c(aVar4).c();
                                        }
                                    }
                                    if (f2 >= 0.0f) {
                                        cVarB.A = f2;
                                    }
                                    f3 = aVar.f222x;
                                    if (f3 >= 0.0f) {
                                        cVarB.B = f3;
                                    }
                                    if (aVar.H) {
                                        cVarB.l(3);
                                        cVarB.p(0);
                                        if (((ViewGroup.MarginLayoutParams) aVar).width == -1) {
                                            cVarB.p(dVar.e());
                                        }
                                    } else {
                                        cVarB.l(1);
                                        cVarB.p(((ViewGroup.MarginLayoutParams) aVar).width);
                                    }
                                    if (aVar.I) {
                                        cVarB.o(3);
                                        cVarB.j(0);
                                        if (((ViewGroup.MarginLayoutParams) aVar).height == -1) {
                                            cVarB.p(dVar.d());
                                        }
                                    } else {
                                        cVarB.o(1);
                                        cVarB.j(((ViewGroup.MarginLayoutParams) aVar).height);
                                    }
                                    if (isInEditMode()) {
                                        cVarB.f354r = i42;
                                        cVarB.f355s = i47;
                                    }
                                    str = aVar.f223y;
                                    if (str != null) {
                                        if (str.length() == 0) {
                                            cVarB.f352p = 0.0f;
                                        } else {
                                            int length3 = str.length();
                                            iIndexOf = str.indexOf(44);
                                            if (iIndexOf > 0) {
                                                i20 = 0;
                                                i21 = -1;
                                            } else {
                                                i20 = 0;
                                                i21 = -1;
                                            }
                                            iIndexOf2 = str.indexOf(58);
                                            if (iIndexOf2 >= 0) {
                                                strSubstring = str.substring(i20);
                                                if (strSubstring.length() > 0) {
                                                    fAbs = Float.parseFloat(strSubstring);
                                                } else {
                                                    fAbs = 0.0f;
                                                }
                                            } else {
                                                strSubstring = str.substring(i20);
                                                if (strSubstring.length() > 0) {
                                                    fAbs = Float.parseFloat(strSubstring);
                                                } else {
                                                    fAbs = 0.0f;
                                                }
                                            }
                                            if (fAbs > 0.0f) {
                                                cVarB.f352p = fAbs;
                                                cVarB.f353q = i21;
                                            }
                                        }
                                    }
                                    cVarB.K = aVar.A;
                                    cVarB.L = aVar.B;
                                    cVarB.G = aVar.C;
                                    cVarB.H = aVar.D;
                                }
                                i60 = -1;
                                if (i48 != i60) {
                                    view2 = this.f191a.get(i48);
                                    cVarA4 = a(i48);
                                    if (cVarA4 != null) {
                                        a aVar12 = (a) view2.getLayoutParams();
                                        aVar.J = true;
                                        aVar12.J = true;
                                        b.a aVar13 = b.a.f332e;
                                        cVarB.c(aVar13).a(cVarA4.c(aVar13), 0, -1, 2, 0, true);
                                        cVarB.c(aVar5).c();
                                        cVarB.c(aVar4).c();
                                    }
                                }
                                if (f2 >= 0.0f) {
                                    cVarB.A = f2;
                                }
                                f3 = aVar.f222x;
                                if (f3 >= 0.0f) {
                                    cVarB.B = f3;
                                }
                                if (aVar.H) {
                                    cVarB.l(3);
                                    cVarB.p(0);
                                    if (((ViewGroup.MarginLayoutParams) aVar).width == -1) {
                                        cVarB.p(dVar.e());
                                    }
                                } else {
                                    cVarB.l(1);
                                    cVarB.p(((ViewGroup.MarginLayoutParams) aVar).width);
                                }
                                if (aVar.I) {
                                    cVarB.o(3);
                                    cVarB.j(0);
                                    if (((ViewGroup.MarginLayoutParams) aVar).height == -1) {
                                        cVarB.p(dVar.d());
                                    }
                                } else {
                                    cVarB.o(1);
                                    cVarB.j(((ViewGroup.MarginLayoutParams) aVar).height);
                                }
                                if (isInEditMode()) {
                                    cVarB.f354r = i42;
                                    cVarB.f355s = i47;
                                }
                                str = aVar.f223y;
                                if (str != null) {
                                    if (str.length() == 0) {
                                        cVarB.f352p = 0.0f;
                                    } else {
                                        int length4 = str.length();
                                        iIndexOf = str.indexOf(44);
                                        if (iIndexOf > 0) {
                                            i20 = 0;
                                            i21 = -1;
                                        } else {
                                            i20 = 0;
                                            i21 = -1;
                                        }
                                        iIndexOf2 = str.indexOf(58);
                                        if (iIndexOf2 >= 0) {
                                            strSubstring = str.substring(i20);
                                            if (strSubstring.length() > 0) {
                                                fAbs = Float.parseFloat(strSubstring);
                                            } else {
                                                fAbs = 0.0f;
                                            }
                                        } else {
                                            strSubstring = str.substring(i20);
                                            if (strSubstring.length() > 0) {
                                                fAbs = Float.parseFloat(strSubstring);
                                            } else {
                                                fAbs = 0.0f;
                                            }
                                        }
                                        if (fAbs > 0.0f) {
                                            cVarB.f352p = fAbs;
                                            cVarB.f353q = i21;
                                        }
                                    }
                                }
                                cVarB.K = aVar.A;
                                cVarB.L = aVar.B;
                                cVarB.G = aVar.C;
                                cVarB.H = aVar.D;
                            }
                        }
                    }
                    i38++;
                    childCount2 = i13;
                    arrayList3 = arrayList2;
                    paddingLeft = paddingLeft;
                    paddingTop = paddingTop;
                    i35 = -1;
                }
            }
            i8 = paddingTop;
            arrayList = arrayList3;
            i9 = paddingLeft;
        } else {
            i8 = paddingTop;
            arrayList = arrayList3;
            i9 = paddingLeft;
        }
        this.f195e = i9;
        int i61 = i8;
        this.f196f = i61;
        this.f197g = i2;
        this.f198h = i3;
        int paddingBottom2 = getPaddingBottom() + getPaddingTop();
        int paddingRight2 = getPaddingRight() + getPaddingLeft();
        int childCount3 = getChildCount();
        int i62 = 0;
        while (true) {
            i10 = 8;
            if (i62 >= childCount3) {
                break;
            }
            View childAt2 = getChildAt(i62);
            if (childAt2.getVisibility() != 8) {
                a aVar14 = (a) childAt2.getLayoutParams();
                c cVar = aVar14.S;
                if (!aVar14.K) {
                    int measuredWidth2 = ((ViewGroup.MarginLayoutParams) aVar14).width;
                    int measuredHeight2 = ((ViewGroup.MarginLayoutParams) aVar14).height;
                    if (aVar14.H || aVar14.I) {
                        if (measuredWidth2 == 0) {
                            i12 = -2;
                            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i2, paddingRight2, -2);
                        } else {
                            i12 = -2;
                            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i2, paddingRight2, measuredWidth2);
                        }
                        childAt2.measure(childMeasureSpec2, measuredHeight2 == 0 ? ViewGroup.getChildMeasureSpec(i3, paddingBottom2, i12) : ViewGroup.getChildMeasureSpec(i3, paddingBottom2, measuredHeight2));
                        measuredWidth2 = childAt2.getMeasuredWidth();
                        measuredHeight2 = childAt2.getMeasuredHeight();
                    }
                    cVar.p(measuredWidth2);
                    cVar.j(measuredHeight2);
                    if (aVar14.J && (baseline2 = childAt2.getBaseline()) != -1) {
                        cVar.f362z = baseline2;
                    }
                }
            }
            i62++;
        }
        if (getChildCount() > 0) {
            c.a.f308g = false;
            dVar.U = true;
            dVar.s();
        }
        int size3 = arrayList.size();
        int paddingBottom3 = getPaddingBottom() + i61;
        int paddingRight3 = getPaddingRight() + i9;
        if (size3 > 0) {
            int i63 = 0;
            int iCombineMeasuredStates = 0;
            boolean z5 = false;
            while (i63 < size3) {
                ArrayList<c> arrayList4 = arrayList;
                c cVar2 = arrayList4.get(i63);
                if (!(cVar2 instanceof e) && (view = (View) cVar2.E) != null && view.getVisibility() != i10) {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(cVar2.e(), 1073741824);
                    int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(cVar2.d(), 1073741824);
                    a aVar15 = (a) view.getLayoutParams();
                    int i64 = ((ViewGroup.MarginLayoutParams) aVar15).width;
                    if (i64 == -2) {
                        iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingRight3, i64);
                    } else {
                        int i65 = ((ViewGroup.MarginLayoutParams) aVar15).height;
                        if (i65 == -2) {
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, paddingBottom3, i65);
                        }
                        view.measure(iMakeMeasureSpec, childMeasureSpec);
                        measuredWidth = view.getMeasuredWidth();
                        measuredHeight = view.getMeasuredHeight();
                        if (measuredWidth != cVar2.e()) {
                            cVar2.p(measuredWidth);
                            z2 = true;
                        } else {
                            z2 = z5;
                        }
                        if (measuredHeight != cVar2.d()) {
                            cVar2.j(measuredHeight);
                            z2 = true;
                        }
                        if (aVar15.J && (baseline = view.getBaseline()) != -1 && baseline != cVar2.f362z) {
                            cVar2.f362z = baseline;
                            z2 = true;
                        }
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        z5 = z2;
                    }
                    childMeasureSpec = iMakeMeasureSpec2;
                    view.measure(iMakeMeasureSpec, childMeasureSpec);
                    measuredWidth = view.getMeasuredWidth();
                    measuredHeight = view.getMeasuredHeight();
                    if (measuredWidth != cVar2.e()) {
                        cVar2.p(measuredWidth);
                        z2 = true;
                    } else {
                        z2 = z5;
                    }
                    if (measuredHeight != cVar2.d()) {
                        cVar2.j(measuredHeight);
                        z2 = true;
                    }
                    if (aVar15.J) {
                        cVar2.f362z = baseline;
                        z2 = true;
                    }
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    z5 = z2;
                }
                i63++;
                arrayList = arrayList4;
                size3 = size3;
                i10 = 8;
            }
            if (z5) {
                c.a.f308g = false;
                dVar.U = true;
                dVar.s();
            }
            i11 = iCombineMeasuredStates;
        } else {
            i11 = 0;
        }
        setMeasuredDimension(View.resolveSizeAndState(dVar.e() + paddingRight3, i2, i11) & 16777215, View.resolveSizeAndState(dVar.d() + paddingBottom3, i3, i11 << 16) & 16777215);
    }

    @Override
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        c cVarB = b(view);
        if ((view instanceof a.a) && !(cVarB instanceof e)) {
            a aVar = (a) view.getLayoutParams();
            e eVar = new e();
            aVar.S = eVar;
            aVar.K = true;
            eVar.s(aVar.G);
            cVarB = aVar.S;
        }
        cVarB.E = view;
        this.f191a.put(view.getId(), view);
        d dVar = this.f193c;
        dVar.M.add(cVarB);
        c cVar = cVarB.f349m;
        if (cVar != null) {
            ((g) cVar).M.remove(cVarB);
            cVarB.f349m = null;
        }
        cVarB.f349m = dVar;
        this.f194d = true;
    }

    @Override
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f191a.remove(view.getId());
        c cVarB = b(view);
        this.f193c.M.remove(cVarB);
        cVarB.f349m = null;
        this.f194d = true;
    }

    @Override
    public final void requestLayout() {
        super.requestLayout();
        this.f194d = true;
    }

    public void setDebugDirectResolution(boolean z2) {
        this.f193c.U = z2;
    }

    @Override
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    public static class a extends ViewGroup.MarginLayoutParams {
        public final float A;
        public final float B;
        public final int C;
        public final int D;
        public final int E;
        public final int F;
        public final int G;
        public boolean H;
        public boolean I;
        public boolean J;
        public boolean K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public float R;
        public c S;

        public final int f199a;

        public final int f200b;

        public final float f201c;

        public final int f202d;

        public final int f203e;

        public final int f204f;

        public final int f205g;

        public final int f206h;

        public final int f207i;

        public final int f208j;

        public final int f209k;

        public final int f210l;

        public final int f211m;

        public final int f212n;

        public final int f213o;

        public final int f214p;

        public final int f215q;

        public final int f216r;

        public final int f217s;

        public final int f218t;

        public final int f219u;

        public final int f220v;

        public final float f221w;

        public final float f222x;

        public final String f223y;

        public final int f224z;

        public a(Context context, AttributeSet attributeSet) {
            int i2;
            super(context, attributeSet);
            this.f199a = -1;
            this.f200b = -1;
            this.f201c = -1.0f;
            this.f202d = -1;
            this.f203e = -1;
            this.f204f = -1;
            this.f205g = -1;
            this.f206h = -1;
            this.f207i = -1;
            this.f208j = -1;
            this.f209k = -1;
            this.f210l = -1;
            this.f211m = -1;
            this.f212n = -1;
            this.f213o = -1;
            this.f214p = -1;
            this.f215q = -1;
            this.f216r = -1;
            this.f217s = -1;
            this.f218t = -1;
            this.f219u = -1;
            this.f220v = -1;
            this.f221w = 0.5f;
            this.f222x = 0.5f;
            this.f223y = null;
            this.f224z = 1;
            this.A = 0.0f;
            this.B = 0.0f;
            this.C = 0;
            this.D = 0;
            this.E = -1;
            this.F = -1;
            this.G = -1;
            this.H = true;
            this.I = true;
            this.J = false;
            this.K = false;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = -1;
            this.R = 0.5f;
            this.S = new c();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.c.f10b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == 16) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f202d);
                    this.f202d = resourceId;
                    if (resourceId == -1) {
                        this.f202d = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 17) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f203e);
                    this.f203e = resourceId2;
                    if (resourceId2 == -1) {
                        this.f203e = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 19) {
                    int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f204f);
                    this.f204f = resourceId3;
                    if (resourceId3 == -1) {
                        this.f204f = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 20) {
                    int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f205g);
                    this.f205g = resourceId4;
                    if (resourceId4 == -1) {
                        this.f205g = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 25) {
                    int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f206h);
                    this.f206h = resourceId5;
                    if (resourceId5 == -1) {
                        this.f206h = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 24) {
                    int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f207i);
                    this.f207i = resourceId6;
                    if (resourceId6 == -1) {
                        this.f207i = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 5) {
                    int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f208j);
                    this.f208j = resourceId7;
                    if (resourceId7 == -1) {
                        this.f208j = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 4) {
                    int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f209k);
                    this.f209k = resourceId8;
                    if (resourceId8 == -1) {
                        this.f209k = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 2) {
                    int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.f210l);
                    this.f210l = resourceId9;
                    if (resourceId9 == -1) {
                        this.f210l = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 29) {
                    this.E = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.E);
                } else if (index == 30) {
                    this.F = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.F);
                } else if (index == 9) {
                    this.f199a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f199a);
                } else if (index == 10) {
                    this.f200b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f200b);
                } else if (index == 11) {
                    this.f201c = typedArrayObtainStyledAttributes.getFloat(index, this.f201c);
                } else if (index == 0) {
                    this.G = typedArrayObtainStyledAttributes.getInt(index, this.G);
                } else if (index == 21) {
                    int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.f211m);
                    this.f211m = resourceId10;
                    if (resourceId10 == -1) {
                        this.f211m = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 22) {
                    int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.f212n);
                    this.f212n = resourceId11;
                    if (resourceId11 == -1) {
                        this.f212n = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 8) {
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.f213o);
                    this.f213o = resourceId12;
                    if (resourceId12 == -1) {
                        this.f213o = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 7) {
                    int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.f214p);
                    this.f214p = resourceId13;
                    if (resourceId13 == -1) {
                        this.f214p = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 33) {
                    this.f215q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f215q);
                } else if (index == 36) {
                    this.f216r = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f216r);
                } else if (index == 34) {
                    this.f217s = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f217s);
                } else if (index == 31) {
                    this.f218t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f218t);
                } else if (index == 35) {
                    this.f219u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f219u);
                } else if (index == 32) {
                    this.f220v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f220v);
                } else if (index == 12) {
                    this.f221w = typedArrayObtainStyledAttributes.getFloat(index, this.f221w);
                } else if (index == 26) {
                    this.f222x = typedArrayObtainStyledAttributes.getFloat(index, this.f222x);
                } else if (index == 6) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f223y = string;
                    this.f224z = -1;
                    if (string != null) {
                        int length = string.length();
                        int iIndexOf = string.indexOf(44);
                        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                            i2 = 0;
                        } else {
                            String strSubstring = string.substring(0, iIndexOf);
                            if (strSubstring.equalsIgnoreCase("W")) {
                                this.f224z = 0;
                            } else if (strSubstring.equalsIgnoreCase("H")) {
                                this.f224z = 1;
                            }
                            i2 = iIndexOf + 1;
                        }
                        int iIndexOf2 = string.indexOf(58);
                        if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                            String strSubstring2 = string.substring(i2);
                            if (strSubstring2.length() > 0) {
                                Float.parseFloat(strSubstring2);
                            }
                        } else {
                            String strSubstring3 = string.substring(i2, iIndexOf2);
                            String strSubstring4 = string.substring(iIndexOf2 + 1);
                            if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                                try {
                                    float f2 = Float.parseFloat(strSubstring3);
                                    float f3 = Float.parseFloat(strSubstring4);
                                    if (f2 > 0.0f && f3 > 0.0f) {
                                        if (this.f224z == 1) {
                                            Math.abs(f3 / f2);
                                        } else {
                                            Math.abs(f2 / f3);
                                        }
                                    }
                                } catch (NumberFormatException unused) {
                                }
                            }
                        }
                    }
                } else if (index == 14) {
                    this.A = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == 28) {
                    this.B = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == 13) {
                    this.C = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 27) {
                    this.D = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index != 15 && index != 23 && index != 18 && index != 3 && index != 1) {
                    Log.w("ConstraintLayout", "Unknown attribute 0x" + Integer.toHexString(index));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            this.K = false;
            this.H = true;
            this.I = true;
            int i4 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i4 == 0 || i4 == -1) {
                this.H = false;
            }
            int i5 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i5 == 0 || i5 == -1) {
                this.I = false;
            }
            if (this.f201c == -1.0f && this.f199a == -1 && this.f200b == -1) {
                return;
            }
            this.K = true;
            this.H = true;
            this.I = true;
            if (!(this.S instanceof e)) {
                this.S = new e();
            }
            ((e) this.S).s(this.G);
        }

        @Override
        public final void resolveLayoutDirection(int i2) {
            super.resolveLayoutDirection(i2);
            this.N = -1;
            this.O = -1;
            this.L = -1;
            this.M = -1;
            this.P = this.f215q;
            this.Q = this.f217s;
            float f2 = this.f221w;
            this.R = f2;
            boolean z2 = 1 == getLayoutDirection();
            int i3 = this.f220v;
            int i4 = this.f219u;
            int i5 = this.f214p;
            int i6 = this.f213o;
            int i7 = this.f212n;
            int i8 = this.f211m;
            if (z2) {
                if (i8 != -1) {
                    this.N = i8;
                } else if (i7 != -1) {
                    this.O = i7;
                }
                if (i6 != -1) {
                    this.M = i6;
                }
                if (i5 != -1) {
                    this.L = i5;
                }
                if (i4 != -1) {
                    this.Q = i4;
                }
                if (i3 != -1) {
                    this.P = i3;
                }
                this.R = 1.0f - f2;
            } else {
                if (i8 != -1) {
                    this.M = i8;
                }
                if (i7 != -1) {
                    this.L = i7;
                }
                if (i6 != -1) {
                    this.N = i6;
                }
                if (i5 != -1) {
                    this.O = i5;
                }
                if (i4 != -1) {
                    this.P = i4;
                }
                if (i3 != -1) {
                    this.Q = i3;
                }
            }
            if (i6 == -1 && i5 == -1) {
                int i9 = this.f204f;
                if (i9 != -1) {
                    this.N = i9;
                } else {
                    int i10 = this.f205g;
                    if (i10 != -1) {
                        this.O = i10;
                    }
                }
            }
            if (i7 == -1 && i8 == -1) {
                int i11 = this.f202d;
                if (i11 != -1) {
                    this.L = i11;
                    return;
                }
                int i12 = this.f203e;
                if (i12 != -1) {
                    this.M = i12;
                }
            }
        }

        public a() {
            super(-2, -2);
            this.f199a = -1;
            this.f200b = -1;
            this.f201c = -1.0f;
            this.f202d = -1;
            this.f203e = -1;
            this.f204f = -1;
            this.f205g = -1;
            this.f206h = -1;
            this.f207i = -1;
            this.f208j = -1;
            this.f209k = -1;
            this.f210l = -1;
            this.f211m = -1;
            this.f212n = -1;
            this.f213o = -1;
            this.f214p = -1;
            this.f215q = -1;
            this.f216r = -1;
            this.f217s = -1;
            this.f218t = -1;
            this.f219u = -1;
            this.f220v = -1;
            this.f221w = 0.5f;
            this.f222x = 0.5f;
            this.f223y = null;
            this.f224z = 1;
            this.A = 0.0f;
            this.B = 0.0f;
            this.C = 0;
            this.D = 0;
            this.E = -1;
            this.F = -1;
            this.G = -1;
            this.H = true;
            this.I = true;
            this.J = false;
            this.K = false;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = -1;
            this.R = 0.5f;
            this.S = new c();
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f199a = -1;
            this.f200b = -1;
            this.f201c = -1.0f;
            this.f202d = -1;
            this.f203e = -1;
            this.f204f = -1;
            this.f205g = -1;
            this.f206h = -1;
            this.f207i = -1;
            this.f208j = -1;
            this.f209k = -1;
            this.f210l = -1;
            this.f211m = -1;
            this.f212n = -1;
            this.f213o = -1;
            this.f214p = -1;
            this.f215q = -1;
            this.f216r = -1;
            this.f217s = -1;
            this.f218t = -1;
            this.f219u = -1;
            this.f220v = -1;
            this.f221w = 0.5f;
            this.f222x = 0.5f;
            this.f223y = null;
            this.f224z = 1;
            this.A = 0.0f;
            this.B = 0.0f;
            this.C = 0;
            this.D = 0;
            this.E = -1;
            this.F = -1;
            this.G = -1;
            this.H = true;
            this.I = true;
            this.J = false;
            this.K = false;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = -1;
            this.R = 0.5f;
            this.S = new c();
        }
    }
}
