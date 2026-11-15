.class public final Lcom/yandex/mobile/ads/impl/xt1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/c8;

.field private final c:Lcom/yandex/mobile/ads/impl/wq;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/c8;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/c8;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/wq;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/wq;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/xt1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/c8;Lcom/yandex/mobile/ads/impl/wq;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/c8;Lcom/yandex/mobile/ads/impl/wq;)V
    .locals 1

    .line 4
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestReportDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonReportDataProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xt1;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xt1;->b:Lcom/yandex/mobile/ads/impl/c8;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xt1;->c:Lcom/yandex/mobile/ads/impl/wq;

    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/pp1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/op1$b;",
            "Lcom/yandex/mobile/ads/impl/pp1;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xt1;->b:Lcom/yandex/mobile/ads/impl/c8;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xt1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/c8;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_unit_id"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "block_id"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    const-string v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->n()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "ad_type"

    invoke-virtual {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->I()Ljava/lang/Object;

    move-result-object v2

    .line 8
    instance-of v4, v2, Lcom/yandex/mobile/ads/impl/y61;

    if-eqz v4, :cond_3

    .line 9
    check-cast v2, Lcom/yandex/mobile/ads/impl/y61;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {v2}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/g41;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/g41;->g()Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gr1;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_2

    const-string v2, ""

    .line 11
    :cond_2
    const-string v4, "native_ad_type"

    invoke-virtual {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->m()Ljava/lang/String;

    move-result-object p2

    const-string v2, "ad_source"

    invoke-virtual {v0, p2, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v0, p4}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p2

    .line 14
    new-instance p4, Lcom/yandex/mobile/ads/impl/op1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v0

    .line 15
    const-string v2, "reportType"

    const-string v4, "reportData"

    invoke-static {p2, p3, v2, v0, v4}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object p2

    .line 16
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p4, v2, v0, p2}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 17
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/xt1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object p2, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xt1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object p0

    .line 19
    invoke-static {p1, p2, p0}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object p0

    .line 20
    invoke-virtual {p0, p4}, Lcom/yandex/mobile/ads/impl/s01;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    .line 21
    new-instance p0, Lcom/yandex/mobile/ads/impl/id;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/id;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p4}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p3, p1, v1, v3}, Lcom/yandex/mobile/ads/impl/id;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    .line 28
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xt1;->c:Lcom/yandex/mobile/ads/impl/wq;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xt1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/wq;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$c;->c:Lcom/yandex/mobile/ads/impl/op1$c;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1$c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->h:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/pp1;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t71;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/t71;",
            ")V"
        }
    .end annotation

    .line 24
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    if-eqz p3, :cond_0

    .line 26
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/t71;->a()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    .line 27
    :cond_0
    sget-object p3, Lcom/yandex/mobile/ads/impl/op1$b;->g:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/pp1;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/u71;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/u71;",
            ")V"
        }
    .end annotation

    .line 32
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/u71;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 35
    :cond_0
    sget-object p3, Lcom/yandex/mobile/ads/impl/op1$c;->c:Lcom/yandex/mobile/ads/impl/op1$c;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/op1$c;->a()Ljava/lang/String;

    move-result-object p3

    const-string v1, "status"

    invoke-virtual {v0, p3, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object p3, Lcom/yandex/mobile/ads/impl/op1$b;->h:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/pp1;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->J()Lcom/yandex/mobile/ads/impl/ur1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ur1;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "rewarding_side"

    if-eqz v1, :cond_1

    const-string v1, "server_side"

    invoke-static {v3, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "client_side"

    invoke-static {v3, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v1

    :goto_0
    const-string v2, "reward_info"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->N:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/pp1;)V

    return-void

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
