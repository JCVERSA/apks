.class public final Lcom/yandex/mobile/ads/impl/on2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/fb2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ve1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ve1;)V
    .locals 1

    const-string v0, "omSdkUsageValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/on2;->a:Lcom/yandex/mobile/ads/impl/ve1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ad2;Lcom/yandex/mobile/ads/impl/od2;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/nn2;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdPosition"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verifications"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/on2;->a:Lcom/yandex/mobile/ads/impl/ve1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ve1;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/nn2;

    new-instance v5, Lcom/yandex/mobile/ads/impl/kg2;

    invoke-direct {v5, p1}, Lcom/yandex/mobile/ads/impl/kg2;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/we1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/we1;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/en2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/en2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/en2;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/nn2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ad2;Lcom/yandex/mobile/ads/impl/od2;Ljava/util/List;Lcom/yandex/mobile/ads/impl/kg2;Lcom/yandex/mobile/ads/impl/we1;Lcom/yandex/mobile/ads/impl/sp1;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
