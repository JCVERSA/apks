.class public final Lcom/yandex/mobile/ads/impl/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/f42;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/o3;

.field private final c:Lcom/yandex/mobile/ads/impl/t8;

.field private final d:Lcom/yandex/mobile/ads/impl/t1;

.field private final e:Lcom/yandex/mobile/ads/impl/p50;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 8

    .line 9
    new-instance v2, Lcom/yandex/mobile/ads/impl/t1;

    invoke-direct {v2, p4}, Lcom/yandex/mobile/ads/impl/t1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    .line 10
    sget v0, Lcom/yandex/mobile/ads/impl/p50;->e:I

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/p50$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/p50;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/u1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/o3;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "adResponse"

    invoke-static {p3, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "adConfiguration"

    invoke-static {p7, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "resultReceiver"

    invoke-static {p4, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "adActivityShowManager"

    invoke-static {p2, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "environmentController"

    invoke-static {p6, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/u1;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 4
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/u1;->b:Lcom/yandex/mobile/ads/impl/o3;

    .line 5
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/u1;->c:Lcom/yandex/mobile/ads/impl/t8;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u1;->d:Lcom/yandex/mobile/ads/impl/t1;

    .line 7
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/u1;->e:Lcom/yandex/mobile/ads/impl/p50;

    .line 8
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u1;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/tp1;Ljava/lang/String;)V
    .locals 9

    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetUrl"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u1;->e:Lcom/yandex/mobile/ads/impl/p50;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/p50;->c()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u1;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u1;->d:Lcom/yandex/mobile/ads/impl/t1;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u1;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/u1;->b:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/u1;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/u1;->c:Lcom/yandex/mobile/ads/impl/t8;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/t1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/tp1;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t8;Z)V

    return-void
.end method
