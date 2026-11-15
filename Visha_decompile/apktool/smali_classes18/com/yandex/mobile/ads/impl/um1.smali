.class public final Lcom/yandex/mobile/ads/impl/um1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ps1;


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/ps1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ow1;)V
    .locals 1

    .line 1
    const-string v0, "reward"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/um1;->a:Lcom/yandex/mobile/ads/impl/ps1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ps1;->a(Lcom/yandex/mobile/ads/impl/ow1;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ps1;)V
    .locals 1

    .line 3
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/um1;->a:Lcom/yandex/mobile/ads/impl/ps1;

    return-void
.end method
