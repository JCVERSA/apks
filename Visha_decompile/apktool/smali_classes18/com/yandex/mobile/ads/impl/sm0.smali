.class public final Lcom/yandex/mobile/ads/impl/sm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dq1;
.implements Lcom/yandex/mobile/ads/impl/yl0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/sm0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dq1<",
        "Lcom/yandex/mobile/ads/impl/ki2;",
        ">;",
        "Lcom/yandex/mobile/ads/impl/yl0$a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sm0$a;

.field private final b:Lcom/yandex/mobile/ads/impl/yl0;

.field private final c:Lcom/yandex/mobile/ads/impl/s40;

.field private final d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/fc2;Lcom/yandex/mobile/ads/impl/um0;)V
    .locals 7

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/yl0;

    invoke-direct {v5, p2, p3}, Lcom/yandex/mobile/ads/impl/yl0;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/fc2;)V

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/s40;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/s40;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/sm0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/fc2;Lcom/yandex/mobile/ads/impl/um0;Lcom/yandex/mobile/ads/impl/yl0;Lcom/yandex/mobile/ads/impl/s40;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/fc2;Lcom/yandex/mobile/ads/impl/um0;Lcom/yandex/mobile/ads/impl/yl0;Lcom/yandex/mobile/ads/impl/s40;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoAdLoader"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "instreamAdLoadListener"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adBreaksLoadingManager"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "duplicatedInstreamAdBreaksFilter"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/sm0;->a:Lcom/yandex/mobile/ads/impl/sm0$a;

    .line 7
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/sm0;->b:Lcom/yandex/mobile/ads/impl/yl0;

    .line 8
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/sm0;->c:Lcom/yandex/mobile/ads/impl/s40;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sm0;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sb2;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sm0;->a:Lcom/yandex/mobile/ads/impl/sm0$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/sb2;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sm0$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 9
    check-cast p1, Lcom/yandex/mobile/ads/impl/ki2;

    .line 10
    const-string v0, "vmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ki2;->a()Ljava/util/List;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/p2;

    .line 14
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p2;->d()Ljava/util/List;

    move-result-object v2

    const-string v3, "linear"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/sm0;->b:Lcom/yandex/mobile/ads/impl/yl0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sm0;->d:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0, p0}, Lcom/yandex/mobile/ads/impl/yl0;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/yl0$a;)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sm0;->a:Lcom/yandex/mobile/ads/impl/sm0$a;

    const-string p1, "Received response with no ad breaks"

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sm0$a;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    .line 3
    const-string v0, "adBreaks"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sm0;->c:Lcom/yandex/mobile/ads/impl/s40;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/s40;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/et;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/et;-><init>(Ljava/util/ArrayList;)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sm0;->a:Lcom/yandex/mobile/ads/impl/sm0$a;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/sm0$a;->a(Lcom/yandex/mobile/ads/impl/et;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sm0;->a:Lcom/yandex/mobile/ads/impl/sm0$a;

    const-string p1, "Received response with no ad breaks"

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sm0$a;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
