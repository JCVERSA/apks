.class public final Lcom/yandex/mobile/ads/impl/c81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b10<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/e81;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/qe2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/d81;

    invoke-direct {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/d81;-><init>(Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/n91;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/c81;-><init>(Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/d81;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/d81;)V
    .locals 1

    .line 3
    const-string v0, "nativeMediaContent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoEventController"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contentCompleteControllerFactory"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/d81;->a()Lcom/yandex/mobile/ads/impl/e81;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c81;->a:Lcom/yandex/mobile/ads/impl/e81;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c81;->a:Lcom/yandex/mobile/ads/impl/e81;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/e81;->d()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c81;->a:Lcom/yandex/mobile/ads/impl/e81;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/e81;->c()V

    :cond_0
    return-void
.end method
