.class public final Lcom/yandex/mobile/ads/impl/y3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/y3$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gq1;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yandex/mobile/ads/impl/ck<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/gq1;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ck<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/gq1;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yandex/mobile/ads/impl/ck<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestManager"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "loadControllerRef"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/y3;->a:Lcom/yandex/mobile/ads/impl/gq1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/y3;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y3;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ck;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y3;->a:Lcom/yandex/mobile/ads/impl/gq1;

    .line 3
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/oa;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/gq1;->a(Landroid/content/Context;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ak;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ak<",
            "*>;)V"
        }
    .end annotation

    .line 6
    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y3;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ck;

    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y3;->a:Lcom/yandex/mobile/ads/impl/gq1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0

    .line 9
    :try_start_0
    const-string v1, "context"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "request"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hd1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/iq1;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/up1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/y3;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y3;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method
