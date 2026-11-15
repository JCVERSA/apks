package com.bytedance.adsdk.ugeno.HiB;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

class EjP {
    static final boolean TKC = true;
    private final com.bytedance.adsdk.ugeno.HiB.Sj EjP;
    private boolean[] HiB;
    int[] Sj;
    long[] sP;
    private long[] vS;

    static class Sj {
        List<TKC> Sj;
        int sP;

        Sj() {
        }

        void Sj() {
            this.Sj = null;
            this.sP = 0;
        }
    }

    private static class sP implements Comparable<sP> {
        int Sj;
        int sP;

        private sP() {
        }

        @Override
        public int compareTo(sP sPVar) {
            int i10 = this.sP;
            int i11 = sPVar.sP;
            return i10 != i11 ? i10 - i11 : this.Sj - sPVar.Sj;
        }

        public String toString() {
            return "Order{order=" + this.sP + ", index=" + this.Sj + '}';
        }
    }

    EjP(com.bytedance.adsdk.ugeno.HiB.Sj sj2) {
        this.EjP = sj2;
    }

    private int EjP(boolean z10) {
        return z10 ? this.EjP.getPaddingBottom() : this.EjP.getPaddingEnd();
    }

    private int HiB(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        return z10 ? sPVar.sef() : sPVar.Fmk();
    }

    private int TKC(boolean z10) {
        return z10 ? this.EjP.getPaddingTop() : this.EjP.getPaddingStart();
    }

    private int vS(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        return z10 ? sPVar.uvD() : sPVar.Zq();
    }

    int Sj(long j10) {
        return (int) j10;
    }

    int sP(long j10) {
        return (int) (j10 >> 32);
    }

    /* JADX WARN: Multi-variable type inference failed */
    int[] Sj(View view, int i10, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.EjP.getFlexItemCount();
        List<sP> listSP = sP(flexItemCount);
        sP sPVar = new sP();
        if (view == null || !(layoutParams instanceof com.bytedance.adsdk.ugeno.HiB.sP)) {
            sPVar.sP = 1;
        } else {
            sPVar.sP = ((com.bytedance.adsdk.ugeno.HiB.sP) layoutParams).TKC();
        }
        if (i10 == -1 || i10 == flexItemCount || i10 >= this.EjP.getFlexItemCount()) {
            sPVar.Sj = flexItemCount;
        } else {
            sPVar.Sj = i10;
            while (i10 < flexItemCount) {
                listSP.get(i10).Sj++;
                i10++;
            }
        }
        listSP.add(sPVar);
        return Sj(flexItemCount + 1, listSP, sparseIntArray);
    }

    long sP(int i10, int i11) {
        return (((long) i10) & 4294967295L) | (((long) i11) << 32);
    }

    private int EjP(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        if (z10) {
            return sPVar.Zq();
        }
        return sPVar.uvD();
    }

    private int TKC(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        if (z10) {
            return sPVar.Fmk();
        }
        return sPVar.sef();
    }

