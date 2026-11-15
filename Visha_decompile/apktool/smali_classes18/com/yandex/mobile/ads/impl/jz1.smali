.class public final Lcom/yandex/mobile/ads/impl/jz1;
.super Lcom/yandex/mobile/ads/impl/oj0;
.source "SourceFile"


# instance fields
.field private final g:Lcom/yandex/mobile/ads/impl/hj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/iq1;Lcom/yandex/mobile/ads/impl/id1$b;Lcom/yandex/mobile/ads/impl/hj0;)V
    .locals 1

    const-string v0, "queue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageCache"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageCacheKeyGenerator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/oj0;-><init>(Lcom/yandex/mobile/ads/impl/iq1;Lcom/yandex/mobile/ads/impl/id1$b;)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/jz1;->g:Lcom/yandex/mobile/ads/impl/hj0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 0

    const-string p2, "url"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "scaleType"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jz1;->g:Lcom/yandex/mobile/ads/impl/hj0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p4}, Lcom/yandex/mobile/ads/impl/hj0;->b(Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
