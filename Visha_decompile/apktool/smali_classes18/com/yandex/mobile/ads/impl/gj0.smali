.class public final Lcom/yandex/mobile/ads/impl/gj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/wg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/wg<",
        "Lcom/yandex/mobile/ads/impl/xj0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/c32;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/c32;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/c32;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/gj0;-><init>(Lcom/yandex/mobile/ads/impl/c32;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/c32;)V
    .locals 1

    .line 3
    const-string v0, "stringAssetValueValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gj0;->a:Lcom/yandex/mobile/ads/impl/c32;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xj0;)Z
    .locals 1

    .line 1
    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xj0;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gj0;->a:Lcom/yandex/mobile/ads/impl/c32;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, "null"

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 5
    check-cast p1, Lcom/yandex/mobile/ads/impl/xj0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/gj0;->a(Lcom/yandex/mobile/ads/impl/xj0;)Z

    move-result p0

    return p0
.end method
