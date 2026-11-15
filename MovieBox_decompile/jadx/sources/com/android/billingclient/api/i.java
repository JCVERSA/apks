package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zzaf;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzin;
import com.google.android.gms.internal.play_billing.zzio;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;

class i extends h {
    private ExecutorService A;

    private volatile int f18444a;

    private final String f18445b;

    private final Handler f18446c;

    private volatile q1 f18447d;

    private Context f18448e;

    private n0 f18449f;

    private volatile com.google.android.gms.internal.play_billing.zzm f18450g;

    private volatile f0 f18451h;

    private boolean f18452i;

    private boolean f18453j;

    private int f18454k;

    private boolean f18455l;

    private boolean f18456m;

    private boolean f18457n;

    private boolean f18458o;

    private boolean f18459p;

    private boolean f18460q;

    private boolean f18461r;

    private boolean f18462s;

    private boolean f18463t;

    private boolean f18464u;

    private boolean f18465v;

    private boolean f18466w;

    private boolean f18467x;

    private x0 f18468y;

    private boolean f18469z;

    i(String str, Context context, n0 n0Var, ExecutorService executorService) {
        this.f18444a = 0;
        this.f18446c = new Handler(Looper.getMainLooper());
        this.f18454k = 0;
        String strJ = J();
        this.f18445b = strJ;
        this.f18448e = context.getApplicationContext();
        zzin zzinVarZzv = zzio.zzv();
        zzinVarZzv.zzj(strJ);
        zzinVarZzv.zzi(this.f18448e.getPackageName());
        this.f18449f = new q0(this.f18448e, (zzio) zzinVarZzv.zzc());
        this.f18448e.getPackageName();
    }

