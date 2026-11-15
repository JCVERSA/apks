.class public final Lcom/yandex/mobile/ads/impl/t71;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t71;->a:Lcom/yandex/mobile/ads/impl/o3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t71;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->m()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const-string v0, "image_sizes"

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object p0

    :goto_1
    return-object p0
.end method
