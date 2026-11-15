.class public final Lcom/yandex/mobile/ads/impl/i50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/uj;

.field private final c:Lcom/yandex/mobile/ads/impl/da;

.field private final d:Lcom/yandex/mobile/ads/impl/ld1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/fl;Lcom/yandex/mobile/ads/impl/uj;Lcom/yandex/mobile/ads/impl/da;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/ld1;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biddingSettings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "base64Encoder"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adUnitIdHeaderBiddingSettingsProvider"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mediatedAdapterReporter"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "networksHeaderBiddingDataLoader"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i50;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i50;->b:Lcom/yandex/mobile/ads/impl/uj;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/i50;->c:Lcom/yandex/mobile/ads/impl/da;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/i50;->d:Lcom/yandex/mobile/ads/impl/ld1;

    return-void
.end method

.method private final a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    const-string v1, "networks"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i50;->b:Lcom/yandex/mobile/ads/impl/uj;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/uj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 5
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lwh1;)Ljava/lang/Object;
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lwh1<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/i50$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yandex/mobile/ads/impl/i50$a;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/i50$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/i50$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/i50$a;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/i50$a;-><init>(Lcom/yandex/mobile/ads/impl/i50;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lcom/yandex/mobile/ads/impl/i50$a;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    .line 7
    iget v2, v0, Lcom/yandex/mobile/ads/impl/i50$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/i50$a;->b:Lcom/yandex/mobile/ads/impl/i50;

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/i50$a;->b:Lcom/yandex/mobile/ads/impl/i50;

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    .line 8
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/i50;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/i50;->c:Lcom/yandex/mobile/ads/impl/da;

    invoke-virtual {v2, p2}, Lcom/yandex/mobile/ads/impl/da;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ba;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    .line 10
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ba;->f()Ljava/util/List;

    move-result-object v9

    .line 11
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/i50;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object p2

    sget-object v5, Lcom/yandex/mobile/ads/impl/ts;->d:Lcom/yandex/mobile/ads/impl/ts;

    if-ne p2, v5, :cond_6

    .line 12
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/i50;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 13
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/i50;->d:Lcom/yandex/mobile/ads/impl/ld1;

    iput-object p0, v0, Lcom/yandex/mobile/ads/impl/i50$a;->b:Lcom/yandex/mobile/ads/impl/i50;

    iput v4, v0, Lcom/yandex/mobile/ads/impl/i50$a;->e:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->b()Lrx5;

    move-result-object p2

    new-instance v2, Lcom/yandex/mobile/ads/impl/kd1;

    const/4 v10, 0x0

    move-object v5, v2

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/yandex/mobile/ads/impl/kd1;-><init>(Lcom/yandex/mobile/ads/impl/ld1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Ljava/util/List;Lwh1;)V

    invoke-static {p2, v2, v0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 15
    :cond_4
    :goto_1
    check-cast p2, Lorg/json/JSONArray;

    .line 16
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/i50;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    .line 17
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    goto :goto_3

    .line 18
    :cond_6
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/i50;->d:Lcom/yandex/mobile/ads/impl/ld1;

    iput-object p0, v0, Lcom/yandex/mobile/ads/impl/i50$a;->b:Lcom/yandex/mobile/ads/impl/i50;

    iput v3, v0, Lcom/yandex/mobile/ads/impl/i50$a;->e:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->b()Lrx5;

    move-result-object p2

    new-instance v2, Lcom/yandex/mobile/ads/impl/kd1;

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/yandex/mobile/ads/impl/kd1;-><init>(Lcom/yandex/mobile/ads/impl/ld1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Ljava/util/List;Lwh1;)V

    invoke-static {p2, v2, v0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    .line 20
    :cond_7
    :goto_2
    check-cast p2, Lorg/json/JSONArray;

    .line 21
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/i50;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    :goto_3
    return-object v2
.end method
