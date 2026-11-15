package cl;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.a0;
import androidx.compose.foundation.layout.b0;
import androidx.compose.foundation.layout.d0;
import androidx.compose.foundation.layout.e0;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import com.google.accompanist.systemuicontroller.SystemUiControllerKt;
import com.tn.lib.widget.R$color;
import com.transsion.home.bean.FilterVal;
import com.transsion.home.bean.Item;
import com.transsion.videodetail.R$drawable;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.x;

public abstract class w {

    static final class a implements Function2 {

        final long f17008a;

        final Item f17009b;

        final Function1 f17010c;

        final String f17011d;

        static final class C0151a implements Function3 {

            final FilterVal f17012a;

            final androidx.compose.foundation.layout.k f17013b;

            final Function1 f17014c;

            C0151a(FilterVal filterVal, androidx.compose.foundation.layout.k kVar, Function1 function1) {
                this.f17012a = filterVal;
                this.f17013b = kVar;
                this.f17014c = function1;
            }

            public static final Unit c(Function1 function1, FilterVal filterVal) {
                function1.invoke(filterVal.getId());
                return Unit.f64096a;
            }

            public final void b(androidx.compose.foundation.lazy.b item, androidx.compose.runtime.i iVar, int i10) {
                Intrinsics.h(item, "$this$item");
                if ((i10 & 17) == 16 && iVar.h()) {
                    iVar.G();
                    return;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(860266798, i10, -1, "com.transsion.home.view.filter.popup.SingleSelectFilter.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (SingleFilterPopupWindow.kt:114)");
                }
                String name = this.f17012a.getName();
                androidx.compose.ui.text.font.s sVarB = androidx.compose.ui.text.font.h.f5815b.b();
                androidx.compose.ui.text.font.p pVarB = androidx.compose.ui.text.font.p.f5840b.b();
                int iB = androidx.compose.ui.text.style.p.f6133a.b();
                long jC = x.c(16);
                long jF = u1.f4349b.f();
                androidx.compose.foundation.layout.k kVar = this.f17013b;
                androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f3869a;
                androidx.compose.ui.f fVarB = kVar.b(PaddingKt.g(SizeKt.d(aVar, 0.0f, 1, null), o0.i.g(16), 0.0f, 2, null), androidx.compose.ui.b.f3778a.f());
                iVar.P(-1633490746);
                boolean zO = iVar.O(this.f17014c) | iVar.O(this.f17012a);
                final Function1 function1 = this.f17014c;
                final FilterVal filterVal = this.f17012a;
                Object objY = iVar.y();
                if (zO || objY == androidx.compose.runtime.i.f3427a.a()) {
                    objY = new Function0() {
                        @Override
                        public final Object invoke() {
                            return w.a.C0151a.c(function1, filterVal);
                        }
                    };
                    iVar.p(objY);
                }
                iVar.K();
                TextKt.a(name, ClickableKt.d(fVarB, false, null, null, (Function0) objY, 7, null), jF, jC, null, pVarB, sVarB, 0L, null, null, 0L, iB, false, 0, 0, null, null, iVar, 200064, 48, 128912);
                e0.a(SizeKt.e(aVar, o0.i.g(37)), iVar, 6);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
            }

            @Override
            public Object invoke(Object obj, Object obj2, Object obj3) {
                b((androidx.compose.foundation.lazy.b) obj, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                return Unit.f64096a;
            }
        }

        a(long j10, Item item, Function1 function1, String str) {
            this.f17008a = j10;
            this.f17009b = item;
            this.f17010c = function1;
            this.f17011d = str;
        }

        public static final Unit d(Function1 function1) {
            function1.invoke(null);
            return Unit.f64096a;
        }

        public static final Unit e(Item item, androidx.compose.foundation.layout.k kVar, Function1 function1, androidx.compose.foundation.lazy.u LazyColumn) {
            Intrinsics.h(LazyColumn, "$this$LazyColumn");
            for (FilterVal filterVal : item.getFilterValsV2()) {
                androidx.compose.foundation.lazy.t.a(LazyColumn, filterVal.getId(), null, androidx.compose.runtime.internal.b.b(860266798, true, new C0151a(filterVal, kVar, function1)), 2, null);
            }
            return Unit.f64096a;
        }

