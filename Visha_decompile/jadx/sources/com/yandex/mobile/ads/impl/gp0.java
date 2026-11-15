package com.yandex.mobile.ads.impl;

import com.google.android.gms.ads.OutOfContextTestingActivity;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.yandex.mobile.ads.R;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.ui.viewmodel.IntegrationInspectorViewModel$updateData$1", f = "IntegrationInspectorViewModel.kt", l = {108, 109, 111, 115}, m = "invokeSuspend")
final class gp0 extends SuspendLambda implements s74 {
    fx b;
    Object c;
    int d;
    final fp0 e;
    final boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gp0(fp0 fp0Var, boolean z, defpackage.wh1<? super gp0> wh1Var) {
        super(2, wh1Var);
        this.e = fp0Var;
        this.f = z;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        return new gp0(this.e, this.f, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return new gp0(this.e, this.f, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00fc A[LOOP:1: B:33:0x00f6->B:35:0x00fc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x0154  */
    /* JADX WARN: Code duplicated, block: B:50:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:52:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:54:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:56:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:59:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:60:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:62:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:63:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:77:0x0245  */
    /* JADX WARN: Code duplicated, block: B:79:0x026c  */
    /* JADX WARN: Code duplicated, block: B:82:0x027c  */
    /* JADX WARN: Code duplicated, block: B:94:0x0216 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    @Override
    public final Object invokeSuspend(Object obj) {
        fx fxVarA;
        Object objA;
        fx fxVar;
        Object objA2;
        Object objA3;
        la laVar;
        Object objA4;
        kx kxVar;
        kw kwVar;
        List listC;
        mw.a aVarF;
        sw swVar;
        mw.a aVarF2;
        mw.a.b bVar;
        List<ly> listA;
        rw rwVar;
        List listC2;
        String strB;
        String strC;
        Object objF = z45.f();
        int i = this.d;
        ?? A = 0;
        A = 0;
        if (i == 0) {
            kotlin.c.b(obj);
            fxVarA = ((gy) this.e.m.getValue()).a();
            if (((gy) this.e.m.getValue()).c().isEmpty() || this.f) {
                fp0 fp0Var = this.e;
                fp0.a(fp0Var, gy.a((gy) fp0Var.m.getValue(), null, null, true, null, 11));
            }
            if (fxVarA instanceof fx.d) {
                kx kxVar2 = this.e.h;
                me0 me0Var = this.e.d;
                boolean z = this.f;
                this.b = fxVarA;
                this.c = kxVar2;
                this.d = 1;
                objA4 = me0Var.a(z, this);
                if (objA4 == objF) {
                    return objF;
                }
                kxVar = kxVar2;
                A = kxVar.a((ix) objA4);
            } else if (fxVarA instanceof fx.c) {
                la laVar2 = this.e.i;
                le0 le0Var = this.e.e;
                boolean z2 = this.f;
                this.b = fxVarA;
                this.c = laVar2;
                this.d = 2;
                objA3 = le0Var.a(z2, this);
                if (objA3 == objF) {
                    return objF;
                }
                laVar = laVar2;
                pw pwVar = (pw) objA3;
                laVar.getClass();
                y45.j(pwVar, "adUnits");
                List<jw> listA2 = pwVar.a();
                A = new ArrayList(defpackage.z71.v(listA2, 10));
                for (jw jwVar : listA2) {
                    A.add(new iy.a(jwVar.c(), jwVar.b(), jwVar.a()));
                }
            } else if (fxVarA instanceof fx.b) {
                fa faVar = this.e.k;
                iy.g gVarB = ((fx.b) fxVarA).b();
                faVar.getClass();
                A = fa.a(gVarB);
            } else if (fxVarA instanceof fx.a) {
                ke0 ke0Var = this.e.f;
                String strB2 = ((fx.a) fxVarA).b();
                boolean z3 = this.f;
                this.b = fxVarA;
                this.d = 3;
                objA2 = ke0Var.a(strB2, z3, this);
                if (objA2 == objF) {
                    return objF;
                }
                fxVar = fxVarA;
                kwVar = (kw) objA2;
                if (kwVar != null) {
                    this.e.j.getClass();
                    y45.j(kwVar, OutOfContextTestingActivity.AD_UNIT_KEY);
                    listC = defpackage.x71.c();
                    listC.add(iy.d.a);
                    listC.add(new iy.e(kwVar.d()));
                    listC.add(new iy.f("Format", kwVar.b()));
                    listC.add(new iy.f(DataTypes.OBJ_ID, kwVar.a()));
                    for (mw mwVar : kwVar.c().a()) {
                        aVarF = mwVar.f();
                        if (aVarF instanceof mw.a.C0323a) {
                            swVar = sw.c;
                        } else {
                            if (aVarF instanceof mw.a.b) {
                                throw new NoWhenBranchMatchedException();
                            }
                            swVar = sw.d;
                        }
                        sw swVar2 = swVar;
                        aVarF2 = mwVar.f();
                        if (aVarF2 instanceof mw.a.b) {
                            bVar = (mw.a.b) aVarF2;
                        } else {
                            bVar = null;
                        }
                        if (bVar != null) {
                            listA = bVar.a();
                        } else {
                            listA = null;
                        }
                        listC.add(new iy.g(mwVar.b(), mwVar.c(), new cy("Mediation", R.attr.debug_panel_label_secondary, null, R.style.DebugPanelText_Body2, 4), new zw(R.attr.debug_panel_label_primary, R.style.DebugPanelText_Body1, swVar2.a()), null, mwVar.a(), mwVar.d(), mwVar.e(), listA, swVar2, null, 1024));
                    }
                    A = defpackage.x71.a(listC);
                }
                fxVarA = fxVar;
            } else {
                if (!(fxVarA instanceof fx.e)) {
                    throw new NoWhenBranchMatchedException();
                }
                oe0 oe0Var = this.e.g;
                String strB3 = ((fx.e) fxVarA).b();
                boolean z4 = this.f;
                this.b = fxVarA;
                this.d = 4;
                objA = oe0Var.a(strB3, z4, this);
                if (objA == objF) {
                    return objF;
                }
                fxVar = fxVarA;
                rwVar = (rw) objA;
                if (rwVar != null) {
                    this.e.l.getClass();
                    y45.j(rwVar, "mediationNetworkData");
                    listC2 = defpackage.x71.c();
                    listC2.add(iy.d.a);
                    listC2.add(new iy.e("Integration"));
                    strB = rwVar.b();
                    if (strB != null) {
                        listC2.add(new iy.f("Adapter Version", strB));
                    }
                    strC = rwVar.c();
                    if (strC != null) {
                        listC2.add(new iy.f("Latest Adapter Version", strC));
                    }
                    iy.c.a aVar = iy.c.a.TEST_MODE;
                    listC2.add(new iy.c());
                    A = defpackage.x71.a(listC2);
                }
                fxVarA = fxVar;
            }
        } else if (i == 1) {
            kxVar = (kx) this.c;
            fxVarA = this.b;
            kotlin.c.b(obj);
            objA4 = obj;
            A = kxVar.a((ix) objA4);
        } else if (i == 2) {
            laVar = (la) this.c;
            fxVarA = this.b;
            kotlin.c.b(obj);
            objA3 = obj;
            pw pwVar2 = (pw) objA3;
            laVar.getClass();
            y45.j(pwVar2, "adUnits");
            List<jw> listA3 = pwVar2.a();
            A = new ArrayList(defpackage.z71.v(listA3, 10));
            while (r1.hasNext()) {
                A.add(new iy.a(jwVar.c(), jwVar.b(), jwVar.a()));
            }
        } else if (i == 3) {
            fxVar = this.b;
            kotlin.c.b(obj);
            objA2 = obj;
            kwVar = (kw) objA2;
            if (kwVar != null) {
                this.e.j.getClass();
                y45.j(kwVar, OutOfContextTestingActivity.AD_UNIT_KEY);
                listC = defpackage.x71.c();
                listC.add(iy.d.a);
                listC.add(new iy.e(kwVar.d()));
                listC.add(new iy.f("Format", kwVar.b()));
                listC.add(new iy.f(DataTypes.OBJ_ID, kwVar.a()));
                while (r3.hasNext()) {
                    aVarF = mwVar.f();
                    if (aVarF instanceof mw.a.C0323a) {
                        swVar = sw.c;
                    } else {
                        if (aVarF instanceof mw.a.b) {
                            throw new NoWhenBranchMatchedException();
                        }
                        swVar = sw.d;
                    }
                    sw swVar3 = swVar;
                    aVarF2 = mwVar.f();
                    if (aVarF2 instanceof mw.a.b) {
                        bVar = (mw.a.b) aVarF2;
                    } else {
                        bVar = null;
                    }
                    if (bVar != null) {
                        listA = bVar.a();
                    } else {
                        listA = null;
                    }
                    listC.add(new iy.g(mwVar.b(), mwVar.c(), new cy("Mediation", R.attr.debug_panel_label_secondary, null, R.style.DebugPanelText_Body2, 4), new zw(R.attr.debug_panel_label_primary, R.style.DebugPanelText_Body1, swVar3.a()), null, mwVar.a(), mwVar.d(), mwVar.e(), listA, swVar3, null, 1024));
                }
                A = defpackage.x71.a(listC);
            }
            fxVarA = fxVar;
        } else {
            if (i != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fxVar = this.b;
            kotlin.c.b(obj);
            objA = obj;
            rwVar = (rw) objA;
            if (rwVar != null) {
                this.e.l.getClass();
                y45.j(rwVar, "mediationNetworkData");
                listC2 = defpackage.x71.c();
                listC2.add(iy.d.a);
                listC2.add(new iy.e("Integration"));
                strB = rwVar.b();
                if (strB != null) {
                    listC2.add(new iy.f("Adapter Version", strB));
                }
                strC = rwVar.c();
                if (strC != null) {
                    listC2.add(new iy.f("Latest Adapter Version", strC));
                }
                iy.c.a aVar2 = iy.c.a.TEST_MODE;
                listC2.add(new iy.c());
                A = defpackage.x71.a(listC2);
            }
            fxVarA = fxVar;
        }
        if (A == 0) {
            fp0.m(this.e);
        } else if (y45.e(fxVarA, ((gy) this.e.m.getValue()).a())) {
            fp0.a(this.e, gy.a((gy) this.e.m.getValue(), null, null, false, A, 3));
        }
        return zfb.a;
    }
}
