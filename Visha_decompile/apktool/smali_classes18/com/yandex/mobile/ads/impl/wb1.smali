.class final Lcom/yandex/mobile/ads/impl/wb1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/tb1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tb1;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wb1;->b:Lcom/yandex/mobile/ads/impl/tb1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/yandex/mobile/ads/impl/g41;

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wb1;->b:Lcom/yandex/mobile/ads/impl/tb1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/tb1;->a(Lcom/yandex/mobile/ads/impl/tb1;)Lcom/yandex/mobile/ads/impl/gx0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/gx0;->a(Lcom/yandex/mobile/ads/impl/g41;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
