.class public final Lcom/yandex/mobile/ads/impl/tg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/aj2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/aj2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vi2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/wc1;->a()Lcom/yandex/mobile/ads/impl/wi2;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/tg0;-><init>(Lcom/yandex/mobile/ads/impl/vi2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vi2;)V
    .locals 1

    .line 3
    const-string v0, "volleyNetworkResponseDecoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tg0;->a:Lcom/yandex/mobile/ads/impl/vi2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tg0;->a:Lcom/yandex/mobile/ads/impl/vi2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/vi2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
