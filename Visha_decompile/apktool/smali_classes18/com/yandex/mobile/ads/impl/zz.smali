.class public final Lcom/yandex/mobile/ads/impl/zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ln0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/aj1;)V
    .locals 2

    const-string v0, "playerVolumeProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ln0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ln0$a;-><init>()V

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/aj1;->getVolume()F

    move-result p1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-nez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ln0$a;->a(F)Lcom/yandex/mobile/ads/impl/ln0$a;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ln0$a;->b(Z)Lcom/yandex/mobile/ads/impl/ln0$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ln0$a;->a(F)Lcom/yandex/mobile/ads/impl/ln0$a;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ln0$a;->b(Z)Lcom/yandex/mobile/ads/impl/ln0$a;

    :goto_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ln0$a;->a()Lcom/yandex/mobile/ads/impl/ln0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zz;->a:Lcom/yandex/mobile/ads/impl/ln0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ln0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zz;->a:Lcom/yandex/mobile/ads/impl/ln0;

    return-object p0
.end method
