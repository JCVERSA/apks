.class public final Lcom/yandex/mobile/ads/impl/aq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/iq1$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/up1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/up1<",
            "*>;I)V"
        }
    .end annotation

    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/qk;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/qk;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p0, 0x3

    if-ne p2, p0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/qk;->x()V

    :cond_1
    return-void
.end method
