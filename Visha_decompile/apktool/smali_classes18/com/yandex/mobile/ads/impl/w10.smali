.class public final Lcom/yandex/mobile/ads/impl/w10;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/f02;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/f02;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/f02;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/w10;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/f02;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/f02;)V
    .locals 1

    .line 3
    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sliderDivConfigurationCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w10;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w10;->b:Lcom/yandex/mobile/ads/impl/f02;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/v20;)Ljh2;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdPrivate"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickHandler"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p3, Lcom/yandex/mobile/ads/impl/b02;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/e02;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/w10;->a:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/e02;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    check-cast p3, Lcom/yandex/mobile/ads/impl/b02;

    invoke-virtual {v0, p2, p3}, Lcom/yandex/mobile/ads/impl/e02;->a(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/b02;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w10;->b:Lcom/yandex/mobile/ads/impl/f02;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, p4}, Lcom/yandex/mobile/ads/impl/f02;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/e02;Lcom/yandex/mobile/ads/impl/v20;)Ljh2;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/a30;

    invoke-direct {p0, p1, p4}, Lcom/yandex/mobile/ads/impl/a30;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/v20;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/a30;->a()Ljh2;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method
