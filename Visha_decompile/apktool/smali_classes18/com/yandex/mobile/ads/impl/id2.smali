.class public final Lcom/yandex/mobile/ads/impl/id2;
.super Lfd7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfd7;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/jd2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jd2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/id2;->a:Lcom/yandex/mobile/ads/impl/jd2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lfd7;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Laf5;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf5;",
            "Lcom/yandex/mobile/ads/impl/ld2$a;",
            "Lcom/yandex/mobile/ads/impl/ld2$a;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/yandex/mobile/ads/impl/ld2$a;

    check-cast p2, Lcom/yandex/mobile/ads/impl/ld2$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/id2;->a:Lcom/yandex/mobile/ads/impl/jd2;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/jd2;->a(Lcom/yandex/mobile/ads/impl/jd2;)Lcom/yandex/mobile/ads/impl/ld2;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/mobile/ads/impl/ld2;->a(Lcom/yandex/mobile/ads/impl/ld2$a;)V

    return-void
.end method
