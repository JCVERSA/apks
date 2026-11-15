.class public final Lcom/yandex/mobile/ads/impl/s70;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/s70$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/yandex/mobile/ads/impl/yh2$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/q70;

.field private final c:Lcom/yandex/mobile/ads/impl/af1;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/yandex/mobile/ads/impl/s70$a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/view/View;Lcom/yandex/mobile/ads/impl/q70;Lcom/yandex/mobile/ads/impl/af1;)V
    .locals 1

    .line 1
    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exposureProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s70;->a:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/s70;->b:Lcom/yandex/mobile/ads/impl/q70;

    .line 5
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/s70;->c:Lcom/yandex/mobile/ads/impl/af1;

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s70;->d:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/q70;Lcom/yandex/mobile/ads/impl/af1;)V
    .locals 2

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/s70;-><init>(Landroid/os/Handler;Landroid/view/View;Lcom/yandex/mobile/ads/impl/q70;Lcom/yandex/mobile/ads/impl/af1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s70;->e:Lcom/yandex/mobile/ads/impl/s70$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/s70$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s70;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s70;->c:Lcom/yandex/mobile/ads/impl/af1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/s70;->d:Landroid/os/Handler;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/s70;->b:Lcom/yandex/mobile/ads/impl/q70;

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/yandex/mobile/ads/impl/s70$a;-><init>(Landroid/os/Handler;Landroid/view/View;Lcom/yandex/mobile/ads/impl/q70;Lcom/yandex/mobile/ads/impl/af1;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/s70;->e:Lcom/yandex/mobile/ads/impl/s70$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s70;->d:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s70;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/s70;->e:Lcom/yandex/mobile/ads/impl/s70$a;

    return-void
.end method
