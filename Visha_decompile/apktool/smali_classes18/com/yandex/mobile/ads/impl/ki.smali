.class public final Lcom/yandex/mobile/ads/impl/ki;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ll1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ll1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ll1;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ki;->a:Lcom/yandex/mobile/ads/impl/ll1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ki;->a:Lcom/yandex/mobile/ads/impl/ll1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ll1;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ":Metrica"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":AppMetrica"

    invoke-static {p0, v1, v0, v2, v3}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
