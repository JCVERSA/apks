.class public final Lcom/yandex/mobile/ads/impl/hz1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/gz1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/gz1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz1;->a:Lcom/yandex/mobile/ads/impl/gz1;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/gz1;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Ad size can\'t be null or empty."

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/hp0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hz1;->a:Lcom/yandex/mobile/ads/impl/gz1;

    if-eqz v1, :cond_1

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Ad size can\'t be set twice."

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/hp0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hz1;->a:Lcom/yandex/mobile/ads/impl/gz1;

    :goto_0
    return-void
.end method
