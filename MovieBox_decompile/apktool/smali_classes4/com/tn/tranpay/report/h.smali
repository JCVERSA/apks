.class public final Lcom/tn/tranpay/report/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/tn/tranpay/report/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/tranpay/report/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/tranpay/report/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/tn/tranpay/report/h;ILjava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/report/h;->e(ILjava/lang/Boolean;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZZZ)V
    .locals 2

    .line 1
    const-string v0, "paymentMethod"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "payment_method"

    .line 12
    .line 13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string p1, "need_phone"

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string p1, "need_cnic"

    .line 26
    .line 27
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string p1, "auto"

    .line 35
    .line 36
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 44
    .line 45
    const-string p2, "cashier_page"

    .line 46
    .line 47
    const-string p3, "choose_payment_method"

    .line 48
    .line 49
    invoke-virtual {p1, p2, p3, v0}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "is_success"

    .line 7
    .line 8
    const-string v2, "true"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    :cond_0
    const-string v1, "region"

    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 23
    .line 24
    const-string v1, "pay_sdk"

    .line 25
    .line 26
    const-string v2, "init"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v2, v0}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final c(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "is_success"

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 16
    .line 17
    const-string v1, "pay_sdk"

    .line 18
    .line 19
    const-string v2, "load_config"

    .line 20
    .line 21
    invoke-virtual {p1, v1, v2, v0}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "result"

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    move-object p2, p1

    .line 20
    :cond_0
    const-string v1, "webUrl"

    .line 21
    .line 22
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    move-object p3, p1

    .line 28
    :cond_1
    const-string p2, "rnUrl"

    .line 29
    .line 30
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    if-nez p4, :cond_2

    .line 34
    .line 35
    move-object p4, p1

    .line 36
    :cond_2
    const-string p1, "packageName"

    .line 37
    .line 38
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string p1, "auto"

    .line 42
    .line 43
    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 51
    .line 52
    const-string p2, "cashier_page"

    .line 53
    .line 54
    const-string p3, "open_link"

    .line 55
    .line 56
    invoke-virtual {p1, p2, p3, v0}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final e(ILjava/lang/Boolean;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "resultType"

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string p1, "cancel"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "other"

    .line 27
    .line 28
    :goto_0
    const-string p2, "reason"

    .line 29
    .line 30
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object p1, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 34
    .line 35
    const-string p2, "cashier_page"

    .line 36
    .line 37
    const-string v1, "pay"

    .line 38
    .line 39
    invoke-virtual {p1, p2, v1, v0}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    sget-object v0, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 2
    .line 3
    const-string v1, "click_cancel"

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "retention_dialog"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    sget-object v0, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 2
    .line 3
    const-string v1, "pt"

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "retention_dialog"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    sget-object v0, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 2
    .line 3
    const-string v1, "click_query"

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "retention_dialog"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final j(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "orderDesc"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "txnId"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "is_success"

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string p1, "order_desc"

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string p1, "pay_by_local_currency"

    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string p1, "txn_id"

    .line 40
    .line 41
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 45
    .line 46
    const-string p2, "pay_sdk"

    .line 47
    .line 48
    const-string p3, "start_pay"

    .line 49
    .line 50
    invoke-virtual {p1, p2, p3, v0}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final k(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "is_success"

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const-string p1, "phone"

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    if-eqz p3, :cond_1

    .line 23
    .line 24
    const-string p1, "cnic"

    .line 25
    .line 26
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    const-string p1, "auto"

    .line 30
    .line 31
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 39
    .line 40
    const-string p2, "cashier_page"

    .line 41
    .line 42
    const-string p3, "submit"

    .line 43
    .line 44
    invoke-virtual {p1, p2, p3, v0}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 7
    .line 8
    const-string v1, "pt"

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, p1, v1, v2}, Lcom/tn/tranpay/report/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
