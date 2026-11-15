.class public final Lcom/yandex/mobile/ads/impl/ya1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nd2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ya1;->a:Lcom/yandex/mobile/ads/impl/o3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ya1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "undefined"

    :cond_1
    const-string v1, "block_id"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ya1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ad_type"

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {v0, p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
