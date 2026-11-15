.class public final Lcom/yandex/mobile/ads/impl/sh0;
.super Lcom/yandex/mobile/ads/impl/rh0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid content type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/rh0;-><init>(Ljava/lang/String;I)V

    return-void
.end method
