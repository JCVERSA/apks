.class public final Lcom/yandex/mobile/ads/core/initializer/MobileAdsInitializeProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0013\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/yandex/mobile/ads/core/initializer/MobileAdsInitializeProvider;",
        "Landroid/content/ContentProvider;",
        "Lcom/yandex/mobile/ads/impl/eg;",
        "appStartupInitializer",
        "<init>",
        "(Lcom/yandex/mobile/ads/impl/eg;)V",
        "mobileads_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/eg;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lcom/yandex/mobile/ads/core/initializer/MobileAdsInitializeProvider;-><init>(Lcom/yandex/mobile/ads/impl/eg;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/eg;)V
    .locals 1

    .line 2
    const-string v0, "appStartupInitializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/core/initializer/MobileAdsInitializeProvider;->a:Lcom/yandex/mobile/ads/impl/eg;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/eg;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Lcom/yandex/mobile/ads/impl/eg;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/eg;-><init>()V

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/core/initializer/MobileAdsInitializeProvider;-><init>(Lcom/yandex/mobile/ads/impl/eg;)V

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/core/initializer/MobileAdsInitializeProvider;->a:Lcom/yandex/mobile/ads/impl/eg;

    new-instance v1, Lcom/yandex/mobile/ads/impl/en2;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/en2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
