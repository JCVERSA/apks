.class public final Lcom/yandex/mobile/ads/impl/yu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rt;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rt;)V
    .locals 1

    const-string v0, "nativeAdAssets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yu0;->a:Lcom/yandex/mobile/ads/impl/rt;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yu0;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->i()Lcom/yandex/mobile/ads/impl/xt;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yu0;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xt;->a()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->d()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->b()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->b()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
