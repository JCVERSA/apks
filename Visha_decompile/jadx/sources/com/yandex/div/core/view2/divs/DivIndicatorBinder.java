package com.yandex.div.core.view2.divs;

import android.util.DisplayMetrics;
import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.divs.widgets.DivPagerIndicatorView;
import com.yandex.div.internal.widget.indicator.IndicatorParams$Animation;
import com.yandex.div.internal.widget.indicator.c;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivFixedSize;
import com.yandex.div2.DivIndicator;
import com.yandex.div2.DivIndicatorItemPlacement;
import com.yandex.div2.DivPager;
import com.yandex.div2.DivRoundedRectangleShape;
import com.yandex.div2.DivShape;
import com.yandex.div2.DivSizeUnit;
import com.yandex.div2.DivStroke;
import defpackage.ae5;
import defpackage.b81;
import defpackage.e74;
import defpackage.g59;
import defpackage.i81;
import defpackage.mz4;
import defpackage.og2;
import defpackage.oj3;
import defpackage.sj3;
import defpackage.sz4;
import defpackage.wu2;
import defpackage.xi;
import defpackage.xq8;
import defpackage.xv7;
import defpackage.y45;
import defpackage.zfb;
import defpackage.zl2;
import defpackage.zt2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Ref$ObjectRef;

