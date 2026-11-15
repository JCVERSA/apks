package com.android.billingclient.api;

abstract class p0 {
    static final n A;
    static final n B;
    static final n C;
    static final n D;
    static final n E;

    static final n f18500a;

    static final n f18501b;

    static final n f18502c;

    static final n f18503d;

    static final n f18504e;

    static final n f18505f;

    static final n f18506g;

    static final n f18507h;

    static final n f18508i;

    static final n f18509j;

    static final n f18510k;

    static final n f18511l;

    static final n f18512m;

    static final n f18513n;

    static final n f18514o;

    static final n f18515p;

    static final n f18516q;

    static final n f18517r;

    static final n f18518s;

    static final n f18519t;

    static final n f18520u;

    static final n f18521v;

    static final n f18522w;

    static final n f18523x;

    static final n f18524y;

    static final n f18525z;

    static {
        n.a aVarC = n.c();
        aVarC.c(3);
        aVarC.b("Google Play In-app Billing API version is less than 3");
        f18500a = aVarC.a();
        n.a aVarC2 = n.c();
        aVarC2.c(3);
        aVarC2.b("Google Play In-app Billing API version is less than 9");
        f18501b = aVarC2.a();
        n.a aVarC3 = n.c();
        aVarC3.c(3);
        aVarC3.b("Billing service unavailable on device.");
        f18502c = aVarC3.a();
        n.a aVarC4 = n.c();
        aVarC4.c(5);
        aVarC4.b("Client is already in the process of connecting to billing service.");
        f18503d = aVarC4.a();
        n.a aVarC5 = n.c();
        aVarC5.c(5);
        aVarC5.b("The list of SKUs can't be empty.");
        f18504e = aVarC5.a();
        n.a aVarC6 = n.c();
        aVarC6.c(5);
        aVarC6.b("SKU type can't be empty.");
        f18505f = aVarC6.a();
        n.a aVarC7 = n.c();
        aVarC7.c(5);
        aVarC7.b("Product type can't be empty.");
        f18506g = aVarC7.a();
        n.a aVarC8 = n.c();
        aVarC8.c(-2);
        aVarC8.b("Client does not support extra params.");
        f18507h = aVarC8.a();
        n.a aVarC9 = n.c();
        aVarC9.c(5);
        aVarC9.b("Invalid purchase token.");
        f18508i = aVarC9.a();
        n.a aVarC10 = n.c();
        aVarC10.c(6);
        aVarC10.b("An internal error occurred.");
        f18509j = aVarC10.a();
        n.a aVarC11 = n.c();
        aVarC11.c(5);
        aVarC11.b("SKU can't be null.");
        f18510k = aVarC11.a();
        n.a aVarC12 = n.c();
        aVarC12.c(0);
        f18511l = aVarC12.a();
        n.a aVarC13 = n.c();
        aVarC13.c(-1);
        aVarC13.b("Service connection is disconnected.");
        f18512m = aVarC13.a();
        n.a aVarC14 = n.c();
        aVarC14.c(2);
        aVarC14.b("Timeout communicating with service.");
        f18513n = aVarC14.a();
        n.a aVarC15 = n.c();
        aVarC15.c(-2);
        aVarC15.b("Client does not support subscriptions.");
        f18514o = aVarC15.a();
        n.a aVarC16 = n.c();
        aVarC16.c(-2);
        aVarC16.b("Client does not support subscriptions update.");
        f18515p = aVarC16.a();
        n.a aVarC17 = n.c();
        aVarC17.c(-2);
        aVarC17.b("Client does not support get purchase history.");
        f18516q = aVarC17.a();
        n.a aVarC18 = n.c();
        aVarC18.c(-2);
        aVarC18.b("Client does not support price change confirmation.");
        f18517r = aVarC18.a();
        n.a aVarC19 = n.c();
        aVarC19.c(-2);
        aVarC19.b("Play Store version installed does not support cross selling products.");
        f18518s = aVarC19.a();
        n.a aVarC20 = n.c();
        aVarC20.c(-2);
        aVarC20.b("Client does not support multi-item purchases.");
        f18519t = aVarC20.a();
        n.a aVarC21 = n.c();
        aVarC21.c(-2);
        aVarC21.b("Client does not support offer_id_token.");
        f18520u = aVarC21.a();
        n.a aVarC22 = n.c();
        aVarC22.c(-2);
        aVarC22.b("Client does not support ProductDetails.");
        f18521v = aVarC22.a();
        n.a aVarC23 = n.c();
        aVarC23.c(-2);
        aVarC23.b("Client does not support in-app messages.");
        f18522w = aVarC23.a();
        n.a aVarC24 = n.c();
        aVarC24.c(-2);
        aVarC24.b("Client does not support user choice billing.");
        f18523x = aVarC24.a();
        n.a aVarC25 = n.c();
        aVarC25.c(5);
        aVarC25.b("Unknown feature");
        f18524y = aVarC25.a();
        n.a aVarC26 = n.c();
        aVarC26.c(-2);
        aVarC26.b("Play Store version installed does not support get billing config.");
        f18525z = aVarC26.a();
        n.a aVarC27 = n.c();
        aVarC27.c(-2);
        aVarC27.b("Query product details with serialized docid is not supported.");
        A = aVarC27.a();
        n.a aVarC28 = n.c();
        aVarC28.c(4);
        aVarC28.b("Item is unavailable for purchase.");
        B = aVarC28.a();
        n.a aVarC29 = n.c();
        aVarC29.c(-2);
        aVarC29.b("Query product details with developer specified account is not supported.");
        C = aVarC29.a();
        n.a aVarC30 = n.c();
        aVarC30.c(-2);
        aVarC30.b("Play Store version installed does not support alternative billing only.");
        D = aVarC30.a();
        n.a aVarC31 = n.c();
        aVarC31.c(5);
        aVarC31.b("To use this API you must specify a PurchasesUpdateListener when initializing a BillingClient.");
        E = aVarC31.a();
    }

    static n a(int i10, String str) {
        n.a aVarC = n.c();
        aVarC.c(i10);
        aVarC.b(str);
        return aVarC.a();
    }
}
