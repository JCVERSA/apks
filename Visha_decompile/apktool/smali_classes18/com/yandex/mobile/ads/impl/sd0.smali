.class public final Lcom/yandex/mobile/ads/impl/sd0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/rd0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/rd0;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/bv1;->e()Lcom/yandex/mobile/ads/impl/fn2;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/rd0;-><init>(Lcom/yandex/mobile/ads/impl/cy1;)V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/sd0;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/rd0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/rd0;)V
    .locals 1

    .line 4
    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intentCreator"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sd0;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sd0;->b:Lcom/yandex/mobile/ads/impl/rd0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/c1;)Ljava/lang/Object;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/wi0;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sd0;->b:Lcom/yandex/mobile/ads/impl/rd0;

    invoke-virtual {v2, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/rd0;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

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

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {v3, v0, v1}, Lcom/yandex/mobile/ads/impl/d1;->a(J)Lcom/yandex/mobile/ads/impl/c1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to show Fullscreen Ad. Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/hp0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sd0;->a:Lcom/yandex/mobile/ads/impl/sp1;

    const-string v0, "Failed to show Fullscreen Ad"

    invoke-interface {p0, v0, p2}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method
