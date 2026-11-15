.class public final Lcom/yandex/mobile/ads/impl/ud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vd;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/vd;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/vd;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ud;-><init>(Lcom/yandex/mobile/ads/impl/vd;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vd;)V
    .locals 1

    .line 3
    const-string v0, "androidSdkApiProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ud;->a:Lcom/yandex/mobile/ads/impl/vd;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ud;->a:Lcom/yandex/mobile/ads/impl/vd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/vd;->a()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ud;->a:Lcom/yandex/mobile/ads/impl/vd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x15

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
