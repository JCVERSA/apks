.class final Lcom/yandex/mobile/ads/impl/u6$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/u6;->a(Lcom/yandex/mobile/ads/impl/b7;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/b7;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b7;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u6$b;->b:Lcom/yandex/mobile/ads/impl/b7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Leb5;

    const-string v0, "$this$putJsonObject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u6$b;->b:Lcom/yandex/mobile/ads/impl/b7;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b7;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/yandex/mobile/ads/impl/v6;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/impl/v6;-><init>(Ljava/util/Map$Entry;)V

    invoke-static {p1, v1, v2}, Lka5;->f(Leb5;Ljava/lang/String;Le74;)Lkotlinx/serialization/json/b;

    goto :goto_0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
