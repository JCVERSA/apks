.class public final Lcom/yandex/mobile/ads/impl/au0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/j10;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/j10;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/j10;-><init>(I)V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/au0;-><init>(Lcom/yandex/mobile/ads/impl/j10;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/j10;)V
    .locals 1

    .line 3
    const-string v0, "deviceInfoProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/au0;->a:Lcom/yandex/mobile/ads/impl/j10;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/au0;->a:Lcom/yandex/mobile/ads/impl/j10;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/j10;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Xiaomi"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
