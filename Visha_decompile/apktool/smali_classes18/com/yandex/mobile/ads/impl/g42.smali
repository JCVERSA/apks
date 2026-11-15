.class public final Lcom/yandex/mobile/ads/impl/g42;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/du;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;)Lcom/yandex/mobile/ads/impl/f42;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/t8;",
            ")",
            "Lcom/yandex/mobile/ads/impl/f42;"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiver"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g42;->a:Lcom/yandex/mobile/ads/impl/du;

    .line 3
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    .line 5
    new-instance p1, Lcom/yandex/mobile/ads/impl/lv;

    .line 6
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    invoke-direct {p1, p0, p5, p2}, Lcom/yandex/mobile/ads/impl/lv;-><init>(Lcom/yandex/mobile/ads/impl/du;Lcom/yandex/mobile/ads/impl/t8;Landroid/os/Handler;)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/zy;

    .line 9
    new-instance v2, Lcom/yandex/mobile/ads/impl/t1;

    invoke-direct {v2, p2}, Lcom/yandex/mobile/ads/impl/t1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    .line 10
    sget v0, Lcom/yandex/mobile/ads/impl/p50;->e:I

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/p50$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/p50;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v7, p3

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/zy;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/o3;)V

    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public final a(Lcom/yandex/mobile/ads/nativeads/c;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g42;->a:Lcom/yandex/mobile/ads/impl/du;

    return-void
.end method
