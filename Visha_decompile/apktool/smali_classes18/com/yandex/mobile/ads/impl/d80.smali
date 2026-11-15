.class public interface abstract Lcom/yandex/mobile/ads/impl/d80;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx9d;

    invoke-direct {v0}, Lx9d;-><init>()V

    return-void
.end method

.method public static synthetic d()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/d80;->lambda$static$0()[Lcom/yandex/mobile/ads/impl/z70;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$0()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/z70;

    return-object v0
.end method


# virtual methods
.method public abstract a()[Lcom/yandex/mobile/ads/impl/z70;
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/yandex/mobile/ads/impl/z70;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/yandex/mobile/ads/impl/z70;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/d80;->a()[Lcom/yandex/mobile/ads/impl/z70;

    move-result-object p0

    return-object p0
.end method
