package com.transsion.payment.lib.strategy;

import android.app.Activity;
import android.app.Application;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.b0;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.j;
import com.android.billingclient.api.n;
import com.android.billingclient.api.r;
import com.android.billingclient.api.s;
import com.android.billingclient.api.u;
import com.android.billingclient.api.v;
import com.android.billingclient.api.w;
import com.android.billingclient.api.x;
import com.blankj.utilcode.util.Utils;
import com.transsion.payment.lib.PayUtils;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.CreateOrderReq;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;
import retrofit2.HttpException;
import retrofit2.j0;
import yg.k;
import yg.m;

public final class GoogleStrategy implements g, m {

    private final b0 f45917a = new b0();

    private final HashSet f45918b;

    private final HashSet f45919c;

    private final int f45920d;

    private int f45921e;

    private int f45922f;

    private boolean f45923g;

    private boolean f45924h;

    private n0 f45925i;

    private com.transsion.payment.lib.b f45926j;

    private final v f45927k;

    private final com.android.billingclient.api.h f45928l;

    private final Lazy f45929m;

    private long f45930n;

    public GoogleStrategy() {
        HashSet hashSet = new HashSet();
        this.f45918b = hashSet;
        HashSet hashSet2 = new HashSet();
        this.f45919c = hashSet2;
        k.f76255g.a().D(this);
        hashSet.add(3);
        hashSet.add(5);
        hashSet.add(-2);
        hashSet.add(7);
        hashSet2.add(4);
        hashSet2.add(-3);
        hashSet2.add(6);
        hashSet2.add(-1);
        hashSet2.add(2);
        hashSet2.add(12);
        this.f45920d = 3;
        this.f45922f = 2000;
        this.f45925i = o0.a(y0.b());
        v vVar = new v() {
            @Override
            public final void a(n nVar, List list) {
                GoogleStrategy.F(this.f45938a, nVar, list);
            }
        };
        this.f45927k = vVar;
        com.android.billingclient.api.h hVarA = com.android.billingclient.api.h.c(Utils.a()).c(vVar).b().a();
        Intrinsics.g(hVarA, "build(...)");
        this.f45928l = hVarA;
        this.f45929m = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return GoogleStrategy.E();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00fa A[Catch: all -> 0x00f4, TryCatch #2 {all -> 0x00f4, blocks: (B:70:0x0131, B:56:0x00f6, B:58:0x00fa, B:59:0x00fd, B:61:0x0101, B:62:0x0108, B:51:0x00ed, B:63:0x0112, B:66:0x0122, B:68:0x012c, B:69:0x012f), top: B:101:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0101 A[Catch: all -> 0x00f4, TryCatch #2 {all -> 0x00f4, blocks: (B:70:0x0131, B:56:0x00f6, B:58:0x00fa, B:59:0x00fd, B:61:0x0101, B:62:0x0108, B:51:0x00ed, B:63:0x0112, B:66:0x0122, B:68:0x012c, B:69:0x012f), top: B:101:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0149  */
    /* JADX WARN: Code duplicated, block: B:78:0x014d  */
    /* JADX WARN: Code duplicated, block: B:80:0x0151  */
    /* JADX WARN: Code duplicated, block: B:82:0x015a  */
    /* JADX WARN: Code duplicated, block: B:83:0x0163  */
    /* JADX WARN: Code duplicated, block: B:86:0x016a  */
    /* JADX WARN: Code duplicated, block: B:87:0x0170  */
    /* JADX WARN: Code duplicated, block: B:89:0x017a  */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX WARN: Code duplicated, block: B:91:0x017e  */
    /* JADX WARN: Failed to calculate best type for var: r3v9 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v9 ??, new type: com.transsion.payment.lib.b
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryInsertAdditionalMove(FixTypesVisitor.java:681)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v9 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v9 ??, new type: com.transsion.payment.lib.b
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v9 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v9 ??, new type: com.transsion.payment.lib.b
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryInsertAdditionalMove(FixTypesVisitor.java:678)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v9 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v9 ??, new type: com.transsion.payment.lib.b
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v9 com.transsion.payment.lib.b, new type: com.transsion.payment.lib.b
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.applyResolvedVars(TypeSearch.java:100)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:76)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.runMultiVariableSearch(FixTypesVisitor.java:119)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object B(Purchase purchase, Continuation continuation) {
        GoogleStrategy$handlePurchase$1 googleStrategy$handlePurchase$1;
        com.transsion.payment.lib.b bVar;
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        com.transsion.payment.lib.b bVar2;
        com.transsion.payment.lib.b bVar3;
        j0<?> j0VarResponse;
        Integer numD;
        j0<?> j0VarResponse2;
        String strF;
        String strA;
        com.android.billingclient.api.a aVarA;
        List listD;
        com.transsion.payment.lib.b bVar4;
        com.transsion.payment.lib.b bVar5;
        if (continuation instanceof GoogleStrategy$handlePurchase$1) {
            googleStrategy$handlePurchase$1 = (GoogleStrategy$handlePurchase$1) continuation;
            int i10 = googleStrategy$handlePurchase$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                googleStrategy$handlePurchase$1.label = i10 - Integer.MIN_VALUE;
            } else {
                googleStrategy$handlePurchase$1 = new GoogleStrategy$handlePurchase$1(this, continuation);
            }
        } else {
            googleStrategy$handlePurchase$1 = new GoogleStrategy$handlePurchase$1(this, continuation);
        }
        GoogleStrategy$handlePurchase$1 googleStrategy$handlePurchase$2 = googleStrategy$handlePurchase$1;
        Object obj = googleStrategy$handlePurchase$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = googleStrategy$handlePurchase$2.label;
        try {
            try {
                if (i11 == 0) {
                    ResultKt.b(obj);
                    Result.Companion companion = Result.INSTANCE;
                    String strG = purchase != null ? purchase.g() : null;
                    String str = (purchase == null || (listD = purchase.d()) == null) ? null : (String) listD.get(0);
                    strA = (purchase == null || (aVarA = purchase.a()) == null) ? null : aVarA.a();
                    String strB = purchase != null ? purchase.b() : null;
                    if (TextUtils.isEmpty(strG) || TextUtils.isEmpty(str) || TextUtils.isEmpty(strA) || purchase == null || purchase.e() != 1) {
                        bVar = null;
                        com.transsion.payment.lib.d.f45901a.b("handlePurchase 失败");
                        com.transsion.payment.lib.b bVar6 = this.f45926j;
                        if (bVar6 != null) {
                            bVar6.a(purchase != null ? Boxing.d(purchase.e()) : null, "", false, strA);
                        }
                        this.f45926j = null;
                    } else {
                        com.transsion.payment.lib.d.f45901a.a("handlePurchase 支付结果 orderId:" + strA + " purchaseToken " + strG + " productId " + str + " gpOrderId " + strB);
                        try {
                            PayUtils payUtils = PayUtils.f45890a;
                            GoogleStrategy$handlePurchase$2$1 googleStrategy$handlePurchase$2$1 = new GoogleStrategy$handlePurchase$2$1(this, str, strG, strA, strB, null);
                            googleStrategy$handlePurchase$2.L$0 = strA;
                            googleStrategy$handlePurchase$2.label = 1;
                            bVar = null;
                            try {
                                if (PayUtils.b(payUtils, 0L, 0, googleStrategy$handlePurchase$2$1, googleStrategy$handlePurchase$2, 3, null) == objF) {
                                    return objF;
                                }
                            } catch (Exception unused) {
                                bVar4 = this.f45926j;
                                if (bVar4 != null) {
                                    bVar4.b(false);
                                }
                                bVar5 = this.f45926j;
                                if (bVar5 != 0) {
                                    bVar5.a(Boxing.d(-30), "", r12, strA);
                                }
                                this.f45926j = bVar;
                                com.transsion.payment.lib.d.f45901a.b("handlePurchase 发货进行中ing");
                            }
                        } catch (Exception unused2) {
                            bVar = null;
                            bVar4 = this.f45926j;
                            if (bVar4 != null) {
                                bVar4.b(false);
                            }
                            bVar5 = this.f45926j;
                            if (bVar5 != 0) {
                                bVar5.a(Boxing.d(-30), "", r12, strA);
                            }
                            this.f45926j = bVar;
                            com.transsion.payment.lib.d.f45901a.b("handlePurchase 发货进行中ing");
                            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                            thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                            if (thM456exceptionOrNullimpl != null) {
                                if (thM456exceptionOrNullimpl instanceof HttpException) {
                                    bVar3 = this.f45926j;
                                    if (bVar3 != null) {
                                        HttpException httpException = (HttpException) thM456exceptionOrNullimpl;
                                        j0VarResponse = httpException.response();
                                        if (j0VarResponse != null) {
                                            numD = Boxing.d(j0VarResponse.b());
                                        } else {
                                            numD = bVar;
                                        }
                                        j0VarResponse2 = httpException.response();
                                        if (j0VarResponse2 != null) {
                                            strF = j0VarResponse2.f();
                                        } else {
                                            strF = bVar;
                                        }
                                        com.transsion.payment.lib.b.a.a(bVar3, numD, strF, false, null, 8, null);
                                    }
                                } else {
                                    bVar2 = this.f45926j;
                                    if (bVar2 != null) {
                                        com.transsion.payment.lib.b.a.a(bVar2, Boxing.d(-30), thM456exceptionOrNullimpl.getMessage(), false, null, 8, null);
                                    }
                                }
                                com.transsion.payment.lib.d.f45901a.b("throwable " + thM456exceptionOrNullimpl);
                                this.f45926j = bVar;
                            }
                            return Unit.f64096a;
                        }
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    String str2 = (String) googleStrategy$handlePurchase$2.L$0;
                    try {
                        ResultKt.b(obj);
                        bVar = null;
                    } catch (Exception unused3) {
                        strA = str2;
                        bVar = null;
                        bVar4 = this.f45926j;
                        if (bVar4 != null) {
                            bVar4.b(false);
                        }
                        bVar5 = this.f45926j;
                        if (bVar5 != 0) {
                            bVar5.a(Boxing.d(-30), "", r12, strA);
                        }
                        this.f45926j = bVar;
                        com.transsion.payment.lib.d.f45901a.b("handlePurchase 发货进行中ing");
                    }
                }
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                th = th2;
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
            }
        } catch (Throwable th3) {
            th = th3;
            bVar = null;
            Result.Companion companion3 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
        }
        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            if (thM456exceptionOrNullimpl instanceof HttpException) {
                bVar3 = this.f45926j;
                if (bVar3 != null) {
                    HttpException httpException2 = (HttpException) thM456exceptionOrNullimpl;
                    j0VarResponse = httpException2.response();
                    if (j0VarResponse != null) {
                        numD = Boxing.d(j0VarResponse.b());
                    } else {
                        numD = bVar;
                    }
                    j0VarResponse2 = httpException2.response();
                    if (j0VarResponse2 != null) {
                        strF = j0VarResponse2.f();
                    } else {
                        strF = bVar;
                    }
                    com.transsion.payment.lib.b.a.a(bVar3, numD, strF, false, null, 8, null);
                }
            } else {
                bVar2 = this.f45926j;
                if (bVar2 != null) {
                    com.transsion.payment.lib.b.a.a(bVar2, Boxing.d(-30), thM456exceptionOrNullimpl.getMessage(), false, null, 8, null);
                }
            }
            com.transsion.payment.lib.d.f45901a.b("throwable " + thM456exceptionOrNullimpl);
            this.f45926j = bVar;
        }
        return Unit.f64096a;
    }

    public static final void D(GoogleStrategy googleStrategy, n billingResult, List purchaseList) {
        Intrinsics.h(billingResult, "billingResult");
        Intrinsics.h(purchaseList, "purchaseList");
        kotlinx.coroutines.k.d(googleStrategy.f45925i, null, null, new GoogleStrategy$orderCheck$1$1(purchaseList, googleStrategy, null), 3, null);
    }

    public static final PaymentService E() {
        return new PaymentService();
    }

    public static final void F(GoogleStrategy googleStrategy, n billingResult, List list) {
        Intrinsics.h(billingResult, "billingResult");
        com.transsion.payment.lib.d dVar = com.transsion.payment.lib.d.f45901a;
        dVar.a("PurchasesUpdatedListener responseCode:" + billingResult.b() + " " + (list != null ? Integer.valueOf(list.size()) : null));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("purchases: ");
        sb2.append(list);
        dVar.a(sb2.toString());
        if (billingResult.b() == 0 && list != null) {
            googleStrategy.f45921e = 0;
            com.transsion.payment.lib.b bVar = googleStrategy.f45926j;
            if (bVar != null) {
                bVar.b(true);
            }
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new GoogleStrategy$purchasesUpdatedListener$1$1(list, googleStrategy, null), 3, null);
            return;
        }
        if (billingResult.b() != 1) {
            com.transsion.payment.lib.b bVar2 = googleStrategy.f45926j;
            if (bVar2 != null) {
                com.transsion.payment.lib.b.a.a(bVar2, Integer.valueOf(billingResult.b()), billingResult.a(), false, null, 8, null);
            }
            googleStrategy.f45926j = null;
            return;
        }
        dVar.a("PurchasesUpdatedListener USER_CANCELED");
        com.transsion.payment.lib.b bVar3 = googleStrategy.f45926j;
        if (bVar3 != null) {
            com.transsion.payment.lib.b.a.a(bVar3, 1, "User Cancelled", false, null, 8, null);
        }
        googleStrategy.f45926j = null;
    }

    public final void G(final Activity activity, String str, final String str2, final boolean z10, final com.transsion.payment.lib.b bVar) {
        w.b bVarA = w.b.a().b(str).c(z10 ? "subs" : "inapp").a();
        Intrinsics.g(bVarA, "build(...)");
        w wVarA = w.a().b(CollectionsKt.q(bVarA)).a();
        Intrinsics.g(wVarA, "build(...)");
        this.f45928l.d(wVarA, new s() {
            @Override
            public final void a(n nVar, List list) {
                GoogleStrategy.H(z10, str2, this, bVar, activity, nVar, list);
            }
        });
    }

    public static final void H(boolean z10, String str, GoogleStrategy googleStrategy, com.transsion.payment.lib.b bVar, Activity activity, n billingResult, List productDetailsList) {
        String strA;
        r.d dVar;
        Intrinsics.h(billingResult, "billingResult");
        Intrinsics.h(productDetailsList, "productDetailsList");
        com.transsion.payment.lib.d dVar2 = com.transsion.payment.lib.d.f45901a;
        dVar2.a("queryProductDetailsAsync resultCode: " + billingResult.b() + " result size: " + productDetailsList.size());
        if (productDetailsList.size() <= 0) {
            bVar.a(Integer.valueOf(billingResult.b()), billingResult.a(), false, str);
            dVar2.b("queryProductDetailsAsync failed list: " + productDetailsList + ", code: " + billingResult.b() + ", message: " + billingResult.a());
            return;
        }
        r rVar = (r) productDetailsList.get(0);
        if (rVar == null) {
            dVar2.b("billingFlowParams productDetail null");
            bVar.a(Integer.valueOf(billingResult.b()), billingResult.a(), false, str);
            return;
        }
        ArrayList arrayList = new ArrayList();
        dVar2.a("productDetail is " + rVar);
        com.android.billingclient.api.m.b.a aVarC = com.android.billingclient.api.m.b.a().c(rVar);
        Intrinsics.g(aVarC, "setProductDetails(...)");
        if (z10) {
            List listD = rVar.d();
            if (listD == null || (dVar = (r.d) CollectionsKt.i0(listD)) == null || (strA = dVar.a()) == null) {
                strA = "";
            }
            aVarC.b(strA);
        }
        com.android.billingclient.api.m.b bVarA = aVarC.a();
        Intrinsics.g(bVarA, "build(...)");
        arrayList.add(bVarA);
        com.android.billingclient.api.m mVarA = com.android.billingclient.api.m.a().c(arrayList).b(str).a();
        Intrinsics.g(mVarA, "build(...)");
        googleStrategy.f45926j = bVar;
        dVar2.a("Launch billing flow");
        googleStrategy.f45928l.b(activity, mVarA);
    }

    public static final Unit I(GoogleStrategy googleStrategy, AppCompatActivity appCompatActivity, CreateOrderReq createOrderReq, boolean z10, com.transsion.payment.lib.b bVar) {
        googleStrategy.a(appCompatActivity, createOrderReq, z10, bVar);
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0071 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x006f -> B:17:0x0044). Please report as a decompilation issue!!! */
    public final Object J(long j10, Function1 function1, Continuation continuation) {
        GoogleStrategy$retryCheck$1 googleStrategy$retryCheck$1;
        int i10;
        if (continuation instanceof GoogleStrategy$retryCheck$1) {
            googleStrategy$retryCheck$1 = (GoogleStrategy$retryCheck$1) continuation;
            int i11 = googleStrategy$retryCheck$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                googleStrategy$retryCheck$1.label = i11 - Integer.MIN_VALUE;
            } else {
                googleStrategy$retryCheck$1 = new GoogleStrategy$retryCheck$1(this, continuation);
            }
        } else {
            googleStrategy$retryCheck$1 = new GoogleStrategy$retryCheck$1(this, continuation);
        }
        Object obj = googleStrategy$retryCheck$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = googleStrategy$retryCheck$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                j10 = googleStrategy$retryCheck$1.J$0;
                function1 = (Function1) googleStrategy$retryCheck$1.L$0;
                ResultKt.b(obj);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j10 = googleStrategy$retryCheck$1.J$0;
                function1 = (Function1) googleStrategy$retryCheck$1.L$0;
            }
            googleStrategy$retryCheck$1.L$0 = function1;
            googleStrategy$retryCheck$1.J$0 = j10;
            googleStrategy$retryCheck$1.label = 2;
            if (function1.invoke(googleStrategy$retryCheck$1) == objF) {
                return objF;
            }
            i10 = this.f45921e;
            this.f45921e = i10 + 1;
            if (i10 < this.f45920d || this.f45924h) {
                return Unit.f64096a;
            }
            if (j10 > 0) {
                googleStrategy$retryCheck$1.L$0 = function1;
                googleStrategy$retryCheck$1.J$0 = j10;
                googleStrategy$retryCheck$1.label = 1;
                if (u0.a(j10, googleStrategy$retryCheck$1) == objF) {
                    return objF;
                }
            }
            googleStrategy$retryCheck$1.L$0 = function1;
            googleStrategy$retryCheck$1.J$0 = j10;
            googleStrategy$retryCheck$1.label = 2;
            if (function1.invoke(googleStrategy$retryCheck$1) == objF) {
                return objF;
            }
            i10 = this.f45921e;
            this.f45921e = i10 + 1;
            if (i10 < this.f45920d) {
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        i10 = this.f45921e;
        this.f45921e = i10 + 1;
        if (i10 < this.f45920d) {
        }
        return Unit.f64096a;
    }

    private final void K() {
        com.android.billingclient.api.h hVar = this.f45928l;
        if (hVar == null || hVar.a()) {
            return;
        }
        g.a.b(this, null, null, new Function0() {
            @Override
            public final Object invoke() {
                return GoogleStrategy.L(this.f45939a);
            }
        }, 3, null);
    }

    public static final Unit L(GoogleStrategy googleStrategy) {
        List list;
        if (googleStrategy.f45917a.f() == null || ((list = (List) googleStrategy.f45917a.f()) != null && list.isEmpty())) {
            googleStrategy.w();
        }
        return Unit.f64096a;
    }

    public final PaymentService z() {
        return (PaymentService) this.f45929m.getValue();
    }

    public final long A() {
        return this.f45930n;
    }

    public void C() {
        x.a aVarB = x.a().b("inapp");
        Intrinsics.g(aVarB, "setProductType(...)");
        this.f45928l.e(aVarB.a(), new u() {
            @Override
            public final void a(n nVar, List list) {
                GoogleStrategy.D(this.f45945a, nVar, list);
            }
        });
    }

    @Override
    public void a(final AppCompatActivity activity, final CreateOrderReq createOrderReq, final boolean z10, final com.transsion.payment.lib.b payCallback) {
        Object objM453constructorimpl;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(createOrderReq, "createOrderReq");
        Intrinsics.h(payCallback, "payCallback");
        com.transsion.payment.lib.d.f45901a.a(x() + " --> requestPay() --> 请求接口创建订单....");
        payCallback.b(true);
        try {
            Result.Companion companion = Result.INSTANCE;
            if (!this.f45928l.a()) {
                b(Boolean.FALSE, payCallback, new Function0() {
                    @Override
                    public final Object invoke() {
                        return GoogleStrategy.I(this.f45940a, activity, createOrderReq, z10, payCallback);
                    }
                });
                return;
            }
            objM453constructorimpl = Result.m453constructorimpl(kotlinx.coroutines.k.d(this.f45925i, null, null, new GoogleStrategy$requestPay$1$2(this, createOrderReq, activity, z10, payCallback, null), 3, null));
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl == null) {
                return;
            }
            if (!(thM456exceptionOrNullimpl instanceof HttpException)) {
                com.transsion.payment.lib.b.a.a(payCallback, -10, thM456exceptionOrNullimpl.getMessage(), false, null, 8, null);
                return;
            }
            HttpException httpException = (HttpException) thM456exceptionOrNullimpl;
            j0<?> j0VarResponse = httpException.response();
            Integer numValueOf = j0VarResponse != null ? Integer.valueOf(j0VarResponse.b()) : null;
            j0<?> j0VarResponse2 = httpException.response();
            com.transsion.payment.lib.b.a.a(payCallback, numValueOf, j0VarResponse2 != null ? j0VarResponse2.f() : null, false, null, 8, null);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public void b(final Boolean bool, final com.transsion.payment.lib.b bVar, final Function0 function0) {
        if (this.f45923g) {
            return;
        }
        this.f45923g = true;
        com.transsion.payment.lib.d.f45901a.a("startBillingConnection start");
        this.f45930n = SystemClock.elapsedRealtime();
        this.f45928l.f(new j() {
            @Override
            public void a(n billingResult) {
                Intrinsics.h(billingResult, "billingResult");
                this.f45931a.f45923g = false;
                this.f45931a.f45924h = true;
                this.f45931a.f45921e = 0;
                if (billingResult.b() == 0) {
                    com.transsion.payment.lib.d.f45901a.a("content Billing response OK");
                    this.f45931a.w();
                    Function0 function1 = function0;
                    if (function1 != null) {
                        function1.invoke();
                    }
                    this.f45931a.C();
                    return;
                }
                if (!this.f45931a.y().contains(Integer.valueOf(billingResult.b()))) {
                    com.transsion.payment.lib.b bVar2 = bVar;
                    if (bVar2 != null) {
                        com.transsion.payment.lib.b.a.a(bVar2, Integer.valueOf(billingResult.b()), billingResult.a(), false, null, 8, null);
                        return;
                    }
                    return;
                }
                com.transsion.payment.lib.d.f45901a.c("connect error code " + billingResult.b() + " msg " + billingResult.a());
                long jElapsedRealtime = ((long) this.f45931a.f45922f) - (SystemClock.elapsedRealtime() - this.f45931a.A());
                if (!Intrinsics.c(bool, Boolean.TRUE)) {
                    com.transsion.payment.lib.b bVar3 = bVar;
                    if (bVar3 != null) {
                        com.transsion.payment.lib.b.a.a(bVar3, Integer.valueOf(billingResult.b()), billingResult.a(), false, null, 8, null);
                        return;
                    }
                    return;
                }
                if (this.f45931a.f45921e <= this.f45931a.f45920d) {
                    kotlinx.coroutines.k.d(this.f45931a.f45925i, null, null, new GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1(this.f45931a, jElapsedRealtime, function0, null), 3, null);
                    return;
                }
                com.transsion.payment.lib.b bVar4 = bVar;
                if (bVar4 != null) {
                    com.transsion.payment.lib.b.a.a(bVar4, Integer.valueOf(billingResult.b()), billingResult.a(), false, null, 8, null);
                }
            }

            @Override
            public void b() {
                this.f45931a.f45923g = false;
                this.f45931a.f45924h = false;
                com.transsion.payment.lib.d.f45901a.c("content Service disconnected");
                kotlinx.coroutines.k.d(this.f45931a.f45925i, null, null, new GoogleStrategy$startConnectPlatform$1$onBillingServiceDisconnected$1(this.f45931a, ((long) this.f45931a.f45922f) - (SystemClock.elapsedRealtime() - this.f45931a.A()), function0, null), 3, null);
            }
        });
    }

    @Override
    public void init(Application application) {
        Intrinsics.h(application, "application");
        k.f76255g.a().D(this);
    }

    @Override
    public void onConnected() {
        m.a.a(this);
    }

    @Override
    public void onDisconnected() {
    }

    public void w() {
        kotlinx.coroutines.k.d(this.f45925i, null, null, new GoogleStrategy$fetchSkuList$1(this, null), 3, null);
    }

    public String x() {
        return g.a.a(this);
    }

    public final HashSet y() {
        return this.f45919c;
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        K();
    }
}
