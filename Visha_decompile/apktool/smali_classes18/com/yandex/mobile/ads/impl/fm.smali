.class public final Lcom/yandex/mobile/ads/impl/fm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/em;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/em;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/bv1;->e()Lcom/yandex/mobile/ads/impl/fn2;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/em;-><init>(Lcom/yandex/mobile/ads/impl/cy1;)V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/fm;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/em;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/em;)V
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
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fm;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fm;->b:Lcom/yandex/mobile/ads/impl/em;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResultReceiver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browserUrl"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/impl/d1;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/d1$a;->a()Lcom/yandex/mobile/ads/impl/d1;

    move-result-object v0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/wi0;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/fm;->b:Lcom/yandex/mobile/ads/impl/em;

    invoke-virtual {v3, p1, p5, v1, v2}, Lcom/yandex/mobile/ads/impl/em;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p5

    new-instance v3, Lcom/yandex/mobile/ads/impl/c1$a;

    invoke-direct {v3, p2, p4, p3}, Lcom/yandex/mobile/ads/impl/c1$a;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/t8;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/c1;

    invoke-direct {p2, v3}, Lcom/yandex/mobile/ads/impl/c1;-><init>(Lcom/yandex/mobile/ads/impl/c1$a;)V

    invoke-virtual {v0, v1, v2, p2}, Lcom/yandex/mobile/ads/impl/d1;->a(JLcom/yandex/mobile/ads/impl/c1;)V

    :try_start_0
    invoke-virtual {p1, p5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/d1;->a(J)Lcom/yandex/mobile/ads/impl/c1;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fm;->a:Lcom/yandex/mobile/ads/impl/sp1;

    const-string p3, "Failed to show Browser"

    invoke-interface {p0, p3, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move p0, p2

    :goto_0
    return p0
.end method