public final class DivIndicatorBinder extends wu2 {
    public final xv7 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivIndicatorBinder(DivBaseBinder divBaseBinder, xv7 xv7Var) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(xv7Var, "pagerIndicatorConnector");
        this.b = xv7Var;
    }

    public static c l(DivIndicatorBinder divIndicatorBinder, c cVar, float f, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        return divIndicatorBinder.k(cVar, f, num);
    }

    public static c p(DivIndicatorBinder divIndicatorBinder, DivRoundedRectangleShape divRoundedRectangleShape, DisplayMetrics displayMetrics, oj3 oj3Var, Expression expression, float f, int i, Object obj) {
        if ((i & 8) != 0) {
            f = 1.0f;
        }
        return divIndicatorBinder.n(divRoundedRectangleShape, displayMetrics, oj3Var, expression, f);
    }

    public static c q(DivIndicatorBinder divIndicatorBinder, DivShape divShape, DisplayMetrics displayMetrics, oj3 oj3Var, Expression expression, float f, int i, Object obj) {
        if ((i & 8) != 0) {
            f = 1.0f;
        }
        return divIndicatorBinder.o(divShape, displayMetrics, oj3Var, expression, f);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0091  */
    /* JADX WARN: Code duplicated, block: B:20:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:21:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:24:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:28:0x00df  */
    /* JADX WARN: Code duplicated, block: B:32:0x0102  */
    /* JADX WARN: Code duplicated, block: B:34:0x0119  */
    /* JADX WARN: Code duplicated, block: B:36:0x011d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0149  */
    /* JADX WARN: Code duplicated, block: B:48:0x017c  */
    /* JADX WARN: Code duplicated, block: B:52:0x018d  */
    public final void g(DivPagerIndicatorView divPagerIndicatorView, oj3 oj3Var, DivIndicator divIndicator) {
        String str;
        c cVarQ;
        c cVar;
        c cVar2;
        DivIndicatorBinder divIndicatorBinder;
        c cVarK;
        String str2;
        c cVarL;
        DivIndicatorItemPlacement divIndicatorItemPlacementC0;
        com.yandex.div.internal.widget.indicator.a bVar;
        long jLongValue;
        long j;
        int i;
        c cVarP;
        DisplayMetrics displayMetrics = divPagerIndicatorView.getResources().getDisplayMetrics();
        DivRoundedRectangleShape divRoundedRectangleShape = divIndicator.d;
        DivRoundedRectangleShape divRoundedRectangleShape2 = divIndicator.u;
        DivRoundedRectangleShape divRoundedRectangleShape3 = divIndicator.t;
        float fDoubleValue = (float) ((Number) divIndicator.c.b(oj3Var)).doubleValue();
        float fDoubleValue2 = (float) ((Number) divIndicator.y.b(oj3Var)).doubleValue();
        if (divRoundedRectangleShape2 != null) {
            y45.i(displayMetrics, "metrics");
            str = "metrics";
            cVarQ = p(this, divRoundedRectangleShape2, displayMetrics, oj3Var, divIndicator.s, 0.0f, 8, null);
            if (cVarQ == null) {
            }
            cVar = cVarQ;
            if (divRoundedRectangleShape != null) {
                y45.i(displayMetrics, str);
                cVar2 = cVar;
                cVarP = p(this, divRoundedRectangleShape, displayMetrics, oj3Var, divIndicator.b, 0.0f, 8, null);
                if (cVarP == null) {
                    cVarK = cVarP;
                    divIndicatorBinder = this;
                }
                if (divRoundedRectangleShape3 != null) {
                    y45.i(displayMetrics, str);
                    str2 = str;
                    cVarL = p(this, divRoundedRectangleShape3, displayMetrics, oj3Var, divIndicator.s, 0.0f, 8, null);
                    if (cVarL == null) {
                    }
                    c cVar3 = cVarL;
                    IndicatorParams$Animation indicatorParams$AnimationJ = divIndicatorBinder.j((DivIndicator.Animation) divIndicator.h.b(oj3Var));
                    divIndicatorItemPlacementC0 = BaseDivViewExtensionsKt.c0(divIndicator);
                    if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.b) {
                        DivFixedSize divFixedSize = ((DivIndicatorItemPlacement.b) divIndicatorItemPlacementC0).c().a;
                        y45.i(displayMetrics, str2);
                        bVar = new com.yandex.div.internal.widget.indicator.a.C0302a(BaseDivViewExtensionsKt.H0(divFixedSize, displayMetrics, oj3Var));
                    } else {
                        if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.c) {
                            throw new NoWhenBranchMatchedException();
                        }
                        DivIndicatorItemPlacement.c cVar4 = (DivIndicatorItemPlacement.c) divIndicatorItemPlacementC0;
                        DivFixedSize divFixedSize2 = cVar4.c().a;
                        y45.i(displayMetrics, str2);
                        float fH0 = BaseDivViewExtensionsKt.H0(divFixedSize2, displayMetrics, oj3Var);
                        jLongValue = ((Number) cVar4.c().b.b(oj3Var)).longValue();
                        j = jLongValue >> 31;
                        if (j != 0 || j == -1) {
                            i = (int) jLongValue;
                        } else {
                            ae5 ae5Var = ae5.a;
                            if (xi.o()) {
                                xi.i("Unable convert '" + jLongValue + "' to Int");
                            }
                            i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                        }
                        bVar = new com.yandex.div.internal.widget.indicator.a.b(fH0, i);
                    }
                    divPagerIndicatorView.setStyle(new sz4(indicatorParams$AnimationJ, cVarK, cVar2, cVar3, bVar));
                }
                str2 = str;
                cVarL = l(this, cVar2, fDoubleValue2, null, 2, null);
                c cVar5 = cVarL;
                IndicatorParams$Animation indicatorParams$AnimationJ2 = divIndicatorBinder.j((DivIndicator.Animation) divIndicator.h.b(oj3Var));
                divIndicatorItemPlacementC0 = BaseDivViewExtensionsKt.c0(divIndicator);
                if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.b) {
                    DivFixedSize divFixedSize3 = ((DivIndicatorItemPlacement.b) divIndicatorItemPlacementC0).c().a;
                    y45.i(displayMetrics, str2);
                    bVar = new com.yandex.div.internal.widget.indicator.a.C0302a(BaseDivViewExtensionsKt.H0(divFixedSize3, displayMetrics, oj3Var));
                } else {
                    if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.c) {
                        throw new NoWhenBranchMatchedException();
                    }
                    DivIndicatorItemPlacement.c cVar6 = (DivIndicatorItemPlacement.c) divIndicatorItemPlacementC0;
                    DivFixedSize divFixedSize4 = cVar6.c().a;
                    y45.i(displayMetrics, str2);
                    float fH1 = BaseDivViewExtensionsKt.H0(divFixedSize4, displayMetrics, oj3Var);
                    jLongValue = ((Number) cVar6.c().b.b(oj3Var)).longValue();
                    j = jLongValue >> 31;
                    if (j != 0) {
                        i = (int) jLongValue;
                    } else {
                        i = (int) jLongValue;
                    }
                    bVar = new com.yandex.div.internal.widget.indicator.a.b(fH1, i);
                }
                divPagerIndicatorView.setStyle(new sz4(indicatorParams$AnimationJ2, cVarK, cVar2, cVar5, bVar));
            }
            cVar2 = cVar;
            divIndicatorBinder = this;
            cVarK = divIndicatorBinder.k(cVar2, fDoubleValue, (Integer) divIndicator.b.b(oj3Var));
            if (divRoundedRectangleShape3 != null) {
                y45.i(displayMetrics, str);
                str2 = str;
                cVarL = p(this, divRoundedRectangleShape3, displayMetrics, oj3Var, divIndicator.s, 0.0f, 8, null);
                if (cVarL == null) {
                }
                c cVar7 = cVarL;
                IndicatorParams$Animation indicatorParams$AnimationJ3 = divIndicatorBinder.j((DivIndicator.Animation) divIndicator.h.b(oj3Var));
                divIndicatorItemPlacementC0 = BaseDivViewExtensionsKt.c0(divIndicator);
                if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.b) {
                    DivFixedSize divFixedSize5 = ((DivIndicatorItemPlacement.b) divIndicatorItemPlacementC0).c().a;
                    y45.i(displayMetrics, str2);
                    bVar = new com.yandex.div.internal.widget.indicator.a.C0302a(BaseDivViewExtensionsKt.H0(divFixedSize5, displayMetrics, oj3Var));
                } else {
                    if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.c) {
                        throw new NoWhenBranchMatchedException();
                    }
                    DivIndicatorItemPlacement.c cVar8 = (DivIndicatorItemPlacement.c) divIndicatorItemPlacementC0;
                    DivFixedSize divFixedSize6 = cVar8.c().a;
                    y45.i(displayMetrics, str2);
                    float fH2 = BaseDivViewExtensionsKt.H0(divFixedSize6, displayMetrics, oj3Var);
                    jLongValue = ((Number) cVar8.c().b.b(oj3Var)).longValue();
                    j = jLongValue >> 31;
                    if (j != 0) {
                        i = (int) jLongValue;
                    } else {
                        i = (int) jLongValue;
                    }
                    bVar = new com.yandex.div.internal.widget.indicator.a.b(fH2, i);
                }
                divPagerIndicatorView.setStyle(new sz4(indicatorParams$AnimationJ3, cVarK, cVar2, cVar7, bVar));
            }
            str2 = str;
            cVarL = l(this, cVar2, fDoubleValue2, null, 2, null);
            c cVar9 = cVarL;
            IndicatorParams$Animation indicatorParams$AnimationJ4 = divIndicatorBinder.j((DivIndicator.Animation) divIndicator.h.b(oj3Var));
            divIndicatorItemPlacementC0 = BaseDivViewExtensionsKt.c0(divIndicator);
            if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.b) {
                DivFixedSize divFixedSize7 = ((DivIndicatorItemPlacement.b) divIndicatorItemPlacementC0).c().a;
                y45.i(displayMetrics, str2);
                bVar = new com.yandex.div.internal.widget.indicator.a.C0302a(BaseDivViewExtensionsKt.H0(divFixedSize7, displayMetrics, oj3Var));
            } else {
                if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.c) {
                    throw new NoWhenBranchMatchedException();
                }
                DivIndicatorItemPlacement.c cVar10 = (DivIndicatorItemPlacement.c) divIndicatorItemPlacementC0;
                DivFixedSize divFixedSize8 = cVar10.c().a;
                y45.i(displayMetrics, str2);
                float fH3 = BaseDivViewExtensionsKt.H0(divFixedSize8, displayMetrics, oj3Var);
                jLongValue = ((Number) cVar10.c().b.b(oj3Var)).longValue();
                j = jLongValue >> 31;
                if (j != 0) {
                    i = (int) jLongValue;
                } else {
                    i = (int) jLongValue;
                }
                bVar = new com.yandex.div.internal.widget.indicator.a.b(fH3, i);
            }
            divPagerIndicatorView.setStyle(new sz4(indicatorParams$AnimationJ4, cVarK, cVar2, cVar9, bVar));
        }
        str = "metrics";
        if (divRoundedRectangleShape != null) {
            y45.i(displayMetrics, str);
            cVarQ = n(divRoundedRectangleShape, displayMetrics, oj3Var, divIndicator.s, 1 / fDoubleValue);
        } else {
            if (divRoundedRectangleShape3 != null) {
                y45.i(displayMetrics, str);
                cVarQ = n(divRoundedRectangleShape3, displayMetrics, oj3Var, divIndicator.s, fDoubleValue2);
            } else {
                cVarQ = null;
            }
            if (cVarQ == null) {
                DivShape divShape = divIndicator.E;
                y45.i(displayMetrics, str);
                cVarQ = q(this, divShape, displayMetrics, oj3Var, divIndicator.s, 0.0f, 8, null);
            }
        }
        cVar = cVarQ;
        if (divRoundedRectangleShape != null) {
            y45.i(displayMetrics, str);
            cVar2 = cVar;
            cVarP = p(this, divRoundedRectangleShape, displayMetrics, oj3Var, divIndicator.b, 0.0f, 8, null);
            if (cVarP == null) {
                cVarK = cVarP;
                divIndicatorBinder = this;
            }
            if (divRoundedRectangleShape3 != null) {
                y45.i(displayMetrics, str);
                str2 = str;
                cVarL = p(this, divRoundedRectangleShape3, displayMetrics, oj3Var, divIndicator.s, 0.0f, 8, null);
                if (cVarL == null) {
                }
                c cVar11 = cVarL;
                IndicatorParams$Animation indicatorParams$AnimationJ5 = divIndicatorBinder.j((DivIndicator.Animation) divIndicator.h.b(oj3Var));
                divIndicatorItemPlacementC0 = BaseDivViewExtensionsKt.c0(divIndicator);
                if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.b) {
                    DivFixedSize divFixedSize9 = ((DivIndicatorItemPlacement.b) divIndicatorItemPlacementC0).c().a;
                    y45.i(displayMetrics, str2);
                    bVar = new com.yandex.div.internal.widget.indicator.a.C0302a(BaseDivViewExtensionsKt.H0(divFixedSize9, displayMetrics, oj3Var));
                } else {
                    if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.c) {
                        throw new NoWhenBranchMatchedException();
                    }
                    DivIndicatorItemPlacement.c cVar12 = (DivIndicatorItemPlacement.c) divIndicatorItemPlacementC0;
                    DivFixedSize divFixedSize10 = cVar12.c().a;
                    y45.i(displayMetrics, str2);
                    float fH4 = BaseDivViewExtensionsKt.H0(divFixedSize10, displayMetrics, oj3Var);
                    jLongValue = ((Number) cVar12.c().b.b(oj3Var)).longValue();
                    j = jLongValue >> 31;
                    if (j != 0) {
                        i = (int) jLongValue;
                    } else {
                        i = (int) jLongValue;
                    }
                    bVar = new com.yandex.div.internal.widget.indicator.a.b(fH4, i);
                }
                divPagerIndicatorView.setStyle(new sz4(indicatorParams$AnimationJ5, cVarK, cVar2, cVar11, bVar));
            }
            str2 = str;
            cVarL = l(this, cVar2, fDoubleValue2, null, 2, null);
            c cVar13 = cVarL;
            IndicatorParams$Animation indicatorParams$AnimationJ6 = divIndicatorBinder.j((DivIndicator.Animation) divIndicator.h.b(oj3Var));
            divIndicatorItemPlacementC0 = BaseDivViewExtensionsKt.c0(divIndicator);
            if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.b) {
                DivFixedSize divFixedSize11 = ((DivIndicatorItemPlacement.b) divIndicatorItemPlacementC0).c().a;
                y45.i(displayMetrics, str2);
                bVar = new com.yandex.div.internal.widget.indicator.a.C0302a(BaseDivViewExtensionsKt.H0(divFixedSize11, displayMetrics, oj3Var));
            } else {
                if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.c) {
                    throw new NoWhenBranchMatchedException();
                }
                DivIndicatorItemPlacement.c cVar14 = (DivIndicatorItemPlacement.c) divIndicatorItemPlacementC0;
                DivFixedSize divFixedSize12 = cVar14.c().a;
                y45.i(displayMetrics, str2);
                float fH5 = BaseDivViewExtensionsKt.H0(divFixedSize12, displayMetrics, oj3Var);
                jLongValue = ((Number) cVar14.c().b.b(oj3Var)).longValue();
                j = jLongValue >> 31;
                if (j != 0) {
                    i = (int) jLongValue;
                } else {
                    i = (int) jLongValue;
                }
                bVar = new com.yandex.div.internal.widget.indicator.a.b(fH5, i);
            }
            divPagerIndicatorView.setStyle(new sz4(indicatorParams$AnimationJ6, cVarK, cVar2, cVar13, bVar));
        }
        cVar2 = cVar;
        divIndicatorBinder = this;
        cVarK = divIndicatorBinder.k(cVar2, fDoubleValue, (Integer) divIndicator.b.b(oj3Var));
        if (divRoundedRectangleShape3 != null) {
            y45.i(displayMetrics, str);
            str2 = str;
            cVarL = p(this, divRoundedRectangleShape3, displayMetrics, oj3Var, divIndicator.s, 0.0f, 8, null);
            if (cVarL == null) {
            }
            c cVar15 = cVarL;
            IndicatorParams$Animation indicatorParams$AnimationJ7 = divIndicatorBinder.j((DivIndicator.Animation) divIndicator.h.b(oj3Var));
            divIndicatorItemPlacementC0 = BaseDivViewExtensionsKt.c0(divIndicator);
            if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.b) {
                DivFixedSize divFixedSize13 = ((DivIndicatorItemPlacement.b) divIndicatorItemPlacementC0).c().a;
                y45.i(displayMetrics, str2);
                bVar = new com.yandex.div.internal.widget.indicator.a.C0302a(BaseDivViewExtensionsKt.H0(divFixedSize13, displayMetrics, oj3Var));
            } else {
                if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.c) {
                    throw new NoWhenBranchMatchedException();
                }
                DivIndicatorItemPlacement.c cVar16 = (DivIndicatorItemPlacement.c) divIndicatorItemPlacementC0;
                DivFixedSize divFixedSize14 = cVar16.c().a;
                y45.i(displayMetrics, str2);
                float fH6 = BaseDivViewExtensionsKt.H0(divFixedSize14, displayMetrics, oj3Var);
                jLongValue = ((Number) cVar16.c().b.b(oj3Var)).longValue();
                j = jLongValue >> 31;
                if (j != 0) {
                    i = (int) jLongValue;
                } else {
                    i = (int) jLongValue;
                }
                bVar = new com.yandex.div.internal.widget.indicator.a.b(fH6, i);
            }
            divPagerIndicatorView.setStyle(new sz4(indicatorParams$AnimationJ7, cVarK, cVar2, cVar15, bVar));
        }
        str2 = str;
        cVarL = l(this, cVar2, fDoubleValue2, null, 2, null);
        c cVar17 = cVarL;
        IndicatorParams$Animation indicatorParams$AnimationJ8 = divIndicatorBinder.j((DivIndicator.Animation) divIndicator.h.b(oj3Var));
        divIndicatorItemPlacementC0 = BaseDivViewExtensionsKt.c0(divIndicator);
        if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.b) {
            DivFixedSize divFixedSize15 = ((DivIndicatorItemPlacement.b) divIndicatorItemPlacementC0).c().a;
            y45.i(displayMetrics, str2);
            bVar = new com.yandex.div.internal.widget.indicator.a.C0302a(BaseDivViewExtensionsKt.H0(divFixedSize15, displayMetrics, oj3Var));
        } else {
            if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.c) {
                throw new NoWhenBranchMatchedException();
            }
            DivIndicatorItemPlacement.c cVar18 = (DivIndicatorItemPlacement.c) divIndicatorItemPlacementC0;
            DivFixedSize divFixedSize16 = cVar18.c().a;
            y45.i(displayMetrics, str2);
            float fH7 = BaseDivViewExtensionsKt.H0(divFixedSize16, displayMetrics, oj3Var);
            jLongValue = ((Number) cVar18.c().b.b(oj3Var)).longValue();
            j = jLongValue >> 31;
            if (j != 0) {
                i = (int) jLongValue;
            } else {
                i = (int) jLongValue;
            }
            bVar = new com.yandex.div.internal.widget.indicator.a.b(fH7, i);
        }
        divPagerIndicatorView.setStyle(new sz4(indicatorParams$AnimationJ8, cVarK, cVar2, cVar17, bVar));
    }

    @Override
    public void a(final DivPagerIndicatorView divPagerIndicatorView, com.yandex.div.core.view2.a aVar, final DivIndicator divIndicator, DivIndicator divIndicator2) {
        y45.j(divPagerIndicatorView, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divIndicator, TtmlNode.TAG_DIV);
        final oj3 oj3VarB = aVar.b();
        g(divPagerIndicatorView, oj3VarB, divIndicator);
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m193invoke(obj);
                return zfb.a;
            }

            public final void m193invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.g(divPagerIndicatorView, oj3VarB, divIndicator);
            }
        };
        divPagerIndicatorView.addSubscription(divIndicator.h.e(oj3VarB, e74Var));
        divPagerIndicatorView.addSubscription(divIndicator.b.e(oj3VarB, e74Var));
        divPagerIndicatorView.addSubscription(divIndicator.c.e(oj3VarB, e74Var));
        divPagerIndicatorView.addSubscription(divIndicator.s.e(oj3VarB, e74Var));
        divPagerIndicatorView.addSubscription(divIndicator.y.e(oj3VarB, e74Var));
        sj3.m(divPagerIndicatorView, divIndicator.E, oj3VarB, e74Var);
        sj3.l(divPagerIndicatorView, divIndicator.d, oj3VarB, e74Var);
        sj3.l(divPagerIndicatorView, divIndicator.u, oj3VarB, e74Var);
        sj3.l(divPagerIndicatorView, divIndicator.t, oj3VarB, e74Var);
        DivIndicatorItemPlacement divIndicatorItemPlacementC0 = BaseDivViewExtensionsKt.c0(divIndicator);
        if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.b) {
            DivIndicatorItemPlacement.b bVar = (DivIndicatorItemPlacement.b) divIndicatorItemPlacementC0;
            divPagerIndicatorView.addSubscription(bVar.c().a.b.e(oj3VarB, e74Var));
            divPagerIndicatorView.addSubscription(bVar.c().a.a.e(oj3VarB, e74Var));
        } else if (divIndicatorItemPlacementC0 instanceof DivIndicatorItemPlacement.c) {
            DivIndicatorItemPlacement.c cVar = (DivIndicatorItemPlacement.c) divIndicatorItemPlacementC0;
            divPagerIndicatorView.addSubscription(cVar.c().a.b.e(oj3VarB, e74Var));
            divPagerIndicatorView.addSubscription(cVar.c().a.a.e(oj3VarB, e74Var));
            divPagerIndicatorView.addSubscription(cVar.c().b.e(oj3VarB, e74Var));
        }
        m(divPagerIndicatorView, divIndicator, oj3VarB, e74Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [T, g59] */
    public void i(com.yandex.div.core.view2.a aVar, DivPagerIndicatorView divPagerIndicatorView, Div.h hVar) {
        og2 og2Var;
        y45.j(aVar, "context");
        y45.j(divPagerIndicatorView, "view");
        y45.j(hVar, TtmlNode.TAG_DIV);
        Div divRootDiv$div_release = aVar.a().rootDiv$div_release();
        if (divRootDiv$div_release != null) {
            oj3 oj3VarB = aVar.b();
            og2 og2VarB = hVar.b();
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            final ArrayList<g59> arrayList = new ArrayList();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator itZ = b81.z(zt2.c(divRootDiv$div_release, oj3VarB).e(new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final Boolean invoke(Div div) {
                    y45.j(div, "it");
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((g59) it.next()).c();
                    }
                    g59 g59Var = (g59) ref$ObjectRef.element;
                    if (g59Var != null) {
                        g59Var.c();
                    }
                    return Boolean.TRUE;
                }
            }).f(new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((Div) obj);
                    return zfb.a;
                }

                /* JADX WARN: Multi-variable type inference failed */
                public final void invoke(Div div) {
                    y45.j(div, "it");
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((g59) it.next()).d();
                    }
                    g59 g59Var = (g59) ref$ObjectRef.element;
                    if (g59Var != null) {
                        g59Var.d();
                    }
                }
            }).iterator());
            while (true) {
                og2Var = null;
                if (!itZ.hasNext()) {
                    break;
                }
                og2 og2VarB2 = ((zl2) ((mz4) itZ.next()).d()).c().b();
                if (og2VarB2 == og2VarB) {
                    for (g59 g59Var : arrayList) {
                        if (((og2) g59Var.b()) != null) {
                            linkedHashMap.put(g59Var.b(), Integer.valueOf(g59Var.a()));
                        }
                    }
                    arrayList.clear();
                    ref$ObjectRef.element = new g59(null);
                }
                if (og2VarB2 instanceof DivPager) {
                    DivPager divPager = (DivPager) og2VarB2;
                    if (hVar.c().A == null || y45.e(divPager.getId(), hVar.c().A)) {
                        T t = ref$ObjectRef.element;
                        if (t != 0) {
                            linkedHashMap.put(og2VarB2, Integer.valueOf(((g59) t).a()));
                        } else {
                            arrayList.add(new g59(og2VarB2));
                        }
                    }
                }
            }
            Integer num = (Integer) i81.E0(linkedHashMap.values());
            if (num != null) {
                int iIntValue = num.intValue();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    if (((Number) entry.getValue()).intValue() == iIntValue) {
                        linkedHashMap2.put(entry.getKey(), entry.getValue());
                    }
                }
                Set setKeySet = linkedHashMap2.keySet();
                if (!setKeySet.isEmpty()) {
                    if (setKeySet.size() > 1) {
                        Log.w("SearchUtil", "Distance clash when searching for the nearest " + xq8.b(DivPager.class).o() + ". First found is taken");
                    }
                    og2Var = (og2) i81.n0(setKeySet);
                }
            }
            DivPager divPager2 = (DivPager) og2Var;
            if (divPager2 != null) {
                this.b.b(divPagerIndicatorView, divPager2);
            }
        }
        super.c(aVar, divPagerIndicatorView, hVar);
    }

    public final IndicatorParams$Animation j(DivIndicator.Animation animation) {
        y45.j(animation, "<this>");
        if (animation == DivIndicator.Animation.WORM) {
            return IndicatorParams$Animation.WORM;
        }
        return animation == DivIndicator.Animation.SLIDER ? IndicatorParams$Animation.SLIDER : IndicatorParams$Animation.SCALE;
    }

    public final c k(c cVar, float f, Integer num) {
        if (cVar instanceof c.b) {
            int iIntValue = num != null ? num.intValue() : cVar.c();
            c.b bVar = (c.b) cVar;
            return BaseDivViewExtensionsKt.J(iIntValue, bVar.d().g(), bVar.d().f(), bVar.d().e(), f, Float.valueOf(bVar.g()), Integer.valueOf(bVar.f()));
        }
        if (cVar instanceof c.a) {
            return BaseDivViewExtensionsKt.I(num != null ? num.intValue() : cVar.c(), ((c.a) cVar).d().d(), f);
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void m(DivPagerIndicatorView divPagerIndicatorView, og2 og2Var, oj3 oj3Var, e74 e74Var) {
        Object objB = og2Var.getWidth().b();
        if (objB instanceof DivFixedSize) {
            sj3.h(divPagerIndicatorView, (DivFixedSize) objB, oj3Var, e74Var);
        }
        Object objB2 = og2Var.getHeight().b();
        if (objB2 instanceof DivFixedSize) {
            sj3.h(divPagerIndicatorView, (DivFixedSize) objB2, oj3Var, e74Var);
        }
    }

    public final c n(DivRoundedRectangleShape divRoundedRectangleShape, DisplayMetrics displayMetrics, oj3 oj3Var, Expression expression, float f) {
        DivSizeUnit divSizeUnit;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        DivStroke divStroke = divRoundedRectangleShape.e;
        if (divStroke == null || (expression4 = divStroke.c) == null || (divSizeUnit = (DivSizeUnit) expression4.b(oj3Var)) == null) {
            divSizeUnit = DivSizeUnit.DP;
        }
        DivStroke divStroke2 = divRoundedRectangleShape.e;
        Integer num = null;
        Integer numValueOf = (divStroke2 == null || (expression3 = divStroke2.d) == null) ? null : Integer.valueOf(BaseDivViewExtensionsKt.R0(Double.valueOf(((Number) expression3.b(oj3Var)).doubleValue()), displayMetrics, divSizeUnit));
        Expression expression5 = divRoundedRectangleShape.a;
        if (expression5 != null) {
            expression = expression5;
        }
        int iIntValue = ((Number) expression.b(oj3Var)).intValue();
        float fJ0 = BaseDivViewExtensionsKt.J0(divRoundedRectangleShape.d, displayMetrics, oj3Var);
        float fJ1 = BaseDivViewExtensionsKt.J0(divRoundedRectangleShape.c, displayMetrics, oj3Var);
        float fJ2 = BaseDivViewExtensionsKt.J0(divRoundedRectangleShape.b, displayMetrics, oj3Var);
        Float fValueOf = numValueOf != null ? Float.valueOf(numValueOf.intValue()) : null;
        DivStroke divStroke3 = divRoundedRectangleShape.e;
        if (divStroke3 != null && (expression2 = divStroke3.a) != null) {
            num = (Integer) expression2.b(oj3Var);
        }
        return BaseDivViewExtensionsKt.J(iIntValue, fJ0, fJ1, fJ2, f, fValueOf, num);
    }

    public final c o(DivShape divShape, DisplayMetrics displayMetrics, oj3 oj3Var, Expression expression, float f) {
        if (divShape instanceof DivShape.c) {
            return n(((DivShape.c) divShape).c(), displayMetrics, oj3Var, expression, f);
        }
        if (!(divShape instanceof DivShape.a)) {
            throw new NoWhenBranchMatchedException();
        }
        return BaseDivViewExtensionsKt.I(((Number) expression.b(oj3Var)).intValue(), BaseDivViewExtensionsKt.J0(((DivShape.a) divShape).c().b, displayMetrics, oj3Var), f);
    }
}
