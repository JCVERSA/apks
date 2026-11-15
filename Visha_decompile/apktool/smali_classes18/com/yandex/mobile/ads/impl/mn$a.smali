.class public final Lcom/yandex/mobile/ads/impl/mn$a;
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
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v7;

.field final synthetic b:Lcom/yandex/mobile/ads/impl/mn;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mn;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/v7;",
            ")V"
        }
    .end annotation

    const-string v0, "adRequestData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mn$a;->b:Lcom/yandex/mobile/ads/impl/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mn$a;->a:Lcom/yandex/mobile/ads/impl/v7;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gu;)V
    .locals 1

    .line 2
    const-string v0, "rewardedAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mn$a;->b:Lcom/yandex/mobile/ads/impl/mn;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/mn;->b(Lcom/yandex/mobile/ads/impl/mn;)Lcom/yandex/mobile/ads/impl/rs1;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mn$a;->a:Lcom/yandex/mobile/ads/impl/v7;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/rs1;->a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/gu;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 0

    .line 1
    const-string p0, "error"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
