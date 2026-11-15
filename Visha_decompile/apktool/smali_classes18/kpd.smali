.class public final synthetic Lkpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/yandex/mobile/ads/impl/fn;

    check-cast p2, Lcom/yandex/mobile/ads/impl/fn;

    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/or0;->b(Lcom/yandex/mobile/ads/impl/fn;Lcom/yandex/mobile/ads/impl/fn;)I

    move-result p0

    return p0
.end method