    private List<sP> sP(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) this.EjP.Sj(i11).getLayoutParams();
            sP sPVar2 = new sP();
            sPVar2.sP = sPVar.TKC();
            sPVar2.Sj = i11;
            arrayList.add(sPVar2);
        }
        return arrayList;
    }

    private void TKC(int i10) {
        boolean[] zArr = this.HiB;
        if (zArr == null) {
            this.HiB = new boolean[Math.max(i10, 10)];
        } else if (zArr.length < i10) {
            this.HiB = new boolean[Math.max(zArr.length * 2, i10)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    boolean sP(SparseIntArray sparseIntArray) {
        int flexItemCount = this.EjP.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i10 = 0; i10 < flexItemCount; i10++) {
            View viewSj = this.EjP.Sj(i10);
            if (viewSj != null && ((com.bytedance.adsdk.ugeno.HiB.sP) viewSj.getLayoutParams()).TKC() != sparseIntArray.get(i10)) {
                return true;
            }
        }
        return false;
    }

    void sP(Sj sj2, int i10, int i11) {
        Sj(sj2, i11, i10, Integer.MAX_VALUE, 0, -1, (List<TKC>) null);
    }

    private int sP(boolean z10) {
        if (z10) {
            return this.EjP.getPaddingEnd();
        }
        return this.EjP.getPaddingBottom();
    }

    int[] Sj(SparseIntArray sparseIntArray) {
        int flexItemCount = this.EjP.getFlexItemCount();
        return Sj(flexItemCount, sP(flexItemCount), sparseIntArray);
    }

    private int sP(View view, boolean z10) {
        if (z10) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int[] Sj(int i10, List<sP> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i10];
        int i11 = 0;
        for (sP sPVar : list) {
            int i12 = sPVar.Sj;
            iArr[i11] = i12;
            sparseIntArray.append(i12, sPVar.sP);
            i11++;
        }
        return iArr;
    }

    private int sP(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        if (z10) {
            return sPVar.sP();
        }
        return sPVar.Sj();
    }

    private void sP(int i10, int i11, TKC tkc, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int iMax;
        int i16 = tkc.HiB;
        float f10 = tkc.Ym;
        float f11 = 0.0f;
        if (f10 <= 0.0f || i12 > i16) {
            return;
        }
        float f12 = (i16 - i12) / f10;
        tkc.HiB = i13 + tkc.vS;
        if (!z10) {
            tkc.Jcg = Integer.MIN_VALUE;
        }
        int i17 = 0;
        boolean z11 = false;
        int i18 = 0;
        float f13 = 0.0f;
        while (i17 < tkc.Dq) {
            int i19 = tkc.Zq + i17;
            View viewSP = this.EjP.sP(i19);
            if (viewSP == null || viewSP.getVisibility() == 8) {
                i14 = i16;
                i15 = i17;
            } else {
                com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) viewSP.getLayoutParams();
                int flexDirection = this.EjP.getFlexDirection();
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = viewSP.getMeasuredHeight();
                    long[] jArr = this.vS;
                    if (jArr != null) {
                        measuredHeight = sP(jArr[i19]);
                    }
                    int measuredWidth = viewSP.getMeasuredWidth();
                    long[] jArr2 = this.vS;
                    if (jArr2 != null) {
                        measuredWidth = Sj(jArr2[i19]);
                    }
                    if (this.HiB[i19] || sPVar.HiB() <= f11) {
                        i14 = i16;
                        i15 = i17;
                    } else {
                        float fHiB = measuredHeight - (sPVar.HiB() * f12);
                        if (i17 == tkc.Dq - 1) {
                            fHiB += f13;
                            f13 = f11;
                        }
                        int iRound = Math.round(fHiB);
                        if (iRound < sPVar.Dq()) {
                            iRound = sPVar.Dq();
                            this.HiB[i19] = true;
                            tkc.Ym -= sPVar.HiB();
                            i14 = i16;
                            i15 = i17;
                            z11 = true;
                        } else {
                            f13 += fHiB - iRound;
                            i14 = i16;
                            i15 = i17;
                            double d10 = f13;
                            if (d10 > 1.0d) {
                                iRound++;
                                f13 -= 1.0f;
                            } else if (d10 < -1.0d) {
                                iRound--;
                                f13 += 1.0f;
                            }
                        }
                        int iSj = Sj(i10, sPVar, tkc.Fmk);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        viewSP.measure(iSj, iMakeMeasureSpec);
                        measuredWidth = viewSP.getMeasuredWidth();
                        int measuredHeight2 = viewSP.getMeasuredHeight();
                        Sj(i19, iSj, iMakeMeasureSpec, viewSP);
                        measuredHeight = measuredHeight2;
                    }
                    iMax = Math.max(i18, measuredWidth + sPVar.Fmk() + sPVar.Zq() + this.EjP.Sj(viewSP));
                    tkc.HiB += measuredHeight + sPVar.sef() + sPVar.uvD();
                } else {
                    i14 = i16;
                    int i20 = i17;
                    int measuredWidth2 = viewSP.getMeasuredWidth();
                    long[] jArr3 = this.vS;
                    if (jArr3 != null) {
                        measuredWidth2 = Sj(jArr3[i19]);
                    }
                    int measuredHeight3 = viewSP.getMeasuredHeight();
                    long[] jArr4 = this.vS;
                    if (jArr4 != null) {
                        measuredHeight3 = sP(jArr4[i19]);
                    }
                    if (this.HiB[i19] || sPVar.HiB() <= 0.0f) {
                        i15 = i20;
                    } else {
                        float fHiB2 = measuredWidth2 - (sPVar.HiB() * f12);
                        if (i15 == tkc.Dq - 1) {
                            i15 = i20;
                            fHiB2 += f13;
                            f13 = 0.0f;
                        }
                        i15 = i20;
                        int iRound2 = Math.round(fHiB2);
                        if (iRound2 < sPVar.Jcg()) {
                            iRound2 = sPVar.Jcg();
                            this.HiB[i19] = true;
                            tkc.Ym -= sPVar.HiB();
                            z11 = true;
                        } else {
                            f13 += fHiB2 - iRound2;
                            double d11 = f13;
                            if (d11 > 1.0d) {
                                iRound2++;
                                f13 -= 1.0f;
                            } else if (d11 < -1.0d) {
                                iRound2--;
                                f13 += 1.0f;
                            }
                        }
                        int iSP = sP(i11, sPVar, tkc.Fmk);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        viewSP.measure(iMakeMeasureSpec2, iSP);
                        int measuredWidth3 = viewSP.getMeasuredWidth();
                        int measuredHeight4 = viewSP.getMeasuredHeight();
                        Sj(i19, iMakeMeasureSpec2, iSP, viewSP);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int iMax2 = Math.max(i18, measuredHeight3 + sPVar.sef() + sPVar.uvD() + this.EjP.Sj(viewSP));
                    tkc.HiB += measuredWidth2 + sPVar.Fmk() + sPVar.Zq();
                    iMax = iMax2;
                }
                tkc.Jcg = Math.max(tkc.Jcg, iMax);
                i18 = iMax;
            }
            i17 = i15 + 1;
            i16 = i14;
            f11 = 0.0f;
        }
        int i21 = i16;
        if (!z11 || i21 == tkc.HiB) {
            return;
        }
        sP(i10, i11, tkc, i12, i13, true);
    }

    void Sj(Sj sj2, int i10, int i11) {
        Sj(sj2, i10, i11, Integer.MAX_VALUE, 0, -1, (List<TKC>) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void Sj(Sj sj2, int i10, int i11, int i12, int i13, int i14, List<TKC> list) {
        int i15;
        int i16;
        List<TKC> list2;
        int i17;
        int i18;
        View view;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26 = i11;
        int i27 = i14;
        boolean zSj = this.EjP.Sj();
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        List<TKC> arrayList = list == null ? new ArrayList() : list;
        sj2.Sj = arrayList;
        int i28 = i27 == -1 ? 1 : 0;
        int iSj = Sj(zSj);
        int iSP = sP(zSj);
        int iTKC = TKC(zSj);
        int iEjP = EjP(zSj);
        TKC tkc = new TKC();
        int i29 = i13;
        tkc.Zq = i29;
        int i30 = iSP + iSj;
        tkc.HiB = i30;
        int flexItemCount = this.EjP.getFlexItemCount();
        int i31 = i28;
        int i32 = Integer.MIN_VALUE;
        int i33 = 0;
        int iCombineMeasuredStates = 0;
        int i34 = 0;
        while (i29 < flexItemCount) {
            View viewSP = this.EjP.sP(i29);
            if (viewSP == null) {
                if (Sj(i29, flexItemCount, tkc)) {
                    Sj(arrayList, tkc, i29, i33);
                }
            } else {
                if (viewSP.getVisibility() == 8) {
                    tkc.uA++;
                    tkc.Dq++;
                    if (Sj(i29, flexItemCount, tkc)) {
                        Sj(arrayList, tkc, i29, i33);
                    }
                } else {
                    if (viewSP instanceof CompoundButton) {
                        Sj((CompoundButton) viewSP);
                    }
                    com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) viewSP.getLayoutParams();
                    int i35 = flexItemCount;
                    if (sPVar.vS() == 4) {
                        tkc.sef.add(Integer.valueOf(i29));
                    }
                    int iSj2 = Sj(sPVar, zSj);
                    if (sPVar.aa() != -1.0f && mode == 1073741824) {
                        iSj2 = Math.round(size * sPVar.aa());
                    }
                    if (zSj) {
                        int iSj3 = this.EjP.Sj(i10, i30 + TKC(sPVar, true) + EjP(sPVar, true), iSj2);
                        int iSP2 = this.EjP.sP(i26, iTKC + iEjP + HiB(sPVar, true) + vS(sPVar, true) + i33, sP(sPVar, true));
                        viewSP.measure(iSj3, iSP2);
                        Sj(i29, iSj3, iSP2, viewSP);
                        i16 = iSj3;
                    } else {
                        int iSj4 = this.EjP.Sj(i26, iTKC + iEjP + HiB(sPVar, false) + vS(sPVar, false) + i33, sP(sPVar, false));
                        int iSP3 = this.EjP.sP(i10, TKC(sPVar, false) + i30 + EjP(sPVar, false), iSj2);
                        viewSP.measure(iSj4, iSP3);
                        Sj(i29, iSj4, iSP3, viewSP);
                        i16 = iSP3;
                    }
                    Sj(viewSP, i29);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewSP.getMeasuredState());
                    int i36 = i33;
                    int i37 = i30;
                    TKC tkc2 = tkc;
                    int i38 = i29;
                    list2 = arrayList;
                    int i39 = i16;
                    if (Sj(viewSP, mode, size, tkc.HiB, EjP(sPVar, zSj) + Sj(viewSP, zSj) + TKC(sPVar, zSj), sPVar, i38, i34, arrayList.size())) {
                        if (tkc2.sP() > 0) {
                            Sj(list2, tkc2, i38 > 0 ? i38 - 1 : 0, i36);
                            i33 = tkc2.Jcg + i36;
                        } else {
                            i33 = i36;
                        }
                        if (zSj) {
                            if (sPVar.sP() == -1) {
                                com.bytedance.adsdk.ugeno.HiB.Sj sj3 = this.EjP;
                                i17 = i11;
                                i19 = -1;
                                view = viewSP;
                                view.measure(i39, sj3.sP(i17, sj3.getPaddingTop() + this.EjP.getPaddingBottom() + sPVar.sef() + sPVar.uvD() + i33, sPVar.sP()));
                                i18 = i38;
                                Sj(view, i18);
                            } else {
                                i17 = i11;
                                i18 = i38;
                                view = viewSP;
                                i19 = -1;
                            }
                        } else {
                            i17 = i11;
                            i18 = i38;
                            view = viewSP;
                            i19 = -1;
                            if (sPVar.Sj() == -1) {
                                com.bytedance.adsdk.ugeno.HiB.Sj sj4 = this.EjP;
                                view.measure(sj4.Sj(i17, sj4.getPaddingLeft() + this.EjP.getPaddingRight() + sPVar.Fmk() + sPVar.Zq() + i33, sPVar.Sj()), i39);
                                Sj(view, i18);
                            }
                        }
                        tkc = new TKC();
                        i21 = 1;
                        tkc.Dq = 1;
                        i20 = i37;
                        tkc.HiB = i20;
                        tkc.Zq = i18;
                        i23 = Integer.MIN_VALUE;
                        i22 = 0;
                    } else {
                        i17 = i11;
                        i18 = i38;
                        view = viewSP;
                        i19 = -1;
                        tkc = tkc2;
                        i20 = i37;
                        i21 = 1;
                        tkc.Dq++;
                        i22 = i34 + 1;
                        i33 = i36;
                        i23 = i32;
                    }
                    tkc.dNu = (tkc.dNu ? 1 : 0) | (sPVar.EjP() != 0.0f ? i21 : 0);
                    tkc.TzV = (tkc.TzV ? 1 : 0) | (sPVar.HiB() != 0.0f ? i21 : 0);
                    int[] iArr = this.Sj;
                    if (iArr != null) {
                        iArr[i18] = list2.size();
                    }
                    tkc.HiB += Sj(view, zSj) + TKC(sPVar, zSj) + EjP(sPVar, zSj);
                    tkc.TEQ += sPVar.EjP();
                    tkc.Ym += sPVar.HiB();
                    this.EjP.Sj(view, i18, i22, tkc);
                    int iMax = Math.max(i23, sP(view, zSj) + HiB(sPVar, zSj) + vS(sPVar, zSj) + this.EjP.Sj(view));
                    tkc.Jcg = Math.max(tkc.Jcg, iMax);
                    if (zSj) {
                        if (this.EjP.getFlexWrap() != 2) {
                            tkc.f20195aa = Math.max(tkc.f20195aa, view.getBaseline() + sPVar.sef());
                        } else {
                            tkc.f20195aa = Math.max(tkc.f20195aa, (view.getMeasuredHeight() - view.getBaseline()) + sPVar.uvD());
                        }
                    }
                    i24 = i35;
                    if (Sj(i18, i24, tkc)) {
                        Sj(list2, tkc, i18, i33);
                        i33 += tkc.Jcg;
                    }
                    i25 = i14;
                    if (i25 != i19 && list2.size() > 0 && list2.get(list2.size() - i21).uvD >= i25 && i18 >= i25 && i31 == 0) {
                        i33 = -tkc.Sj();
                        i31 = i21;
                    }
                    if (i33 > i12 && i31 != 0) {
                        i15 = iCombineMeasuredStates;
                        sj2.sP = i15;
                    } else {
                        i34 = i22;
                        i32 = iMax;
                    }
                }
                i29 = i18 + 1;
                flexItemCount = i24;
                i26 = i17;
                i30 = i20;
                arrayList = list2;
                size = size;
                mode = mode;
                i27 = i25;
            }
            size = size;
            mode = mode;
            i17 = i26;
            i25 = i27;
            i20 = i30;
            list2 = arrayList;
            i24 = flexItemCount;
            i18 = i29;
            i29 = i18 + 1;
            flexItemCount = i24;
            i26 = i17;
            i30 = i20;
            arrayList = list2;
            size = size;
            mode = mode;
            i27 = i25;
        }
        i15 = iCombineMeasuredStates;
        sj2.sP = i15;
    }

    private int sP(int i10, com.bytedance.adsdk.ugeno.HiB.sP sPVar, int i11) {
        com.bytedance.adsdk.ugeno.HiB.Sj sj2 = this.EjP;
        int iSP = sj2.sP(i10, sj2.getPaddingTop() + this.EjP.getPaddingBottom() + sPVar.sef() + sPVar.uvD() + i11, sPVar.sP());
        int size = View.MeasureSpec.getSize(iSP);
        if (size > sPVar.TEQ()) {
            return View.MeasureSpec.makeMeasureSpec(sPVar.TEQ(), View.MeasureSpec.getMode(iSP));
        }
        return size < sPVar.Dq() ? View.MeasureSpec.makeMeasureSpec(sPVar.Dq(), View.MeasureSpec.getMode(iSP)) : iSP;
    }

    void sP(int i10, int i11, int i12) {
        int mode;
        int size;
        int flexDirection = this.EjP.getFlexDirection();
        if (flexDirection != 0 && flexDirection != 1) {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
            }
            mode = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
        } else {
            int mode2 = View.MeasureSpec.getMode(i11);
            int size2 = View.MeasureSpec.getSize(i11);
            mode = mode2;
            size = size2;
        }
        List<TKC> flexLinesInternal = this.EjP.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = this.EjP.getSumOfCrossSize() + i12;
            int i13 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).Jcg = size - i12;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.EjP.getAlignContent();
                if (alignContent == 1) {
                    int i14 = size - sumOfCrossSize;
                    TKC tkc = new TKC();
                    tkc.Jcg = i14;
                    flexLinesInternal.add(0, tkc);
                    return;
                }
                if (alignContent == 2) {
                    this.EjP.setFlexLines(Sj(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize < size) {
                        float size3 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                        ArrayList arrayList = new ArrayList();
                        int size4 = flexLinesInternal.size();
                        float f10 = 0.0f;
                        while (i13 < size4) {
                            arrayList.add(flexLinesInternal.get(i13));
                            if (i13 != flexLinesInternal.size() - 1) {
                                TKC tkc2 = new TKC();
                                if (i13 == flexLinesInternal.size() - 2) {
                                    tkc2.Jcg = Math.round(f10 + size3);
                                    f10 = 0.0f;
                                } else {
                                    tkc2.Jcg = Math.round(size3);
                                }
                                int i15 = tkc2.Jcg;
                                f10 += size3 - i15;
                                if (f10 > 1.0f) {
                                    tkc2.Jcg = i15 + 1;
                                    f10 -= 1.0f;
                                } else if (f10 < -1.0f) {
                                    tkc2.Jcg = i15 - 1;
                                    f10 += 1.0f;
                                }
                                arrayList.add(tkc2);
                            }
                            i13++;
                        }
                        this.EjP.setFlexLines(arrayList);
                        return;
                    }
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        this.EjP.setFlexLines(Sj(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size5 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    TKC tkc3 = new TKC();
                    tkc3.Jcg = size5;
                    for (TKC tkc4 : flexLinesInternal) {
                        arrayList2.add(tkc3);
                        arrayList2.add(tkc4);
                        arrayList2.add(tkc3);
                    }
                    this.EjP.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size6 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size7 = flexLinesInternal.size();
                    float f11 = 0.0f;
                    while (i13 < size7) {
                        TKC tkc5 = flexLinesInternal.get(i13);
                        float f12 = tkc5.Jcg + size6;
                        if (i13 == flexLinesInternal.size() - 1) {
                            f12 += f11;
                            f11 = 0.0f;
                        }
                        int iRound = Math.round(f12);
                        f11 += f12 - iRound;
                        if (f11 > 1.0f) {
                            iRound++;
                            f11 -= 1.0f;
                        } else if (f11 < -1.0f) {
                            iRound--;
                            f11 += 1.0f;
                        }
                        tkc5.Jcg = iRound;
                        i13++;
                    }
                }
            }
        }
    }

    private void Sj(CompoundButton compoundButton) {
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) compoundButton.getLayoutParams();
        int iJcg = sPVar.Jcg();
        int iDq = sPVar.Dq();
        Drawable drawableSj = com.bytedance.adsdk.ugeno.Jcg.HiB.Sj(compoundButton);
        int minimumWidth = drawableSj == null ? 0 : drawableSj.getMinimumWidth();
        int minimumHeight = drawableSj != null ? drawableSj.getMinimumHeight() : 0;
        if (iJcg == -1) {
            iJcg = minimumWidth;
        }
        sPVar.Sj(iJcg);
        if (iDq == -1) {
            iDq = minimumHeight;
        }
        sPVar.sP(iDq);
    }

    private int Sj(boolean z10) {
        if (z10) {
            return this.EjP.getPaddingStart();
        }
        return this.EjP.getPaddingTop();
    }

    private int Sj(View view, boolean z10) {
        if (z10) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private void sP(View view, int i10, int i11) {
        int measuredHeight;
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i10 - sPVar.Fmk()) - sPVar.Zq()) - this.EjP.Sj(view), sPVar.Jcg()), sPVar.uA());
        long[] jArr = this.vS;
        if (jArr != null) {
            measuredHeight = sP(jArr[i11]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        Sj(i11, iMakeMeasureSpec2, iMakeMeasureSpec, view);
    }

    private int Sj(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        if (z10) {
            return sPVar.Sj();
        }
        return sPVar.sP();
    }

    private boolean Sj(View view, int i10, int i11, int i12, int i13, com.bytedance.adsdk.ugeno.HiB.sP sPVar, int i14, int i15, int i16) {
        if (this.EjP.getFlexWrap() == 0) {
            return false;
        }
        if (sPVar.Ym()) {
            return true;
        }
        if (i10 == 0) {
            return false;
        }
        int maxLine = this.EjP.getMaxLine();
        if (maxLine != -1 && maxLine <= i16 + 1) {
            return false;
        }
        int iSj = this.EjP.Sj(view, i14, i15);
        if (iSj > 0) {
            i13 += iSj;
        }
        return i11 < i12 + i13;
    }

    private boolean Sj(int i10, int i11, TKC tkc) {
        return i10 == i11 - 1 && tkc.sP() != 0;
    }

    private void Sj(List<TKC> list, TKC tkc, int i10, int i11) {
        tkc.Fmk = i11;
        this.EjP.Sj(tkc);
        tkc.uvD = i10;
        list.add(tkc);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    private void Sj(View view, int i10) {
        boolean z10;
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z11 = true;
        if (measuredWidth < sPVar.Jcg()) {
            measuredWidth = sPVar.Jcg();
        } else {
            if (measuredWidth > sPVar.uA()) {
                measuredWidth = sPVar.uA();
            } else {
                z10 = false;
            }
            if (measuredHeight < sPVar.Dq()) {
                measuredHeight = sPVar.Dq();
            } else if (measuredHeight > sPVar.TEQ()) {
                measuredHeight = sPVar.TEQ();
            } else {
                z11 = z10;
            }
            if (z11) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                Sj(i10, iMakeMeasureSpec, iMakeMeasureSpec2, view);
            }
        }
        z10 = true;
        if (measuredHeight < sPVar.Dq()) {
            measuredHeight = sPVar.Dq();
        } else if (measuredHeight > sPVar.TEQ()) {
            measuredHeight = sPVar.TEQ();
        } else {
            z11 = z10;
        }
        if (z11) {
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            Sj(i10, iMakeMeasureSpec3, iMakeMeasureSpec4, view);
        }
    }

    void Sj(int i10, int i11) {
        Sj(i10, i11, 0);
    }

    void Sj(int i10, int i11, int i12) {
        int size;
        int paddingLeft;
        int paddingRight;
        TKC(this.EjP.getFlexItemCount());
        if (i12 >= this.EjP.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.EjP.getFlexDirection();
        int flexDirection2 = this.EjP.getFlexDirection();
        if (flexDirection2 != 0 && flexDirection2 != 1) {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
            }
            int mode = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
            if (mode != 1073741824) {
                size = this.EjP.getLargestMainSize();
            }
            paddingLeft = this.EjP.getPaddingTop();
            paddingRight = this.EjP.getPaddingBottom();
        } else {
            int mode2 = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
            int largestMainSize = this.EjP.getLargestMainSize();
            if (mode2 != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.EjP.getPaddingLeft();
            paddingRight = this.EjP.getPaddingRight();
        }
        int i13 = paddingLeft + paddingRight;
        int[] iArr = this.Sj;
        List<TKC> flexLinesInternal = this.EjP.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i14 = iArr != null ? iArr[i12] : 0; i14 < size2; i14++) {
            TKC tkc = flexLinesInternal.get(i14);
            int i15 = tkc.HiB;
            if (i15 < size && tkc.dNu) {
                Sj(i10, i11, tkc, size, i13, false);
            } else if (i15 > size && tkc.TzV) {
                sP(i10, i11, tkc, size, i13, false);
            }
        }
    }

    private void Sj(int i10, int i11, TKC tkc, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int iMax;
        double d10;
        int i16;
        double d11;
        float f10 = tkc.TEQ;
        float f11 = 0.0f;
        if (f10 <= 0.0f || i12 < (i14 = tkc.HiB)) {
            return;
        }
        float f12 = (i12 - i14) / f10;
        tkc.HiB = i13 + tkc.vS;
        if (!z10) {
            tkc.Jcg = Integer.MIN_VALUE;
        }
        int i17 = 0;
        boolean z11 = false;
        int i18 = 0;
        float f13 = 0.0f;
        while (i17 < tkc.Dq) {
            int i19 = tkc.Zq + i17;
            View viewSP = this.EjP.sP(i19);
            if (viewSP == null || viewSP.getVisibility() == 8) {
                i15 = i14;
            } else {
                com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) viewSP.getLayoutParams();
                int flexDirection = this.EjP.getFlexDirection();
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = viewSP.getMeasuredHeight();
                    long[] jArr = this.vS;
                    if (jArr != null) {
                        measuredHeight = sP(jArr[i19]);
                    }
                    int measuredWidth = viewSP.getMeasuredWidth();
                    long[] jArr2 = this.vS;
                    if (jArr2 != null) {
                        measuredWidth = Sj(jArr2[i19]);
                    }
                    if (this.HiB[i19] || sPVar.EjP() <= f11) {
                        i16 = i14;
                    } else {
                        float fEjP = measuredHeight + (sPVar.EjP() * f12);
                        if (i17 == tkc.Dq - 1) {
                            fEjP += f13;
                            f13 = f11;
                        }
                        int iRound = Math.round(fEjP);
                        if (iRound > sPVar.TEQ()) {
                            iRound = sPVar.TEQ();
                            this.HiB[i19] = true;
                            tkc.TEQ -= sPVar.EjP();
                            i16 = i14;
                            z11 = true;
                        } else {
                            f13 += fEjP - iRound;
                            i16 = i14;
                            double d12 = f13;
                            if (d12 > 1.0d) {
                                iRound++;
                                d11 = d12 - 1.0d;
                            } else if (d12 < -1.0d) {
                                iRound--;
                                d11 = d12 + 1.0d;
                            }
                            f13 = (float) d11;
                        }
                        int iSj = Sj(i10, sPVar, tkc.Fmk);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        viewSP.measure(iSj, iMakeMeasureSpec);
                        measuredWidth = viewSP.getMeasuredWidth();
                        int measuredHeight2 = viewSP.getMeasuredHeight();
                        Sj(i19, iSj, iMakeMeasureSpec, viewSP);
                        measuredHeight = measuredHeight2;
                    }
                    iMax = Math.max(i18, measuredWidth + sPVar.Fmk() + sPVar.Zq() + this.EjP.Sj(viewSP));
                    tkc.HiB += measuredHeight + sPVar.sef() + sPVar.uvD();
                    i15 = i16;
                } else {
                    int i20 = i14;
                    int measuredWidth2 = viewSP.getMeasuredWidth();
                    long[] jArr3 = this.vS;
                    if (jArr3 != null) {
                        measuredWidth2 = Sj(jArr3[i19]);
                    }
                    int measuredHeight3 = viewSP.getMeasuredHeight();
                    long[] jArr4 = this.vS;
                    i15 = i20;
                    if (jArr4 != null) {
                        measuredHeight3 = sP(jArr4[i19]);
                    }
                    if (!this.HiB[i19] && sPVar.EjP() > 0.0f) {
                        float fEjP2 = measuredWidth2 + (sPVar.EjP() * f12);
                        if (i17 == tkc.Dq - 1) {
                            fEjP2 += f13;
                            f13 = 0.0f;
                        }
                        int iRound2 = Math.round(fEjP2);
                        if (iRound2 > sPVar.uA()) {
                            iRound2 = sPVar.uA();
                            this.HiB[i19] = true;
                            tkc.TEQ -= sPVar.EjP();
                            z11 = true;
                        } else {
                            f13 += fEjP2 - iRound2;
                            double d13 = f13;
                            if (d13 > 1.0d) {
                                iRound2++;
                                d10 = d13 - 1.0d;
                            } else if (d13 < -1.0d) {
                                iRound2--;
                                d10 = d13 + 1.0d;
                            }
                            f13 = (float) d10;
                        }
                        int iSP = sP(i11, sPVar, tkc.Fmk);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        viewSP.measure(iMakeMeasureSpec2, iSP);
                        int measuredWidth3 = viewSP.getMeasuredWidth();
                        int measuredHeight4 = viewSP.getMeasuredHeight();
                        Sj(i19, iMakeMeasureSpec2, iSP, viewSP);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int iMax2 = Math.max(i18, measuredHeight3 + sPVar.sef() + sPVar.uvD() + this.EjP.Sj(viewSP));
                    tkc.HiB += measuredWidth2 + sPVar.Fmk() + sPVar.Zq();
                    iMax = iMax2;
                }
                tkc.Jcg = Math.max(tkc.Jcg, iMax);
                i18 = iMax;
            }
            i17++;
            i14 = i15;
            f11 = 0.0f;
        }
        int i21 = i14;
        if (!z11 || i21 == tkc.HiB) {
            return;
        }
        Sj(i10, i11, tkc, i12, i13, true);
    }

    private int Sj(int i10, com.bytedance.adsdk.ugeno.HiB.sP sPVar, int i11) {
        com.bytedance.adsdk.ugeno.HiB.Sj sj2 = this.EjP;
        int iSj = sj2.Sj(i10, sj2.getPaddingLeft() + this.EjP.getPaddingRight() + sPVar.Fmk() + sPVar.Zq() + i11, sPVar.Sj());
        int size = View.MeasureSpec.getSize(iSj);
        if (size > sPVar.uA()) {
            return View.MeasureSpec.makeMeasureSpec(sPVar.uA(), View.MeasureSpec.getMode(iSj));
        }
        return size < sPVar.Jcg() ? View.MeasureSpec.makeMeasureSpec(sPVar.Jcg(), View.MeasureSpec.getMode(iSj)) : iSj;
    }

    private List<TKC> Sj(List<TKC> list, int i10, int i11) {
        int i12 = (i10 - i11) / 2;
        ArrayList arrayList = new ArrayList();
        TKC tkc = new TKC();
        tkc.Jcg = i12;
        int size = list.size();
        for (int i13 = 0; i13 < size; i13++) {
            if (i13 == 0) {
                arrayList.add(tkc);
            }
            arrayList.add(list.get(i13));
            if (i13 == list.size() - 1) {
                arrayList.add(tkc);
            }
        }
        return arrayList;
    }

    void Sj() {
        Sj(0);
    }

    void Sj(int i10) {
        View viewSP;
        if (i10 >= this.EjP.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.EjP.getFlexDirection();
        if (this.EjP.getAlignItems() == 4) {
            int[] iArr = this.Sj;
            List<TKC> flexLinesInternal = this.EjP.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            for (int i11 = iArr != null ? iArr[i10] : 0; i11 < size; i11++) {
                TKC tkc = flexLinesInternal.get(i11);
                int i12 = tkc.Dq;
                for (int i13 = 0; i13 < i12; i13++) {
                    int i14 = tkc.Zq + i13;
                    if (i13 < this.EjP.getFlexItemCount() && (viewSP = this.EjP.sP(i14)) != null && viewSP.getVisibility() != 8) {
                        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) viewSP.getLayoutParams();
                        if (sPVar.vS() == -1 || sPVar.vS() == 4) {
                            if (flexDirection != 0 && flexDirection != 1) {
                                if (flexDirection != 2 && flexDirection != 3) {
                                    throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                                }
                                sP(viewSP, tkc.Jcg, i14);
                            } else {
                                Sj(viewSP, tkc.Jcg, i14);
                            }
                        }
                    }
                }
            }
            return;
        }
        for (TKC tkc2 : this.EjP.getFlexLinesInternal()) {
            for (Integer num : tkc2.sef) {
                View viewSP2 = this.EjP.sP(num.intValue());
                if (flexDirection != 0 && flexDirection != 1) {
                    if (flexDirection != 2 && flexDirection != 3) {
                        throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                    }
                    sP(viewSP2, tkc2.Jcg, num.intValue());
                } else {
                    Sj(viewSP2, tkc2.Jcg, num.intValue());
                }
            }
        }
    }

    private void Sj(View view, int i10, int i11) {
        int measuredWidth;
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i10 - sPVar.sef()) - sPVar.uvD()) - this.EjP.Sj(view), sPVar.Dq()), sPVar.TEQ());
        long[] jArr = this.vS;
        if (jArr != null) {
            measuredWidth = Sj(jArr[i11]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        Sj(i11, iMakeMeasureSpec, iMakeMeasureSpec2, view);
    }

    void Sj(View view, TKC tkc, int i10, int i11, int i12, int i13) {
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) view.getLayoutParams();
        int alignItems = this.EjP.getAlignItems();
        if (sPVar.vS() != -1) {
            alignItems = sPVar.vS();
        }
        int i14 = tkc.Jcg;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.EjP.getFlexWrap() != 2) {
                    int i15 = i11 + i14;
                    view.layout(i10, (i15 - view.getMeasuredHeight()) - sPVar.uvD(), i12, i15 - sPVar.uvD());
                    return;
                } else {
                    view.layout(i10, (i11 - i14) + view.getMeasuredHeight() + sPVar.sef(), i12, (i13 - i14) + view.getMeasuredHeight() + sPVar.sef());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i14 - view.getMeasuredHeight()) + sPVar.sef()) - sPVar.uvD()) / 2;
                if (this.EjP.getFlexWrap() != 2) {
                    int i16 = i11 + measuredHeight;
                    view.layout(i10, i16, i12, view.getMeasuredHeight() + i16);
                    return;
                } else {
                    int i17 = i11 - measuredHeight;
                    view.layout(i10, i17, i12, view.getMeasuredHeight() + i17);
                    return;
                }
            }
            if (alignItems == 3) {
                if (this.EjP.getFlexWrap() != 2) {
                    int iMax = Math.max(tkc.f20195aa - view.getBaseline(), sPVar.sef());
                    view.layout(i10, i11 + iMax, i12, i13 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max((tkc.f20195aa - view.getMeasuredHeight()) + view.getBaseline(), sPVar.uvD());
                    view.layout(i10, i11 - iMax2, i12, i13 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (this.EjP.getFlexWrap() != 2) {
            view.layout(i10, i11 + sPVar.sef(), i12, i13 + sPVar.sef());
        } else {
            view.layout(i10, i11 - sPVar.uvD(), i12, i13 - sPVar.uvD());
        }
    }

    void Sj(View view, TKC tkc, boolean z10, int i10, int i11, int i12, int i13) {
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) view.getLayoutParams();
        int alignItems = this.EjP.getAlignItems();
        if (sPVar.vS() != -1) {
            alignItems = sPVar.vS();
        }
        int i14 = tkc.Jcg;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z10) {
                    view.layout(((i10 + i14) - view.getMeasuredWidth()) - sPVar.Zq(), i11, ((i12 + i14) - view.getMeasuredWidth()) - sPVar.Zq(), i13);
                    return;
                } else {
                    view.layout((i10 - i14) + view.getMeasuredWidth() + sPVar.Fmk(), i11, (i12 - i14) + view.getMeasuredWidth() + sPVar.Fmk(), i13);
                    return;
                }
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i14 - view.getMeasuredWidth()) + com.bytedance.adsdk.ugeno.Jcg.vS.Sj(marginLayoutParams)) - com.bytedance.adsdk.ugeno.Jcg.vS.sP(marginLayoutParams)) / 2;
                if (!z10) {
                    view.layout(i10 + measuredWidth, i11, i12 + measuredWidth, i13);
                    return;
                } else {
                    view.layout(i10 - measuredWidth, i11, i12 - measuredWidth, i13);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (!z10) {
            view.layout(i10 + sPVar.Fmk(), i11, i12 + sPVar.Fmk(), i13);
        } else {
            view.layout(i10 - sPVar.Zq(), i11, i12 - sPVar.Zq(), i13);
        }
    }

    private void Sj(int i10, int i11, int i12, View view) {
        long[] jArr = this.sP;
        if (jArr != null) {
            jArr[i10] = sP(i11, i12);
        }
        long[] jArr2 = this.vS;
        if (jArr2 != null) {
            jArr2[i10] = sP(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }
}
