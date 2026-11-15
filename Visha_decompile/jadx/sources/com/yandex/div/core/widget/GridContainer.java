package com.yandex.div.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.R;
import com.yandex.div.internal.widget.DivLayoutParams;
import com.yandex.div.internal.widget.DivViewGroup;
import com.yandex.div.logging.Severity;
import defpackage.c74;
import defpackage.c81;
import defpackage.hi;
import defpackage.i81;
import defpackage.lt8;
import defpackage.ne5;
import defpackage.q15;
import defpackage.tj4;
import defpackage.u15;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0011\u0018\u0000 M2\u00020\u0001:\u000725-N/8OB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J7\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010 \u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0015J7\u0010%\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0004\b%\u0010&J\u001f\u0010'\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b'\u0010\u0015J\u001f\u0010(\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b(\u0010\u0015JG\u0010+\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0002¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0006H\u0002¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0006H\u0002¢\u0006\u0004\b/\u0010.J/\u00102\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006H\u0002¢\u0006\u0004\b2\u00103J/\u00105\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006H\u0002¢\u0006\u0004\b5\u00103J\u000f\u00106\u001a\u00020\fH\u0002¢\u0006\u0004\b6\u0010\u0011J\u000f\u00107\u001a\u00020\fH\u0002¢\u0006\u0004\b7\u0010\u0011J\u000f\u00108\u001a\u00020\fH\u0002¢\u0006\u0004\b8\u0010\u0011J\u000f\u00109\u001a\u00020\u0006H\u0002¢\u0006\u0004\b9\u0010.J\u000f\u0010:\u001a\u00020\fH\u0002¢\u0006\u0004\b:\u0010\u0011R\u0018\u0010=\u001a\u00060;R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010<R\u0016\u0010?\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010>R\u0016\u0010A\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u0010@R$\u0010F\u001a\u00020\u00062\u0006\u0010B\u001a\u00020\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bC\u0010.\"\u0004\bD\u0010ER\u0011\u0010H\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bG\u0010.R\u0014\u0010J\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bI\u0010.R\u0014\u0010L\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bK\u0010.¨\u0006P"}, d2 = {"Lcom/yandex/div/core/widget/GridContainer;", "Lcom/yandex/div/internal/widget/DivViewGroup;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/view/View;", "child", "Lzfb;", "onViewAdded", "(Landroid/view/View;)V", "onViewRemoved", "requestLayout", "()V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "widthSpec", "heightSpec", "j", "parentWidthSpec", "parentHeightSpec", "childWidth", "childHeight", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Landroid/view/View;IIII)V", CmcdData.OBJECT_TYPE_MANIFEST, CmcdData.STREAM_TYPE_LIVE, "cellWidth", "cellHeight", "k", "(Landroid/view/View;IIIIII)V", "c", "()I", "d", "cellLeft", "gravity", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(IIII)I", "cellTop", "b", CmcdData.STREAMING_FORMAT_HLS, GslbInterceptor.HEADER_KEY_GSLB, "e", "f", "n", "Lcom/yandex/div/core/widget/GridContainer$Grid;", "Lcom/yandex/div/core/widget/GridContainer$Grid;", "grid", "I", "lastLayoutHashCode", "Z", "initialized", ES6Iterator.VALUE_PROPERTY, "getColumnCount", "setColumnCount", "(I)V", "columnCount", "getRowCount", "rowCount", "getPaddingHorizontal", "paddingHorizontal", "getPaddingVertical", "paddingVertical", "Companion", "Grid", "SpannedCellComparator", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"RtlHardcoded"})
public class GridContainer extends DivViewGroup {

    public final Grid grid;

    public int lastLayoutHashCode;

    public boolean initialized;

    public final class Grid {
        public int a = 1;
        public final lt8 b = new lt8(new c74() {
            {
                super(0);
            }

            @Override
            public final List<GridContainer.a> invoke() {
                return this.this$0.g();
            }
        });
        public final lt8 c = new lt8(new c74() {
            {
                super(0);
            }

            @Override
            public final List<GridContainer.d> invoke() {
                return this.this$0.s();
            }
        });
        public final lt8 d = new lt8(new c74() {
            {
                super(0);
            }

            @Override
            public final List<GridContainer.d> invoke() {
                return this.this$0.u();
            }
        });
        public final e e;
        public final e f;

        public Grid() {
            int i = 0;
            int i2 = 3;
            DefaultConstructorMarker defaultConstructorMarker = null;
            this.e = new e(i, i, i2, defaultConstructorMarker);
            this.f = new e(i, i, i2, defaultConstructorMarker);
        }

        public final void d(List list, e eVar) {
            int size = list.size();
            float fE = 0.0f;
            int iD = 0;
            float fMax = 0.0f;
            for (int i = 0; i < size; i++) {
                d dVar = (d) list.get(i);
                if (dVar.h()) {
                    fE += dVar.e();
                    fMax = Math.max(fMax, dVar.d() / dVar.e());
                } else {
                    iD += dVar.d();
                }
                dVar.d();
            }
            int size2 = list.size();
            int iCeil = 0;
            for (int i2 = 0; i2 < size2; i2++) {
                d dVar2 = (d) list.get(i2);
                iCeil += dVar2.h() ? (int) Math.ceil(dVar2.e() * fMax) : dVar2.d();
            }
            float fMax2 = Math.max(0, Math.max(eVar.b(), iCeil) - iD) / fE;
            int size3 = list.size();
            for (int i3 = 0; i3 < size3; i3++) {
                d dVar3 = (d) list.get(i3);
                if (dVar3.h()) {
                    int iCeil2 = (int) Math.ceil(dVar3.e() * fMax2);
                    d.g(dVar3, iCeil2 - dVar3.b(), iCeil2, 0.0f, 4, null);
                }
            }
        }

        public final void e(List list) {
            int size = list.size();
            int iD = 0;
            for (int i = 0; i < size; i++) {
                d dVar = (d) list.get(i);
                dVar.i(iD);
                iD += dVar.d();
            }
        }

        public final int f(List list) {
            if (list.isEmpty()) {
                return 0;
            }
            d dVar = (d) i81.A0(list);
            return dVar.c() + dVar.d();
        }

        public final List g() {
            Integer numValueOf;
            int i;
            int i2;
            int i3 = 1;
            if (GridContainer.this.getChildCount() == 0) {
                return y71.k();
            }
            int i4 = this.a;
            ArrayList arrayList = new ArrayList(GridContainer.this.getChildCount());
            int[] iArr = new int[i4];
            int[] iArr2 = new int[i4];
            GridContainer gridContainer = GridContainer.this;
            int childCount = gridContainer.getChildCount();
            int i5 = 0;
            int i6 = 0;
            while (i6 < childCount) {
                View childAt = gridContainer.getChildAt(i6);
                if (childAt.getVisibility() != 8) {
                    y45.i(childAt, "child");
                    Integer numA0 = hi.A0(iArr2);
                    int iIntValue = numA0 != null ? numA0.intValue() : 0;
                    int iI0 = hi.i0(iArr2, iIntValue);
                    int i7 = i5 + iIntValue;
                    u15 u15VarQ = wn8.q(0, i4);
                    int iB = u15VarQ.b();
                    int iC = u15VarQ.c();
                    if (iB <= iC) {
                        while (true) {
                            iArr2[iB] = Math.max(0, iArr2[iB] - iIntValue);
                            if (iB == iC) {
                                break;
                            }
                            iB += i3;
                        }
                    }
                    DivViewGroup.Companion companion = DivViewGroup.INSTANCE;
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                    DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                    int iMin = Math.min(divLayoutParams.a(), i4 - iI0);
                    int iG = divLayoutParams.g();
                    arrayList.add(new a(i6, iI0, i7, iMin, iG));
                    int i8 = iI0 + iMin;
                    while (iI0 < i8) {
                        if (iArr2[iI0] > 0) {
                            Object obj = arrayList.get(iArr[iI0]);
                            y45.i(obj, "cells[cellIndices[i]]");
                            a aVar = (a) obj;
                            int iA = aVar.a();
                            int iB2 = aVar.b() + iA;
                            while (iA < iB2) {
                                int i9 = iArr2[iA];
                                iArr2[iA] = 0;
                                iA++;
                            }
                            i2 = 1;
                            aVar.f(i7 - aVar.c());
                        } else {
                            i2 = 1;
                        }
                        iArr[iI0] = i6;
                        iArr2[iI0] = iG;
                        iI0 += i2;
                    }
                    i = 1;
                    i5 = i7;
                } else {
                    i = i3;
                }
                i6 += i;
                i3 = i;
            }
            int i10 = i3;
            if (i4 == 0) {
                numValueOf = null;
            } else {
                int i11 = iArr2[0];
                int iB0 = hi.b0(iArr2);
                if (iB0 == 0) {
                    numValueOf = Integer.valueOf(i11);
                } else {
                    int iMax = Math.max(i10, i11);
                    q15 it = new u15(i10, iB0).iterator();
                    while (it.hasNext()) {
                        int i12 = iArr2[it.nextInt()];
                        int iMax2 = Math.max(i10, i12);
                        if (iMax > iMax2) {
                            i11 = i12;
                            iMax = iMax2;
                        }
                        i10 = 1;
                    }
                    numValueOf = Integer.valueOf(i11);
                }
            }
            int iC2 = ((a) i81.A0(arrayList)).c() + (numValueOf != null ? numValueOf.intValue() : 1);
            int size = arrayList.size();
            for (int i13 = 0; i13 < size; i13++) {
                a aVar2 = (a) arrayList.get(i13);
                if (aVar2.c() + aVar2.d() > iC2) {
                    aVar2.f(iC2 - aVar2.c());
                }
            }
            return arrayList;
        }

        public final List h() {
            return (List) this.b.a();
        }

        public final int i() {
            return this.a;
        }

        public final List j() {
            return (List) this.c.a();
        }

        public final int k() {
            return f(o());
        }

        public final int l() {
            if (this.d.b()) {
                return f((List) this.d.a());
            }
            return 0;
        }

        public final int m() {
            if (this.c.b()) {
                return f((List) this.c.a());
            }
            return 0;
        }

        public final int n() {
            return w(h());
        }

        public final List o() {
            return (List) this.d.a();
        }

        public final int p() {
            return f(j());
        }

        public final void q() {
            this.c.c();
            this.d.c();
        }

        public final void r() {
            this.b.c();
            q();
        }

        public final List s() {
            int iD;
            float fE;
            int i;
            int i2;
            int i3 = this.a;
            e eVar = this.e;
            List list = (List) this.b.a();
            ArrayList arrayList = new ArrayList(i3);
            for (int i4 = 0; i4 < i3; i4++) {
                arrayList.add(new d());
            }
            GridContainer gridContainer = GridContainer.this;
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                a aVar = (a) list.get(i5);
                View childAt = gridContainer.getChildAt(aVar.e());
                y45.i(childAt, "child");
                DivViewGroup.Companion companion = DivViewGroup.INSTANCE;
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                b bVar = new b(aVar.a(), childAt.getMeasuredWidth(), ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin, ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin, aVar.b(), tj4.c(divLayoutParams));
                if (bVar.d() == 1) {
                    ((d) arrayList.get(bVar.b())).f(bVar.a(), bVar.c(), bVar.f());
                } else {
                    int iD2 = bVar.d() - 1;
                    float f = bVar.f() / bVar.d();
                    if (iD2 >= 0) {
                        while (true) {
                            d.g((d) arrayList.get(bVar.b() + i2), 0, 0, f, 3, null);
                            i2 = i2 != iD2 ? i2 + 1 : 0;
                        }
                    }
                }
            }
            ArrayList arrayList2 = new ArrayList();
            GridContainer gridContainer2 = GridContainer.this;
            int size2 = list.size();
            for (int i6 = 0; i6 < size2; i6++) {
                a aVar2 = (a) list.get(i6);
                View childAt2 = gridContainer2.getChildAt(aVar2.e());
                y45.i(childAt2, "child");
                DivViewGroup.Companion companion2 = DivViewGroup.INSTANCE;
                ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
                y45.h(layoutParams2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams2 = (DivLayoutParams) layoutParams2;
                b bVar2 = new b(aVar2.a(), childAt2.getMeasuredWidth(), ((ViewGroup.MarginLayoutParams) divLayoutParams2).leftMargin, ((ViewGroup.MarginLayoutParams) divLayoutParams2).rightMargin, aVar2.b(), tj4.c(divLayoutParams2));
                if (bVar2.d() > 1) {
                    arrayList2.add(bVar2);
                }
            }
            c81.B(arrayList2, SpannedCellComparator.INSTANCE);
            int size3 = arrayList2.size();
            for (int i7 = 0; i7 < size3; i7++) {
                b bVar3 = (b) arrayList2.get(i7);
                int iB = bVar3.b();
                int iB2 = (bVar3.b() + bVar3.d()) - 1;
                int iC = bVar3.c();
                if (iB <= iB2) {
                    int i8 = iB;
                    iD = iC;
                    fE = 0.0f;
                    i = 0;
                    while (true) {
                        d dVar = (d) arrayList.get(i8);
                        iC -= dVar.d();
                        if (dVar.h()) {
                            fE += dVar.e();
                        } else {
                            if (dVar.a() == 0) {
                                i++;
                            }
                            iD -= dVar.d();
                        }
                        if (i8 == iB2) {
                            break;
                        }
                        i8++;
                    }
                } else {
                    iD = iC;
                    fE = 0.0f;
                    i = 0;
                }
                if (fE > 0.0f) {
                    if (iB <= iB2) {
                        while (true) {
                            d dVar2 = (d) arrayList.get(iB);
                            if (dVar2.h()) {
                                int iCeil = (int) Math.ceil((dVar2.e() / fE) * iD);
                                d.g(dVar2, iCeil - dVar2.b(), iCeil, 0.0f, 4, null);
                            }
                            if (iB != iB2) {
                                iB++;
                            }
                        }
                    }
                } else if (iC > 0 && iB <= iB2) {
                    while (true) {
                        d dVar3 = (d) arrayList.get(iB);
                        if (i <= 0) {
                            int iD3 = iC / bVar3.d();
                            d.g(dVar3, dVar3.a() + iD3, dVar3.d() + iD3, 0.0f, 4, null);
                        } else if (dVar3.a() == 0 && !dVar3.h()) {
                            int i9 = iC / i;
                            d.g(dVar3, dVar3.a() + i9, dVar3.d() + i9, 0.0f, 4, null);
                        }
                        if (iB != iB2) {
                            iB++;
                        }
                    }
                }
            }
            d(arrayList, eVar);
            e(arrayList);
            return arrayList;
        }

        public final int t(int i) {
            this.f.c(i);
            return Math.max(this.f.b(), Math.min(k(), this.f.a()));
        }

        public final List u() {
            int iD;
            float fE;
            int i;
            int i2;
            int iN = n();
            e eVar = this.f;
            List list = (List) this.b.a();
            ArrayList arrayList = new ArrayList(iN);
            for (int i3 = 0; i3 < iN; i3++) {
                arrayList.add(new d());
            }
            GridContainer gridContainer = GridContainer.this;
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                a aVar = (a) list.get(i4);
                View childAt = gridContainer.getChildAt(aVar.e());
                y45.i(childAt, "child");
                DivViewGroup.Companion companion = DivViewGroup.INSTANCE;
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                b bVar = new b(aVar.c(), childAt.getMeasuredHeight(), ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin, ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin, aVar.d(), tj4.d(divLayoutParams));
                if (bVar.d() == 1) {
                    ((d) arrayList.get(bVar.b())).f(bVar.a(), bVar.c(), bVar.f());
                } else {
                    int iD2 = bVar.d() - 1;
                    float f = bVar.f() / bVar.d();
                    if (iD2 >= 0) {
                        while (true) {
                            d.g((d) arrayList.get(bVar.b() + i2), 0, 0, f, 3, null);
                            i2 = i2 != iD2 ? i2 + 1 : 0;
                        }
                    }
                }
            }
            ArrayList arrayList2 = new ArrayList();
            GridContainer gridContainer2 = GridContainer.this;
            int size2 = list.size();
            for (int i5 = 0; i5 < size2; i5++) {
                a aVar2 = (a) list.get(i5);
                View childAt2 = gridContainer2.getChildAt(aVar2.e());
                y45.i(childAt2, "child");
                DivViewGroup.Companion companion2 = DivViewGroup.INSTANCE;
                ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
                y45.h(layoutParams2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams2 = (DivLayoutParams) layoutParams2;
                b bVar2 = new b(aVar2.c(), childAt2.getMeasuredHeight(), ((ViewGroup.MarginLayoutParams) divLayoutParams2).topMargin, ((ViewGroup.MarginLayoutParams) divLayoutParams2).bottomMargin, aVar2.d(), tj4.d(divLayoutParams2));
                if (bVar2.d() > 1) {
                    arrayList2.add(bVar2);
                }
            }
            c81.B(arrayList2, SpannedCellComparator.INSTANCE);
            int size3 = arrayList2.size();
            for (int i6 = 0; i6 < size3; i6++) {
                b bVar3 = (b) arrayList2.get(i6);
                int iB = bVar3.b();
                int iB2 = (bVar3.b() + bVar3.d()) - 1;
                int iC = bVar3.c();
                if (iB <= iB2) {
                    int i7 = iB;
                    iD = iC;
                    fE = 0.0f;
                    i = 0;
                    while (true) {
                        d dVar = (d) arrayList.get(i7);
                        iC -= dVar.d();
                        if (dVar.h()) {
                            fE += dVar.e();
                        } else {
                            if (dVar.a() == 0) {
                                i++;
                            }
                            iD -= dVar.d();
                        }
                        if (i7 == iB2) {
                            break;
                        }
                        i7++;
                    }
                } else {
                    iD = iC;
                    fE = 0.0f;
                    i = 0;
                }
                if (fE > 0.0f) {
                    if (iB <= iB2) {
                        while (true) {
                            d dVar2 = (d) arrayList.get(iB);
                            if (dVar2.h()) {
                                int iCeil = (int) Math.ceil((dVar2.e() / fE) * iD);
                                d.g(dVar2, iCeil - dVar2.b(), iCeil, 0.0f, 4, null);
                            }
                            if (iB != iB2) {
                                iB++;
                            }
                        }
                    }
                } else if (iC > 0 && iB <= iB2) {
                    while (true) {
                        d dVar3 = (d) arrayList.get(iB);
                        if (i <= 0) {
                            int iD3 = iC / bVar3.d();
                            d.g(dVar3, dVar3.a() + iD3, dVar3.d() + iD3, 0.0f, 4, null);
                        } else if (dVar3.a() == 0 && !dVar3.h()) {
                            int i8 = iC / i;
                            d.g(dVar3, dVar3.a() + i8, dVar3.d() + i8, 0.0f, 4, null);
                        }
                        if (iB != iB2) {
                            iB++;
                        }
                    }
                }
            }
            d(arrayList, eVar);
            e(arrayList);
            return arrayList;
        }

        public final int v(int i) {
            this.e.c(i);
            return Math.max(this.e.b(), Math.min(p(), this.e.a()));
        }

        public final int w(List list) {
            if (list.isEmpty()) {
                return 0;
            }
            a aVar = (a) i81.A0(list);
            return aVar.d() + aVar.c();
        }

        public final void x(int i) {
            if (i <= 0 || this.a == i) {
                return;
            }
            this.a = i;
            r();
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;", "Ljava/util/Comparator;", "Lcom/yandex/div/core/widget/GridContainer$b;", "Lkotlin/Comparator;", MethodDecl.initName, "()V", "lhs", "rhs", "", "compare", "(Lcom/yandex/div/core/widget/GridContainer$b;Lcom/yandex/div/core/widget/GridContainer$b;)I", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class SpannedCellComparator implements Comparator<b> {
        public static final SpannedCellComparator INSTANCE = new SpannedCellComparator();

        private SpannedCellComparator() {
        }

        @Override
        public int compare(b lhs, b rhs) {
            y45.j(lhs, "lhs");
            y45.j(rhs, "rhs");
            if (lhs.e() < rhs.e()) {
                return 1;
            }
            return lhs.e() > rhs.e() ? -1 : 0;
        }
    }

    public static final class a {
        public final int a;
        public final int b;
        public final int c;
        public int d;
        public int e;

        public a(int i, int i2, int i3, int i4, int i5) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
        }

        public final int a() {
            return this.b;
        }

        public final int b() {
            return this.d;
        }

        public final int c() {
            return this.c;
        }

        public final int d() {
            return this.e;
        }

        public final int e() {
            return this.a;
        }

        public final void f(int i) {
            this.e = i;
        }
    }

    public static final class b {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final float f;

        public b(int i, int i2, int i3, int i4, int i5, float f) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = f;
        }

        public final int a() {
            return this.b;
        }

        public final int b() {
            return this.a;
        }

        public final int c() {
            return this.b + this.c + this.d;
        }

        public final int d() {
            return this.e;
        }

        public final int e() {
            return c() / this.e;
        }

        public final float f() {
            return this.f;
        }
    }

    public static final class d {
        public int a;
        public int b;
        public int c;
        public float d;

        public static void g(d dVar, int i, int i2, float f, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = 0;
            }
            if ((i3 & 4) != 0) {
                f = 0.0f;
            }
            dVar.f(i, i2, f);
        }

        public final int a() {
            return this.b;
        }

        public final int b() {
            return this.c - this.b;
        }

        public final int c() {
            return this.a;
        }

        public final int d() {
            return this.c;
        }

        public final float e() {
            return this.d;
        }

        public final void f(int i, int i2, float f) {
            this.b = Math.max(this.b, i);
            this.c = Math.max(this.c, i2);
            this.d = Math.max(this.d, f);
        }

        public final boolean h() {
            return this.d > 0.0f;
        }

        public final void i(int i) {
            this.a = i;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GridContainer(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private final int getPaddingHorizontal() {
        return getPaddingLeft() + getPaddingRight();
    }

    private final int getPaddingVertical() {
        return getPaddingTop() + getPaddingBottom();
    }

    public final int a(int cellLeft, int cellWidth, int childWidth, int gravity) {
        int i = gravity & 7;
        if (i != 1) {
            return i != 5 ? cellLeft : (cellLeft + cellWidth) - childWidth;
        }
        return cellLeft + ((cellWidth - childWidth) / 2);
    }

    public final int b(int cellTop, int cellHeight, int childHeight, int gravity) {
        int i = gravity & 112;
        if (i != 16) {
            return i != 80 ? cellTop : (cellTop + cellHeight) - childHeight;
        }
        return cellTop + ((cellHeight - childHeight) / 2);
    }

    public final int c() {
        int gravity = getGravity() & 7;
        int iM = this.grid.m();
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        if (gravity != 1) {
            return gravity != 5 ? getPaddingLeft() : (getPaddingLeft() + measuredWidth) - iM;
        }
        return getPaddingLeft() + ((measuredWidth - iM) / 2);
    }

    public final int d() {
        int gravity = getGravity() & 112;
        int iL = this.grid.l();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        if (gravity != 16) {
            return gravity != 80 ? getPaddingTop() : (getPaddingTop() + measuredHeight) - iL;
        }
        return getPaddingTop() + ((measuredHeight - iL) / 2);
    }

    public final void e() {
        int i = this.lastLayoutHashCode;
        if (i == 0) {
            n();
            this.lastLayoutHashCode = f();
        } else if (i != f()) {
            h();
            e();
        }
    }

    public final int f() {
        int childCount = getChildCount();
        int iHashCode = TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                iHashCode = (iHashCode * 31) + ((DivLayoutParams) layoutParams).hashCode();
            }
        }
        return iHashCode;
    }

    public final void g() {
        this.grid.q();
    }

    public final int getColumnCount() {
        return this.grid.i();
    }

    public final int getRowCount() {
        return this.grid.n();
    }

    public final void h() {
        this.lastLayoutHashCode = 0;
        this.grid.r();
    }

    public final void i(View child, int parentWidthSpec, int parentHeightSpec, int childWidth, int childHeight) {
        DivViewGroup.Companion companion = DivViewGroup.INSTANCE;
        int minimumWidth = child.getMinimumWidth();
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        int iA = companion.a(parentWidthSpec, 0, childWidth, minimumWidth, ((DivLayoutParams) layoutParams).getMaxWidth());
        int minimumHeight = child.getMinimumHeight();
        ViewGroup.LayoutParams layoutParams2 = child.getLayoutParams();
        y45.h(layoutParams2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        child.measure(iA, companion.a(parentHeightSpec, 0, childHeight, minimumHeight, ((DivLayoutParams) layoutParams2).getMaxHeight()));
    }

    public final void j(int widthSpec, int heightSpec) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                int i2 = ((ViewGroup.MarginLayoutParams) divLayoutParams).width;
                int i3 = i2 == -1 ? 0 : i2;
                int i4 = ((ViewGroup.MarginLayoutParams) divLayoutParams).height;
                i(childAt, widthSpec, heightSpec, i3, i4 == -1 ? 0 : i4);
            }
        }
    }

    public final void k(View child, int parentWidthSpec, int parentHeightSpec, int childWidth, int childHeight, int cellWidth, int cellHeight) {
        int iA;
        int iA2;
        if (childWidth == -1) {
            iA = View.MeasureSpec.makeMeasureSpec(cellWidth, 1073741824);
        } else {
            DivViewGroup.Companion companion = DivViewGroup.INSTANCE;
            int minimumWidth = child.getMinimumWidth();
            ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
            iA = companion.a(parentWidthSpec, 0, childWidth, minimumWidth, ((DivLayoutParams) layoutParams).getMaxWidth());
        }
        if (childHeight == -1) {
            iA2 = View.MeasureSpec.makeMeasureSpec(cellHeight, 1073741824);
        } else {
            DivViewGroup.Companion companion2 = DivViewGroup.INSTANCE;
            int minimumHeight = child.getMinimumHeight();
            ViewGroup.LayoutParams layoutParams2 = child.getLayoutParams();
            y45.h(layoutParams2, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
            iA2 = companion2.a(parentHeightSpec, 0, childHeight, minimumHeight, ((DivLayoutParams) layoutParams2).getMaxHeight());
        }
        child.measure(iA, iA2);
    }

    public final void l(int widthSpec, int heightSpec) {
        List listH = this.grid.h();
        List listJ = this.grid.j();
        List listO = this.grid.o();
        int childCount = getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                if (((ViewGroup.MarginLayoutParams) divLayoutParams).height == -1) {
                    a aVar = (a) listH.get(i);
                    d dVar = (d) listJ.get((aVar.a() + aVar.b()) - 1);
                    int iC = ((dVar.c() + dVar.d()) - ((d) listJ.get(aVar.a())).c()) - divLayoutParams.c();
                    d dVar2 = (d) listO.get((aVar.c() + aVar.d()) - 1);
                    k(childAt, widthSpec, heightSpec, ((ViewGroup.MarginLayoutParams) divLayoutParams).width, ((ViewGroup.MarginLayoutParams) divLayoutParams).height, iC, ((dVar2.c() + dVar2.d()) - ((d) listO.get(aVar.c())).c()) - divLayoutParams.h());
                }
                i++;
            }
        }
    }

    public final void m(int widthSpec, int heightSpec) {
        List listH = this.grid.h();
        List listJ = this.grid.j();
        int childCount = getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                if (((ViewGroup.MarginLayoutParams) divLayoutParams).width == -1) {
                    a aVar = (a) listH.get(i);
                    d dVar = (d) listJ.get((aVar.a() + aVar.b()) - 1);
                    k(childAt, widthSpec, heightSpec, ((ViewGroup.MarginLayoutParams) divLayoutParams).width, ((ViewGroup.MarginLayoutParams) divLayoutParams).height, ((dVar.c() + dVar.d()) - ((d) listJ.get(aVar.a())).c()) - divLayoutParams.c(), 0);
                }
                i++;
            }
        }
    }

    public final void n() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            y45.i(childAt, "child");
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
            DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
            if (divLayoutParams.a() < 0 || divLayoutParams.g() < 0) {
                throw new IllegalStateException("Negative spans are not supported.");
            }
            if (tj4.c(divLayoutParams) < 0.0f || tj4.d(divLayoutParams) < 0.0f) {
                throw new IllegalStateException("Negative weights are not supported.");
            }
        }
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        e();
        List listJ = this.grid.j();
        List listO = this.grid.o();
        List listH = this.grid.h();
        int iC = c();
        int iD = d();
        int childCount = getChildCount();
        int i = 0;
        int i2 = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                a aVar = (a) listH.get(i2);
                int iC2 = ((d) listJ.get(aVar.a())).c() + ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin;
                int iC3 = ((d) listO.get(aVar.c())).c() + ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin;
                d dVar = (d) listJ.get((aVar.a() + aVar.b()) - 1);
                int iC4 = ((dVar.c() + dVar.d()) - iC2) - ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin;
                d dVar2 = (d) listO.get((aVar.c() + aVar.d()) - 1);
                int iC5 = ((dVar2.c() + dVar2.d()) - iC3) - ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin;
                int iA = a(iC2, iC4, childAt.getMeasuredWidth(), divLayoutParams.getGravity()) + iC;
                int iB = b(iC3, iC5, childAt.getMeasuredHeight(), divLayoutParams.getGravity()) + iD;
                childAt.layout(iA, iB, childAt.getMeasuredWidth() + iA, childAt.getMeasuredHeight() + iB);
                i2++;
            }
            i++;
            listH = listH;
            listJ = listJ;
            listO = listO;
        }
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        ne5 ne5Var = ne5.a;
        if (ne5Var.a(Severity.INFO)) {
            ne5Var.b(4, "GridContainer", "onLayout() performed in " + jElapsedRealtime2 + " ms");
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        e();
        g();
        int paddingHorizontal = getPaddingHorizontal();
        int paddingVertical = getPaddingVertical();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(widthMeasureSpec - paddingHorizontal), View.MeasureSpec.getMode(widthMeasureSpec));
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(heightMeasureSpec - paddingVertical), View.MeasureSpec.getMode(heightMeasureSpec));
        j(iMakeMeasureSpec, iMakeMeasureSpec2);
        int iV = this.grid.v(iMakeMeasureSpec);
        m(iMakeMeasureSpec, iMakeMeasureSpec2);
        int iT = this.grid.t(iMakeMeasureSpec2);
        l(iMakeMeasureSpec, iMakeMeasureSpec2);
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iV + paddingHorizontal, getSuggestedMinimumWidth()), widthMeasureSpec, 0), View.resolveSizeAndState(Math.max(iT + paddingVertical, getSuggestedMinimumHeight()), heightMeasureSpec, 0));
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        ne5 ne5Var = ne5.a;
        if (ne5Var.a(Severity.INFO)) {
            ne5Var.b(4, "GridContainer", "onMeasure() performed in " + jElapsedRealtime2 + " ms");
        }
    }

    @Override
    public void onViewAdded(View child) {
        y45.j(child, "child");
        super.onViewAdded(child);
        h();
    }

    @Override
    public void onViewRemoved(View child) {
        y45.j(child, "child");
        super.onViewRemoved(child);
        h();
    }

    @Override
    public void requestLayout() {
        super.requestLayout();
        if (this.initialized) {
            g();
        }
    }

    public final void setColumnCount(int i) {
        this.grid.x(i);
        h();
        requestLayout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GridContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public static final class e {
        public int a;
        public int b;

        public e(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public final int a() {
            return this.b;
        }

        public final int b() {
            return this.a;
        }

        public final void c(int i) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode == Integer.MIN_VALUE) {
                this.a = 0;
                this.b = size;
            } else if (mode == 0) {
                this.a = 0;
                this.b = 32768;
            } else {
                if (mode != 1073741824) {
                    return;
                }
                this.a = size;
                this.b = size;
            }
        }

        public e(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 32768 : i2);
        }
    }

    public GridContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GridContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.grid = new Grid();
        if (isInEditMode()) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GridContainer, i, 0);
            y45.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…ntainer, defStyleAttr, 0)");
            try {
                setColumnCount(typedArrayObtainStyledAttributes.getInt(R.styleable.GridContainer_android_columnCount, 1));
                setGravity(typedArrayObtainStyledAttributes.getInt(R.styleable.GridContainer_android_gravity, 8388659));
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.initialized = true;
    }
}
