.class public abstract Lcom/yandex/mobile/ads/impl/iy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/iy$a;,
        Lcom/yandex/mobile/ads/impl/iy$b;,
        Lcom/yandex/mobile/ads/impl/iy$c;,
        Lcom/yandex/mobile/ads/impl/iy$d;,
        Lcom/yandex/mobile/ads/impl/iy$e;,
        Lcom/yandex/mobile/ads/impl/iy$f;,
        Lcom/yandex/mobile/ads/impl/iy$g;,
        Lcom/yandex/mobile/ads/impl/iy$h;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/iy;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
