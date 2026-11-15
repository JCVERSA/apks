.class public final Lcom/yandex/mobile/ads/impl/am0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/ob2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/pb2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/pb2;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/qb2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/qb2;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/am0;-><init>(Lcom/yandex/mobile/ads/impl/pb2;Lcom/yandex/mobile/ads/impl/qb2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pb2;Lcom/yandex/mobile/ads/impl/qb2;)V
    .locals 1

    .line 4
    const-string v0, "uiElementsCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "controlsValidator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ob2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/am0;->a:Lcom/yandex/mobile/ads/impl/ob2;

    return-object p0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/am0;->a:Lcom/yandex/mobile/ads/impl/ob2;

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/am0;->a:Lcom/yandex/mobile/ads/impl/ob2;

    return-void
.end method
