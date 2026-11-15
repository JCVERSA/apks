.class public final Lcom/yandex/mobile/ads/impl/rf2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/rf2$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gf2;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/yandex/mobile/ads/impl/zl1;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gf2;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "videoPlayerController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rf2;->a:Lcom/yandex/mobile/ads/impl/gf2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rf2;->b:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/rf2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rf2;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/rf2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/rf2;->d:Z

    return p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/rf2;)Lcom/yandex/mobile/ads/impl/zl1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rf2;->c:Lcom/yandex/mobile/ads/impl/zl1;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/rf2;)Lcom/yandex/mobile/ads/impl/gf2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rf2;->a:Lcom/yandex/mobile/ads/impl/gf2;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rf2;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rf2;->d:Z

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rf2;->b:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/mobile/ads/impl/rf2$a;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/rf2$a;-><init>(Lcom/yandex/mobile/ads/impl/rf2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zl1;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rf2;->c:Lcom/yandex/mobile/ads/impl/zl1;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rf2;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rf2;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rf2;->d:Z

    :cond_0
    return-void
.end method
