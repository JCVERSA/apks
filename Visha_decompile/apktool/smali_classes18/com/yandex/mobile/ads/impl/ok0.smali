.class public final Lcom/yandex/mobile/ads/impl/ok0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rx0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "mediatedAdController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ok0;->a:Lcom/yandex/mobile/ads/impl/rx0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/t4;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ok0;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rx0;->a()Lcom/yandex/mobile/ads/impl/qx0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lz0;->c()Lcom/yandex/mobile/ads/impl/t4;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
