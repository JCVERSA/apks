.class public final Lcom/yandex/mobile/ads/impl/gm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tm0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/hm0;

.field private final b:Lcom/yandex/mobile/ads/impl/j32;

.field private final c:Lcom/yandex/mobile/ads/impl/g5;

.field private final d:Lcom/yandex/mobile/ads/impl/um0;

.field private final e:Lcom/yandex/mobile/ads/impl/fc2;

.field private final f:Lcom/yandex/mobile/ads/impl/sm0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/hm0;Lcom/yandex/mobile/ads/impl/j32;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemFinishedListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strongReferenceKeepingManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gm0;->a:Lcom/yandex/mobile/ads/impl/hm0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gm0;->b:Lcom/yandex/mobile/ads/impl/j32;

    new-instance p3, Lcom/yandex/mobile/ads/impl/g5;

    invoke-direct {p3}, Lcom/yandex/mobile/ads/impl/g5;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gm0;->c:Lcom/yandex/mobile/ads/impl/g5;

    new-instance p4, Lcom/yandex/mobile/ads/impl/o3;

    sget-object v0, Lcom/yandex/mobile/ads/impl/ts;->h:Lcom/yandex/mobile/ads/impl/ts;

    invoke-direct {p4, v0, p2}, Lcom/yandex/mobile/ads/impl/o3;-><init>(Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/bv1;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/um0;

    invoke-direct {v0, p1, p4, p3, p0}, Lcom/yandex/mobile/ads/impl/um0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/tm0;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gm0;->d:Lcom/yandex/mobile/ads/impl/um0;

    new-instance v1, Lcom/yandex/mobile/ads/impl/fc2;

    invoke-direct {v1, p1, p4, p3}, Lcom/yandex/mobile/ads/impl/fc2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/gm0;->e:Lcom/yandex/mobile/ads/impl/fc2;

    new-instance p3, Lcom/yandex/mobile/ads/impl/sm0;

    invoke-direct {p3, p1, p2, v1, v0}, Lcom/yandex/mobile/ads/impl/sm0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/fc2;Lcom/yandex/mobile/ads/impl/um0;)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gm0;->f:Lcom/yandex/mobile/ads/impl/sm0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gm0;->a:Lcom/yandex/mobile/ads/impl/hm0;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/hm0;->a(Lcom/yandex/mobile/ads/impl/gm0;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gm0;->b:Lcom/yandex/mobile/ads/impl/j32;

    sget-object v1, Lcom/yandex/mobile/ads/impl/xq0;->b:Lcom/yandex/mobile/ads/impl/xq0;

    invoke-virtual {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/j32;->a(Lcom/yandex/mobile/ads/impl/xq0;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jt;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gm0;->d:Lcom/yandex/mobile/ads/impl/um0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/um0;->a(Lcom/yandex/mobile/ads/impl/jt;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/oi2;)V
    .locals 4

    .line 1
    const-string v0, "requestConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gm0;->b:Lcom/yandex/mobile/ads/impl/j32;

    sget-object v1, Lcom/yandex/mobile/ads/impl/xq0;->b:Lcom/yandex/mobile/ads/impl/xq0;

    invoke-virtual {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/j32;->b(Lcom/yandex/mobile/ads/impl/xq0;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gm0;->d:Lcom/yandex/mobile/ads/impl/um0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/um0;->a(Lcom/yandex/mobile/ads/impl/oi2;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gm0;->c:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->e:Lcom/yandex/mobile/ads/impl/f5;

    .line 5
    const-string v2, "adLoadingPhaseType"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gm0;->e:Lcom/yandex/mobile/ads/impl/fc2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gm0;->f:Lcom/yandex/mobile/ads/impl/sm0;

    invoke-virtual {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/fc2;->a(Lcom/yandex/mobile/ads/impl/oi2;Lcom/yandex/mobile/ads/impl/sm0;)V

    return-void
.end method
