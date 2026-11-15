.class public abstract Lcom/yandex/mobile/ads/impl/ko1;
.super Lcom/yandex/mobile/ads/impl/pg0;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/xh2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ko1$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private final B:Lcom/yandex/mobile/ads/impl/ko1$a;

.field private final y:Lcom/yandex/mobile/ads/impl/np0;

.field private final z:Lcom/yandex/mobile/ads/impl/ua;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ua;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/impl/ua;-><init>(Lcom/yandex/mobile/ads/impl/np0;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/ko1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/ua;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/ua;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adViewVisibilityValidator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/np0;->getAdConfiguration$mobileads_externalRelease()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/yandex/mobile/ads/impl/pg0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ko1;->y:Lcom/yandex/mobile/ads/impl/np0;

    .line 6
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ko1;->z:Lcom/yandex/mobile/ads/impl/ua;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ko1;->A:Z

    .line 8
    new-instance p1, Lcom/yandex/mobile/ads/impl/ko1$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/ko1$a;-><init>(Lcom/yandex/mobile/ads/impl/ko1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ko1;->B:Lcom/yandex/mobile/ads/impl/ko1$a;

    .line 9
    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/np0;->addVisibilityChangeListener(Lcom/yandex/mobile/ads/impl/xh2;)V

    return-void
.end method

.method private final y()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->m()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ko1;->B:Lcom/yandex/mobile/ads/impl/ko1$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->k()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->T()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ko1;->A:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->o()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ko1;->z:Lcom/yandex/mobile/ads/impl/ua;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ua;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->m()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ko1;->B:Lcom/yandex/mobile/ads/impl/ko1$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->g()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->h()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ko1;->y()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/dh1;)V
    .locals 1

    .line 1
    const-string v0, "phoneState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->a(Lcom/yandex/mobile/ads/impl/dh1;)V

    .line 3
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ko1;->y()V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->b()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ko1;->y()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/ck;->d()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ko1;->y:Lcom/yandex/mobile/ads/impl/np0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/np0;->removeVisibilityChangeListener(Lcom/yandex/mobile/ads/impl/xh2;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ko1;->A:Z

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->m()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ko1;->B:Lcom/yandex/mobile/ads/impl/ko1$a;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public final s()V
    .locals 0

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/ck;->s()V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ko1;->y()V

    return-void
.end method
