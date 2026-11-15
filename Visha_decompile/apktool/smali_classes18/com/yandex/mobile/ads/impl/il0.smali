.class public final Lcom/yandex/mobile/ads/impl/il0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/pt0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/pt0<",
        "Lcom/yandex/mobile/ads/instream/inroll/Inroll;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/qt0;)Lcom/yandex/mobile/ads/impl/wn0;
    .locals 0

    const-string p0, "playbackController"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/wn0;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/wn0;-><init>(Lcom/yandex/mobile/ads/impl/qt0;)V

    return-object p0
.end method
