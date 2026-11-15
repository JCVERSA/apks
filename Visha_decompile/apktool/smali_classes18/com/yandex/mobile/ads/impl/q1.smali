.class public final Lcom/yandex/mobile/ads/impl/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/t0;

.field private final c:Lcom/yandex/mobile/ads/impl/p1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v4

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/t0;

    invoke-direct {v5, p2, p1}, Lcom/yandex/mobile/ads/impl/t0;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 3
    new-instance v6, Lcom/yandex/mobile/ads/impl/p1;

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->e()Lcom/yandex/mobile/ads/impl/fn2;

    move-result-object v0

    .line 5
    invoke-direct {v6, v0}, Lcom/yandex/mobile/ads/impl/p1;-><init>(Lcom/yandex/mobile/ads/impl/cy1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/q1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/t0;Lcom/yandex/mobile/ads/impl/p1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/t0;Lcom/yandex/mobile/ads/impl/p1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/t0;",
            "Lcom/yandex/mobile/ads/impl/p1;",
            ")V"
        }
    .end annotation

    .line 7
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "activityResultAdDataCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intentCreator"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/q1;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/q1;->b:Lcom/yandex/mobile/ads/impl/t0;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/q1;->c:Lcom/yandex/mobile/ads/impl/p1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/wi0;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/q1;->c:Lcom/yandex/mobile/ads/impl/p1;

    invoke-virtual {v2, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/p1;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/q1;->b:Lcom/yandex/mobile/ads/impl/t0;

    invoke-virtual {v3, p2}, Lcom/yandex/mobile/ads/impl/t0;->a(Landroid/content/Intent;)Lcom/yandex/mobile/ads/impl/c1;

    move-result-object p2

    sget v3, Lcom/yandex/mobile/ads/impl/d1;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/d1$a;->a()Lcom/yandex/mobile/ads/impl/d1;

    move-result-object v3

    invoke-virtual {v3, v0, v1, p2}, Lcom/yandex/mobile/ads/impl/d1;->a(JLcom/yandex/mobile/ads/impl/c1;)V

    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v3, v0, v1}, Lcom/yandex/mobile/ads/impl/d1;->a(J)Lcom/yandex/mobile/ads/impl/c1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q1;->a:Lcom/yandex/mobile/ads/impl/sp1;

    const-string p2, "Failed to launch AdActivity for result"

    invoke-interface {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
