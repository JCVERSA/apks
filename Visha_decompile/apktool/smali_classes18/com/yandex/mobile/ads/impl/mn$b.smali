.class public final Lcom/yandex/mobile/ads/impl/mn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/iu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/mn;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mn$b;->a:Lcom/yandex/mobile/ads/impl/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gu;)V
    .locals 1

    .line 3
    const-string v0, "rewardedAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mn$b;->a:Lcom/yandex/mobile/ads/impl/mn;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/mn;->a(Lcom/yandex/mobile/ads/impl/mn;)Lcom/yandex/mobile/ads/impl/iu;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/iu;->a(Lcom/yandex/mobile/ads/impl/gu;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mn$b;->a:Lcom/yandex/mobile/ads/impl/mn;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/mn;->a(Lcom/yandex/mobile/ads/impl/mn;)Lcom/yandex/mobile/ads/impl/iu;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/iu;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_0
    return-void
.end method