        public final void c(androidx.compose.runtime.i iVar, int i10) {
            if ((i10 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-800641360, i10, -1, "com.transsion.home.view.filter.popup.SingleSelectFilter.<anonymous> (SingleFilterPopupWindow.kt:65)");
            }
            androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f3869a;
            androidx.compose.ui.f fVarB = SizeKt.b(BackgroundKt.b(aVar, this.f17008a, null, 2, null), 0.0f, 1, null);
            final Item item = this.f17009b;
            final Function1 function1 = this.f17010c;
            String str = this.f17011d;
            androidx.compose.ui.b.a aVar2 = androidx.compose.ui.b.f3778a;
            androidx.compose.ui.layout.t tVarH = BoxKt.h(aVar2.m(), false);
            int iA = androidx.compose.runtime.g.a(iVar, 0);
            androidx.compose.runtime.s sVarN = iVar.n();
            androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVar, fVarB);
            ComposeUiNode.Companion companion = ComposeUiNode.f4915c1;
            Function0 function0A = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A);
            } else {
                iVar.o();
            }
            androidx.compose.runtime.i iVarA = f3.a(iVar);
            f3.b(iVarA, tVarH, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f2435a;
            androidx.compose.foundation.layout.b bVar = androidx.compose.foundation.layout.b.f2527a;
            androidx.compose.ui.layout.t tVarA = androidx.compose.foundation.layout.i.a(bVar.d(), aVar2.i(), iVar, 0);
            int iA2 = androidx.compose.runtime.g.a(iVar, 0);
            androidx.compose.runtime.s sVarN2 = iVar.n();
            androidx.compose.ui.f fVarE2 = ComposedModifierKt.e(iVar, aVar);
            Function0 function0A2 = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A2);
            } else {
                iVar.o();
            }
            androidx.compose.runtime.i iVarA2 = f3.a(iVar);
            f3.b(iVarA2, tVarA, companion.c());
            f3.b(iVarA2, sVarN2, companion.e());
            Function2 function2B2 = companion.b();
            if (iVarA2.e() || !Intrinsics.c(iVarA2.y(), Integer.valueOf(iA2))) {
                iVarA2.p(Integer.valueOf(iA2));
                iVarA2.k(Integer.valueOf(iA2), function2B2);
            }
            f3.b(iVarA2, fVarE2, companion.d());
            final androidx.compose.foundation.layout.l lVar = androidx.compose.foundation.layout.l.f2551a;
            float f10 = 12;
            androidx.compose.ui.f fVarF = PaddingKt.f(aVar, o0.i.g(16), o0.i.g(f10));
            androidx.compose.ui.layout.t tVarB = a0.b(bVar.c(), aVar2.j(), iVar, 0);
            int iA3 = androidx.compose.runtime.g.a(iVar, 0);
            androidx.compose.runtime.s sVarN3 = iVar.n();
            androidx.compose.ui.f fVarE3 = ComposedModifierKt.e(iVar, fVarF);
            Function0 function0A3 = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A3);
            } else {
                iVar.o();
            }
            androidx.compose.runtime.i iVarA3 = f3.a(iVar);
            f3.b(iVarA3, tVarB, companion.c());
            f3.b(iVarA3, sVarN3, companion.e());
            Function2 function2B3 = companion.b();
            if (iVarA3.e() || !Intrinsics.c(iVarA3.y(), Integer.valueOf(iA3))) {
                iVarA3.p(Integer.valueOf(iA3));
                iVarA3.k(Integer.valueOf(iA3), function2B3);
            }
            f3.b(iVarA3, fVarE3, companion.d());
            d0 d0Var = d0.f2540a;
            androidx.compose.ui.text.font.s sVarB = androidx.compose.ui.text.font.h.f5815b.b();
            androidx.compose.ui.text.font.p pVarE = androidx.compose.ui.text.font.p.f5840b.e();
            int iB = androidx.compose.ui.text.style.p.f6133a.b();
            TextKt.a(str, b0.a(d0Var, SizeKt.l(aVar, o0.i.g(0)), 1.0f, false, 2, null), u1.f4349b.f(), x.c(18), null, pVarE, sVarB, 0L, null, null, 0L, iB, false, 0, 0, null, null, iVar, 200064, 48, 128912);
            e0.a(SizeKt.l(aVar, o0.i.g(f10)), iVar, 6);
            Painter painterC = i0.e.c(R$drawable.music_iv_close, iVar, 0);
            long jA = i0.b.a(R$color.white, iVar, 0);
            float f11 = 21;
            androidx.compose.ui.f fVarE4 = SizeKt.e(SizeKt.l(aVar, o0.i.g(f11)), o0.i.g(f11));
            iVar.P(5004770);
            boolean zO = iVar.O(function1);
            Object objY = iVar.y();
            if (zO || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new Function0() {
                    @Override
                    public final Object invoke() {
                        return w.a.d(function1);
                    }
                };
                iVar.p(objY);
            }
            iVar.K();
            IconKt.a(painterC, MRAIDPresenter.OPEN, ClickableKt.d(fVarE4, false, null, null, (Function0) objY, 7, null), jA, iVar, 48, 0);
            iVar.r();
            DividerKt.a(null, o0.i.g(1), i0.b.a(R$color.white_10, iVar, 0), iVar, 48, 1);
            e0.a(SizeKt.e(aVar, o0.i.g(23)), iVar, 6);
            androidx.compose.ui.f fVarD = SizeKt.d(androidx.compose.foundation.layout.j.a(lVar, aVar, 1.0f, false, 2, null), 0.0f, 1, null);
            iVar.P(-1746271574);
            boolean zA = iVar.A(item) | iVar.O(function1);
            Object objY2 = iVar.y();
            if (zA || objY2 == androidx.compose.runtime.i.f3427a.a()) {
                objY2 = new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return w.a.e(item, lVar, function1, (androidx.compose.foundation.lazy.u) obj);
                    }
                };
                iVar.p(objY2);
            }
            iVar.K();
            LazyDslKt.a(fVarD, null, null, false, null, null, null, false, (Function1) objY2, iVar, 0, 254);
            e0.a(SizeKt.e(aVar, o0.i.g(40)), iVar, 6);
            iVar.r();
            iVar.r();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            c((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
            return Unit.f64096a;
        }
    }

    public static final void e(final Item filterItem, final String title, final Function1 dismiss, androidx.compose.runtime.i iVar, final int i10) {
        int i11;
        androidx.compose.runtime.i iVar2;
        Intrinsics.h(filterItem, "filterItem");
        Intrinsics.h(title, "title");
        Intrinsics.h(dismiss, "dismiss");
        androidx.compose.runtime.i iVarG = iVar.g(666133991);
        if ((i10 & 6) == 0) {
            i11 = (iVarG.A(filterItem) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            i11 |= iVarG.O(title) ? 32 : 16;
        }
        if ((i10 & 384) == 0) {
            i11 |= iVarG.A(dismiss) ? 256 : 128;
        }
        if ((i11 & 147) == 146 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(666133991, i11, -1, "com.transsion.home.view.filter.popup.SingleSelectFilter (SingleFilterPopupWindow.kt:44)");
            }
            final com.google.accompanist.systemuicontroller.c cVarE = SystemUiControllerKt.e(null, iVarG, 0, 1);
            final long jA = i0.b.a(R$color.black_80, iVarG, 0);
            Handler handler = new Handler(Looper.getMainLooper());
            iVarG.P(-1633490746);
            boolean zO = iVarG.O(cVarE) | iVarG.d(jA);
            Object objY = iVarG.y();
            if (zO || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new Runnable() {
                    @Override
                    public final void run() {
                        w.f(cVarE, jA);
                    }
                };
                iVarG.p(objY);
            }
            iVarG.K();
            handler.postDelayed((Runnable) objY, 100L);
            iVarG.P(-1633490746);
            boolean zO2 = iVarG.O(cVarE) | ((i11 & 896) == 256);
            Object objY2 = iVarG.y();
            if (zO2 || objY2 == androidx.compose.runtime.i.f3427a.a()) {
                objY2 = new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return w.g(cVarE, dismiss, (String) obj);
                    }
                };
                iVarG.p(objY2);
            }
            final Function1 function1 = (Function1) objY2;
            iVarG.K();
            iVarG.P(5004770);
            boolean zO3 = iVarG.O(function1);
            Object objY3 = iVarG.y();
            if (zO3 || objY3 == androidx.compose.runtime.i.f3427a.a()) {
                objY3 = new Function0() {
                    @Override
                    public final Object invoke() {
                        return w.h(function1);
                    }
                };
                iVarG.p(objY3);
            }
            iVarG.K();
            iVar2 = iVarG;
            AndroidDialog_androidKt.a((Function0) objY3, new androidx.compose.ui.window.c(false, false, false, 3, (DefaultConstructorMarker) null), androidx.compose.runtime.internal.b.d(-800641360, true, new a(jA, filterItem, function1, title), iVarG, 54), iVarG, 432, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return w.i(filterItem, title, dismiss, i10, (androidx.compose.runtime.i) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void f(com.google.accompanist.systemuicontroller.c cVar, long j10) {
        com.google.accompanist.systemuicontroller.b.b(cVar, j10, false, false, null, 14, null);
    }

    public static final Unit g(com.google.accompanist.systemuicontroller.c cVar, Function1 function1, String str) {
        com.google.accompanist.systemuicontroller.b.b(cVar, u1.f4349b.d(), false, false, null, 14, null);
        function1.invoke(str);
        return Unit.f64096a;
    }

    public static final Unit h(Function1 function1) {
        function1.invoke(null);
        return Unit.f64096a;
    }

    public static final Unit i(Item item, String str, Function1 function1, int i10, androidx.compose.runtime.i iVar, int i11) {
        e(item, str, function1, iVar, v1.a(i10 | 1));
        return Unit.f64096a;
    }
}
