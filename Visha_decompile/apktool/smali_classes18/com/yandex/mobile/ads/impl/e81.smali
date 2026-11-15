.class public final Lcom/yandex/mobile/ads/impl/e81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jb1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/db1;

.field private b:Lcom/yandex/mobile/ads/impl/ve2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/ve2;)V
    .locals 1

    const-string v0, "nativeVideoController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoLifecycleListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e81;->a:Lcom/yandex/mobile/ads/impl/db1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/e81;->b:Lcom/yandex/mobile/ads/impl/ve2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(JJ)V
    .locals 0

    .line 2
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e81;->b:Lcom/yandex/mobile/ads/impl/ve2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ve2;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e81;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/db1;->b(Lcom/yandex/mobile/ads/impl/jb1;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/e81;->b:Lcom/yandex/mobile/ads/impl/ve2;

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e81;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/db1;->a(Lcom/yandex/mobile/ads/impl/jb1;)V

    return-void
.end method
