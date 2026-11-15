.class public final Lcom/yandex/mobile/ads/impl/xl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fw0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fw0;)V
    .locals 1

    const-string v0, "referenceMediaFileInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xl;->a:Lcom/yandex/mobile/ads/impl/fw0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ew0;)I
    .locals 2

    const-string v0, "mediaFile"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ew0;->b()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ew0;->h()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ew0;->d()I

    move-result p1

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xl;->a:Lcom/yandex/mobile/ads/impl/fw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fw0;->c()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xl;->a:Lcom/yandex/mobile/ads/impl/fw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/fw0;->b()I

    move-result v1

    mul-int/2addr v1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xl;->a:Lcom/yandex/mobile/ads/impl/fw0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fw0;->a()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int v0, p1

    :cond_0
    return v0
.end method
