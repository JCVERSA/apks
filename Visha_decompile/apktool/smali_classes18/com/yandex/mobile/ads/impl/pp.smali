.class public final Lcom/yandex/mobile/ads/impl/pp;
.super Lcom/yandex/mobile/ads/impl/qg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/qg<",
        "Lcom/yandex/mobile/ads/impl/tp;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string p0, "name"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/tp;

    sget-object v0, Lcom/yandex/mobile/ads/impl/tp$a;->b:Lcom/yandex/mobile/ads/impl/tp$a;

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/tp;-><init>(Lcom/yandex/mobile/ads/impl/tp$a;Ljava/lang/String;)V

    const-string p1, "string"

    invoke-static {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/qg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object p0

    return-object p0
.end method
