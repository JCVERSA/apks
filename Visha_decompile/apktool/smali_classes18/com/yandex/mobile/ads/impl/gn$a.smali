.class public final Lcom/yandex/mobile/ads/impl/gn$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vp1;


# direct methods
.method public constructor <init>(JLcom/yandex/mobile/ads/impl/vp1;)V
    .locals 0

    const-string p1, "request"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gn$a;->a:Lcom/yandex/mobile/ads/impl/vp1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/gn;
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/impl/gn;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gn$a;->a:Lcom/yandex/mobile/ads/impl/vp1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/gn;-><init>(Lcom/yandex/mobile/ads/impl/vp1;Lcom/yandex/mobile/ads/impl/vq1;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gn;->b()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gn$a;->a:Lcom/yandex/mobile/ads/impl/vp1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vp1;->b()Lcom/yandex/mobile/ads/impl/um;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/um;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/gn;

    invoke-direct {p0, v2, v2}, Lcom/yandex/mobile/ads/impl/gn;-><init>(Lcom/yandex/mobile/ads/impl/vp1;Lcom/yandex/mobile/ads/impl/vq1;)V

    return-object p0

    :cond_0
    return-object v0
.end method