    static e1 E(i iVar, String str, int i10) {
        Bundle bundleZzi;
        zzb.zzj("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z10 = true;
        int i11 = 0;
        Bundle bundleZzd = zzb.zzd(iVar.f18457n, iVar.f18465v, true, false, iVar.f18445b);
        List list = null;
        String string = null;
        while (true) {
            try {
                if (iVar.f18457n) {
                    bundleZzi = iVar.f18450g.zzj(z10 != iVar.f18465v ? 9 : 19, iVar.f18448e.getPackageName(), str, string, bundleZzd);
                } else {
                    bundleZzi = iVar.f18450g.zzi(3, iVar.f18448e.getPackageName(), str, string);
                }
                f1 f1VarA = g1.a(bundleZzi, "BillingClient", "getPurchase()");
                n nVarA = f1VarA.a();
                if (nVarA != p0.f18511l) {
                    iVar.f18449f.a(m0.a(f1VarA.b(), 9, nVarA));
                    return new e1(nVarA, list);
                }
                ArrayList<String> stringArrayList = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                int i12 = i11;
                int i13 = i12;
                while (i12 < stringArrayList2.size()) {
                    String str2 = stringArrayList2.get(i12);
                    String str3 = stringArrayList3.get(i12);
                    zzb.zzj("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i12))));
                    try {
                        Purchase purchase = new Purchase(str2, str3);
                        if (TextUtils.isEmpty(purchase.g())) {
                            zzb.zzk("BillingClient", "BUG: empty/null token!");
                            i13 = 1;
                        }
                        arrayList.add(purchase);
                        i12++;
                    } catch (JSONException e10) {
                        zzb.zzl("BillingClient", "Got an exception trying to decode the purchase!", e10);
                        n0 n0Var = iVar.f18449f;
                        n nVar = p0.f18509j;
                        n0Var.a(m0.a(51, 9, nVar));
                        return new e1(nVar, null);
                    }
                }
                if (i13 != 0) {
                    iVar.f18449f.a(m0.a(26, 9, p0.f18509j));
                }
                string = bundleZzi.getString("INAPP_CONTINUATION_TOKEN");
                zzb.zzj("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
                if (TextUtils.isEmpty(string)) {
                    return new e1(p0.f18511l, arrayList);
                }
                list = null;
                z10 = true;
                i11 = 0;
            } catch (Exception e11) {
                n0 n0Var2 = iVar.f18449f;
                n nVar2 = p0.f18512m;
                n0Var2.a(m0.a(52, 9, nVar2));
                zzb.zzl("BillingClient", "Got exception trying to get purchasesm try to reconnect", e11);
                return new e1(nVar2, null);
            }
        }
    }

    public final Handler F() {
        return Looper.myLooper() == null ? this.f18446c : new Handler(Looper.myLooper());
    }

    private final n G(final n nVar) {
        if (Thread.interrupted()) {
            return nVar;
        }
        this.f18446c.post(new Runnable() {
            @Override
            public final void run() {
                this.zza.u(nVar);
            }
        });
        return nVar;
    }

    public final n I() {
        return (this.f18444a == 0 || this.f18444a == 3) ? p0.f18512m : p0.f18509j;
    }

    private static String J() {
        try {
            return (String) h5.a.class.getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return "6.1.0";
        }
    }

    public final Future K(Callable callable, long j10, final Runnable runnable, Handler handler) {
        if (this.A == null) {
            this.A = Executors.newFixedThreadPool(zzb.zza, new b0(this));
        }
        try {
            final Future futureSubmit = this.A.submit(callable);
            handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    zzb.zzk("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j10 * 0.95d));
            return futureSubmit;
        } catch (Exception e10) {
            zzb.zzl("BillingClient", "Async task throws exception!", e10);
            return null;
        }
    }

    private final void L(String str, final u uVar) {
        if (!a()) {
            n0 n0Var = this.f18449f;
            n nVar = p0.f18512m;
            n0Var.a(m0.a(2, 9, nVar));
            uVar.a(nVar, zzaf.zzk());
            return;
        }
        if (TextUtils.isEmpty(str)) {
            zzb.zzk("BillingClient", "Please provide a valid product type.");
            n0 n0Var2 = this.f18449f;
            n nVar2 = p0.f18506g;
            n0Var2.a(m0.a(50, 9, nVar2));
            uVar.a(nVar2, zzaf.zzk());
            return;
        }
        if (K(new c0(this, str, uVar), 30000L, new Runnable() {
            @Override
            public final void run() {
                this.zza.B(uVar);
            }
        }, F()) == null) {
            n nVarI = I();
            this.f18449f.a(m0.a(25, 9, nVarI));
            uVar.a(nVarI, zzaf.zzk());
        }
    }

    private void g(Context context, v vVar, x0 x0Var, c cVar, String str, n0 n0Var) {
        this.f18448e = context.getApplicationContext();
        zzin zzinVarZzv = zzio.zzv();
        zzinVarZzv.zzj(str);
        zzinVarZzv.zzi(this.f18448e.getPackageName());
        if (n0Var != null) {
            this.f18449f = n0Var;
        } else {
            this.f18449f = new q0(this.f18448e, (zzio) zzinVarZzv.zzc());
        }
        if (vVar == null) {
            zzb.zzk("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f18447d = new q1(this.f18448e, vVar, cVar, this.f18449f);
        this.f18468y = x0Var;
        this.f18469z = cVar != null;
        this.f18448e.getPackageName();
    }

    final void A(t tVar) {
        n0 n0Var = this.f18449f;
        n nVar = p0.f18513n;
        n0Var.a(m0.a(24, 11, nVar));
        tVar.a(nVar, null);
    }

    final void B(u uVar) {
        n0 n0Var = this.f18449f;
        n nVar = p0.f18513n;
        n0Var.a(m0.a(24, 9, nVar));
        uVar.a(nVar, zzaf.zzk());
    }

    final void C(y yVar) {
        n0 n0Var = this.f18449f;
        n nVar = p0.f18513n;
        n0Var.a(m0.a(24, 8, nVar));
        yVar.a(nVar, null);
    }

    final void D(e eVar) {
        n0 n0Var = this.f18449f;
        n nVar = p0.f18513n;
        n0Var.a(m0.a(24, 16, nVar));
        eVar.a(nVar);
    }

    final Bundle N(int i10, String str, String str2, m mVar, Bundle bundle) {
        return this.f18450g.zzg(i10, this.f18448e.getPackageName(), str, str2, null, bundle);
    }

    final Bundle O(String str, String str2) {
        return this.f18450g.zzf(3, this.f18448e.getPackageName(), str, str2, null);
    }

    final Object U(w wVar, s sVar) {
        String strZzg;
        int iZzb;
        int i10;
        int i11;
        ArrayList arrayList = new ArrayList();
        String strC = wVar.c();
        zzaf zzafVarB = wVar.b();
        int size = zzafVarB.size();
        int i12 = 0;
        while (true) {
            if (i12 >= size) {
                strZzg = "";
                iZzb = 0;
                break;
            }
            int i13 = i12 + 20;
            ArrayList arrayList2 = new ArrayList(zzafVarB.subList(i12, i13 > size ? size : i13));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i14 = 0; i14 < size2; i14++) {
                arrayList3.add(((w.b) arrayList2.get(i14)).b());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.f18445b);
            try {
                com.google.android.gms.internal.play_billing.zzm zzmVar = this.f18450g;
                int i15 = true != this.f18466w ? 17 : 20;
                String packageName = this.f18448e.getPackageName();
                String str = this.f18445b;
                if (TextUtils.isEmpty(null)) {
                    this.f18448e.getPackageName();
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("playBillingLibraryVersion", str);
                bundle2.putBoolean("enablePendingPurchases", true);
                bundle2.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                int size3 = arrayList2.size();
                zzaf zzafVar = zzafVarB;
                int i16 = 0;
                boolean z10 = false;
                boolean z11 = false;
                while (i16 < size3) {
                    w.b bVar = (w.b) arrayList2.get(i16);
                    ArrayList arrayList6 = arrayList2;
                    arrayList4.add(null);
                    z10 |= !TextUtils.isEmpty(null);
                    String strC2 = bVar.c();
                    int i17 = size3;
                    if (strC2.equals("first_party")) {
                        com.google.android.gms.internal.play_billing.zzx.zzc(null, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
                        arrayList5.add(null);
                        z11 = true;
                    }
                    i16++;
                    size3 = i17;
                    arrayList2 = arrayList6;
                }
                if (z10) {
                    bundle2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                }
                if (!arrayList5.isEmpty()) {
                    bundle2.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (z11 && !TextUtils.isEmpty(null)) {
                    bundle2.putString("accountName", null);
                }
                i11 = 7;
                try {
                    Bundle bundleZzl = zzmVar.zzl(i15, packageName, strC, bundle, bundle2);
                    strZzg = "Item is unavailable for purchase.";
                    if (bundleZzl == null) {
                        zzb.zzk("BillingClient", "queryProductDetailsAsync got empty product details response.");
                        this.f18449f.a(m0.a(44, 7, p0.B));
                    } else {
                        if (!bundleZzl.containsKey("DETAILS_LIST")) {
                            iZzb = zzb.zzb(bundleZzl, "BillingClient");
                            strZzg = zzb.zzg(bundleZzl, "BillingClient");
                            if (iZzb == 0) {
                                zzb.zzk("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.");
                                this.f18449f.a(m0.a(45, 7, p0.a(6, strZzg)));
                                iZzb = 6;
                                break;
                            }
                            zzb.zzk("BillingClient", "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + iZzb);
                            this.f18449f.a(m0.a(23, 7, p0.a(iZzb, strZzg)));
                            break;
                        }
                        ArrayList<String> stringArrayList = bundleZzl.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList == null) {
                            zzb.zzk("BillingClient", "queryProductDetailsAsync got null response list");
                            this.f18449f.a(m0.a(46, 7, p0.B));
                        } else {
                            for (int i18 = 0; i18 < stringArrayList.size(); i18++) {
                                try {
                                    r rVar = new r(stringArrayList.get(i18));
                                    zzb.zzj("BillingClient", "Got product details: ".concat(rVar.toString()));
                                    arrayList.add(rVar);
                                } catch (JSONException e10) {
                                    zzb.zzl("BillingClient", "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e10);
                                    strZzg = "Error trying to decode SkuDetails.";
                                    i10 = 6;
                                    this.f18449f.a(m0.a(47, 7, p0.a(6, "Error trying to decode SkuDetails.")));
                                    iZzb = i10;
                                    sVar.a(p0.a(iZzb, strZzg), arrayList);
                                    return null;
                                }
                            }
                            i12 = i13;
                            zzafVarB = zzafVar;
                        }
                    }
                    iZzb = 4;
                    break;
                } catch (Exception e11) {
                    e = e11;
                    i10 = 6;
                    zzb.zzl("BillingClient", "queryProductDetailsAsync got a remote exception (try to reconnect).", e);
                    this.f18449f.a(m0.a(43, i11, p0.f18509j));
                    strZzg = "An internal error occurred.";
                    iZzb = i10;
                    sVar.a(p0.a(iZzb, strZzg), arrayList);
                    return null;
                }
            } catch (Exception e12) {
                e = e12;
                i10 = 6;
                i11 = 7;
            }
        }
        sVar.a(p0.a(iZzb, strZzg), arrayList);
        return null;
    }

    @Override
    public final boolean a() {
        return (this.f18444a != 2 || this.f18450g == null || this.f18451h == null) ? false : true;
    }

    @Override
    public final n b(Activity activity, final m mVar) {
        String str;
        Future futureK;
        int i10;
        boolean z10;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        boolean z11;
        String str7;
        int i11;
        final int i12;
        if (this.f18447d == null || this.f18447d.d() == null) {
            n0 n0Var = this.f18449f;
            n nVar = p0.E;
            n0Var.a(m0.a(12, 2, nVar));
            return nVar;
        }
        if (!a()) {
            n0 n0Var2 = this.f18449f;
            n nVar2 = p0.f18512m;
            n0Var2.a(m0.a(2, 2, nVar2));
            G(nVar2);
            return nVar2;
        }
        ArrayList arrayListH = mVar.h();
        List listI = mVar.i();
        android.support.v4.media.session.c.a(com.google.android.gms.internal.play_billing.zzak.zza(arrayListH, null));
        m.b bVar = (m.b) com.google.android.gms.internal.play_billing.zzak.zza(listI, null);
        final String strB = bVar.b().b();
        final String strC = bVar.b().c();
        String str8 = "BillingClient";
        if (strC.equals("subs") && !this.f18452i) {
            zzb.zzk("BillingClient", "Current client doesn't support subscriptions.");
            n0 n0Var3 = this.f18449f;
            n nVar3 = p0.f18514o;
            n0Var3.a(m0.a(9, 2, nVar3));
            G(nVar3);
            return nVar3;
        }
        if (mVar.r() && !this.f18455l) {
            zzb.zzk("BillingClient", "Current client doesn't support extra params for buy intent.");
            n0 n0Var4 = this.f18449f;
            n nVar4 = p0.f18507h;
            n0Var4.a(m0.a(18, 2, nVar4));
            G(nVar4);
            return nVar4;
        }
        if (arrayListH.size() > 1 && !this.f18462s) {
            zzb.zzk("BillingClient", "Current client doesn't support multi-item purchases.");
            n0 n0Var5 = this.f18449f;
            n nVar5 = p0.f18519t;
            n0Var5.a(m0.a(19, 2, nVar5));
            G(nVar5);
            return nVar5;
        }
        if (!listI.isEmpty() && !this.f18463t) {
            zzb.zzk("BillingClient", "Current client doesn't support purchases with ProductDetails.");
            n0 n0Var6 = this.f18449f;
            n nVar6 = p0.f18521v;
            n0Var6.a(m0.a(20, 2, nVar6));
            G(nVar6);
            return nVar6;
        }
        if (this.f18455l) {
            boolean z12 = this.f18457n;
            boolean z13 = this.f18469z;
            String str9 = this.f18445b;
            final Bundle bundle = new Bundle();
            bundle.putString("playBillingLibraryVersion", str9);
            if (mVar.c() != 0) {
                bundle.putInt("prorationMode", mVar.c());
            } else if (mVar.b() != 0) {
                bundle.putInt("prorationMode", mVar.b());
            }
            if (!TextUtils.isEmpty(mVar.d())) {
                bundle.putString("accountId", mVar.d());
            }
            if (!TextUtils.isEmpty(mVar.e())) {
                bundle.putString("obfuscatedProfileId", mVar.e());
            }
            if (mVar.q()) {
                bundle.putBoolean("isOfferPersonalizedByDeveloper", true);
            }
            if (!TextUtils.isEmpty(null)) {
                bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(null)));
            }
            if (!TextUtils.isEmpty(mVar.f())) {
                bundle.putString("oldSkuPurchaseToken", mVar.f());
            }
            if (!TextUtils.isEmpty(null)) {
                bundle.putString("oldSkuPurchaseId", null);
            }
            if (!TextUtils.isEmpty(mVar.g())) {
                bundle.putString("originalExternalTransactionId", mVar.g());
            }
            if (!TextUtils.isEmpty(null)) {
                bundle.putString("paymentsPurchaseParams", null);
            }
            if (z12) {
                z10 = true;
                bundle.putBoolean("enablePendingPurchases", true);
            } else {
                z10 = true;
            }
            if (z13) {
                bundle.putBoolean("enableAlternativeBilling", z10);
            }
            if (arrayListH.isEmpty()) {
                ArrayList<String> arrayList = new ArrayList<>(listI.size() - 1);
                ArrayList<String> arrayList2 = new ArrayList<>(listI.size() - 1);
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<String> arrayList4 = new ArrayList<>();
                str2 = strC;
                ArrayList<String> arrayList5 = new ArrayList<>();
                str3 = "proxyPackageVersion";
                str4 = strB;
                int i13 = 0;
                while (i13 < listI.size()) {
                    m.b bVar2 = (m.b) listI.get(i13);
                    r rVarB = bVar2.b();
                    if (!rVarB.f().isEmpty()) {
                        arrayList3.add(rVarB.f());
                    }
                    arrayList4.add(bVar2.c());
                    if (!TextUtils.isEmpty(rVarB.g())) {
                        arrayList5.add(rVarB.g());
                    }
                    if (i13 > 0) {
                        arrayList.add(((m.b) listI.get(i13)).b().b());
                        arrayList2.add(((m.b) listI.get(i13)).b().c());
                    }
                    i13++;
                    str8 = str8;
                }
                str5 = str8;
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                if (!arrayList3.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList3);
                }
                if (!arrayList5.isEmpty()) {
                    bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (!arrayList.isEmpty()) {
                    bundle.putStringArrayList("additionalSkus", arrayList);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList2);
                }
            } else {
                ArrayList<String> arrayList6 = new ArrayList<>();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                Iterator it = arrayListH.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    throw null;
                }
                if (!arrayList6.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList6);
                }
                if (arrayListH.size() > 1) {
                    ArrayList<String> arrayList7 = new ArrayList<>(arrayListH.size() - 1);
                    ArrayList<String> arrayList8 = new ArrayList<>(arrayListH.size() - 1);
                    if (1 < arrayListH.size()) {
                        android.support.v4.media.session.c.a(arrayListH.get(1));
                        throw null;
                    }
                    bundle.putStringArrayList("additionalSkus", arrayList7);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList8);
                }
                str3 = "proxyPackageVersion";
                str4 = strB;
                str2 = strC;
                str5 = "BillingClient";
            }
            if (bundle.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !this.f18460q) {
                n0 n0Var7 = this.f18449f;
                n nVar7 = p0.f18520u;
                n0Var7.a(m0.a(21, 2, nVar7));
                G(nVar7);
                return nVar7;
            }
            if (bVar == null || TextUtils.isEmpty(bVar.b().e())) {
                str6 = null;
                z11 = false;
            } else {
                bundle.putString("skuPackageName", bVar.b().e());
                str6 = null;
                z11 = true;
            }
            if (!TextUtils.isEmpty(str6)) {
                bundle.putString("accountName", str6);
            }
            Intent intent = activity.getIntent();
            if (intent == null) {
                str = str5;
                zzb.zzk(str, "Activity's intent is null.");
            } else {
                str = str5;
                if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                    String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                    bundle.putString("proxyPackage", stringExtra);
                    try {
                        str7 = str3;
                        try {
                            bundle.putString(str7, this.f18448e.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                        } catch (PackageManager.NameNotFoundException unused) {
                            bundle.putString(str7, "package not found");
                        }
                    } catch (PackageManager.NameNotFoundException unused2) {
                        str7 = str3;
                    }
                }
            }
            if (this.f18463t && !listI.isEmpty()) {
                i11 = 17;
            } else if (this.f18461r && z11) {
                i11 = 15;
            } else {
                if (this.f18457n) {
                    i12 = 9;
                } else {
                    i11 = 6;
                }
                final String str10 = str4;
                final String str11 = str2;
                futureK = K(new Callable() {
                    @Override
                    public final Object call() {
                        return this.f18588a.N(i12, str10, str11, mVar, bundle);
                    }
                }, 5000L, null, this.f18446c);
                i10 = 78;
            }
            i12 = i11;
            final String str12 = str4;
            final String str13 = str2;
            futureK = K(new Callable() {
                @Override
                public final Object call() {
                    return this.f18588a.N(i12, str12, str13, mVar, bundle);
                }
            }, 5000L, null, this.f18446c);
            i10 = 78;
        } else {
            str = "BillingClient";
            futureK = K(new Callable() {
                @Override
                public final Object call() {
                    return this.f18422a.O(strB, strC);
                }
            }, 5000L, null, this.f18446c);
            i10 = 80;
        }
        try {
            if (futureK == null) {
                n0 n0Var8 = this.f18449f;
                n nVar8 = p0.f18512m;
                n0Var8.a(m0.a(25, 2, nVar8));
                G(nVar8);
                return nVar8;
            }
            Bundle bundle2 = (Bundle) futureK.get(5000L, TimeUnit.MILLISECONDS);
            int iZzb = zzb.zzb(bundle2, str);
            String strZzg = zzb.zzg(bundle2, str);
            if (iZzb == 0) {
                Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                intent2.putExtra("BUY_INTENT", (PendingIntent) bundle2.getParcelable("BUY_INTENT"));
                activity.startActivity(intent2);
                return p0.f18511l;
            }
            zzb.zzk(str, "Unable to buy item, Error response code: " + iZzb);
            n nVarA = p0.a(iZzb, strZzg);
            n0 n0Var9 = this.f18449f;
            if (bundle2 != null) {
                i10 = 23;
            }
            n0Var9.a(m0.a(i10, 2, nVarA));
            G(nVarA);
            return nVarA;
        } catch (CancellationException e10) {
            e = e10;
            zzb.zzl(str, "Time out while launching billing flow. Try to reconnect", e);
            n0 n0Var10 = this.f18449f;
            n nVar9 = p0.f18513n;
            n0Var10.a(m0.a(4, 2, nVar9));
            G(nVar9);
            return nVar9;
        } catch (TimeoutException e11) {
            e = e11;
            zzb.zzl(str, "Time out while launching billing flow. Try to reconnect", e);
            n0 n0Var11 = this.f18449f;
            n nVar10 = p0.f18513n;
            n0Var11.a(m0.a(4, 2, nVar10));
            G(nVar10);
            return nVar10;
        } catch (Exception e12) {
            zzb.zzl(str, "Exception while launching billing flow. Try to reconnect", e12);
            n0 n0Var12 = this.f18449f;
            n nVar11 = p0.f18512m;
            n0Var12.a(m0.a(5, 2, nVar11));
            G(nVar11);
            return nVar11;
        }
    }

    @Override
    public final void d(final w wVar, final s sVar) {
        if (!a()) {
            n0 n0Var = this.f18449f;
            n nVar = p0.f18512m;
            n0Var.a(m0.a(2, 7, nVar));
            sVar.a(nVar, new ArrayList());
            return;
        }
        if (this.f18463t) {
            if (K(new Callable() {
                @Override
                public final Object call() {
                    this.f18576a.U(wVar, sVar);
                    return null;
                }
            }, 30000L, new Runnable() {
                @Override
                public final void run() {
                    this.zza.z(sVar);
                }
            }, F()) == null) {
                n nVarI = I();
                this.f18449f.a(m0.a(25, 7, nVarI));
                sVar.a(nVarI, new ArrayList());
                return;
            }
            return;
        }
        zzb.zzk("BillingClient", "Querying product details is not supported.");
        n0 n0Var2 = this.f18449f;
        n nVar2 = p0.f18521v;
        n0Var2.a(m0.a(20, 7, nVar2));
        sVar.a(nVar2, new ArrayList());
    }

    @Override
    public final void e(x xVar, u uVar) {
        L(xVar.b(), uVar);
    }

    @Override
    public final void f(j jVar) {
        if (a()) {
            zzb.zzj("BillingClient", "Service connection is valid. No need to re-initialize.");
            this.f18449f.c(m0.b(6));
            jVar.a(p0.f18511l);
            return;
        }
        int i10 = 1;
        if (this.f18444a == 1) {
            zzb.zzk("BillingClient", "Client is already in the process of connecting to billing service.");
            n0 n0Var = this.f18449f;
            n nVar = p0.f18503d;
            n0Var.a(m0.a(37, 6, nVar));
            jVar.a(nVar);
            return;
        }
        if (this.f18444a == 3) {
            zzb.zzk("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            n0 n0Var2 = this.f18449f;
            n nVar2 = p0.f18512m;
            n0Var2.a(m0.a(38, 6, nVar2));
            jVar.a(nVar2);
            return;
        }
        this.f18444a = 1;
        zzb.zzj("BillingClient", "Starting in-app billing setup.");
        this.f18451h = new f0(this, jVar, null);
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        List<ResolveInfo> listQueryIntentServices = this.f18448e.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            i10 = 41;
        } else {
            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
            if (serviceInfo != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null) {
                    zzb.zzk("BillingClient", "The device doesn't have valid Play Store.");
                    i10 = 40;
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.f18445b);
                    if (this.f18448e.bindService(intent2, this.f18451h, 1)) {
                        zzb.zzj("BillingClient", "Service was bonded successfully.");
                        return;
                    } else {
                        zzb.zzk("BillingClient", "Connection to Billing service is blocked.");
                        i10 = 39;
                    }
                }
            }
        }
        this.f18444a = 0;
        zzb.zzj("BillingClient", "Billing service unavailable on device.");
        n0 n0Var3 = this.f18449f;
        n nVar3 = p0.f18502c;
        n0Var3.a(m0.a(i10, 6, nVar3));
        jVar.a(nVar3);
    }

    final void t(b bVar) {
        n0 n0Var = this.f18449f;
        n nVar = p0.f18513n;
        n0Var.a(m0.a(24, 3, nVar));
        bVar.a(nVar);
    }

    final void u(n nVar) {
        if (this.f18447d.d() != null) {
            this.f18447d.d().a(nVar, null);
        } else {
            this.f18447d.c();
            zzb.zzk("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    final void v(p pVar, o oVar) {
        this.f18449f.a(m0.a(24, 4, p0.f18513n));
        throw null;
    }

    final void w(g gVar) {
        n0 n0Var = this.f18449f;
        n nVar = p0.f18513n;
        n0Var.a(m0.a(24, 15, nVar));
        gVar.a(nVar, null);
    }

    final void x(l lVar) {
        n0 n0Var = this.f18449f;
        n nVar = p0.f18513n;
        n0Var.a(m0.a(24, 13, nVar));
        lVar.a(nVar, null);
    }

    final void y(d dVar) {
        n0 n0Var = this.f18449f;
        n nVar = p0.f18513n;
        n0Var.a(m0.a(24, 14, nVar));
        dVar.a(nVar);
    }

    final void z(s sVar) {
        n0 n0Var = this.f18449f;
        n nVar = p0.f18513n;
        n0Var.a(m0.a(24, 7, nVar));
        sVar.a(nVar, new ArrayList());
    }

    i(String str, x0 x0Var, Context context, t0 t0Var, n0 n0Var, ExecutorService executorService) {
        this.f18444a = 0;
        this.f18446c = new Handler(Looper.getMainLooper());
        this.f18454k = 0;
        this.f18445b = J();
        this.f18448e = context.getApplicationContext();
        zzin zzinVarZzv = zzio.zzv();
        zzinVarZzv.zzj(J());
        zzinVarZzv.zzi(this.f18448e.getPackageName());
        this.f18449f = new q0(this.f18448e, (zzio) zzinVarZzv.zzc());
        zzb.zzk("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.f18447d = new q1(this.f18448e, null, this.f18449f);
        this.f18468y = x0Var;
        this.f18448e.getPackageName();
    }

    i(String str, x0 x0Var, Context context, v vVar, c cVar, n0 n0Var, ExecutorService executorService) {
        String strJ = J();
        this.f18444a = 0;
        this.f18446c = new Handler(Looper.getMainLooper());
        this.f18454k = 0;
        this.f18445b = strJ;
        g(context, vVar, x0Var, cVar, strJ, null);
    }
}
